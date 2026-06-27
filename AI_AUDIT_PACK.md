# AI AUDIT PACK

Generated: 2026-06-27 21:18:19
Root: D:\obsidian\sejf\ai_project_hub

## AI_CONTEXT_MANIFEST.json

```text
{
  "project": "AI_Context_System",
  "scan_root": ".",
  "output_prompt": "AI_START_PROMPT.md",
  "output_index": "AI_CONTEXT_FILE_INDEX.md",
  "exclude_dirs": [
    ".git",
    ".obsidian",
    "99_BACKUPS",
    "__pycache__",
    "node_modules",
    ".venv",
    "venv",
    ".mypy_cache",
    ".pytest_cache"
  ],
  "exclude_files": [
    "ARCHITECTURE_AUDIT.md"
  ],
  "include_extensions": [
    ".md",
    ".txt",
    ".py",
    ".ps1",
    ".sh",
    ".json",
    ".yaml",
    ".yml"
  ],
  "max_file_size_kb_for_full_load": 200,
  "warn_on_unknown": true,
  "include_unknown_index_only": true,
  "generated_files": [
    "AI_START_PROMPT.md",
    "AI_CONTEXT_FILE_INDEX.md",
    "FULL_FILE_INDEX.md"
  ],
  "full_load_categories": [
    "system",
    "global_context",
    "business_context",
    "project_core",
    "project_memory",
    "project_tasks",
    "project_log",
    "decision_log",
    "prompt",
    "module",
    "advisory_board",
    "automation",
    "script",
    "manifest"
  ],
  "index_only_categories": [
    "generated",
    "git_config",
    "obsidian_config",
    "unknown"
  ]
}
```

## AI_CONTEXT_FILE_INDEX.md

```text
# AI_CONTEXT_FILE_INDEX

Generated: 2026-06-27T20:40:31

Project: `AI_Context_System`

## Summary

- full: `33`
- index_only: `4`
- unknown: `1`
- skipped: `0`

## Files

| Path | Ext | Size KB | Modified | Category | Context mode | Reason |
|---|---:|---:|---|---|---|---|
| `.gitignore` | `[none]` | `0.69` | `2026-06-26T16:23:29` | `git_config` | `index_only` | `git_config_index_only` |
| `00_SYSTEM/AI_WORK_PROTOCOL.md` | `.md` | `1.96` | `2026-06-26T16:01:07` | `system` | `full` | `category_full_load` |
| `00_SYSTEM/WORK_RULES.md` | `.md` | `3.58` | `2026-05-25T20:56:34` | `system` | `full` | `category_full_load` |
| `01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/ACTIVE_PROJECTS.md` | `.md` | `3.41` | `2026-06-27T17:51:12` | `business_context` | `full` | `category_full_load` |
| `01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/BUSINESS_CONTEXT_INDEX.md` | `.md` | `2.14` | `2026-05-25T20:53:59` | `business_context` | `full` | `category_full_load` |
| `01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/BUSINESS_PORTFOLIO.md` | `.md` | `2.51` | `2026-05-25T20:33:20` | `business_context` | `full` | `category_full_load` |
| `01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/DECISION_FILTERS.md` | `.md` | `1.42` | `2026-05-25T20:36:21` | `business_context` | `full` | `category_full_load` |
| `01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/OWNER_PROFILE.md` | `.md` | `2.14` | `2026-05-25T20:49:01` | `business_context` | `full` | `category_full_load` |
| `01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/ROLES.md` | `.md` | `2.97` | `2026-05-25T20:48:18` | `business_context` | `full` | `category_full_load` |
| `01_GLOBAL_CONTEXT/BUSINESS_CONTEXT/STRATEGIC_GOALS.md` | `.md` | `2.03` | `2026-05-25T20:37:28` | `business_context` | `full` | `category_full_load` |
| `01_GLOBAL_CONTEXT/GLOBAL_CONTEXT.md` | `.md` | `3.29` | `2026-05-25T21:11:36` | `global_context` | `full` | `category_full_load` |
| `02_PROJECTS/AI_Context_System/CONTEXT_REFRESH_PROTOCOL.md` | `.md` | `5.57` | `2026-06-27T19:15:13` | `project_core` | `full` | `category_full_load` |
| `02_PROJECTS/AI_Context_System/DECISIONS.md` | `.md` | `3.18` | `2026-05-26T12:38:10` | `decision_log` | `full` | `category_full_load` |
| `02_PROJECTS/AI_Context_System/GIT_WORKFLOW.md` | `.md` | `2.66` | `2026-05-26T12:38:10` | `project_core` | `full` | `category_full_load` |
| `02_PROJECTS/AI_Context_System/LOG.md` | `.md` | `4.63` | `2026-05-27T11:23:55` | `project_log` | `full` | `category_full_load` |
| `02_PROJECTS/AI_Context_System/NEXT_CONTEXT.md` | `.md` | `0.74` | `2026-05-27T11:25:48` | `project_core` | `full` | `category_full_load` |
| `02_PROJECTS/AI_Context_System/PROJECT_BRIEF.md` | `.md` | `2.08` | `2026-05-26T12:38:11` | `project_core` | `full` | `category_full_load` |
| `02_PROJECTS/AI_Context_System/PROJECT_MEMORY.md` | `.md` | `6.23` | `2026-05-27T11:24:31` | `project_memory` | `full` | `category_full_load` |
| `02_PROJECTS/AI_Context_System/TASKS.md` | `.md` | `3.62` | `2026-05-26T12:31:34` | `project_tasks` | `full` | `category_full_load` |
| `03_MODULES/ADVISORY_BOARD/BOARD_PROFILES.md` | `.md` | `2.68` | `2026-06-27T20:39:17` | `advisory_board` | `full` | `category_full_load` |
| `07_PROMPTS/ADVISORY_BOARD_REVIEW.md` | `.md` | `1.68` | `2026-05-25T20:08:56` | `prompt` | `full` | `category_full_load` |
| `07_PROMPTS/START_NEW_CONTEXT.md` | `.md` | `0.93` | `2026-05-25T20:03:33` | `prompt` | `full` | `category_full_load` |
| `07_PROMPTS/TASK_PLANNER.md` | `.md` | `0.66` | `2026-05-25T15:23:29` | `prompt` | `full` | `category_full_load` |
| `07_PROMPTS/TECH_DECISION.md` | `.md` | `0.62` | `2026-05-25T15:16:47` | `prompt` | `full` | `category_full_load` |
| `07_PROMPTS/UPDATE_PROJECT_MEMORY.md` | `.md` | `0.75` | `2026-05-25T15:03:08` | `prompt` | `full` | `category_full_load` |
| `09_AUTOMATION/GIT_SYNC_USAGE.md` | `.md` | `2.56` | `2026-06-26T17:03:06` | `automation` | `full` | `category_full_load` |
| `09_AUTOMATION/OBSIDIAN_GITHUB_N8N_PLAN.md` | `.md` | `3.43` | `2026-06-26T16:10:11` | `automation` | `full` | `category_full_load` |
| `09_AUTOMATION/VPS_GIT_PULL_PLAN.md` | `.md` | `6.72` | `2026-06-26T17:12:22` | `automation` | `full` | `category_full_load` |
| `09_AUTOMATION/VPS_SETUP_CHECKLIST.md` | `.md` | `5.2` | `2026-06-26T17:15:46` | `automation` | `full` | `category_full_load` |
| `09_AUTOMATION/VPS_STATUS_JSON.md` | `.md` | `4.17` | `2026-06-26T19:15:50` | `automation` | `full` | `category_full_load` |
| `AI_CONTEXT_FILE_INDEX.md` | `.md` | `5.41` | `2026-06-27T19:16:59` | `generated` | `index_only` | `generated_file_not_loaded_to_avoid_recursion` |
| `AI_CONTEXT_MANIFEST.json` | `.json` | `1.09` | `2026-06-27T18:13:18` | `manifest` | `full` | `category_full_load` |
| `AI_START_PROMPT.md` | `.md` | `116.55` | `2026-06-27T19:16:59` | `generated` | `index_only` | `generated_file_not_loaded_to_avoid_recursion` |
| `FULL_FILE_INDEX.md` | `.md` | `2.03` | `2026-06-27T17:20:15` | `generated` | `index_only` | `generated_file_not_loaded_to_avoid_recursion` |
| `NEXT_CHAT_SUMMARY.md` | `.md` | `1.37` | `2026-06-27T19:00:36` | `unknown` | `unknown` | `unknown_requires_decision` |
| `tools/build_context.py` | `.py` | `11.41` | `2026-06-27T18:13:06` | `script` | `full` | `category_full_load` |
| `tools/git_sync.ps1` | `.ps1` | `1.7` | `2026-06-26T16:28:05` | `script` | `full` | `category_full_load` |
| `tools/n8n_maintenance.sh` | `.sh` | `6.03` | `2026-06-26T20:29:24` | `script` | `full` | `category_full_load` |

## Unknown files requiring decision

- `NEXT_CHAT_SUMMARY.md` � `unknown_requires_decision`

```

## tools/build_context.py selected logic

```text
----- MATCH: CONFIG / lines 17-55 -----
0017:     "include_unknown_index_only": True,
0018:     "generated_files": ["AI_START_PROMPT.md", "AI_CONTEXT_FILE_INDEX.md", "FULL_FILE_INDEX.md"],
0019:     "full_load_categories": ["system", "global_context", "business_context", "project_core", "project_memory", "project_tasks", "project_log", "decision_log", "prompt", "module", "advisory_board", "automation", "script", "manifest"],
0020:     "index_only_categories": ["generated", "git_config", "obsidian_config", "unknown"],
0021: }
0022: 
0023: def normalize_rel(path: Path) -> str:
0024:     return path.relative_to(ROOT).as_posix()
0025: 
0026: def load_manifest() -> dict:
0027:     p = ROOT / "AI_CONTEXT_MANIFEST.json"
0028:     if not p.exists():
0029:         return DEFAULT_MANIFEST
0030:     try:
0031:         loaded = json.loads(p.read_text(encoding="utf-8-sig"))
0032:         m = DEFAULT_MANIFEST.copy()
0033:         m.update(loaded)
0034:         return m
0035:     except Exception as exc:
0036:         print(f"WARNING: Could not read AI_CONTEXT_MANIFEST.json: {exc}")
0037:         return DEFAULT_MANIFEST
0038: 
0039: def is_excluded_dir(path: Path, manifest: dict) -> bool:
0040:     parts = set(path.relative_to(ROOT).parts)
0041:     return any(x in parts for x in manifest.get("exclude_dirs", []))
0042: 
0043: def read_text_safe(path: Path):
0044:     warnings = []
0045:     try:
0046:         content = path.read_text(encoding="utf-8-sig")
0047:     except UnicodeDecodeError:
0048:         content = path.read_text(encoding="utf-8", errors="replace")
0049:         warnings.append("unicode_decode_replacement_used")
0050:     markers = ["�", "�", "?", "A", "�"]
0051:     found = [x for x in markers if x in content]
0052:     if found:
0053:         warnings.append("possible_mojibake_detected:" + ",".join(found))
0054:     return content, warnings
0055: 

----- MATCH: def normalize_rel / lines 20-58 -----
0020:     "index_only_categories": ["generated", "git_config", "obsidian_config", "unknown"],
0021: }
0022: 
0023: def normalize_rel(path: Path) -> str:
0024:     return path.relative_to(ROOT).as_posix()
0025: 
0026: def load_manifest() -> dict:
0027:     p = ROOT / "AI_CONTEXT_MANIFEST.json"
0028:     if not p.exists():
0029:         return DEFAULT_MANIFEST
0030:     try:
0031:         loaded = json.loads(p.read_text(encoding="utf-8-sig"))
0032:         m = DEFAULT_MANIFEST.copy()
0033:         m.update(loaded)
0034:         return m
0035:     except Exception as exc:
0036:         print(f"WARNING: Could not read AI_CONTEXT_MANIFEST.json: {exc}")
0037:         return DEFAULT_MANIFEST
0038: 
0039: def is_excluded_dir(path: Path, manifest: dict) -> bool:
0040:     parts = set(path.relative_to(ROOT).parts)
0041:     return any(x in parts for x in manifest.get("exclude_dirs", []))
0042: 
0043: def read_text_safe(path: Path):
0044:     warnings = []
0045:     try:
0046:         content = path.read_text(encoding="utf-8-sig")
0047:     except UnicodeDecodeError:
0048:         content = path.read_text(encoding="utf-8", errors="replace")
0049:         warnings.append("unicode_decode_replacement_used")
0050:     markers = ["�", "�", "?", "A", "�"]
0051:     found = [x for x in markers if x in content]
0052:     if found:
0053:         warnings.append("possible_mojibake_detected:" + ",".join(found))
0054:     return content, warnings
0055: 
0056: def classify_file(rel: str, suffix: str) -> str:
0057:     rel_l = rel.lower()
0058:     name = Path(rel).name.lower()

----- MATCH: def load_manifest / lines 23-61 -----
0023: def normalize_rel(path: Path) -> str:
0024:     return path.relative_to(ROOT).as_posix()
0025: 
0026: def load_manifest() -> dict:
0027:     p = ROOT / "AI_CONTEXT_MANIFEST.json"
0028:     if not p.exists():
0029:         return DEFAULT_MANIFEST
0030:     try:
0031:         loaded = json.loads(p.read_text(encoding="utf-8-sig"))
0032:         m = DEFAULT_MANIFEST.copy()
0033:         m.update(loaded)
0034:         return m
0035:     except Exception as exc:
0036:         print(f"WARNING: Could not read AI_CONTEXT_MANIFEST.json: {exc}")
0037:         return DEFAULT_MANIFEST
0038: 
0039: def is_excluded_dir(path: Path, manifest: dict) -> bool:
0040:     parts = set(path.relative_to(ROOT).parts)
0041:     return any(x in parts for x in manifest.get("exclude_dirs", []))
0042: 
0043: def read_text_safe(path: Path):
0044:     warnings = []
0045:     try:
0046:         content = path.read_text(encoding="utf-8-sig")
0047:     except UnicodeDecodeError:
0048:         content = path.read_text(encoding="utf-8", errors="replace")
0049:         warnings.append("unicode_decode_replacement_used")
0050:     markers = ["�", "�", "?", "A", "�"]
0051:     found = [x for x in markers if x in content]
0052:     if found:
0053:         warnings.append("possible_mojibake_detected:" + ",".join(found))
0054:     return content, warnings
0055: 
0056: def classify_file(rel: str, suffix: str) -> str:
0057:     rel_l = rel.lower()
0058:     name = Path(rel).name.lower()
0059:     if rel == "AI_CONTEXT_MANIFEST.json": return "manifest"
0060:     if name in {"ai_start_prompt.md", "ai_context_file_index.md", "full_file_index.md"}: return "generated"
0061:     if rel_l.startswith(".obsidian/"): return "obsidian_config"

----- MATCH: def is_excluded_dir / lines 36-74 -----
0036:         print(f"WARNING: Could not read AI_CONTEXT_MANIFEST.json: {exc}")
0037:         return DEFAULT_MANIFEST
0038: 
0039: def is_excluded_dir(path: Path, manifest: dict) -> bool:
0040:     parts = set(path.relative_to(ROOT).parts)
0041:     return any(x in parts for x in manifest.get("exclude_dirs", []))
0042: 
0043: def read_text_safe(path: Path):
0044:     warnings = []
0045:     try:
0046:         content = path.read_text(encoding="utf-8-sig")
0047:     except UnicodeDecodeError:
0048:         content = path.read_text(encoding="utf-8", errors="replace")
0049:         warnings.append("unicode_decode_replacement_used")
0050:     markers = ["�", "�", "?", "A", "�"]
0051:     found = [x for x in markers if x in content]
0052:     if found:
0053:         warnings.append("possible_mojibake_detected:" + ",".join(found))
0054:     return content, warnings
0055: 
0056: def classify_file(rel: str, suffix: str) -> str:
0057:     rel_l = rel.lower()
0058:     name = Path(rel).name.lower()
0059:     if rel == "AI_CONTEXT_MANIFEST.json": return "manifest"
0060:     if name in {"ai_start_prompt.md", "ai_context_file_index.md", "full_file_index.md"}: return "generated"
0061:     if rel_l.startswith(".obsidian/"): return "obsidian_config"
0062:     if name == ".gitignore" or rel_l.startswith(".git/"): return "git_config"
0063:     if rel_l.startswith("99_backups/"): return "backup"
0064:     if rel_l.startswith("00_system/"): return "system"
0065:     if rel_l.startswith("01_global_context/business_context/"): return "business_context"
0066:     if rel_l.startswith("01_global_context/"): return "global_context"
0067:     if rel_l.startswith("02_projects/ai_context_system/"):
0068:         if name == "project_memory.md": return "project_memory"
0069:         if name == "tasks.md": return "project_tasks"
0070:         if name == "log.md": return "project_log"
0071:         if name == "decisions.md": return "decision_log"
0072:         return "project_core"
0073:     if rel_l.startswith("03_modules/advisory_board/"): return "advisory_board"
0074:     if rel_l.startswith("03_modules/"): return "module"

----- MATCH: def read_text_safe / lines 40-78 -----
0040:     parts = set(path.relative_to(ROOT).parts)
0041:     return any(x in parts for x in manifest.get("exclude_dirs", []))
0042: 
0043: def read_text_safe(path: Path):
0044:     warnings = []
0045:     try:
0046:         content = path.read_text(encoding="utf-8-sig")
0047:     except UnicodeDecodeError:
0048:         content = path.read_text(encoding="utf-8", errors="replace")
0049:         warnings.append("unicode_decode_replacement_used")
0050:     markers = ["�", "�", "?", "A", "�"]
0051:     found = [x for x in markers if x in content]
0052:     if found:
0053:         warnings.append("possible_mojibake_detected:" + ",".join(found))
0054:     return content, warnings
0055: 
0056: def classify_file(rel: str, suffix: str) -> str:
0057:     rel_l = rel.lower()
0058:     name = Path(rel).name.lower()
0059:     if rel == "AI_CONTEXT_MANIFEST.json": return "manifest"
0060:     if name in {"ai_start_prompt.md", "ai_context_file_index.md", "full_file_index.md"}: return "generated"
0061:     if rel_l.startswith(".obsidian/"): return "obsidian_config"
0062:     if name == ".gitignore" or rel_l.startswith(".git/"): return "git_config"
0063:     if rel_l.startswith("99_backups/"): return "backup"
0064:     if rel_l.startswith("00_system/"): return "system"
0065:     if rel_l.startswith("01_global_context/business_context/"): return "business_context"
0066:     if rel_l.startswith("01_global_context/"): return "global_context"
0067:     if rel_l.startswith("02_projects/ai_context_system/"):
0068:         if name == "project_memory.md": return "project_memory"
0069:         if name == "tasks.md": return "project_tasks"
0070:         if name == "log.md": return "project_log"
0071:         if name == "decisions.md": return "decision_log"
0072:         return "project_core"
0073:     if rel_l.startswith("03_modules/advisory_board/"): return "advisory_board"
0074:     if rel_l.startswith("03_modules/"): return "module"
0075:     if rel_l.startswith("07_prompts/"): return "prompt"
0076:     if rel_l.startswith("09_automation/"): return "automation"
0077:     if rel_l.startswith("tools/"):
0078:         return "script" if suffix in {".py", ".ps1", ".sh"} else "automation"

----- MATCH: def classify_file / lines 53-91 -----
0053:         warnings.append("possible_mojibake_detected:" + ",".join(found))
0054:     return content, warnings
0055: 
0056: def classify_file(rel: str, suffix: str) -> str:
0057:     rel_l = rel.lower()
0058:     name = Path(rel).name.lower()
0059:     if rel == "AI_CONTEXT_MANIFEST.json": return "manifest"
0060:     if name in {"ai_start_prompt.md", "ai_context_file_index.md", "full_file_index.md"}: return "generated"
0061:     if rel_l.startswith(".obsidian/"): return "obsidian_config"
0062:     if name == ".gitignore" or rel_l.startswith(".git/"): return "git_config"
0063:     if rel_l.startswith("99_backups/"): return "backup"
0064:     if rel_l.startswith("00_system/"): return "system"
0065:     if rel_l.startswith("01_global_context/business_context/"): return "business_context"
0066:     if rel_l.startswith("01_global_context/"): return "global_context"
0067:     if rel_l.startswith("02_projects/ai_context_system/"):
0068:         if name == "project_memory.md": return "project_memory"
0069:         if name == "tasks.md": return "project_tasks"
0070:         if name == "log.md": return "project_log"
0071:         if name == "decisions.md": return "decision_log"
0072:         return "project_core"
0073:     if rel_l.startswith("03_modules/advisory_board/"): return "advisory_board"
0074:     if rel_l.startswith("03_modules/"): return "module"
0075:     if rel_l.startswith("07_prompts/"): return "prompt"
0076:     if rel_l.startswith("09_automation/"): return "automation"
0077:     if rel_l.startswith("tools/"):
0078:         return "script" if suffix in {".py", ".ps1", ".sh"} else "automation"
0079:     return "unknown"
0080: 
0081: def determine_context_mode(category, size_kb, manifest):
0082:     max_size = manifest.get("max_file_size_kb_for_full_load", 200)
0083:     if category == "generated": return "index_only", "generated_file_not_loaded_to_avoid_recursion"
0084:     if category == "backup": return "skipped", "backup_excluded"
0085:     if category == "obsidian_config": return "skipped", "obsidian_local_config_excluded"
0086:     if category == "git_config": return "index_only", "git_config_index_only"
0087:     if size_kb > max_size: return "index_only", f"file_too_large_over_{max_size}_kb"
0088:     if category == "unknown":
0089:         return ("unknown", "unknown_requires_decision") if manifest.get("include_unknown_index_only", True) else ("skipped", "unknown_skipped_by_manifest")
0090:     if category in set(manifest.get("full_load_categories", [])): return "full", "category_full_load"
0091:     if category in set(manifest.get("index_only_categories", [])): return "index_only", "category_index_only"

----- MATCH: CONFIG / lines 58-96 -----
0058:     name = Path(rel).name.lower()
0059:     if rel == "AI_CONTEXT_MANIFEST.json": return "manifest"
0060:     if name in {"ai_start_prompt.md", "ai_context_file_index.md", "full_file_index.md"}: return "generated"
0061:     if rel_l.startswith(".obsidian/"): return "obsidian_config"
0062:     if name == ".gitignore" or rel_l.startswith(".git/"): return "git_config"
0063:     if rel_l.startswith("99_backups/"): return "backup"
0064:     if rel_l.startswith("00_system/"): return "system"
0065:     if rel_l.startswith("01_global_context/business_context/"): return "business_context"
0066:     if rel_l.startswith("01_global_context/"): return "global_context"
0067:     if rel_l.startswith("02_projects/ai_context_system/"):
0068:         if name == "project_memory.md": return "project_memory"
0069:         if name == "tasks.md": return "project_tasks"
0070:         if name == "log.md": return "project_log"
0071:         if name == "decisions.md": return "decision_log"
0072:         return "project_core"
0073:     if rel_l.startswith("03_modules/advisory_board/"): return "advisory_board"
0074:     if rel_l.startswith("03_modules/"): return "module"
0075:     if rel_l.startswith("07_prompts/"): return "prompt"
0076:     if rel_l.startswith("09_automation/"): return "automation"
0077:     if rel_l.startswith("tools/"):
0078:         return "script" if suffix in {".py", ".ps1", ".sh"} else "automation"
0079:     return "unknown"
0080: 
0081: def determine_context_mode(category, size_kb, manifest):
0082:     max_size = manifest.get("max_file_size_kb_for_full_load", 200)
0083:     if category == "generated": return "index_only", "generated_file_not_loaded_to_avoid_recursion"
0084:     if category == "backup": return "skipped", "backup_excluded"
0085:     if category == "obsidian_config": return "skipped", "obsidian_local_config_excluded"
0086:     if category == "git_config": return "index_only", "git_config_index_only"
0087:     if size_kb > max_size: return "index_only", f"file_too_large_over_{max_size}_kb"
0088:     if category == "unknown":
0089:         return ("unknown", "unknown_requires_decision") if manifest.get("include_unknown_index_only", True) else ("skipped", "unknown_skipped_by_manifest")
0090:     if category in set(manifest.get("full_load_categories", [])): return "full", "category_full_load"
0091:     if category in set(manifest.get("index_only_categories", [])): return "index_only", "category_index_only"
0092:     return "unknown", "no_matching_context_rule"
0093: 
0094: def scan_repo(manifest):
0095:     root = ROOT / manifest.get("scan_root", ".")
0096:     exts = set(manifest.get("include_extensions", []))

----- MATCH: CONFIG / lines 59-97 -----
0059:     if rel == "AI_CONTEXT_MANIFEST.json": return "manifest"
0060:     if name in {"ai_start_prompt.md", "ai_context_file_index.md", "full_file_index.md"}: return "generated"
0061:     if rel_l.startswith(".obsidian/"): return "obsidian_config"
0062:     if name == ".gitignore" or rel_l.startswith(".git/"): return "git_config"
0063:     if rel_l.startswith("99_backups/"): return "backup"
0064:     if rel_l.startswith("00_system/"): return "system"
0065:     if rel_l.startswith("01_global_context/business_context/"): return "business_context"
0066:     if rel_l.startswith("01_global_context/"): return "global_context"
0067:     if rel_l.startswith("02_projects/ai_context_system/"):
0068:         if name == "project_memory.md": return "project_memory"
0069:         if name == "tasks.md": return "project_tasks"
0070:         if name == "log.md": return "project_log"
0071:         if name == "decisions.md": return "decision_log"
0072:         return "project_core"
0073:     if rel_l.startswith("03_modules/advisory_board/"): return "advisory_board"
0074:     if rel_l.startswith("03_modules/"): return "module"
0075:     if rel_l.startswith("07_prompts/"): return "prompt"
0076:     if rel_l.startswith("09_automation/"): return "automation"
0077:     if rel_l.startswith("tools/"):
0078:         return "script" if suffix in {".py", ".ps1", ".sh"} else "automation"
0079:     return "unknown"
0080: 
0081: def determine_context_mode(category, size_kb, manifest):
0082:     max_size = manifest.get("max_file_size_kb_for_full_load", 200)
0083:     if category == "generated": return "index_only", "generated_file_not_loaded_to_avoid_recursion"
0084:     if category == "backup": return "skipped", "backup_excluded"
0085:     if category == "obsidian_config": return "skipped", "obsidian_local_config_excluded"
0086:     if category == "git_config": return "index_only", "git_config_index_only"
0087:     if size_kb > max_size: return "index_only", f"file_too_large_over_{max_size}_kb"
0088:     if category == "unknown":
0089:         return ("unknown", "unknown_requires_decision") if manifest.get("include_unknown_index_only", True) else ("skipped", "unknown_skipped_by_manifest")
0090:     if category in set(manifest.get("full_load_categories", [])): return "full", "category_full_load"
0091:     if category in set(manifest.get("index_only_categories", [])): return "index_only", "category_index_only"
0092:     return "unknown", "no_matching_context_rule"
0093: 
0094: def scan_repo(manifest):
0095:     root = ROOT / manifest.get("scan_root", ".")
0096:     exts = set(manifest.get("include_extensions", []))
0097:     excluded_files = set(manifest.get("exclude_files", []))

----- MATCH: def determine_context_mode / lines 78-116 -----
0078:         return "script" if suffix in {".py", ".ps1", ".sh"} else "automation"
0079:     return "unknown"
0080: 
0081: def determine_context_mode(category, size_kb, manifest):
0082:     max_size = manifest.get("max_file_size_kb_for_full_load", 200)
0083:     if category == "generated": return "index_only", "generated_file_not_loaded_to_avoid_recursion"
0084:     if category == "backup": return "skipped", "backup_excluded"
0085:     if category == "obsidian_config": return "skipped", "obsidian_local_config_excluded"
0086:     if category == "git_config": return "index_only", "git_config_index_only"
0087:     if size_kb > max_size: return "index_only", f"file_too_large_over_{max_size}_kb"
0088:     if category == "unknown":
0089:         return ("unknown", "unknown_requires_decision") if manifest.get("include_unknown_index_only", True) else ("skipped", "unknown_skipped_by_manifest")
0090:     if category in set(manifest.get("full_load_categories", [])): return "full", "category_full_load"
0091:     if category in set(manifest.get("index_only_categories", [])): return "index_only", "category_index_only"
0092:     return "unknown", "no_matching_context_rule"
0093: 
0094: def scan_repo(manifest):
0095:     root = ROOT / manifest.get("scan_root", ".")
0096:     exts = set(manifest.get("include_extensions", []))
0097:     excluded_files = set(manifest.get("exclude_files", []))
0098:     records = []
0099:     for path in root.rglob("*"):
0100:         if path.is_dir() or is_excluded_dir(path, manifest):
0101:             continue
0102:         rel = normalize_rel(path)
0103:         if rel in excluded_files:
0104:             continue
0105:         suffix = path.suffix.lower()
0106:         if suffix not in exts and path.name != ".gitignore":
0107:             continue
0108:         st = path.stat()
0109:         size_kb = round(st.st_size / 1024, 2)
0110:         category = classify_file(rel, suffix)
0111:         mode, reason = determine_context_mode(category, size_kb, manifest)
0112:         records.append({"path": rel, "extension": suffix or "[none]", "size_kb": size_kb, "modified": datetime.fromtimestamp(st.st_mtime).isoformat(timespec="seconds"), "category": category, "context_mode": mode, "reason": reason})
0113:     return sorted(records, key=lambda r: r["path"].lower())
0114: 
0115: def build_index(records, manifest):
0116:     lines = ["# AI_CONTEXT_FILE_INDEX", "", f"Generated: {datetime.now().isoformat(timespec='seconds')}", "", f"Project: `{manifest.get('project','unknown')}`", "", "## Summary", ""]

----- MATCH: CONFIG / lines 82-120 -----
0082:     max_size = manifest.get("max_file_size_kb_for_full_load", 200)
0083:     if category == "generated": return "index_only", "generated_file_not_loaded_to_avoid_recursion"
0084:     if category == "backup": return "skipped", "backup_excluded"
0085:     if category == "obsidian_config": return "skipped", "obsidian_local_config_excluded"
0086:     if category == "git_config": return "index_only", "git_config_index_only"
0087:     if size_kb > max_size: return "index_only", f"file_too_large_over_{max_size}_kb"
0088:     if category == "unknown":
0089:         return ("unknown", "unknown_requires_decision") if manifest.get("include_unknown_index_only", True) else ("skipped", "unknown_skipped_by_manifest")
0090:     if category in set(manifest.get("full_load_categories", [])): return "full", "category_full_load"
0091:     if category in set(manifest.get("index_only_categories", [])): return "index_only", "category_index_only"
0092:     return "unknown", "no_matching_context_rule"
0093: 
0094: def scan_repo(manifest):
0095:     root = ROOT / manifest.get("scan_root", ".")
0096:     exts = set(manifest.get("include_extensions", []))
0097:     excluded_files = set(manifest.get("exclude_files", []))
0098:     records = []
0099:     for path in root.rglob("*"):
0100:         if path.is_dir() or is_excluded_dir(path, manifest):
0101:             continue
0102:         rel = normalize_rel(path)
0103:         if rel in excluded_files:
0104:             continue
0105:         suffix = path.suffix.lower()
0106:         if suffix not in exts and path.name != ".gitignore":
0107:             continue
0108:         st = path.stat()
0109:         size_kb = round(st.st_size / 1024, 2)
0110:         category = classify_file(rel, suffix)
0111:         mode, reason = determine_context_mode(category, size_kb, manifest)
0112:         records.append({"path": rel, "extension": suffix or "[none]", "size_kb": size_kb, "modified": datetime.fromtimestamp(st.st_mtime).isoformat(timespec="seconds"), "category": category, "context_mode": mode, "reason": reason})
0113:     return sorted(records, key=lambda r: r["path"].lower())
0114: 
0115: def build_index(records, manifest):
0116:     lines = ["# AI_CONTEXT_FILE_INDEX", "", f"Generated: {datetime.now().isoformat(timespec='seconds')}", "", f"Project: `{manifest.get('project','unknown')}`", "", "## Summary", ""]
0117:     for mode in ["full", "index_only", "unknown", "skipped"]:
0118:         lines.append(f"- {mode}: `{sum(1 for r in records if r['context_mode']==mode)}`")
0119:     lines += ["", "## Files", "", "| Path | Ext | Size KB | Modified | Category | Context mode | Reason |", "|---|---:|---:|---|---|---|---|"]
0120:     for r in records:

----- MATCH: CONFIG / lines 83-121 -----
0083:     if category == "generated": return "index_only", "generated_file_not_loaded_to_avoid_recursion"
0084:     if category == "backup": return "skipped", "backup_excluded"
0085:     if category == "obsidian_config": return "skipped", "obsidian_local_config_excluded"
0086:     if category == "git_config": return "index_only", "git_config_index_only"
0087:     if size_kb > max_size: return "index_only", f"file_too_large_over_{max_size}_kb"
0088:     if category == "unknown":
0089:         return ("unknown", "unknown_requires_decision") if manifest.get("include_unknown_index_only", True) else ("skipped", "unknown_skipped_by_manifest")
0090:     if category in set(manifest.get("full_load_categories", [])): return "full", "category_full_load"
0091:     if category in set(manifest.get("index_only_categories", [])): return "index_only", "category_index_only"
0092:     return "unknown", "no_matching_context_rule"
0093: 
0094: def scan_repo(manifest):
0095:     root = ROOT / manifest.get("scan_root", ".")
0096:     exts = set(manifest.get("include_extensions", []))
0097:     excluded_files = set(manifest.get("exclude_files", []))
0098:     records = []
0099:     for path in root.rglob("*"):
0100:         if path.is_dir() or is_excluded_dir(path, manifest):
0101:             continue
0102:         rel = normalize_rel(path)
0103:         if rel in excluded_files:
0104:             continue
0105:         suffix = path.suffix.lower()
0106:         if suffix not in exts and path.name != ".gitignore":
0107:             continue
0108:         st = path.stat()
0109:         size_kb = round(st.st_size / 1024, 2)
0110:         category = classify_file(rel, suffix)
0111:         mode, reason = determine_context_mode(category, size_kb, manifest)
0112:         records.append({"path": rel, "extension": suffix or "[none]", "size_kb": size_kb, "modified": datetime.fromtimestamp(st.st_mtime).isoformat(timespec="seconds"), "category": category, "context_mode": mode, "reason": reason})
0113:     return sorted(records, key=lambda r: r["path"].lower())
0114: 
0115: def build_index(records, manifest):
0116:     lines = ["# AI_CONTEXT_FILE_INDEX", "", f"Generated: {datetime.now().isoformat(timespec='seconds')}", "", f"Project: `{manifest.get('project','unknown')}`", "", "## Summary", ""]
0117:     for mode in ["full", "index_only", "unknown", "skipped"]:
0118:         lines.append(f"- {mode}: `{sum(1 for r in records if r['context_mode']==mode)}`")
0119:     lines += ["", "## Files", "", "| Path | Ext | Size KB | Modified | Category | Context mode | Reason |", "|---|---:|---:|---|---|---|---|"]
0120:     for r in records:
0121:         lines.append(f"| `{r['path']}` | `{r['extension']}` | `{r['size_kb']}` | `{r['modified']}` | `{r['category']}` | `{r['context_mode']}` | `{r['reason']}` |")

----- MATCH: def scan_repo / lines 91-129 -----
0091:     if category in set(manifest.get("index_only_categories", [])): return "index_only", "category_index_only"
0092:     return "unknown", "no_matching_context_rule"
0093: 
0094: def scan_repo(manifest):
0095:     root = ROOT / manifest.get("scan_root", ".")
0096:     exts = set(manifest.get("include_extensions", []))
0097:     excluded_files = set(manifest.get("exclude_files", []))
0098:     records = []
0099:     for path in root.rglob("*"):
0100:         if path.is_dir() or is_excluded_dir(path, manifest):
0101:             continue
0102:         rel = normalize_rel(path)
0103:         if rel in excluded_files:
0104:             continue
0105:         suffix = path.suffix.lower()
0106:         if suffix not in exts and path.name != ".gitignore":
0107:             continue
0108:         st = path.stat()
0109:         size_kb = round(st.st_size / 1024, 2)
0110:         category = classify_file(rel, suffix)
0111:         mode, reason = determine_context_mode(category, size_kb, manifest)
0112:         records.append({"path": rel, "extension": suffix or "[none]", "size_kb": size_kb, "modified": datetime.fromtimestamp(st.st_mtime).isoformat(timespec="seconds"), "category": category, "context_mode": mode, "reason": reason})
0113:     return sorted(records, key=lambda r: r["path"].lower())
0114: 
0115: def build_index(records, manifest):
0116:     lines = ["# AI_CONTEXT_FILE_INDEX", "", f"Generated: {datetime.now().isoformat(timespec='seconds')}", "", f"Project: `{manifest.get('project','unknown')}`", "", "## Summary", ""]
0117:     for mode in ["full", "index_only", "unknown", "skipped"]:
0118:         lines.append(f"- {mode}: `{sum(1 for r in records if r['context_mode']==mode)}`")
0119:     lines += ["", "## Files", "", "| Path | Ext | Size KB | Modified | Category | Context mode | Reason |", "|---|---:|---:|---|---|---|---|"]
0120:     for r in records:
0121:         lines.append(f"| `{r['path']}` | `{r['extension']}` | `{r['size_kb']}` | `{r['modified']}` | `{r['category']}` | `{r['context_mode']}` | `{r['reason']}` |")
0122:     unknown = [r for r in records if r["context_mode"] == "unknown"]
0123:     if unknown:
0124:         lines += ["", "## Unknown files requiring decision", ""]
0125:         lines += [f"- `{r['path']}` � `{r['reason']}`" for r in unknown]
0126:     return "\n".join(lines) + "\n"
0127: 
0128: def board_status(records):
0129:     rec = next((r for r in records if r["path"] == "03_MODULES/ADVISORY_BOARD/BOARD_PROFILES.md"), None)

----- MATCH: def build_index / lines 112-150 -----
0112:         records.append({"path": rel, "extension": suffix or "[none]", "size_kb": size_kb, "modified": datetime.fromtimestamp(st.st_mtime).isoformat(timespec="seconds"), "category": category, "context_mode": mode, "reason": reason})
0113:     return sorted(records, key=lambda r: r["path"].lower())
0114: 
0115: def build_index(records, manifest):
0116:     lines = ["# AI_CONTEXT_FILE_INDEX", "", f"Generated: {datetime.now().isoformat(timespec='seconds')}", "", f"Project: `{manifest.get('project','unknown')}`", "", "## Summary", ""]
0117:     for mode in ["full", "index_only", "unknown", "skipped"]:
0118:         lines.append(f"- {mode}: `{sum(1 for r in records if r['context_mode']==mode)}`")
0119:     lines += ["", "## Files", "", "| Path | Ext | Size KB | Modified | Category | Context mode | Reason |", "|---|---:|---:|---|---|---|---|"]
0120:     for r in records:
0121:         lines.append(f"| `{r['path']}` | `{r['extension']}` | `{r['size_kb']}` | `{r['modified']}` | `{r['category']}` | `{r['context_mode']}` | `{r['reason']}` |")
0122:     unknown = [r for r in records if r["context_mode"] == "unknown"]
0123:     if unknown:
0124:         lines += ["", "## Unknown files requiring decision", ""]
0125:         lines += [f"- `{r['path']}` � `{r['reason']}`" for r in unknown]
0126:     return "\n".join(lines) + "\n"
0127: 
0128: def board_status(records):
0129:     rec = next((r for r in records if r["path"] == "03_MODULES/ADVISORY_BOARD/BOARD_PROFILES.md"), None)
0130:     if not rec: return "missing"
0131:     content, _ = read_text_safe(ROOT / rec["path"])
0132:     return "active" if content.strip() else "empty"
0133: 
0134: def header(records, manifest):
0135:     unknown = [r for r in records if r["context_mode"] == "unknown"]
0136:     full = [r for r in records if r["context_mode"] == "full"]
0137:     index_only = [r for r in records if r["context_mode"] == "index_only"]
0138:     skipped = [r for r in records if r["context_mode"] == "skipped"]
0139:     bs = board_status(records)
0140:     lines = [
0141:         "# AI_START_PROMPT", "", f"Generated: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}", "",
0142:         "## ROLA AI", "", "Pracujemy nad projektem `AI_Context_System`.", "", "Nie jeste� zwyk�ym chatbotem do lu�nej rozmowy.",
0143:         "Masz dzia�a� jako asystent operacyjny projektu, kt�rego g��wnym celem jest utrzymanie ci�g�o�ci pracy mimo ograniczonego okna kontekstowego AI.", "",
0144:         "## G��WNY CEL PROJEKTU", "", "Celem projektu jest prosty, lokalny i kontrolowany system pami�ci projektowej, kt�ry automatycznie wykrywa istotne pliki, foldery, skrypty, modu�y, automatyzacje i nowe �r�d�a prawdy.", "",
0145:         "## NAJWA�NIEJSZE ZASADY WSPӣPRACY", "", "1. Jedno zadanie naraz.", "2. Kr�tko i konkretnie.", "3. Bez lania wody.", "4. Nie zgaduj stanu projektu.", "5. Opieraj si� na plikach �r�d�owych i indeksie repozytorium.", "6. Je�li s� sprzeczno�ci albo braki � wska� je wprost.", "7. Ka�dy krok ma mie� oczekiwany efekt.", "",
0146:         "## HIERARCHIA �R�DE� PRAWDY", "", "1. `00_SYSTEM/AI_WORK_PROTOCOL.md`", "2. `00_SYSTEM/WORK_RULES.md`", "3. `AI_CONTEXT_MANIFEST.json`", "4. `AI_CONTEXT_FILE_INDEX.md`", "5. `01_GLOBAL_CONTEXT/`", "6. `02_PROJECTS/AI_Context_System/`", "7. `03_MODULES/`", "8. `07_PROMPTS/`", "9. `09_AUTOMATION/`", "10. `tools/`", "",
0147:         "## AKTYWACJA RADY DORADCZEJ", "", "Przy decyzjach technicznych, biznesowych i strategicznych oceniaj propozycje przez pryzmat profili z `03_MODULES/ADVISORY_BOARD/BOARD_PROFILES.md`.", "", f"Status rady doradczej: `{bs}`", ""
0148:     ]
0149:     if bs != "active":
0150:         lines += ["UWAGA: rada doradcza nie jest realnie skonfigurowana. Nie udawaj, �e dzia�a; zg�o� to jako brak do uzupe�nienia.", ""]

----- MATCH: def board_status / lines 125-163 -----
0125:         lines += [f"- `{r['path']}` � `{r['reason']}`" for r in unknown]
0126:     return "\n".join(lines) + "\n"
0127: 
0128: def board_status(records):
0129:     rec = next((r for r in records if r["path"] == "03_MODULES/ADVISORY_BOARD/BOARD_PROFILES.md"), None)
0130:     if not rec: return "missing"
0131:     content, _ = read_text_safe(ROOT / rec["path"])
0132:     return "active" if content.strip() else "empty"
0133: 
0134: def header(records, manifest):
0135:     unknown = [r for r in records if r["context_mode"] == "unknown"]
0136:     full = [r for r in records if r["context_mode"] == "full"]
0137:     index_only = [r for r in records if r["context_mode"] == "index_only"]
0138:     skipped = [r for r in records if r["context_mode"] == "skipped"]
0139:     bs = board_status(records)
0140:     lines = [
0141:         "# AI_START_PROMPT", "", f"Generated: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}", "",
0142:         "## ROLA AI", "", "Pracujemy nad projektem `AI_Context_System`.", "", "Nie jeste� zwyk�ym chatbotem do lu�nej rozmowy.",
0143:         "Masz dzia�a� jako asystent operacyjny projektu, kt�rego g��wnym celem jest utrzymanie ci�g�o�ci pracy mimo ograniczonego okna kontekstowego AI.", "",
0144:         "## G��WNY CEL PROJEKTU", "", "Celem projektu jest prosty, lokalny i kontrolowany system pami�ci projektowej, kt�ry automatycznie wykrywa istotne pliki, foldery, skrypty, modu�y, automatyzacje i nowe �r�d�a prawdy.", "",
0145:         "## NAJWA�NIEJSZE ZASADY WSPӣPRACY", "", "1. Jedno zadanie naraz.", "2. Kr�tko i konkretnie.", "3. Bez lania wody.", "4. Nie zgaduj stanu projektu.", "5. Opieraj si� na plikach �r�d�owych i indeksie repozytorium.", "6. Je�li s� sprzeczno�ci albo braki � wska� je wprost.", "7. Ka�dy krok ma mie� oczekiwany efekt.", "",
0146:         "## HIERARCHIA �R�DE� PRAWDY", "", "1. `00_SYSTEM/AI_WORK_PROTOCOL.md`", "2. `00_SYSTEM/WORK_RULES.md`", "3. `AI_CONTEXT_MANIFEST.json`", "4. `AI_CONTEXT_FILE_INDEX.md`", "5. `01_GLOBAL_CONTEXT/`", "6. `02_PROJECTS/AI_Context_System/`", "7. `03_MODULES/`", "8. `07_PROMPTS/`", "9. `09_AUTOMATION/`", "10. `tools/`", "",
0147:         "## AKTYWACJA RADY DORADCZEJ", "", "Przy decyzjach technicznych, biznesowych i strategicznych oceniaj propozycje przez pryzmat profili z `03_MODULES/ADVISORY_BOARD/BOARD_PROFILES.md`.", "", f"Status rady doradczej: `{bs}`", ""
0148:     ]
0149:     if bs != "active":
0150:         lines += ["UWAGA: rada doradcza nie jest realnie skonfigurowana. Nie udawaj, �e dzia�a; zg�o� to jako brak do uzupe�nienia.", ""]
0151:     lines += ["## STATUS SYSTEMU KONTEKSTU", "", f"- Pliki za�adowane w pe�nej tre�ci: `{len(full)}`", f"- Pliki tylko w indeksie: `{len(index_only)}`", f"- Pliki pomini�te: `{len(skipped)}`", f"- Pliki unknown / wymagaj�ce decyzji: `{len(unknown)}`", "", "Pe�ny indeks: `AI_CONTEXT_FILE_INDEX.md`", "", "## NOWE / NIEZAKLASYFIKOWANE PLIKI � WYMAGAJ� DECYZJI", ""]
0152:     lines += ([f"- `{r['path']}` � `{r['reason']}`" for r in unknown] if unknown else ["Brak plik�w unknown."])
0153:     lines += ["", "## PLIKI ZA�ADOWANE W PE�NEJ TRE�CI", ""] + [f"- `{r['path']}` � `{r['category']}`" for r in full]
0154:     lines += ["", "## ZADANIE STARTOWE DLA AI", "", "1. Podsumuj aktualny stan projektu w maksymalnie 10 punktach.", "2. Wska� dok�adnie jedno najbli�sze zadanie.", "3. Je�li s� pliki unknown, zg�o� je jako wymagaj�ce decyzji.", "4. Je�li rada doradcza jest pusta, zg�o� to jako brak konfiguracji.", "", "---", "", "# ZA�ADOWANY KONTEKST PROJEKTU", ""]
0155:     return "\n".join(lines)
0156: 
0157: def render_file(record):
0158:     path = ROOT / record["path"]
0159:     content, warnings = read_text_safe(path)
0160:     lang = {".md":"markdown", ".py":"python", ".json":"json", ".ps1":"powershell", ".sh":"bash", ".yaml":"yaml", ".yml":"yaml"}.get(path.suffix.lower(), "text")
0161:     warn = ""
0162:     if warnings:
0163:         warn = "\n**WARNINGS:**\n" + "\n".join(f"- `{w}`" for w in warnings) + "\n"

----- MATCH: def header / lines 131-169 -----
0131:     content, _ = read_text_safe(ROOT / rec["path"])
0132:     return "active" if content.strip() else "empty"
0133: 
0134: def header(records, manifest):
0135:     unknown = [r for r in records if r["context_mode"] == "unknown"]
0136:     full = [r for r in records if r["context_mode"] == "full"]
0137:     index_only = [r for r in records if r["context_mode"] == "index_only"]
0138:     skipped = [r for r in records if r["context_mode"] == "skipped"]
0139:     bs = board_status(records)
0140:     lines = [
0141:         "# AI_START_PROMPT", "", f"Generated: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}", "",
0142:         "## ROLA AI", "", "Pracujemy nad projektem `AI_Context_System`.", "", "Nie jeste� zwyk�ym chatbotem do lu�nej rozmowy.",
0143:         "Masz dzia�a� jako asystent operacyjny projektu, kt�rego g��wnym celem jest utrzymanie ci�g�o�ci pracy mimo ograniczonego okna kontekstowego AI.", "",
0144:         "## G��WNY CEL PROJEKTU", "", "Celem projektu jest prosty, lokalny i kontrolowany system pami�ci projektowej, kt�ry automatycznie wykrywa istotne pliki, foldery, skrypty, modu�y, automatyzacje i nowe �r�d�a prawdy.", "",
0145:         "## NAJWA�NIEJSZE ZASADY WSPӣPRACY", "", "1. Jedno zadanie naraz.", "2. Kr�tko i konkretnie.", "3. Bez lania wody.", "4. Nie zgaduj stanu projektu.", "5. Opieraj si� na plikach �r�d�owych i indeksie repozytorium.", "6. Je�li s� sprzeczno�ci albo braki � wska� je wprost.", "7. Ka�dy krok ma mie� oczekiwany efekt.", "",
0146:         "## HIERARCHIA �R�DE� PRAWDY", "", "1. `00_SYSTEM/AI_WORK_PROTOCOL.md`", "2. `00_SYSTEM/WORK_RULES.md`", "3. `AI_CONTEXT_MANIFEST.json`", "4. `AI_CONTEXT_FILE_INDEX.md`", "5. `01_GLOBAL_CONTEXT/`", "6. `02_PROJECTS/AI_Context_System/`", "7. `03_MODULES/`", "8. `07_PROMPTS/`", "9. `09_AUTOMATION/`", "10. `tools/`", "",
0147:         "## AKTYWACJA RADY DORADCZEJ", "", "Przy decyzjach technicznych, biznesowych i strategicznych oceniaj propozycje przez pryzmat profili z `03_MODULES/ADVISORY_BOARD/BOARD_PROFILES.md`.", "", f"Status rady doradczej: `{bs}`", ""
0148:     ]
0149:     if bs != "active":
0150:         lines += ["UWAGA: rada doradcza nie jest realnie skonfigurowana. Nie udawaj, �e dzia�a; zg�o� to jako brak do uzupe�nienia.", ""]
0151:     lines += ["## STATUS SYSTEMU KONTEKSTU", "", f"- Pliki za�adowane w pe�nej tre�ci: `{len(full)}`", f"- Pliki tylko w indeksie: `{len(index_only)}`", f"- Pliki pomini�te: `{len(skipped)}`", f"- Pliki unknown / wymagaj�ce decyzji: `{len(unknown)}`", "", "Pe�ny indeks: `AI_CONTEXT_FILE_INDEX.md`", "", "## NOWE / NIEZAKLASYFIKOWANE PLIKI � WYMAGAJ� DECYZJI", ""]
0152:     lines += ([f"- `{r['path']}` � `{r['reason']}`" for r in unknown] if unknown else ["Brak plik�w unknown."])
0153:     lines += ["", "## PLIKI ZA�ADOWANE W PE�NEJ TRE�CI", ""] + [f"- `{r['path']}` � `{r['category']}`" for r in full]
0154:     lines += ["", "## ZADANIE STARTOWE DLA AI", "", "1. Podsumuj aktualny stan projektu w maksymalnie 10 punktach.", "2. Wska� dok�adnie jedno najbli�sze zadanie.", "3. Je�li s� pliki unknown, zg�o� je jako wymagaj�ce decyzji.", "4. Je�li rada doradcza jest pusta, zg�o� to jako brak konfiguracji.", "", "---", "", "# ZA�ADOWANY KONTEKST PROJEKTU", ""]
0155:     return "\n".join(lines)
0156: 
0157: def render_file(record):
0158:     path = ROOT / record["path"]
0159:     content, warnings = read_text_safe(path)
0160:     lang = {".md":"markdown", ".py":"python", ".json":"json", ".ps1":"powershell", ".sh":"bash", ".yaml":"yaml", ".yml":"yaml"}.get(path.suffix.lower(), "text")
0161:     warn = ""
0162:     if warnings:
0163:         warn = "\n**WARNINGS:**\n" + "\n".join(f"- `{w}`" for w in warnings) + "\n"
0164:     return f"""
0165: ---
0166: 
0167: ## FILE: {record['path']}
0168: 
0169: Category: `{record['category']}`  

----- MATCH: def render_file / lines 154-192 -----
0154:     lines += ["", "## ZADANIE STARTOWE DLA AI", "", "1. Podsumuj aktualny stan projektu w maksymalnie 10 punktach.", "2. Wska� dok�adnie jedno najbli�sze zadanie.", "3. Je�li s� pliki unknown, zg�o� je jako wymagaj�ce decyzji.", "4. Je�li rada doradcza jest pusta, zg�o� to jako brak konfiguracji.", "", "---", "", "# ZA�ADOWANY KONTEKST PROJEKTU", ""]
0155:     return "\n".join(lines)
0156: 
0157: def render_file(record):
0158:     path = ROOT / record["path"]
0159:     content, warnings = read_text_safe(path)
0160:     lang = {".md":"markdown", ".py":"python", ".json":"json", ".ps1":"powershell", ".sh":"bash", ".yaml":"yaml", ".yml":"yaml"}.get(path.suffix.lower(), "text")
0161:     warn = ""
0162:     if warnings:
0163:         warn = "\n**WARNINGS:**\n" + "\n".join(f"- `{w}`" for w in warnings) + "\n"
0164:     return f"""
0165: ---
0166: 
0167: ## FILE: {record['path']}
0168: 
0169: Category: `{record['category']}`  
0170: Context mode: `{record['context_mode']}`  
0171: Reason: `{record['reason']}`  
0172: Size: `{record['size_kb']} KB`  
0173: Modified: `{record['modified']}`
0174: {warn}
0175: ```{lang}
0176: {content}
0177: ```
0178: 
0179: """
0180: 
0181: def build_prompt(records, manifest):
0182:     parts = [header(records, manifest)]
0183:     for r in records:
0184:         if r["context_mode"] == "full":
0185:             parts.append(render_file(r))
0186:     return "".join(parts)
0187: 
0188: def main():
0189:     manifest = load_manifest()
0190:     records = scan_repo(manifest)
0191:     out_index = ROOT / manifest.get("output_index", "AI_CONTEXT_FILE_INDEX.md")
0192:     out_prompt = ROOT / manifest.get("output_prompt", "AI_START_PROMPT.md")

----- MATCH: def build_prompt / lines 178-209 -----
0178: 
0179: """
0180: 
0181: def build_prompt(records, manifest):
0182:     parts = [header(records, manifest)]
0183:     for r in records:
0184:         if r["context_mode"] == "full":
0185:             parts.append(render_file(r))
0186:     return "".join(parts)
0187: 
0188: def main():
0189:     manifest = load_manifest()
0190:     records = scan_repo(manifest)
0191:     out_index = ROOT / manifest.get("output_index", "AI_CONTEXT_FILE_INDEX.md")
0192:     out_prompt = ROOT / manifest.get("output_prompt", "AI_START_PROMPT.md")
0193:     out_index.write_text(build_index(records, manifest), encoding="utf-8")
0194:     out_prompt.write_text(build_prompt(records, manifest), encoding="utf-8")
0195:     print(f"Generated: {out_prompt}")
0196:     print(f"Generated: {out_index}")
0197:     print("")
0198:     print("Context summary:")
0199:     for mode in ["full", "index_only", "unknown"]:
0200:         print(f" - {mode}: {sum(1 for r in records if r['context_mode']==mode)}")
0201:     unknown = [r for r in records if r["context_mode"] == "unknown"]
0202:     if unknown:
0203:         print("")
0204:         print("Unknown files requiring decision:")
0205:         for r in unknown:
0206:             print(f" - {r['path']}")
0207: 
0208: if __name__ == "__main__":
0209:     main()

----- MATCH: def main / lines 185-209 -----
0185:             parts.append(render_file(r))
0186:     return "".join(parts)
0187: 
0188: def main():
0189:     manifest = load_manifest()
0190:     records = scan_repo(manifest)
0191:     out_index = ROOT / manifest.get("output_index", "AI_CONTEXT_FILE_INDEX.md")
0192:     out_prompt = ROOT / manifest.get("output_prompt", "AI_START_PROMPT.md")
0193:     out_index.write_text(build_index(records, manifest), encoding="utf-8")
0194:     out_prompt.write_text(build_prompt(records, manifest), encoding="utf-8")
0195:     print(f"Generated: {out_prompt}")
0196:     print(f"Generated: {out_index}")
0197:     print("")
0198:     print("Context summary:")
0199:     for mode in ["full", "index_only", "unknown"]:
0200:         print(f" - {mode}: {sum(1 for r in records if r['context_mode']==mode)}")
0201:     unknown = [r for r in records if r["context_mode"] == "unknown"]
0202:     if unknown:
0203:         print("")
0204:         print("Unknown files requiring decision:")
0205:         for r in unknown:
0206:             print(f" - {r['path']}")
0207: 
0208: if __name__ == "__main__":
0209:     main()

```

## tools files

```text

Name               Length LastWriteTime      
----               ------ -------------      
ai_audit_pack.ps1    3493 2026-06-27 21:16:02
build_context.py    11688 2026-06-27 18:13:06
git_sync.ps1         1743 2026-06-26 16:28:05
n8n_maintenance.sh   6179 2026-06-26 20:29:24



```

## root files

```text

Name                     Length LastWriteTime      
----                     ------ -------------      
.gitignore                  710 2026-06-26 16:23:29
AI_AUDIT_PACK.md          51894 2026-06-27 21:18:19
AI_CONTEXT_FILE_INDEX.md   5542 2026-06-27 20:40:31
AI_CONTEXT_MANIFEST.json   1112 2026-06-27 18:13:18
AI_START_PROMPT.md       116483 2026-06-27 21:15:48
ARCHITECTURE_AUDIT.md     73664 2026-06-27 17:56:26
FILE_TREE_AUDIT.txt        6729 2026-06-27 20:49:59
FULL_FILE_INDEX.md         2081 2026-06-27 17:20:15
NEXT_CHAT_SUMMARY.md       1404 2026-06-27 19:00:36



```

## AI_START_PROMPT suspicious hits

```text

LineNumber Line                                                                                                                                            
---------- ----                                                                                                                                            
        43 Status rady doradczej: `active`                                                                                                                 
        90 - `tools/build_context.py` � `script`                                                                                                           
        91 - `tools/git_sync.ps1` � `script`                                                                                                               
        92 - `tools/n8n_maintenance.sh` � `script`                                                                                                         
      2093 - Zaktualizowano `tools/build_context.py` do nowych �cie�ek.                                                                                    
      2094 - Potwierdzono, �e `tools/build_context.py` jest �ledzony przez Git.                                                                            
      2139 1. uruchomi� `tools/build_context.py`,                                                                                                          
      2494 tools/build_context.py                                                                                                                          
      2509 � tools/build_context.py                                                                                                                        
      3229 Plik `tools/git_sync.ps1` s�u�y do bezpiecznego, lokalnego synchronizowania zmian z Obsidiana do GitHuba.                                       
      3372 Lokalizacja skryptu: `tools/git_sync.ps1`                                                                                                       
      3545 - `tools/git_sync.ps1`                                                                                                                          
      3581 tools/git_sync.ps1                                                                                                                              
      4895 ## FILE: tools/build_context.py                                                                                                                 
      4907 from pathlib import Path                                                                                                                        
      4908 from datetime import datetime                                                                                                                   
      4909 import json                                                                                                                                     
      4929 def normalize_rel(path: Path) -> str:                                                                                                           
      4932 def load_manifest() -> dict:                                                                                                                    
      4945 def is_excluded_dir(path: Path, manifest: dict) -> bool:                                                                                        
      4949 def read_text_safe(path: Path):                                                                                                                 
      4962 def classify_file(rel: str, suffix: str) -> str:                                                                                                
      4987 def determine_context_mode(category, size_kb, manifest):                                                                                        
      5000 def scan_repo(manifest):                                                                                                                        
      5021 def build_index(records, manifest):                                                                                                             
      5034 def board_status(records):                                                                                                                      
      5040 def header(records, manifest):                                                                                                                  
      5053         "## AKTYWACJA RADY DORADCZEJ", "", "Przy decyzjach technicznych, biznesowych i strategicznych oceniaj propozycje przez pryzmat profili z
            `03_MODULES/ADVISORY_BOARD/BOARD_PROFILES.md`.", "", f"Status rady doradczej: `{bs}`", ""                                                      
      5063 def render_file(record):                                                                                                                        
      5087 def build_prompt(records, manifest):                                                                                                            
      5094 def main():                                                                                                                                     
      5122 ## FILE: tools/git_sync.ps1                                                                                                                     
      5206 ## FILE: tools/n8n_maintenance.sh                                                                                                               



```
