./configure --prefix=/Applications/server/php \
--with-config-file-path=/Applications/server/php/etc \
--with-mysql=mysqlnd \
--with-mysqli=mysqlnd \
--with-pdo-mysql=mysqlnd \
--with-zlib \
--with-iconv \
--with-gd=/usr/local/libgd \
--with-xpm-dir=/usr/lib64 \
--with-freetype-dir=/usr/local/freetype \
--with-jpeg-dir=/usr/local/libjpeg \
--with-png-dir=/usr/local/libpng \
--with-xmlrpc \
--with-curl \
--with-mcrypt \
--with-openssl \
--with-libxml-dir=/usr \
--with-mhash \
--without-pear \
--with-gettext \
--enable-opcache \
--enable-fpm \
--enable-static \
--enable-inline-optimization \
--enable-sockets \
--enable-wddx \
--enable-zip \
--enable-calendar \
--enable-bcmath \
--enable-soap \
--enable-gd-jis-conv \
--enable-gd-native-ttf \
--enable-mbstring \
--enable-ftp \
--enable-xml \
--enable-shmop \
--enable-sysvsem \
--enable-mbregex \
--enable-pcntl \
--disable-ipv6 \
--disable-debug \
--disable-maintainer-zts \
--disable-fileinfo


CPU_NUM=$(cat /proc/cpuinfo | grep processor | wc -l)
if [ $CPU_NUM -gt 1 ];then
 make ZEND_EXTRA_LIBS='-liconv' -j$CPU_NUM
else
 make ZEND_EXTRA_LIBS='-liconv'
fi

make install
cd ..
