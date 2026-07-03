#!/bin/bash
set -euo pipefail


cd prog-langs \
    && ./CREATE-PYTHON-VENV.sh \
    && cd ..

./PIP-INSTALL-FOR-NZUT.sh

cd cli-tools \
    && ./GET-HANDBRAKE-CLI.sh \
    && cd ..








