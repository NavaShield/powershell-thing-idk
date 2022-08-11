$reader = [System.IO.File]::OpenText("lol.txt")
while($null -ne ($line = $reader.ReadLine())) {
    $RandomInt = Get-Random
    $SourceFilePath = $line
    $ShortcutPath = "$RandomInt.lnk"
    $WScriptObj = New-Object -ComObject ("WScript.Shell")
    $shortcut = $WscriptObj.CreateShortcut($ShortcutPath)
    $shortcut.TargetPath = $SourceFilePath
    $shortcut.Save()
    echo "$line saved as $RandomInt"

}