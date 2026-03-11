# 1. Общий каталог файлов:

[lumis@localhost myproject]$ tree
.
├── Dockerfile

├── hello

│   └── views.py

├── manage.py

├── myproject

│   ├── __init__.py

│   ├── settings.py

│   ├── urls.py

│   └── wsgi.py

└── requirements.txt

2 directories, 8 files


2. Содержимое докер файла:

[lumis@localhost myproject]$ cat Dockerfile
#Используем официальный образ Python
FROM python:3.11-slim

#Устанавливаем рабочую директорию
WORKDIR /APP

#Копируем зависимости и устанавливаем их
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

#Копируем весь проект
COPY . .

#Указываем порт, который будет слушать приложение
EXPOSE 8000

3. Содержимое файла для web:

[lumis@localhost myproject]$ cat hello/views.py
from django.http import HttpResponse

def home(request):
    return HttpResponse("<h1>Hello, Docker! Это заглушка Django приложения.</h1>")

#Запускаем сервер разработки Django (для демо)
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

4.Команды для запуска:
sudo podman build --no-cache -t mydjangoapp .
sudo podman run -d -p 8080:8000 --name mydjango mydjangoapp
Скриншот из web браузера
