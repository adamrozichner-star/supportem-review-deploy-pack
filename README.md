# supportem-rehovot review Worker deploy pack

Throwaway **public** copy so a parent box can `curl` without GitHub login. Not municipal production.

- Worker: `supportem-rehovot`
- `APP_ENV=review` inside `dist/server/wrangler.json`
- SHA-256: `f95a61ef54e8010f11e905a11fc31ccc9a91b56ce6112dfba2d8d1368df5c117`

## Anonymous download (verified)

```bash
curl -fL -o supportem-review-archive-deploy.tgz https://litter.catbox.moe/w1t42r.tgz
echo 'f95a61ef54e8010f11e905a11fc31ccc9a91b56ce6112dfba2d8d1368df5c117  supportem-review-archive-deploy.tgz' | sha256sum -c
tar -xzf supportem-review-archive-deploy.tgz
cd supportem-review-archive-deploy
npx wrangler deploy --keep-vars --config dist/server/wrangler.json
```

Or:

```bash
curl -fsSL -o fetch-pack.sh https://raw.githubusercontent.com/adamrozichner-star/supportem-review-deploy-pack/main/fetch-pack.sh
sh fetch-pack.sh
```

## GitHub Release URLs

Public (this repo, after Actions publishes):

```bash
curl -fL -o supportem-review-archive-deploy.tgz https://github.com/adamrozichner-star/supportem-review-deploy-pack/releases/download/review-deploy-pack-20260914/supportem-review-archive-deploy.tgz
```

Private product repo (needs GitHub auth; 404 anonymous):

```bash
curl -fL -o supportem-review-archive-deploy.tgz https://github.com/adamrozichner-star/supportem-rehovot/releases/download/review-deploy-pack-20260914/supportem-review-archive-deploy.tgz
```

API asset (private; `Accept: application/octet-stream` + token):
`https://api.github.com/repos/adamrozichner-star/supportem-rehovot/releases/assets/562838153`

Do **not** set `APP_ENV=production`. Keep Worker name `supportem-rehovot`. Use `--keep-vars`.
