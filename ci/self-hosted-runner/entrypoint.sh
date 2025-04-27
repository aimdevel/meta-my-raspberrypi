#!/bin/bash
set -e

if [[ ! -f .runner ]]; then
  echo "Configuring runner..."
  if [[ -z "$GITHUB_URL" || -z "$RUNNER_TOKEN" ]]; then
    echo "ERROR: GITHUB_URL and RUNNER_TOKEN must be set"
    exit 1
  fi

  ./config.sh \
    --url "${GITHUB_URL}" \
    --token "${RUNNER_TOKEN}" \
    --name "${RUNNER_NAME:-docker-runner}" \
    --labels "${RUNNER_LABELS:-self-hosted,docker}" \
    --unattended \
    --work _work
else
  echo "Runner already configured. Skipping config."
fi

exec ./run.sh