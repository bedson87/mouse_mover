import time
from pynput.mouse import Controller

# Inicjalizacja kontrolera myszy
mouse = Controller()

print("--- Mouse Mover dla Wayland (Arch) ---")
print("Ruch co 30 sekund. Naciśnij CTRL+C aby wyłączyć.")

try:
    while True:
        # Delikatny ruch tam i z powrotem
        mouse.move(2, 2)
        time.sleep(0.1)
        mouse.move(-2, -2)
        
        print(f"[{time.strftime('%H:%M:%S')}] Aktywność podtrzymana.")
        time.sleep(30)
except KeyboardInterrupt:
    print("\nZatrzymano program.")
