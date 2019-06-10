# Laravel Echo Server for docker

這是D-Laravel上使用laravel-echo-server的設定參考。

及Dockerfile。

在D-Laravel的web容器服務中，請開啟6001埠。

<pre>
 web:
  image: nginx
  dns: 8.8.8.8
  ports:
    # 使用隨機的port 80
    - "80:80"
    - "443:443"
    - "6001:6001"
    #....略.........
</pre>

database這裡使用的為redis的container.  您可以透過d-laravel的目錄下的.env來加入相關的服務。

DOCKER_SERVICES='docker-compose.yml service/redis.yml service/echoserver.yml'

<pre>
{
	"authHost": "http://localhost",
	"authEndpoint": "/broadcasting/auth",
	"clients": [
		{
			"appId": "33866c35efde66c7",
			"key": "93c6a2cae1842c678e9b049c1824f86d"
		}
	],
	"database": "redis",
	"databaseConfig": {
		"redis": {
                     "port": "6379",
                     "host": "redis"
                }
	},
	"devMode": true,
	"host": "web",
	"port": "6001",
	"protocol": "http",
	"socketio": {},
	"subscribers": {
		"http": true,
		"redis": true
	},
	"apiOriginAllow": {
		"allowCors": true,
		"allowOrigin": "http://localhost:80",
		"allowMethods": "GET, POST",
		"allowHeaders": "Origin, Content-Type, X-Auth-Token, X-Requested-With, Accept, Authorization, X-CSRF-TOKEN, X-Socket-Id"
	}
}
</pre>
