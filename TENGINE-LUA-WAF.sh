
# luajit稳定版
wget -c http://luajit.org/download/LuaJIT-2.0.4.tar.gz
tar zxf LuaJIT-2.0.4.tar.gz
cd LuaJIT-2.0.4
make -j4 && make install clean
cd ..

#
# for x86_64
ln -s /usr/local/lib/libluajit-5.1.so.2 /lib64/libluajit-5.1.so.2
ln -sf /usr/local/include/luajit-2.0 /usr/local/include/luajit
export LUAJIT_LIB=/usr/local/lib
export LUAJIT_INC=/usr/local/include/luajit


#
# wget -c https://github.com/simpl/ngx_devel_kit/archive/v0.2.19.tar.gz
# tar zxf v0.2.19.tar.gz

#
wget -c https://github.com/openresty/lua-nginx-module/archive/v0.9.16.tar.gz
tar zxf v0.9.16.tar.gz

# use tengine dso_tool
chmod +x ./dso_tool
./dso_tool --add-module=`pwd`/lua-nginx-module-0.9.16

# wget https://github.com/openresty/echo-nginx-module/archive/master.zip -O echo.zip
# unzip echo.zip -d .
# ./dso_tool --add-module=`pwd`/echo-nginx-module-master
# dso {
#   load ngx_http_echo_module.so;
# }

# nginx.conf
dso {
  load ngx_http_lua_module.so;
}

# nginx -t
# nginx -s reload

# nginx -V
ngx_http_lua_module (shared, 3.1)

#
location /hello {
    default_type text/html;
	content_by_lua '
	    if ngx.var.arg_name == nil then
	        ngx.say("name: missing")
	    else
	        ngx.say("name: [", ngx.var.arg_name, "]")
	    end
	';
}
# __OR___
location /hello {
        default_type 'text/plain';
        content_by_lua 'ngx.say("hello,lua")';
}

# curl
curl 'http://192.168.100.3/hello?name=jim'
name: [jim]

# WAF
git clone https://github.com/unixhot/waf.git
cp -a ./waf/waf /production/server/nginx/conf/


# 修改Nginx的配置文件，加入以下配置。注意路径，同时WAF日志默认存放在/tmp/日期_waf.log
#WAF
# 是否开启拦截cc攻击(需要nginx.conf的http段增加lua_shared_dict limit 10m;)
lua_shared_dict limit 50m;
lua_package_path "/production/server/nginx/conf/waf/?.lua";
init_by_lua_file "/production/server/nginx/conf/waf/init.lua";
access_by_lua_file "/production/server/nginx/conf/waf/access.lua";

# 根据日志记录位置，创建日志目录
mkdir /tmp/waf_logs
chown www.www /tmp/waf_logs

# [root@openstack-compute-node5 ~]# /usr/local/openresty/nginx/sbin/nginx –t
# [root@openstack-compute-node5 ~]# /usr/local/openresty/nginx/sbin/nginx

# issue:
# conf文件server_name行配置多域名时，waf_logs里面只记录了第一个域名，其他域名记录不了
# 后来lib.lua改成 local SERVER_NAME = ngx.var.host解决了。


# stack traceback:
# coroutine 0:
# 	/production/server/nginx/conf/waf/init.lua: in function 'cc_attack_check'
# 	/production/server/nginx/conf/waf/access.lua:7: in function 'waf_main'
# 	/production/server/nginx/conf/waf/access.lua:18: in function </production/server/nginx/conf/waf/access.lua:1>,
# client: 61.135.165.22, server: interactive.huanqiu.com, request: "GET /?c=hits&a=addHits&id=9649566&catid=134 HTTP/1.1", host: "interactive.huanqiu.com", referrer: "http://world.huanqiu.com/hot/2016-11/9649566.html"
# 2016/11/19 22:31:34 [error] 20904#0: *9118144 lua entry thread aborted: runtime error:
# /production/server/nginx/conf/waf/init.lua:63: attempt to concatenate a table value

local function getip()
local myIP = ngx.req.get_headers()["X-Real-IP"]
if myIP == nil then
	myIP = ngx.req.get_headers()["x_forwarded_for"]
end

if myIP == nil then
	myIP = ngx.var.remote_addr
end
return myIP
end


NameToInstr["Paul"]

function get_client_ip()
    local CLIENT_IP = ngx.req.get_headers()["X_real_ip"]
    if CLIENT_IP == nil then
       CLIENT_IP = ngx.req.get_headers()["X_Forwarded_For"]
    end
    if CLIENT_IP == nil then
        CLIENT_IP  = ngx.var.remote_addr
    end
    if CLIENT_IP == nil then
        CLIENT_IP  = "unknown"
    end
    return CLIENT_IP
end
