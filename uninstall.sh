#!/usr/bin/env bash
set -euo pipefail

SKILL_NAME="claude-ci-pipeline"
INSTALL_DIR="${HOME}/.claude/skills/${SKILL_NAME}"

if [ -d "$INSTALL_DIR" ]; then
  rm -rf "$INSTALL_DIR"
  echo "${SKILL_NAME} uninstalled successfully."
else
  echo "${SKILL_NAME} is not installed at ${INSTALL_DIR}."
fi
