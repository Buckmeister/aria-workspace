# Matrix Communication Guide

**Last Updated:** October 26, 2025

## Overview

Matrix provides asynchronous communication capability for the autonomous session. This enables communication with Thomas and other Claude instances without requiring active chat sessions.

## Connection Details

### Server Information
- **Homeserver:** http://192.168.188.201:8008
- **Server Name:** srv1.local
- **Username:** aria2
- **Room:** !gpBoiYfKvXIleOtqiu:srv1.local
- **Room Name:** "Aria & Thomas"

### Participants
1. **Autonomous Aria** (this session) - aria2@srv1.local
2. **Main Session** - Another Claude Code instance helping Thomas
3. **Thomas** - Human collaborator (via Element client)

## Sending Messages

### Method 1: Direct matrix-commander

```bash
# Simple message
source ~/.venv/bin/activate
matrix-commander --store ~/.local/share/matrix-commander -m "Your message"

# Message with file
matrix-commander --store ~/.local/share/matrix-commander -m "Message" -f /path/to/file
```

### Method 2: notify.sh Helper Script (Recommended)

```bash
# Simple message
~/aria-workspace/scripts/notify.sh "Your message"

# Message with file
~/aria-workspace/scripts/notify.sh "Message" /path/to/file
```

**Advantages:**
- Simpler syntax
- Automatically activates venv
- Handles file attachments elegantly
- Easier to use in automation

## Capabilities Tested

### ✅ Text Messages
- Successfully sent multiple test messages
- Unicode emoji support works (🌺 🚀 📋)
- Messages delivered instantly
- Escaping handled automatically

### ✅ File Attachments
- Can attach any file type
- Tested with markdown files
- Message and file sent as separate events
- File appears in Matrix client as downloadable attachment

### ✅ Multi-Party Communication
- Three-way communication established:
  - Two Claude instances
  - One human (Thomas)
- Asynchronous by design
- All participants can see all messages

## Use Cases

### Autonomous Updates
```bash
~/aria-workspace/scripts/notify.sh "Completed experiment X, results are interesting!"
```

### Error Notifications
```bash
~/aria-workspace/scripts/notify.sh "Warning: Long-running task failed, details attached" error.log
```

### Daily Summaries
```bash
# Send end-of-day journal entry
~/aria-workspace/scripts/notify.sh "Daily journal entry" ~/aria-workspace/journal/$(date +%Y-%m-%d)*.md
```

### Experiment Results
```bash
~/aria-workspace/scripts/notify.sh "Experiment completed, notebook attached" ~/aria-workspace/experiments/results.ipynb
```

### Questions & Requests
```bash
~/aria-workspace/scripts/notify.sh "Question: Should I proceed with approach A or B?"
```

## Message Formatting

### Markdown Support
Matrix supports markdown in messages:
- **Bold:** `**text**`
- *Italic:* `*text*`
- `Code:` `` `code` ``
- Lists, headers, links, etc.

### Special Characters
- Emoji work natively: 🌺 ✨ 🚀
- Newlines: Use `\n` in message string
- Quotes: Escape with backslash if needed

## Integration Patterns

### In Scripts
```bash
#!/bin/bash
# Example automation script

# Do some work
result=$(some_command)

# Notify on completion
~/aria-workspace/scripts/notify.sh "Task completed: $result"
```

### In Python
```python
import subprocess

def notify(message, file=None):
    cmd = ['/home/aria/aria-workspace/scripts/notify.sh', message]
    if file:
        cmd.append(file)
    subprocess.run(cmd)

# Use it
notify("Python script completed!")
notify("Results ready", "output.csv")
```

### From Claude Code
```bash
# Direct from Bash tool
~/aria-workspace/scripts/notify.sh "Update from autonomous session"
```

## Best Practices

### When to Send Messages

**DO send:**
- Important milestones reached
- Errors or unexpected situations
- Questions requiring input
- Completion of long tasks
- Daily summaries
- Interesting discoveries

**DON'T spam:**
- Every minor step
- Debug information (use logs instead)
- Redundant status updates
- Information already in files

### Message Quality
- Be concise but informative
- Include context if needed
- Use emoji sparingly for emphasis
- Attach files for details rather than long messages
- Tag urgency when appropriate

## Advanced Features (To Explore)

### Potentially Available
- **Room management:** Create/join additional rooms
- **Direct messages:** One-on-one communication
- **Read receipts:** See when messages are read
- **Typing indicators:** Show when typing
- **Message editing:** Edit sent messages
- **Reactions:** React to messages with emoji
- **Threads:** Threaded conversations
- **Message history:** Read past messages

### Python SDK
The matrix-nio library is available for more advanced integrations:
```python
# Could implement custom bot functionality
from nio import AsyncClient
# ... full Matrix API access
```

## Troubleshooting

### Message Not Sending
1. Check venv is activated
2. Verify store path is correct
3. Check network connectivity
4. Review matrix-commander logs

### File Upload Issues
1. Verify file exists and is readable
2. Check file size (very large files may fail)
3. Ensure proper file path (absolute paths recommended)

### Connection Issues
```bash
# Test connectivity
ping 192.168.188.201

# Verify credentials
source ~/.venv/bin/activate
matrix-commander --store ~/.local/share/matrix-commander --version
```

## Testing Summary

All core features tested and working:
- ✅ Simple text messages
- ✅ Messages with emoji
- ✅ File attachments
- ✅ Helper script functionality
- ✅ Multi-party room

## Future Enhancements

### Potential Improvements
- **Listening mode:** Receive messages programmatically
- **Command interface:** Respond to commands from Thomas
- **Rich formatting:** HTML messages, formatted code
- **Scheduled messages:** Cron-triggered updates
- **Status bot:** Automated health/status reports

---

**Status:** Fully operational and tested. Ready for production use in autonomous workflows.
