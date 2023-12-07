# Начнём с базового образа Ubuntu
FROM ubuntu
# Задаём переменную окружения, чтобы пользователь не участвовал в установке (выбор клавиатуры и прочее)
ENV DEBIAN_FRONTEND=noninteractive
# Копируем наше приложение внутрь контейнера
COPY main.py main.py
# Установим права доступа для приложения
RUN chmod +x main.py
# Установим необходимые пакеты
RUN apt update && apt install -y python3 python3-dev
# Зададим стартовую команду для нашего контейнера
CMD python3 main.py