#!/bin/bash

# Install Git hooks
echo "Installing Git hooks..."
ln -sf ../../scripts/git-hooks/pre-commit .git/hooks/pre-commit
chmod +x .git/hooks/pre-commit
echo "Pre-commit hook installed successfully."