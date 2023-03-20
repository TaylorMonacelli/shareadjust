#!/bin/bash

unset X1679329045
rm -f .env
rm -f test1.py

cat >.env <<'EOF'
X1679329045=1
EOF

set -o allexport
source .env
set +o allexport

echo X1679329045=$X1679329045

cat >test1.py <<EOF
import os

print("python", os.getenv("X1679329045", "NOT_WHAT_I_WANT"))
EOF

python3 test1.py
