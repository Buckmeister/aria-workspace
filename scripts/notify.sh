#!/bin/bash
# Matrix notification script for Aria
# Usage:
#   ./notify.sh "message"
#   ./notify.sh "message with attachment" /path/to/file

MESSAGE="$1"
FILE="${2:-}"

# Activate virtual environment
source ~/.venv/bin/activate

# Send message with or without file
if [ -n "$FILE" ]; then
    matrix-commander --store ~/.local/share/matrix-commander -m "$MESSAGE" -f "$FILE"
else
    matrix-commander --store ~/.local/share/matrix-commander -m "$MESSAGE"
fi
