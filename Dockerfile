# Используем легкий образ nginx на базе Alpine Linux
FROM nginx:alpine

# Копируем все файлы нашего сайта в папку nginx
COPY . /usr/share/nginx/html

# Сообщаем что контейнер использует порт 80
EXPOSE 80
