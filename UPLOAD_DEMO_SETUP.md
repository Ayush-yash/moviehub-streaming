# 🎬 Upload Demo Setup

## Quick Demo Without Cloudflare Stream

Want to test the upload functionality without setting up Cloudflare Stream? Here's how:

## 🚀 **Demo Mode Setup**

### 1. **Enable Demo Mode**

Update your `.env` file:
```env
# Demo mode - no real uploads
VITE_CLOUDFLARE_ACCOUNT_ID=demo-account-id
VITE_CLOUDFLARE_API_TOKEN=demo-api-token
VITE_CLOUDFLARE_CUSTOMER_SUBDOMAIN=demo-subdomain

# Set demo mode flag
VITE_DEMO_MODE=true
```

### 2. **Test Upload Flow**

1. **Access Upload Page**
   - Go to `/upload` in your browser
   - Sign in (create account if needed)
   - Upgrade to Premium/VIP (demo subscription)

2. **Try File Upload**
   ```
   Movie ID: 999
   Title: Test Movie
   Description: Demo upload test
   File: Select any video file
   ```

3. **Try URL Upload**
   ```
   Movie ID: 998
   Title: URL Test Movie
   Video URL: https://sample-videos.com/zip/10/mp4/SampleVideo_1280x720_1mb.mp4
   ```

## 🎯 **What Happens in Demo Mode**

### **Simulated Upload Process**
- ✅ Form validation works
- ✅ Progress bar animation
- ✅ Success/error messages
- ✅ Movie gets added to local mapping
- ✅ "Stream Now" button appears

### **Demo Streaming**
- Uses sample video URLs
- Shows upload interface
- Demonstrates user flow
- No actual file processing

## 🔧 **Real Cloudflare Stream Setup**

When ready for production:

### **Step 1: Get Cloudflare Account**
1. Sign up at [cloudflare.com](https://cloudflare.com)
2. Go to Stream section in dashboard
3. Note your Account ID

### **Step 2: Create API Token**
1. Go to "My Profile" → "API Tokens"
2. Create Custom Token with permissions:
   - `Cloudflare Stream:Edit`
   - `Account:Read`
3. Copy the token

### **Step 3: Configure Subdomain**
1. In Stream settings, set custom subdomain
2. This will be your video delivery domain

### **Step 4: Update Environment**
```env
# Real Cloudflare credentials
VITE_CLOUDFLARE_ACCOUNT_ID=your-real-account-id
VITE_CLOUDFLARE_API_TOKEN=your-real-api-token
VITE_CLOUDFLARE_CUSTOMER_SUBDOMAIN=your-real-subdomain

# Disable demo mode
VITE_DEMO_MODE=false
```

## 📱 **Testing the Upload Interface**

### **Access Requirements**
- User must be signed in
- Premium or VIP subscription required
- Navigate to `/upload` route

### **Upload Form Features**
- **File Upload Tab**: Direct video file upload
- **URL Upload Tab**: Import from external URL
- **Progress Tracking**: Real-time upload progress
- **Error Handling**: Clear error messages
- **Success Feedback**: Confirmation when complete

### **Form Validation**
- Movie ID must be numeric
- Title is required
- File must be video format
- URL must be valid format

## 🎬 **Demo Movies Available**

The system comes with pre-configured demo movies:

```typescript
// These movies have demo streaming available
const DEMO_MOVIES = {
  550: 'Fight Club',
  680: 'Pulp Fiction', 
  13: 'Forrest Gump',
  278: 'The Shawshank Redemption',
  238: 'The Godfather',
  // ... more demo movies
};
```

## 🔍 **Testing Checklist**

### **Upload Interface**
- [ ] Can access `/upload` page
- [ ] Form validation works
- [ ] File selection works
- [ ] Progress bar displays
- [ ] Success message shows
- [ ] Error handling works

### **Integration**
- [ ] Uploaded movie appears in catalog
- [ ] "Stream Now" button shows
- [ ] Movie details display correctly
- [ ] Streaming player loads
- [ ] Progress tracking works

### **User Experience**
- [ ] Mobile responsive design
- [ ] Clear instructions provided
- [ ] Error messages are helpful
- [ ] Success feedback is clear
- [ ] Navigation works properly

## 🚀 **Production Deployment**

### **Environment Variables for Vercel**
```env
VITE_CLOUDFLARE_ACCOUNT_ID=your-account-id
VITE_CLOUDFLARE_API_TOKEN=your-api-token
VITE_CLOUDFLARE_CUSTOMER_SUBDOMAIN=your-subdomain
VITE_DEMO_MODE=false
```

### **Security Considerations**
- API tokens should be kept secure
- Consider server-side upload handling
- Implement user permissions properly
- Monitor upload usage and costs

## 💡 **Tips for Success**

### **Video Preparation**
- Use MP4 format for best compatibility
- Keep file sizes reasonable (< 2GB for testing)
- Test with short videos first
- Ensure good internet connection

### **User Management**
- Set up proper authentication
- Implement subscription tiers
- Monitor upload permissions
- Track usage analytics

### **Performance**
- Upload during off-peak hours
- Use progress indicators
- Provide clear feedback
- Handle errors gracefully

Your upload system is ready to test! Start with demo mode, then upgrade to real Cloudflare Stream when ready for production. 🎬