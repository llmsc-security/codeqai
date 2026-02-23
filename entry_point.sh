#!/usr/bin/env bash
set -euo pipefail

# Start the CodeQAI Streamlit app
# The service listens on port 8501 inside the container

cd /home/appuser

echo "Starting CodeQAI Streamlit application on port 8501..."
exec streamlit run /home/appuser/codeqai/streamlit.py --server.port 8501 --server.address 0.0.0.0
