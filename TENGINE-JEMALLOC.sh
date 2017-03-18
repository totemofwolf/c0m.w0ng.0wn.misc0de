# Tengine version: Tengine/2.1.2 (nginx/1.6.2)
# built by gcc 4.4.7 20120313 (Red Hat 4.4.7-17) (GCC)
# TLS SNI support enabled
#
# configure arguments:

cd /tmp
yum install jemalloc jemalloc-devel -y
wget -c 'http://tengine.taobao.org/download/tengine-2.1.2.tar.gz'
tar zxf tengine-2.1.2.tar.gz
cd tengine-2.1.2
./configure --with-cc-opt='-O3 -fstack-protector --param=ssp-buffer-size=4 -Wformat -Werror=format-security -D_FORTIFY_SOURCE=2' --with-ld-opt='-Wl,-Bsymbolic-functions -Wl,-z,relro' \
--user=www --group=www \
--prefix=/Applications/server/nginx \
--with-jemalloc \
--with-http_stub_status_module \
--with-http_ssl_module \
--with-http_gzip_static_module \
--with-http_concat_module \
--with-http_realip_module \
--with-http_spdy_module \
--with-http_v2_module \
--with-http_sysguard_module \
--without-http-cache \
--without-poll_module \
--without-select_module \
--without-mail_pop3_module \
--without-mail_imap_module \
--without-mail_smtp_module

# {
# · --with-jemalloc
# 让Tengine链接jemalloc库，运行时用jemalloc来分配和释放内存，编译环境需要安装jemalloc-devel，运行环境需要安装jemalloc。
# 	Configuration summary
# 	  + using system jemalloc library
#
# · --with-jemalloc=path_to_jemalloc_src
# 设置jemalloc库的源代码路径，Tengine可以静态编译和链接该库。
# }


备份、替换
which nginx
cp -apv /Applications/server/nginx/sbin/nginx{,-$(date +%F)}
objs/nginx -t
cp -vf objs/nginx /Applications/server/nginx/sbin/nginx;make upgrade;nginx -v;nginx -V
{
    /Applications/server/nginx/sbin/nginx -t
    kill -USR2 `cat /Applications/server/nginx/logs/nginx.pid`
    sleep 5
    test -f /Applications/server/nginx/logs/nginx.pid.oldbin
    kill -QUIT `cat /Applications/server/nginx/logs/nginx.pid.oldbin`
}
