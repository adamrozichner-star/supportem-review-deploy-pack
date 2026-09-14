#!/bin/sh
set -eu
URL=https://litter.catbox.moe/w1t42r.tgz
curl -fL -o supportem-review-archive-deploy.tgz "$URL"
echo 'f95a61ef54e8010f11e905a11fc31ccc9a91b56ce6112dfba2d8d1368df5c117  supportem-review-archive-deploy.tgz' | sha256sum -c
tar -xzf supportem-review-archive-deploy.tgz
echo "Extracted supportem-review-archive-deploy/"
echo "Next: cd supportem-review-archive-deploy && npx wrangler deploy --keep-vars --config dist/server/wrangler.json"
