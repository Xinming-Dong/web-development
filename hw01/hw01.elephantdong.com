server {

        listen 80;
        listen [::]:80;

        root /home/xinming/www/hw01;

        index hw01.html;

        server_name hw01.elephantdong.com www.hw01.elephantdong.com;

        location / {
                # First attempt to serve request as file, then
                # as directory, then fall back to displaying a 404.
                try_files $uri $uri/ =404;
        }
}
