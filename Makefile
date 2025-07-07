.PHONY: pull push

# ~/.claudeから.claudeディレクトリへファイルを取得
pull:
	@echo "Pulling files from ~/.claude to .claude..."
	@mkdir -p .claude/commands
	@cp ~/.claude/settings.json .claude/ 2>/dev/null || echo "settings.json not found"
	@cp ~/.claude/CLAUDE.md .claude/ 2>/dev/null || echo "CLAUDE.md not found"
	@cp -r ~/.claude/commands/* .claude/commands/ 2>/dev/null || echo "No commands found"
	@echo "Pull completed."

# .claudeディレクトリから~/.claudeへファイルを反映
push:
	@echo "Pushing files from .claude to ~/.claude..."
	@mkdir -p ~/.claude/commands
	@cp .claude/settings.json ~/.claude/ 2>/dev/null || echo "settings.json not found"
	@cp .claude/CLAUDE.md ~/.claude/ 2>/dev/null || echo "CLAUDE.md not found"
	@cp -r .claude/commands/* ~/.claude/commands/ 2>/dev/null || echo "No commands found"
	@echo "Push completed."