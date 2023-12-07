# Данное приложение выводит текущее время с помощью модуля datetime
from datetime import datetime 

now = datetime.now()
current_time = now.strftime("%H:%M:%S")
print("Текущее время: ", current_time)