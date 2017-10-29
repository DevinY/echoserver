# Laravel Echo Server for docker

這是D-Laravel上使用laravel-echo-server的設定參考。

myproject為sites資料夾內的project.

database這裡使用的為redis的container.  您可以透過d-laravel的目錄下的.env來加入相關的服務。

DOCKER_SERVICES='docker-compose.yml service/redis.yml service/echoserver-myproject.yml'

<pre>
{
	"authHost": "http://myproject.dev",
	"authEndpoint": "/broadcasting/auth",
	"clients": [
		{
			"appId": "3417d6086172a5bd",
			"key": "defc63c8b377e2a86321fe31c4f303a6"
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
	"socketio": {}
}

</pre>
