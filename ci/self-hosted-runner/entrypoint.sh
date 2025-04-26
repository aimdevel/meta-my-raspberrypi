#!/bin/bash
set -e

if [[ -z "$GITHUB_URL" || -z "$RUNNER_TOKEN" ]]; then
  echo "ERROR: GITHUB_URL and RUNNER_TOKEN must be set"
  exit 1
fi

# Clean up from previous (if any)
./config.sh remove --unattended || true

# Configure the runner
./config.sh \
  --url "${GITHUB_URL}" \
  --token "${RUNNER_TOKEN}" \
  --name "${RUNNER_NAME:-docker-runner}" \
  --labels "${RUNNER_LABELS:-self-hosted,docker}" \
  --work _work

# Run the runner
exec ./run.sh
