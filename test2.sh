#!/bin/bash

unset X1679329045
rm -f .env
rm -f test2.py

cat >.env <<'EOF'
X1679329045=1
EOF

source .env

echo X1679329045=$X1679329045

cat >test2.py <<EOF
import os

print("python", os.getenv("X1679329045", "NOT_WHAT_I_WANT"))
EOF

python3 test2.py
