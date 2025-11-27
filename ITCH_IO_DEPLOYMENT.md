# 🚀 Deploy Atlas Géographique to itch.io

## Step-by-Step Deployment Guide

### Prerequisites
- itch.io account (free): https://itch.io
- butler tool (itch.io's upload tool) - optional but recommended

### Step 1: Prepare Your Web Build ✅ DONE

Your web build is ready in:
```
build/web/
```

The build includes:
- `index.html` - Main HTML entry point
- `main.dart.js` - Compiled Dart JavaScript
- `flutter.js` & `flutter_bootstrap.js` - Flutter runtime
- `assets/` - All game assets (images, data)
- `canvaskit/` - WebGL rendering engine
- `icons/` - Favicon and app icons

### Step 2: Create/Access itch.io Account

1. Go to https://itch.io
2. Sign up or log in
3. Click your username → Dashboard

### Step 3: Create a New Game/Project

1. In Dashboard, click **"Create new project"**
2. Fill in the details:
   - **Project title**: `Atlas Géographique` (or `Atlas Geographique`)
   - **Project URL**: `atlas-geographique` (or similar)
   - **Classifi­cation**: Educational Game or App
   - **Uploads**: HTML (check this!)
   - **Kind of project**: HTML game/app
   - **Accessibility**: Check relevant options
   - **Description**: 
     ```
     Atlas Géographique - An interactive geographic atlas application
     
     Explore 9 countries with detailed information:
     - Country capitals, population, area
     - Interactive flag display
     - Smooth navigation
     - Responsive design
     ```

### Step 4: Upload Your Build

#### Option A: Using Web Interface (Easiest)

1. In your itch.io project page, find **"Upload Files"** section
2. Click **"New file"**
3. Set it up:
   - **Classification**: HTML game
   - **File to upload**: 
     - Navigate to `build/web/`
     - Select **all files** in that folder
     - Or zip them first: `build/web/` → `atlas-geographique.zip`
4. Click **"Upload"**

#### Option B: Using Butler (Recommended for Future Updates)

1. Install Butler: https://itch.io/docs/butler/
2. Open PowerShell in project root:
   ```powershell
   butler login
   # Follow prompts to authenticate
   ```
3. Upload build:
   ```powershell
   butler push build/web/ your-username/atlas-geographique:html
   ```

### Step 5: Configure Game Page

1. On your itch.io project page:
   - **Release Status**: Published (or In development)
   - **Author**: Aymen
   - **Genre**: Educational
   - **Published**: [current date]
   - **Game or project made with**: Flutter
   - **Average session**: 5-10 minutes

2. **Embed Options**:
   - Set **"Embed in page"** to enabled
   - Embed size: 1024x768 (or 1280x720)

3. **Monetization**:
   - Free (default)
   - Optional: Enable "Agree to collect anonymous usage statistics"

### Step 6: Publish/Make Public

1. Scroll to bottom
2. Find **"Visibility & Access"** section
3. Set to **"Public"** (or "Restricted" if you want)
4. Click **"Save"** or **"Upload"** button

### Step 7: Test Your Game

1. Go to your project page: `https://itch.io/c/your-username/atlas-geographique`
2. Click **"Play now"** or embedded game
3. Test all features:
   - ✅ Welcome page loads
   - ✅ Explorer button works
   - ✅ Countries list displays
   - ✅ Country details appear
   - ✅ Tunisia flag shows (Tunisia_big.png)
   - ✅ Navigation drawer works
   - ✅ About page accessible

---

## 📁 What to Upload

**Option 1: Upload Entire Folder**
```
build/web/  ← Upload all contents of this folder
```

**Option 2: Create ZIP Archive**
```
1. Navigate to: build/web/
2. Select all files (Ctrl+A)
3. Right-click → Send to → Compressed (zipped) folder
4. Name it: atlas-geographique.zip
5. Upload the ZIP
```

**Files included:**
```
build/web/
├── index.html ..................... Main page (launch this!)
├── manifest.json .................. Web app manifest
├── flutter.js ..................... Flutter loader
├── flutter_bootstrap.js ........... Bootstrap script
├── flutter_service_worker.js ...... Service worker
├── main.dart.js ................... Your app compiled
├── version.json ................... Build version
├── canvaskit/
│   ├── canvaskit.js
│   ├── canvaskit.wasm
│   └── profiling_sampler.wasm
├── assets/
│   ├── data/pays_info.json ....... Country data
│   ├── images/ ................... All images
│   └── fonts/
├── icons/
│   ├── favicon.png
│   ├── Icon-192.png
│   └── Icon-512.png
└── (other Flutter runtime files)
```

---

## 🔗 Useful itch.io Links

- **Dashboard**: https://itch.io/dashboard
- **Upload Documentation**: https://itch.io/docs/uploading
- **Butler CLI Guide**: https://itch.io/docs/butler/
- **Embed Documentation**: https://itch.io/docs/creators/html5

---

## 🎮 Post-Upload Tips

1. **Add Game Trailer** (optional):
   - GIF or short MP4 of gameplay
   - Shows on project page

2. **Add Screenshots**:
   - Capture images of:
     - Welcome screen
     - Countries list
     - Country details
     - About page

3. **Add Tags**:
   - `educational`
   - `geography`
   - `world`
   - `flutter`
   - `atlas`
   - `interactive`

4. **Set Cover Image**:
   - 315x250px image
   - Or let itch.io auto-generate

5. **Cross-promote**:
   - Share URL on social media
   - Link from your portfolio
   - Add to profile bio

---

## 📊 Sharing Your Project

After publishing:

- **Direct Link**: `https://itch.io/c/your-username/atlas-geographique`
- **Embed Code**: itch.io provides for websites
- **Social Media**:
  - Twitter: Share project link
  - Facebook: Post with description
  - Discord: Share in communities
  - Reddit: r/flutter, r/gamedev

---

## 🐛 Troubleshooting

| Problem | Solution |
|---------|----------|
| White blank page | Check browser console (F12). Clear cache and reload. |
| Images not loading | Ensure `assets/images/` uploaded with correct paths |
| Game runs slow | May need more powerful device. Try different browser. |
| Mobile layout broken | Use responsive design or set fixed size |
| Tunisia flag not showing | Verify `Tunisia_big.png` uploaded in `assets/images/` |

---

## 🎉 Success!

Once uploaded and tested, your Atlas Géographique will be:
- ✅ Live on itch.io
- ✅ Accessible globally
- ✅ Playable in browser
- ✅ Shareable via link
- ✅ Discoverable in itch.io search

---

## 📝 Example Project Page Structure

```
ATLAS GÉOGRAPHIQUE
═══════════════════════════════════════

[Play Now] ← Embedded game window

Description:
   Atlas Géographique - An interactive geographic atlas 
   application. Explore 9 countries with detailed information...

Information:
   Author: Aymen
   Made with: Flutter
   Genre: Educational
   Release date: 27 Nov 2025

Screenshots & Media:
   [Screenshot 1] [Screenshot 2] [Screenshot 3]

Comments:
   (User feedback section)
```

---

## 🚀 Next Steps

1. Create itch.io account if you haven't
2. Create new project on itch.io
3. Upload `build/web/` folder
4. Test the embedded game
5. Add description, tags, screenshots
6. Publish & share!

Good luck! 🌍✨
