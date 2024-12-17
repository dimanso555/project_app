# Используем базовый образ Python
FROM python:3.9-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем приложение и файлы в контейнер
COPY ./app /app

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Запускаем Gunicorn сервер
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:5000", "apps:app"]
