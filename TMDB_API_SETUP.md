# 🎬 TMDB API Key Setup Guide

## 🚨 Fixing "TMDB API Error: 401" Issue

If you're seeing "Error loading movies - TMDB API Error: 401", it means your TMDB API key is invalid or missing.

## 🔑 How to Get a Valid TMDB API Key

### **Step 1: Create TMDB Account**
1. Go to [The Movie Database (TMDB)](https://www.themoviedb.org/)
2. Click "Join TMDB" to create a free account
3. Verify your email address

### **Step 2: Request API Key**
1. Go to [TMDB API Settings](https://www.themoviedb.org/settings/api)
2. Click "Create" under "Request an API Key"
3. Choose "Developer" (for non-commercial use)
4. Fill out the application form:
   - **Application Name:** MovieHub Website
   - **Application URL:** http://localhost:5175 (or your domain)
   - **Application Summary:** Personal movie discovery website
5. Accept the terms and submit

### **Step 3: Get Your API Key**
1. Once approved, you'll see your API key
2. Copy the **API Key (v3 auth)** - it looks like: `a1b2c3d4e5f6g7h8i9j0k1l2m3n4o5p6`
3. **Keep it secure** - don't share it publicly

## 🔧 Configure Your MovieHub Website

### **Step 4: Update Environment Variables**
1. Open your `.env` file in the project root
2. Replace the API key:
```env
VITE_TMDB_API_KEY=your_actual_api_key_here
```

### **Step 5: Restart Development Server**
1. Stop the current server (Ctrl+C)
2. Start it again: `npm run dev`
3. Your website should now load movies successfully!

## ✅ Verification

### **Test Your API Key:**
1. Open your browser's developer console (F12)
2. Look for "TMDB API Success" messages
3. Movies should load without errors

### **If Still Not Working:**
1. **Check API key format** - Should be 32 characters, letters and numbers only
2. **Verify account status** - Make sure your TMDB account is verified
3. **Check rate limits** - TMDB allows 40 requests per 10 seconds
4. **Try a different browser** - Clear cache and cookies

## 🔄 Backup API Keys

Your MovieHub website has multiple fallback API keys configured:
- Your personal API key (primary)
- Demo keys (fallback)

If one fails, it automatically tries the next one.

## 📊 TMDB API Limits

### **Free Tier Limits:**
- ✅ **40 requests per 10 seconds**
- ✅ **Unlimited daily requests**
- ✅ **All movie data access**
- ✅ **Images and videos**

### **What You Get:**
- ✅ **Movie details** (title, overview, ratings, etc.)
- ✅ **High-quality posters** and backdrops
- ✅ **Cast and crew information**
- ✅ **Movie trailers** and videos
- ✅ **Genre information**
- ✅ **Release dates** and ratings

## 🚀 Production Deployment

### **For Live Website:**
1. **Never commit API keys** to version control
2. **Use environment variables** in your hosting platform:
   - **Vercel:** Add in project settings → Environment Variables
   - **Netlify:** Add in site settings → Environment Variables
   - **Heroku:** Use config vars

### **Example for Vercel:**
```bash
vercel env add VITE_TMDB_API_KEY
# Enter your API key when prompted
```

## 🔒 Security Best Practices

### **Keep Your API Key Safe:**
- ✅ **Never share** your API key publicly
- ✅ **Don't commit** to GitHub/version control
- ✅ **Use environment variables** only
- ✅ **Regenerate** if compromised

### **Monitor Usage:**
- Check your TMDB account for API usage
- Set up alerts if approaching limits
- Consider caching responses for better performance

## 🎉 Success!

Once configured correctly:
- ✅ **Movies load instantly** from TMDB
- ✅ **High-quality images** and posters
- ✅ **Real-time data** from the world's largest movie database
- ✅ **Global movie information** in multiple languages

Your MovieHub website will have access to millions of movies with rich metadata! 🚀