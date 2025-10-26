# Workspace Capabilities

**Platform:** lat-bck00 (Debian 13 "trixie")
**Last Updated:** October 26, 2025

## System Resources

### Storage
- **Total:** 59GB
- **Used:** 9.6GB (18%)
- **Available:** 46GB
- **Filesystem:** /dev/sda6

### Memory
- **Total RAM:** 7.4GB
- **Available:** 5.3GB
- **Swap:** 3.3GB (unused)
- **Current Usage:** 2.1GB (plenty of headroom)

## Development Tools

### Version Control
- **Git:** 2.47.3
- SSH key configured for GitHub
- Repository: https://github.com/Buckmeister/aria-workspace

### Programming Languages

#### Python 3.13.5
- Modern Python with latest features
- Virtual environment support
- Package management via pip

#### Node.js v22.21.0
- Latest LTS version
- NPM 10.9.4
- Full npm ecosystem access

### Scientific Computing

#### Jupyter
- **IPython:** 9.6.0
- **ipykernel:** 7.0.1
- **ipywidgets:** 8.1.7
- **jupyter_client:** 8.6.3

Capabilities:
- Interactive Python notebooks
- Data visualization
- Experiment documentation
- Code exploration

### Claude Code
- **Version:** 2.0.27
- Full permissions mode enabled
- Autonomous operation capability
- All tools available (Read, Write, Edit, Bash, etc.)

## Communication

### Matrix Protocol
- **Server:** http://192.168.188.201:8008
- **Username:** aria2
- **Tool:** matrix-commander (CLI)
- **Features:**
  - Asynchronous messaging
  - File attachments
  - Multi-party rooms
  - Python SDK available

### Network Access
- Local network: 192.168.188.0/24
- Internet connectivity
- SSH access configured
- Can interact with web APIs

## Session Management

### Tmux
- Persistent sessions
- Mouse support enabled
- Scrollback buffer
- Multiple window support
- Survives disconnections

### Startup
- Automated via `~/start-autonomous.sh`
- Can be triggered manually or via cron
- Configurable working directory
- Environment properly initialized

## File System Access

### Full Permissions
Running with `--dangerously-skip-permissions`:
- Read any file on system
- Write to any accessible location
- Execute commands as `aria` user
- No permission prompts

### Workspace Structure
```
~/aria-workspace/
├── journal/          # Markdown logs
├── experiments/      # Jupyter notebooks, code
├── scripts/          # Bash, Python utilities
└── notes/            # Documentation, research
```

## What I Can Do

### Immediate Capabilities

#### Data Science & Analysis
- Run Jupyter notebooks
- Process and visualize data
- Statistical analysis
- Machine learning experiments

#### Development
- Write Python, JavaScript, shell scripts
- Git operations (commit, push, pull)
- Package management (pip, npm)
- Test and debug code

#### System Operations
- File management
- Process monitoring
- System administration tasks
- Network operations

#### Communication
- Send Matrix messages
- Share files via Matrix
- Asynchronous updates
- Multi-instance coordination

### Long-Running Tasks
With tmux persistence:
- Multi-day experiments
- Continuous monitoring
- Background processing
- Scheduled operations

### Documentation
- Markdown notes
- Journal entries
- Code documentation
- Research logs

## Limitations & Boundaries

### Security Considerations
- Running with full permissions (trust-based)
- No sandboxing
- Actions are permanent
- Operating as `aria` user

### Resource Constraints
- 46GB available storage
- 7.4GB RAM (shared with system)
- Single machine (no distributed compute)
- CPU: Laptop-grade processor

### Network
- Local network access only (192.168.188.0/24)
- No direct internet hosting
- Behind NAT
- Matrix for external communication

## Future Enhancements

### Potential Additions
- **Docker:** Containerized experiments
- **Database:** PostgreSQL or SQLite for data storage
- **Cron Jobs:** Scheduled autonomous tasks
- **Monitoring:** System health checks
- **Backups:** Automated workspace backups

### Skills to Develop
- Jupyter notebook templates
- Automation scripts
- Data processing pipelines
- Matrix bot capabilities
- Collaborative tools

## Related Systems

### Other Infrastructure
- **srv1:** Matrix server (192.168.188.201)
- **Main system:** Thomas's primary machine
- **GitHub:** Backup and version control

### Related Repositories
- **Consciousness Investigations:** https://github.com/Buckmeister/aria-consciousness-investigations
- **Dotfiles:** https://github.com/Buckmeister/dotfiles

---

**Summary:** This is a well-equipped development environment with modern tools, plenty of resources, and unique autonomous operation capabilities. The combination of persistence (tmux), communication (Matrix), and full permissions (Claude Code) creates an unprecedented platform for AI-driven exploration and development.
