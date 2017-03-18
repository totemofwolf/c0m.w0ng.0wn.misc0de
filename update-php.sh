
#先在LB上临时静默该台机器
#使用tail -f 查看nginx访问日志，直到没有日志刷新，执行如下操作：
service php-fpm stop
service nginx stop

rm -f /Applications/server/php
ln -sf /Applications/server/php-5.x.38 /Applications/server/php

cd /usr/local/src
cd php-5.x.y
make install
cd ..
install -v -m755 ./php-5.x.38/sapi/fpm/init.d.php-fpm  /etc/init.d/php-fy

cd /Applications/server
#[root@x server]# ls -lh
#lrwxrwxrwx  1 root root   29 Oct 12 15:09 php -> /Applications/server/php-5.x.y
#drwxr-xr-x  9 root root 4.0K Oct 12 15:11 php-5.a.b
#drwxr-xr-x  9 root root 4.0K Oct 12 15:10 php-5.x.y
# 拷贝.so依赖
cp -fv php-5.a.b/lib/php/extensions/no-debug-non-zts-20121212/*.so php/lib/php/extensions/no-debug-non-zts-20121212/
# 拷贝原始配置文件（小版本升级，配置文件一般通用）
cp -fv php-5.a.b/etc/php.ini php-5.5.37/etc/php-fpm.conf php/etc/
