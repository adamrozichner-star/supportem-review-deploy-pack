#!/bin/sh
set -eu
BASE=https://raw.githubusercontent.com/adamrozichner-star/supportem-review-deploy-pack/main
i=0
while [ "$i" -le 20 ]; do
  n=$(printf '%03d' "$i")
  curl -fsSL -o "chunk-$n.txt" "$BASE/chunk-$n.txt"
  i=$((i + 1))
done
curl -fsSL -o join.sh "$BASE/join.sh"
sh join.sh
tar -xzf supportem-review-archive-deploy.tgz
echo "Extracted supportem-review-archive-deploy/"
echo "Next: cd supportem-review-archive-deploy && npx wrangler deploy --keep-vars --config dist/server/wrangler.json"
