#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_brain_verify info
PYTHONPATH=src python -m gbt_brain_verify check --payload '{}'
PYTHONPATH=src python -m gbt_brain_verify run   --payload '{}'
