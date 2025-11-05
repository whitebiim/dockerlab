# --- Стадия сборки (build) ---
FROM nginx:alpine AS build

# Копируем файлы сайта
COPY . /usr/share/nginx/html

# --- Стадия выполнения (runtime) ---  
FROM nginx:alpine

# Копируем только готовые файлы из стадии build
COPY --from=build /usr/share/nginx/html /usr/share/nginx/html

EXPOSE 80
