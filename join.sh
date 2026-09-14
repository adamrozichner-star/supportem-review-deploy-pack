#!/bin/sh
set -eu
cat chunk-000.txt chunk-001.txt chunk-002.txt chunk-003.txt chunk-004.txt chunk-005.txt chunk-006.txt chunk-007.txt chunk-008.txt chunk-009.txt chunk-010.txt chunk-011.txt chunk-012.txt chunk-013.txt chunk-014.txt chunk-015.txt chunk-016.txt chunk-017.txt chunk-018.txt chunk-019.txt chunk-020.txt | tr -d '\n' | base64 -d > supportem-review-archive-deploy.tgz
echo 'f95a61ef54e8010f11e905a11fc31ccc9a91b56ce6112dfba2d8d1368df5c117  supportem-review-archive-deploy.tgz' | sha256sum -c
