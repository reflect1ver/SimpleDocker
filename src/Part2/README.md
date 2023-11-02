## Part 2. Операции с контейнером

Проверяем что образ запущен и после этого, используя команду `docker exec [container_id] cat /etc/nginx/nginx.conf` читаем конфигурационный файл внутри докер контейнера

![конфиг_файл](./screenshots/exec_nginx.png)

Создать на локальной машине файл nginx.conf 
`touch nginx.conf`

Копируем содержимое конфиг файла докер контейнера и дописываем там блок директивы для http сервера по пути /status

![новый_конфиг_файл](./screenshots/nginx_conf_new.png)
> Кроме того, потребовалось закомментить последнюю строку `include /etc/nginx/conf.d/*.conf;` 



Скопировать созданный файл nginx.conf внутрь докер образа через команду docker cp

Перезапустить nginx внутри докер образа через команду exec

Проверить, что по адресу localhost:80/status отдается страничка со статусом сервера nginx. Это мы делаем с помощью команды `curl` либо просто перейдя по ссылке  http://localhost/status
![](./screenshots/docker_cp_reload_and_check.png)


Экспортировать контейнер в файл container.tar через команду export

![](./screenshots/container_tar.png)

> Ключ -о позволяет указать имя файла, в который надо сохранить докер-имидж.

![](./screenshots/container_tar_2.png)

Остановить контейнер

![](./screenshots/docker_stop.png)

Удалить образ через docker rmi [image_id|repository], не удаляя перед этим контейнеры

![](./screenshots/rm_nginx.png)

Удалить остановленный контейнер

![](./screenshots/rm_container.png)

Импортировать контейнер обратно через команду import

![](./screenshots/import_cont.png)

Запустить импортированный контейнер

![](./screenshots/load_import.png)

Проверить, что по адресу localhost:80/status отдается страничка со статусом сервера nginx

![](./screenshots/localhost_80_2.png)