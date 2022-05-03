server {
    server_name EXAMPLE-DOMAIN;

    location / {
        proxy_set_header   X-Forwarded-For $remote_addr;
        proxy_set_header   Host $http_host;
        proxy_pass         http://EXAMPLE-IP;
	}


    listen 80;

}
