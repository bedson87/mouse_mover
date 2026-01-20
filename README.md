# Wayland Mouse Mover (Python)

Lekki i niezawodny skrypt w Pythonie przeznaczony dla systemów Linux z sesją **Wayland** (np. Arch Linux, Fedora, Ubuntu). Skrypt zapobiega wygaszaniu ekranu, blokowaniu sesji lub przejściu komputera w tryb uśpienia poprzez symulowanie minimalnego ruchu myszy.

## Dlaczego ten skrypt?
Większość tradycyjnych programów typu "Mouse Jiggler" (np. tych napisanych w Go lub C++) opiera się na protokole X11 (Xlib), który na Waylandzie jest blokowany ze względów bezpieczeństwa. Ten skrypt wykorzystuje bibliotekę `pynput`, która zapewnia kompatybilność z nowymi środowiskami graficznymi (GNOME, KDE Plasma, Sway).

## Funkcje
- **Dyskrecja:** Przesuwa kursor tylko o 2 piksele i natychmiast go cofa – ruch jest niezauważalny podczas pracy.
- **Interwał:** Aktywność jest generowana co 30 sekund.
- **Prostota:** Minimalistyczny kod, łatwy do audytu i uruchomienia.
- **Zamykanie:** Standardowy skrót `CTRL+C` bezpiecznie przerywa działanie.

## Instalacja

### Arch Linux / Manjaro / EndeavourOS
1. Zainstaluj wymagany do działania pakiet - python-pynput.
```bash
yay -S python-pynput
```
2. Możesz sklonować to repozytorium lub ręcznie utworzyć plik o nazwie mouse_mover.py i wkleić zawartość.
3. Uruchom skrypt w terminalu
```bash
python mouse_mover.py
```
4. W celu zatrzymania w terminalu wciśnij kombinację CTRL+C

--------------------

🪟 Windows (PowerShell)
## Natywny skrypt PowerShell, który nie wymaga instalacji żadnego dodatkowego oprogramowania ani Pythona.
1. Utwórz plik o nazwie mouse_mover.ps1 i wklej do niego kod skryptu.
2. Kliknij plik Prawym Przyciskiem Myszy.
3. Wybierz "Uruchom z pomocą programu PowerShell".
4. Aby zakończyć działanie skryptu po prostu zamknij okno PowerShell.
