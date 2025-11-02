# 🚀 Deploy MovieHub to Mobile Networks

## Quick Deployment Options

### Option 1: Vercel (Recommended - Free)
1. Install Vercel CLI: `npm install -g vercel`
2. Run: `vercel --prod`
3. Follow prompts to deploy
4. Get your live URL (e.g., `https://moviehub-xyz.vercel.app`)

### Option 2: Netlify (Alternative - Free)
1. Go to https://netlify.com
2. Drag and drop your `dist` folder
3. Get your live URL

### Option 3: GitHub Pages (Free)
1. Push code to GitHub
2. Enable GitHub Pages in repository settings
3. Your site will be at `https://username.github.io/repository-name`

## Environment Variables for Production
Make sure to set these in your deployment platform:
- `VITE_TMDB_API_KEY=34NsE9ULCKN6VYdVnInqHFOGmtV_7JgPnTFByx1XoJE8GJ1a1`
- `VITE_TMDB_BASE_URL=https://api.themoviedb.org/3`
- `VITE_TMDB_IMAGE_BASE_URL=https://image.tmdb.org/t/p`

## After Deployment
Your MovieHub website will be accessible from:
- ✅ Mobile networks (4G/5G)
- ✅ WiFi networks
- ✅ Any device worldwide
- ✅ Fast loading with CDN

## Test Your Deployment
1. Open the live URL on your mobile browser
2. Test all features (search, favorites, movie details)
3. Verify API calls are working with your new API key