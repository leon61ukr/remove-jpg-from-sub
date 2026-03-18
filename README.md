# 0_remove_jpg_from_sub.ps1

PowerShell script to clean up unnecessary JPG files in astrophotography folders.

## 🔧 What it does

- Scans all folders in the current directory
- Targets only folders with names ending in `_sub`
- Deletes all `.jpg` files inside those folders:
  - `*.jpg`
  - `*_thn.jpg`
- Keeps all `.fit` files untouched
- Moves deleted JPG files to the Windows Recycle Bin
- Prints a summary of how many files were removed per folder and in total

## 📁 Expected folder structure

Example:

IC 1805  
IC 1805_sub  
IC 1805_mosaic  
IC 1805_mosaic_sub  
NGC 1027  
NGC 1027_sub  

0_remove_jpg_from_sub.ps1

## ▶️ Usage

1. Place the script in the root folder (where your folders are located)  
   On SeeStar this is the **"MyWorks"** folder

2. Right click → **"Run with PowerShell"**  
<img width="741" height="335" alt="image" src="https://github.com/user-attachments/assets/856faf32-095f-4ee0-abb7-e495a18d45e6" />

or open PowerShell in that directory

4. Run:
```powershell
.\0_remove_jpg_from_sub.ps1
```

## ⚠️ Important note

- On a regular Windows PC, files are moved to the Recycle Bin
- If the script is executed directly on the telescope device (e.g. SeeStar),  
  files may be permanently deleted without going to the Recycle Bin

## 🧪 Output example
<img width="820" height="398" alt="image" src="https://github.com/user-attachments/assets/0749626a-af5f-45ae-8f44-30975cf9bebd" />


```

Folder IC 1805_sub: moved 124 JPG files to Recycle Bin
Folder NGC 1027_sub: moved 65 JPG files to Recycle Bin

Total JPG files moved to Recycle Bin: 189

Press Enter to close...
```
