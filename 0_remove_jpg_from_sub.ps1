Write-Host "`n=== SeeStar CleanUp (removing JPG files from *_sub folders) ===" -ForegroundColor Cyan
Add-Type -AssemblyName Microsoft.VisualBasic

# Find folders ending with _sub
$folders = Get-ChildItem -Directory | Where-Object { $_.Name -like "*_sub" }

$totalDeleted = 0

foreach ($folder in $folders) {

    $jpgFiles = Get-ChildItem -Path $folder.FullName -Filter *.jpg -File
    $count = $jpgFiles.Count

    foreach ($file in $jpgFiles) {
        [Microsoft.VisualBasic.FileIO.FileSystem]::DeleteFile(
            $file.FullName,
            'OnlyErrorDialogs',
            'SendToRecycleBin'
        )
    }

    if ($count -gt 0) {
        Write-Host "Folder $($folder.Name): moved $count JPG files to Recycle Bin"
        $totalDeleted += $count
    }
    else {
        Write-Host "Folder $($folder.Name): no JPG files found"
    }
}

Write-Host ""
Write-Host "Total JPG files moved to Recycle Bin: $totalDeleted"
Write-Host ""
Write-Host "Press Enter to close..."
Read-Host