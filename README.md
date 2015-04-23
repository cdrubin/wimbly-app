# wimbly-app
An example of an application using wimbly-lib

Requirements:
 - [HttpLuaModule](http://wiki.nginx.org/HttpLuaModule) is compiled into Nginx
 - [wimbly-lib](https://github.com/cdrubin/wimbly-lib) is present at `/var/lib/nginx/lualib/wimbly`
 - `/etc/nginx/nginx.conf` contains `lua_package_path` and `init_by_lua_file` as below


```
lua_package_path "lualib/resty/?.lua;lualib/wimbly/?.lua;;";
init_by_lua_file '/etc/nginx/init.lua';
```


