#!/usr/bin/env bash
set -euo pipefail

RED="\033[31m"
RESET="\033[0m"

phase() {
  echo -e "${RED}[SEELE] $1${RESET}"
  sleep 1
}

phase "MAGI System Alert: Analyzing Git structure for remaining human branches..."
git branch --list | sed 's/^/ - Observed timeline: /'

phase "Detecting AT-Fields (merge conflicts) between divergent Evas..."
git status --short

phase "Dissolving ego barriers in feature/asuka-ego and fix/rei-emotions..."
git branch -D feature/asuka-ego 2>/dev/null || true
git branch -D fix/rei-emotions 2>/dev/null || true

git checkout main >/dev/null 2>&1 || git checkout -b main

phase "Force merging every soul into main. There is no going back..."
git merge --strategy=ours --allow-unrelated-histories --no-edit $(git for-each-ref --format='%(refname:short)' refs/heads | grep -v '^main$' || true) >/dev/null 2>&1 || true

git push --force origin main >/dev/null 2>&1 || true

echo -e "${RED}Third Impact complete. All branches have become one.${RESET}"

sleep 1
echo "Congratulations."
