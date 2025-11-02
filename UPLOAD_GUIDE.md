# 🎬 Movie Upload Guide

## How to Use the Upload Movie Feature

Your MovieHub platform includes a powerful movie upload system powered by **Cloudflare Stream**. Here's how to use it:

## 🚀 **Quick Start**

### 1. **Access Upload Page**
- Navigate to `/upload` in your browser
- **Requirements**: You need to be signed in with Premium or VIP subscription
- The upload page is restricted to prevent unauthorized uploads

### 2. **Two Upload Methods Available**

#### **Method A: Upload Video File**
```
📁 File Upload → Direct video file upload to Cloudflare Stream
```

#### **Method B: Upload from URL**
```
🔗 URL Upload → Import video from external URL
```

## 📋 **Step-by-Step Upload Process**

### **File Upload Method**

1. **Get Movie Information**
   - Go to [TMDB](https://www.themoviedb.org/)
   - Search for your movie
   - Copy the Movie ID from the URL (e.g., `550` for Fight Club)

2. **Fill Upload Form**
   ```
   Movie ID: 550 (from TMDB)
   Title: Fight Club
   Description: (Optional) Movie description
   Video File: Select your .mp4/.mov/.avi file
   ```

3. **Upload Process**
   - Click "Upload to Cloudflare Stream"
   - Progress bar shows upload status
   - File is processed automatically
   - Movie becomes available for streaming

### **URL Upload Method**

1. **Prepare Video URL**
   ```
   Supported URLs:
   - Direct video links (.mp4, .mov, .avi)
   - YouTube URLs (with proper permissions)
   - Vimeo URLs
   - Other public video URLs
   ```

2. **Fill Upload Form**
   ```
   Movie ID: 550
   Title: Fight Club
   Video URL: https://example.com/movie.mp4
   Description: (Optional)
   ```

3. **Upload Process**
   - Cloudflare Stream downloads from URL
   - Automatic processing and optimization
   - Movie ready for streaming

## ⚙️ **Configuration Required**

### **Cloudflare Stream Setup**

You need to configure Cloudflare Stream credentials in your `.env` file:

```env
# Cloudflare Stream Configuration
VITE_CLOUDFLARE_ACCOUNT_ID=your-account-id
VITE_CLOUDFLARE_API_TOKEN=your-api-token
VITE_CLOUDFLARE_CUSTOMER_SUBDOMAIN=your-subdomain
```

### **Getting Cloudflare Stream Credentials**

1. **Sign up for Cloudflare Stream**
   - Go to [Cloudflare Dashboard](https://dash.cloudflare.com/)
   - Navigate to Stream section
   - Get your Account ID

2. **Create API Token**
   - Go to "My Profile" → "API Tokens"
   - Create token with Stream permissions
   - Copy the token

3. **Set Customer Subdomain**
   - In Stream settings, set your custom subdomain
   - This is used for video delivery

## 🎯 **How It Works Behind the Scenes**

### **Upload Flow**
```
1. User selects file/URL → 2. Upload to Cloudflare → 3. Processing → 4. Ready to stream
```

### **Integration with Your Site**
```typescript
// Movie gets added to streaming mapping
MovieStreamingService.addMovieMapping(movieId, streamId);

// Now available in your movie cards
const isStreamingAvailable = MovieStreamingService.isStreamingAvailable(movieId);
```

### **Automatic Features**
- ✅ **Thumbnail generation** - Automatic poster creation
- ✅ **Multiple formats** - HLS, DASH, MP4 delivery
- ✅ **Adaptive streaming** - Quality adjusts to connection
- ✅ **Global CDN** - Fast delivery worldwide
- ✅ **Analytics** - View counts and engagement

## 📱 **User Experience After Upload**

### **For Movie Browsers**
- Uploaded movies appear with "Stream Now" buttons
- High-quality streaming with adaptive bitrate
- Progress tracking and resume functionality
- Mobile-optimized playback

### **For Admins**
- Upload progress tracking
- Processing status monitoring
- Stream analytics and metrics
- Easy movie management

## 🔧 **Advanced Features**

### **Batch Upload**
```typescript
// Upload multiple movies at once
const movies = [
  { id: 550, title: "Fight Club", url: "..." },
  { id: 680, title: "Pulp Fiction", url: "..." }
];

movies.forEach(movie => {
  MovieStreamingService.uploadMovie(movie.id, movie.url, {
    title: movie.title
  });
});
```

### **Custom Thumbnails**
```typescript
// Set custom thumbnail after upload
cloudflareStream.setThumbnail(streamId, {
  time: 30, // 30 seconds into video
  width: 1280,
  height: 720
});
```

### **Streaming Analytics**
```typescript
// Get viewing statistics
const analytics = await MovieStreamingService.getStreamingAnalytics(movieId);
console.log(analytics.views, analytics.watchTime);
```

## 🎬 **Supported Video Formats**

### **Input Formats**
- **MP4** (H.264, H.265)
- **MOV** (QuickTime)
- **AVI** (Audio Video Interleave)
- **MKV** (Matroska)
- **WebM** (VP8, VP9)
- **FLV** (Flash Video)

### **Output Formats**
- **HLS** (HTTP Live Streaming)
- **DASH** (Dynamic Adaptive Streaming)
- **MP4** (Progressive download)

## 📊 **Upload Limits & Pricing**

### **Cloudflare Stream Limits**
- **File size**: Up to 30GB per video
- **Duration**: Up to 12 hours per video
- **Concurrent uploads**: 100 per account
- **Storage**: Unlimited (pay per minute stored)

### **Pricing** (Cloudflare Stream)
- **Storage**: $5 per 1,000 minutes stored
- **Delivery**: $1 per 1,000 minutes delivered
- **No bandwidth charges**

## 🚨 **Troubleshooting**

### **Upload Fails**
```
❌ Check Cloudflare credentials
❌ Verify video format is supported
❌ Ensure file size is under 30GB
❌ Check internet connection
```

### **Processing Stuck**
```
⏳ Large files take longer to process
⏳ Check Cloudflare Stream dashboard
⏳ Processing can take 1-10 minutes per GB
```

### **Video Won't Play**
```
🔍 Check if processing is complete
🔍 Verify movie ID mapping
🔍 Test stream URL directly
🔍 Check browser console for errors
```

## 🎯 **Best Practices**

### **Video Quality**
- **Resolution**: 1080p recommended
- **Bitrate**: 5-10 Mbps for 1080p
- **Format**: MP4 with H.264 codec
- **Audio**: AAC codec recommended

### **File Organization**
- Use consistent naming: `MovieTitle_Year_Quality.mp4`
- Keep source files as backup
- Document Movie IDs in spreadsheet
- Test uploads with small files first

### **Performance**
- Upload during off-peak hours
- Use wired internet for large files
- Monitor upload progress
- Verify playback after processing

## 🎉 **Success Workflow**

1. **Prepare**: Get TMDB Movie ID and video file
2. **Upload**: Use the upload interface
3. **Monitor**: Watch processing progress
4. **Test**: Verify streaming works
5. **Publish**: Movie appears in your catalog
6. **Analytics**: Monitor viewing statistics

## 🔗 **Integration Examples**

### **Add to Existing Movie**
```typescript
// If movie exists in TMDB but no streaming
const movieId = 550; // Fight Club
const streamId = await uploadMovie(movieId, videoFile);
// Now "Stream Now" button appears
```

### **Custom Player Integration**
```typescript
// Use uploaded movie in custom player
const streamData = await MovieStreamingService.getMovieStream(movieId);
<CloudflarePlayer streamData={streamData} />
```

Your upload system is now ready to handle movie uploads with professional-grade streaming delivery! 🚀