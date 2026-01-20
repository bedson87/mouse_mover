Add-Type -AssemblyName System.Windows.Forms
$WshShell = New-Object -ComObject WScript.Shell

echo "--- Windows Ultimate Mouse Mover ---"
echo "Status: Aktywny. Zamknij to okno, aby zatrzymac."

while($true) {
    # 1. Porusz myszką (wizualne potwierdzenie)
    $Pos = [System.Windows.Forms.Cursor]::Position
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(($Pos.X + 1), ($Pos.Y + 1))
    Start-Sleep -Milliseconds 50
    [System.Windows.Forms.Cursor]::Position = $Pos

    # 2. Wyslij sygnal klawisza SCROLL LOCK (dwukrotnie, aby stan wlaczenia sie nie zmienil)
    $WshShell.SendKeys('{SCROLLLOCK}')
    Start-Sleep -Milliseconds 50
    $WshShell.SendKeys('{SCROLLLOCK}')

    Write-Host "[$(Get-Date -Format HH:mm:ss)] Sesja podtrzymana (Mysz + Klawisz)."
    Start-Sleep -Seconds 30
}
