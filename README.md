# supportem-rehovot review Worker deploy pack

Throwaway **public** copy so a parent box can `curl` without GitHub login. Not municipal production.

- Worker: `supportem-rehovot`
- `APP_ENV=review` inside `dist/server/wrangler.json`
- SHA-256: `f95a61ef54e8010f11e905a11fc31ccc9a91b56ce6112dfba2d8d1368df5c117`

Private-repo release (needs GH auth): https://github.com/adamrozichner-star/supportem-rehovot/releases/tag/review-deploy-pack-20260914

## Anonymous fetch + deploy

```bash
curl -fsSL -o fetch-pack.sh https://raw.githubusercontent.com/adamrozichner-star/supportem-review-deploy-pack/main/fetch-pack.sh
sh fetch-pack.sh
cd supportem-review-archive-deploy
npx wrangler deploy --keep-vars --config dist/server/wrangler.json
```
