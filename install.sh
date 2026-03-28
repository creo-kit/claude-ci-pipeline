#!/usr/bin/env bash
set -euo pipefail

SKILL_NAME="claude-ci-pipeline"
REPO="https://github.com/creo-kit/claude-ci-pipeline.git"
INSTALL_DIR="${HOME}/.claude/skills/${SKILL_NAME}"

cleanup() {
  if [ -d "${TMPDIR:-/tmp}/${SKILL_NAME}-install" ]; then
    rm -rf "${TMPDIR:-/tmp}/${SKILL_NAME}-install"
  fi
}
trap cleanup EXIT

echo "Installing ${SKILL_NAME}..."

# Remove previous installation if present
if [ -d "$INSTALL_DIR" ]; then
  echo "Removing previous installation..."
  rm -rf "$INSTALL_DIR"
fi

# Shallow clone to temp directory
CLONE_DIR="${TMPDIR:-/tmp}/${SKILL_NAME}-install"
git clone --depth 1 "$REPO" "$CLONE_DIR" 2>/dev/null

# Create target directory and copy files
mkdir -p "$INSTALL_DIR"
cp -r "$CLONE_DIR/skills/creo-pipeline/SKILL.md" "$INSTALL_DIR/"
cp -r "$CLONE_DIR/.claude-plugin" "$INSTALL_DIR/"
cp "$CLONE_DIR/LICENSE" "$INSTALL_DIR/"
cp "$CLONE_DIR/README.md" "$INSTALL_DIR/"

echo ""
echo "${SKILL_NAME} installed to ${INSTALL_DIR}"
echo ""
echo "Usage:"
echo "  /creo pipeline create     -- Create a new CI/CD pipeline"
echo "  /creo pipeline debug      -- Debug a failing pipeline"
echo "  /creo pipeline optimize   -- Optimize pipeline speed and cost"
