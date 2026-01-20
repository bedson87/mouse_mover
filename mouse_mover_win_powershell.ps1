# Załaduj wymagane biblioteki systemowe
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

echo "--- Windows Mouse Mover ---"
echo "Status: Aktywny (ruch co 30s)"
echo "Zamknij to okno, aby zatrzymac."

while($true) {
    # Pobierz aktualną pozycję kursora
    $Pos = [System.Windows.Forms.Cursor]::Position
    
    # Przesuń o 2 piksele w dół i w prawo
    $NewPos = New-Object System.Drawing.Point(($Pos.X + 2), ($Pos.Y + 2))
    [System.Windows.Forms.Cursor]::Position = $NewPos
    
    Start-Sleep -Milliseconds 100
    
    # Wróć do oryginalnej pozycji
    [System.Windows.Forms.Cursor]::Position = $Pos
    
    $Time = Get-Date -Format "HH:mm:ss"
    Write-Host "[$Time] Aktywnosc podtrzymana."
    
    # Czekaj 30 sekund
    Start-Sleep -Seconds 30
}
