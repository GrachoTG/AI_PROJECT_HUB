#!/usr/bin/env bash
set -u

MODE="${1:-check}"
LOG_FILE="/home/aihub/n8n_maintenance.log"

log() {
  echo "[$(date '+%Y-%m-%d %H:%M:%S %Z')] $*" | tee -a "$LOG_FILE"
}

section() {
  echo "" | tee -a "$LOG_FILE"
  echo "============================================================" | tee -a "$LOG_FILE"
  echo "$*" | tee -a "$LOG_FILE"
  echo "============================================================" | tee -a "$LOG_FILE"
}

command_exists() {
  command -v "$1" >/dev/null 2>&1
}

detect_compose() {
  if docker compose version >/dev/null 2>&1; then
    echo "docker compose"
  elif command_exists docker-compose; then
    echo "docker-compose"
  else
    echo ""
  fi
}

check_docker() {
  section "Docker"

  if ! command_exists docker; then
    log "Docker: NIE znaleziono"
    return 0
  fi

  log "Docker: znaleziono"
  docker --version 2>&1 | tee -a "$LOG_FILE"

  section "Kontenery zawierające n8n"
  docker ps -a --format 'table {{.Names}}\t{{.Image}}\t{{.Status}}\t{{.Ports}}' \
    | tee -a "$LOG_FILE" \
    | grep -i n8n || true

  local containers
  containers="$(docker ps -a --format '{{.Names}}' | grep -i n8n || true)"

  if [ -z "$containers" ]; then
    log "Nie znaleziono kontenera n8n."
    return 0
  fi

  while IFS= read -r c; do
    [ -z "$c" ] && continue

    section "Kontener n8n: $c"

    log "Obraz:"
    docker inspect "$c" --format '{{.Config.Image}}' 2>/dev/null | tee -a "$LOG_FILE" || true

    log "Wersja n8n z kontenera:"
    docker exec "$c" n8n --version 2>&1 | tee -a "$LOG_FILE" || true

    log "Zmienne ENV podejrzane dla node'ów:"
    docker inspect "$c" --format '{{range .Config.Env}}{{println .}}{{end}}' 2>/dev/null \
      | grep -Ei 'NODES_EXCLUDE|N8N|NODE|EXEC|COMMUNITY|DISABLE' \
      | sed -E 's/(PASSWORD|TOKEN|KEY|SECRET|PASS|AUTH|CREDENTIALS)=.*/\1=<hidden>/' \
      | tee -a "$LOG_FILE" || true

  done <<< "$containers"
}

check_compose() {
  section "Docker Compose"

  local compose_cmd
  compose_cmd="$(detect_compose)"

  if [ -z "$compose_cmd" ]; then
    log "Docker Compose: NIE znaleziono"
  else
    log "Docker Compose: $compose_cmd"
    $compose_cmd version 2>&1 | tee -a "$LOG_FILE" || true
  fi

  section "Pliki compose w /home /opt /srv"

  find /home /opt /srv \
    -maxdepth 5 \
    \( -name "docker-compose.yml" -o -name "docker-compose.yaml" -o -name "compose.yml" -o -name "compose.yaml" \) \
    2>/dev/null \
    | tee -a "$LOG_FILE" || true
}

check_systemd() {
  section "systemd"

  if ! command_exists systemctl; then
    log "systemctl: brak"
    return 0
  fi

  log "Usługi zawierające n8n:"
  systemctl list-units --type=service --all 2>/dev/null \
    | grep -i n8n \
    | tee -a "$LOG_FILE" || true
}

check_npm() {
  section "npm / global n8n"

  if command_exists node; then
    log "Node:"
    node --version 2>&1 | tee -a "$LOG_FILE"
  else
    log "Node: NIE znaleziono"
  fi

  if command_exists npm; then
    log "npm:"
    npm --version 2>&1 | tee -a "$LOG_FILE"

    log "Globalne paczki n8n:"
    npm list -g --depth=0 2>/dev/null \
      | grep -i n8n \
      | tee -a "$LOG_FILE" || true
  else
    log "npm: NIE znaleziono"
  fi

  if command_exists n8n; then
    log "n8n binary:"
    command -v n8n | tee -a "$LOG_FILE"
    n8n --version 2>&1 | tee -a "$LOG_FILE" || true
  else
    log "n8n binary: NIE znaleziono w PATH"
  fi
}

update_docker_compose() {
  section "Update Docker Compose"

  if ! command_exists docker; then
    log "Brak Dockera."
    exit 1
  fi

  local compose_cmd
  compose_cmd="$(detect_compose)"

  if [ -z "$compose_cmd" ]; then
    log "Brak Docker Compose."
    exit 1
  fi

  local compose_file
  compose_file="$(
    find /home /opt /srv \
      -maxdepth 5 \
      \( -name "docker-compose.yml" -o -name "docker-compose.yaml" -o -name "compose.yml" -o -name "compose.yaml" \) \
      2>/dev/null \
      | while read -r f; do
          grep -qi "n8n" "$f" 2>/dev/null && echo "$f" && break
        done
  )"

  if [ -z "$compose_file" ]; then
    log "Nie znaleziono pliku compose zawierającego n8n."
    log "Nie aktualizuję automatycznie."
    exit 1
  fi

  local compose_dir
  compose_dir="$(dirname "$compose_file")"

  log "Znaleziono compose file: $compose_file"
  log "Katalog: $compose_dir"

  mkdir -p "/home/aihub/n8n_backups"
  cp "$compose_file" "/home/aihub/n8n_backups/compose_$(date '+%Y%m%d_%H%M%S').yml"

  cd "$compose_dir" || exit 1

  log "Wykonuję: $compose_cmd pull"
  $compose_cmd pull 2>&1 | tee -a "$LOG_FILE"

  log "Wykonuję: $compose_cmd up -d"
  $compose_cmd up -d 2>&1 | tee -a "$LOG_FILE"

  log "Update zakończony."
}

update_npm() {
  section "Update npm"

  if ! command_exists npm; then
    log "npm nie istnieje."
    exit 1
  fi

  if ! command_exists n8n; then
    log "n8n nie jest dostępne jako globalny binary."
    exit 1
  fi

  log "Aktualna wersja:"
  n8n --version 2>&1 | tee -a "$LOG_FILE" || true

  log "Instaluję n8n@latest..."
  npm install -g n8n@latest 2>&1 | tee -a "$LOG_FILE"

  log "Nowa wersja:"
  n8n --version 2>&1 | tee -a "$LOG_FILE" || true

  log "Jeśli n8n działa jako usługa, wykonaj potem np.: sudo systemctl restart n8n"
}

do_check() {
  section "n8n maintenance check"
  log "User: $(whoami)"
  log "Host: $(hostname)"
  log "Log file: $LOG_FILE"

  check_docker
  check_compose
  check_systemd
  check_npm

  section "Podsumowanie"
  log "Jeżeli n8n jest w Cloud, Execute Command nie będzie dostępny."
  log "Jeżeli self-hosted i jest NODES_EXCLUDE, może ukrywać Execute Command."
  log "Jeżeli Docker Compose istnieje, aktualizacja zwykle jest bezpieczna przez compose pull/up."
}

do_update() {
  section "n8n maintenance update"

  if command_exists docker && docker ps -a --format '{{.Names}}' | grep -qi n8n; then
    update_docker_compose
    exit $?
  fi

  if command_exists npm && command_exists n8n; then
    update_npm
    exit $?
  fi

  log "Nie wykryłem metody instalacji do automatycznej aktualizacji."
  log "Najpierw uruchom: $0 check"
  exit 1
}

case "$MODE" in
  check)
    do_check
    ;;
  update)
    do_update
    ;;
  *)
    echo "Użycie:"
    echo "  $0 check"
    echo "  $0 update"
    exit 1
    ;;
esac
