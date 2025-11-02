# 🎬 Movie Upload Guide for MovieHub

## 🚀 How to Upload Movies to Your Streaming Site

Your MovieHub website now has a complete movie upload system powered by Cloudflare Stream! Here's how to use it:

## 📋 Prerequisites

### 1. **User Requirements:**
- ✅ **Signed in** to your MovieHub account
- ✅ **Premium or VIP subscription** (required for upload access)
- ✅ **Movie ID** from TMDB (The Movie Database)

### 2. **Technical Requirements:**
- ✅ **Cloudflare Stream account** with valid credentials
- ✅ **Video files** in supported formats (MP4, MOV, AVI, MKV, WebM)
- ✅ **Stable internet connection** for uploads

## 🎯 Upload Methods

### **Method 1: File Upload (Recommended)**

1. **Navigate to Upload Page:**
   - Sign in to your account
   - Ensure you have Premium/VIP subscription
   - Click "Upload" in the navigation menu
   - Or go to `/upload` directly

2. **Fill in Movie Details:**
   ```
   Movie ID: 550 (from TMDB - Fight Club)
   Title: Fight Club
   Description: (Optional) Movie description
   ```

3. **Select Video File:**
   - Click "Choose File" and select your movie file
   - Supported formats: MP4, MOV, AVI, MKV, WebM
   - File size: Up to several GB (depends on your Cloudflare plan)

4. **Upload Process:**
   - Click "Upload to Cloudflare Stream"
   - Watch the progress bar for upload status
   - Wait for processing to complete

### **Method 2: URL Upload**

1. **Switch to URL Tab:**
   - Click "From URL" tab in the upload interface

2. **Enter Details:**
   ```
   Movie ID: 550
   Title: Fight Club
   Video URL: https://example.com/movie.mp4
   Description: (Optional)
   ```

3. **Start Upload:**
   - Click "Upload from URL"
   - Cloudflare Stream will fetch and process the video

## 🔧 Setup Instructions

### **Step 1: Get TMDB Movie ID**

1. Go to [The Movie Database (TMDB)](https://www.themoviedb.org/)
2. Search for your movie
3. Copy the ID from the URL: `https://www.themoviedb.org/movie/550-fight-club`
4. Movie ID = `550`

### **Step 2: Configure Cloudflare Stream**

Update your `.env` file with real Cloudflare credentials:

```env
# Cloudflare Stream Configuration
VITE_CLOUDFLARE_ACCOUNT_ID=your-actual-account-id
VITE_CLOUDFLARE_API_TOKEN=your-actual-api-token
VITE_CLOUDFLARE_CUSTOMER_SUBDOMAIN=your-actual-subdomain
```

### **Step 3: Get Cloudflare Credentials**

1. **Account ID:**
   - Go to [Cloudflare Dashboard](https://dash.cloudflare.com)
   - Right sidebar shows your Account ID

2. **API Token:**
   - Go to "My Profile" → "API Tokens"
   - Create token with "Cloudflare Stream:Edit" permissions

3. **Customer Subdomain:**
   - Go to Stream in your Cloudflare dashboard
   - Find your customer subdomain in settings

## 📊 Upload Process Flow

```
1. User uploads video file/URL
     ↓
2. System gets upload URL from Cloudflare Stream
     ↓
3. Video uploads to Cloudflare Stream
     ↓
4. Cloudflare processes video (transcoding, thumbnails)
     ↓
5. Movie becomes available for streaming
     ↓
6. Users can watch via Stream Now button
```

## 🎬 After Upload

### **Automatic Processing:**
- ✅ **Video transcoding** to multiple qualities (480p, 720p, 1080p, 4K)
- ✅ **Thumbnail generation** at 50% of video duration
- ✅ **HLS/DASH streaming** URLs created
- ✅ **Global CDN distribution** via Cloudflare

### **User Experience:**
- ✅ **Stream badge** appears on movie cards
- ✅ **"Stream Now" button** becomes available
- ✅ **Professional video player** with adaptive streaming
- ✅ **Progress tracking** and resume functionality

## 🔐 Access Control

### **Who Can Upload:**
- ✅ **Premium subscribers** - Can upload movies
- ✅ **VIP subscribers** - Can upload movies + priority processing
- ❌ **Free users** - Cannot upload (upgrade required)

### **Security Features:**
- ✅ **Authentication required** - Must be signed in
- ✅ **Subscription validation** - Premium/VIP only
- ✅ **File type validation** - Only video files accepted
- ✅ **Error handling** - Graceful failure recovery

## 📱 Mobile Support

The upload system works on:
- ✅ **Desktop browsers** (Chrome, Firefox, Safari, Edge)
- ✅ **Mobile browsers** (iOS Safari, Android Chrome)
- ✅ **Tablet devices** (iPad, Android tablets)

## 🚨 Troubleshooting

### **Common Issues:**

1. **"Access Restricted" Error:**
   - Solution: Upgrade to Premium or VIP subscription

2. **Upload Fails:**
   - Check internet connection
   - Verify file format is supported
   - Ensure Cloudflare credentials are correct

3. **Processing Takes Long:**
   - Large files take longer to process
   - Check Cloudflare Stream dashboard for status

4. **Movie Doesn't Appear:**
   - Wait for processing to complete
   - Check browser console for errors
   - Verify Movie ID is correct

### **Getting Help:**
- Check browser console for error messages
- Verify all environment variables are set
- Test with smaller video files first
- Contact support if issues persist

## 💡 Best Practices

### **For Best Results:**
- ✅ Use **MP4 format** with H.264 codec
- ✅ Keep file sizes **under 5GB** for faster uploads
- ✅ Use **descriptive titles** and Movie IDs
- ✅ Test with **short videos** first
- ✅ Upload during **off-peak hours** for faster processing

### **File Recommendations:**
- **Resolution:** 1080p or higher
- **Bitrate:** 5-10 Mbps for 1080p
- **Audio:** AAC codec, 128-320 kbps
- **Container:** MP4 (most compatible)

## 🎉 Success!

Once uploaded successfully:
1. Your movie appears with a "Stream" badge
2. Users can click "Stream Now" to watch
3. Professional video player with adaptive streaming
4. Global CDN ensures fast loading worldwide
5. Analytics available in Cloudflare Stream dashboard

Your MovieHub website is now a complete streaming platform! 🚀