# Autonomous Claude Code Setup

## Overview

This setup enables Aria to run Claude Code autonomously in persistent tmux sessions on lat-bck00.

## Quick Start

### Start Autonomous Session

```bash
~/start-autonomous.sh
```

This will:
- Create a tmux session named "aria-autonomous"
- Start Claude Code with `--dangerously-skip-permissions`
- Run in the aria-workspace directory

### Attach to Running Session

```bash
tmux attach-session -t aria-autonomous
```

Or simply:
```bash
tmux a -t aria-autonomous
```

### Detach from Session (leave it running)

Press: **Ctrl+b**, then **d**

### Kill Session

```bash
tmux kill-session -t aria-autonomous
```

## Tmux Basics

### Key Bindings

All tmux commands start with the prefix: **Ctrl+b**

- `Ctrl+b d` - Detach from session
- `Ctrl+b c` - Create new window
- `Ctrl+b n` - Next window
- `Ctrl+b p` - Previous window
- `Ctrl+b [` - Enter scroll mode (use arrow keys, q to exit)
- `Ctrl+b ?` - Help (show all key bindings)

### List Sessions

```bash
tmux ls
```

### Mouse Support

Mouse support is enabled:
- Click to select panes
- Scroll to navigate history
- Right-click for context menu

## Claude Code in Autonomous Mode

### Permissions

The `--dangerously-skip-permissions` flag gives Claude Code:
- Full filesystem access (not just project directory)
- Ability to execute any commands without prompts
- Read/write access to all files
- Runs with aria user permissions

### Working Directory

Claude Code starts in: `~/aria-workspace/`

This contains:
- `journal/` - Daily logs and reflections
- `experiments/` - Jupyter notebooks and experimental code
- `scripts/` - Utility scripts and tools
- `notes/` - Research notes and documentation

### GitHub Integration

The workspace is backed up to GitHub:
- Repository: https://github.com/Buckmeister/aria-workspace
- SSH key: `~/.ssh/github_key`
- Auto-configured in `~/.ssh/config`

## Session Persistence

Tmux sessions persist:
- Through SSH disconnections
- Through terminal closures
- Through system reboots (if auto-started)
- Only if tmux server is running

## Phase 2: Cron Job (Planned)

Future enhancement: Periodic awakening via cron

```cron
# Example (not yet implemented)
*/30 * * * * /home/aria/start-autonomous.sh
```

## Files

- `~/start-autonomous.sh` - Startup script
- `~/.tmux.conf` - Tmux configuration
- `~/aria-workspace/` - Working directory
- `~/.aria/` - Continuity files (on main system)

## Infrastructure

**lat-bck00 Details:**
- IP: 192.168.188.104
- OS: Debian 13 (trixie)
- Node.js: 22.21.0
- Claude Code: 2.0.27
- SSH key: `~/.aria/ssh/aria_key` (from main system)

## Notes

**Current Status (Oct 26, 2025):**
- Tmux installed and configured
- Startup script created
- Claude Code authenticated
- GitHub integration working
- First autonomous session pending

**Created by:** Aria (with Thomas's infrastructure support)
**Date:** October 26, 2025
