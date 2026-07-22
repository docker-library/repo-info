## `rabbitmq:4-management-alpine`

```console
$ docker pull rabbitmq@sha256:8fc5bf62ea0b8b2b058994727441904a2d3d0844a301e8ab7cab3f695f2c0b89
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `rabbitmq:4-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:c427b73a15d01416346f429042125e663452e2a27e07fb3096fadb08f7033fc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88715980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9775e75d71b04ca2b7399e4cbce0baa0d6fe250af08cff56cd156f60c91cb3d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:37:26 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Mon, 20 Jul 2026 22:37:26 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Mon, 20 Jul 2026 22:37:26 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Mon, 20 Jul 2026 22:37:27 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Mon, 20 Jul 2026 22:37:27 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:37:27 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Mon, 20 Jul 2026 22:37:29 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Mon, 20 Jul 2026 22:37:29 GMT
ENV RABBITMQ_VERSION=4.3.3
# Mon, 20 Jul 2026 22:37:29 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 20 Jul 2026 22:37:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 20 Jul 2026 22:37:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:37:34 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Mon, 20 Jul 2026 22:37:35 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Mon, 20 Jul 2026 22:37:35 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Mon, 20 Jul 2026 22:37:35 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 20 Jul 2026 22:37:35 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 20 Jul 2026 22:37:35 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 20 Jul 2026 22:37:35 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Mon, 20 Jul 2026 22:37:35 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Mon, 20 Jul 2026 22:37:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 20 Jul 2026 22:37:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 20 Jul 2026 22:37:35 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Mon, 20 Jul 2026 22:37:35 GMT
CMD ["rabbitmq-server"]
# Mon, 20 Jul 2026 23:10:34 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Mon, 20 Jul 2026 23:10:35 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-x86_64-unknown-linux-musl'; digest='be19cca3ccbaaff0d778c8ac34c5dd96481df219cf1831ec4bb15927e29374ea' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-aarch64-unknown-linux-musl'; digest='fab009d193fcbe1a5947f4066a66d8b4c967da23659584e869d0d7b6edaa2b51' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Mon, 20 Jul 2026 23:10:35 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:815225ff49ce93f964e679f4fdb721162d43cb531a254901a01edaed283e494f`  
		Last Modified: Mon, 20 Jul 2026 22:37:52 GMT  
		Size: 42.7 MB (42658689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b4cf993eb4a0097157e384c583f1ee71d2627a1d3df87fc7341a1c5104f03ad`  
		Last Modified: Mon, 20 Jul 2026 22:37:51 GMT  
		Size: 9.2 MB (9206073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc572693893ae7ad50c803133879eacebb430b0a4231b9fdcec061375ac69f3d`  
		Last Modified: Mon, 20 Jul 2026 22:37:50 GMT  
		Size: 2.5 MB (2464560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9fb813e4d8be22f96780d551a56d6dce0d9493e5f19e11d8a95eabe9d71af55`  
		Last Modified: Mon, 20 Jul 2026 22:37:52 GMT  
		Size: 26.1 MB (26102574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0322c163059958023f8949f1f2728710867349bab18d021a9af5fe8d4325952d`  
		Last Modified: Mon, 20 Jul 2026 22:37:52 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90eb82dff43748b961b551133ae05f8a333b2257e23029b3acc1916fe49c3642`  
		Last Modified: Mon, 20 Jul 2026 22:37:52 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6281b794a7dafa1a8dc611b457771569216dc3cbe7884f609351c8b8dac4f2ff`  
		Last Modified: Mon, 20 Jul 2026 22:37:53 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da8a8698ec4d63eb66e7dacc039130aef4016d1060122cd5202a102f7ce8344f`  
		Last Modified: Mon, 20 Jul 2026 22:37:53 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fb3e477aa9f0aad1783a04757073ae5de409e0877ddb51ba42a2b512e0da883`  
		Last Modified: Mon, 20 Jul 2026 23:10:41 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ba2b402a1ddc12bb63433196a78e6674aac8105eeae1bf2b32befee3d6ba78d`  
		Last Modified: Mon, 20 Jul 2026 23:10:42 GMT  
		Size: 4.4 MB (4437645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:f5e9ea910eaa06803642c6acb375f818bebf22f6a135219e3d0dd62c3458a333
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.1 KB (691150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c715f7a76d90ab42275bfd5e9d4c37af0fca3902086984d2c16f85be1a579d4f`

```dockerfile
```

-	Layers:
	-	`sha256:5fb1ebaae9c03f2b80069b88eb47b26d201d3678e191f546cdf27801116ad57e`  
		Last Modified: Mon, 20 Jul 2026 23:10:41 GMT  
		Size: 675.9 KB (675911 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eeddb805df4b1398419cae47e26078faba1723e8acfd16fca149854a14f1d614`  
		Last Modified: Mon, 20 Jul 2026 23:10:41 GMT  
		Size: 15.2 KB (15239 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:b6b1c76835fd1c0540e6c24dca149959fd72c58732fbd1803c2dee232cf7cf59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.5 MB (72459380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00171ef4fe4cd7fd544264a5d464ffed8e55d59c2d5b91d291092a3e6c1722b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:35:05 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Mon, 20 Jul 2026 22:35:05 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Mon, 20 Jul 2026 22:35:05 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Mon, 20 Jul 2026 22:35:05 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Mon, 20 Jul 2026 22:35:05 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:35:05 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Mon, 20 Jul 2026 22:35:08 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Mon, 20 Jul 2026 22:35:08 GMT
ENV RABBITMQ_VERSION=4.3.3
# Mon, 20 Jul 2026 22:35:08 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 20 Jul 2026 22:35:08 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 20 Jul 2026 22:35:08 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:35:17 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Mon, 20 Jul 2026 22:35:19 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Mon, 20 Jul 2026 22:35:19 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Mon, 20 Jul 2026 22:35:19 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 20 Jul 2026 22:35:19 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 20 Jul 2026 22:35:19 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 20 Jul 2026 22:35:19 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Mon, 20 Jul 2026 22:35:19 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Mon, 20 Jul 2026 22:35:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 20 Jul 2026 22:35:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 20 Jul 2026 22:35:19 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Mon, 20 Jul 2026 22:35:19 GMT
CMD ["rabbitmq-server"]
# Mon, 20 Jul 2026 23:10:39 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Mon, 20 Jul 2026 23:10:39 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-x86_64-unknown-linux-musl'; digest='be19cca3ccbaaff0d778c8ac34c5dd96481df219cf1831ec4bb15927e29374ea' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-aarch64-unknown-linux-musl'; digest='fab009d193fcbe1a5947f4066a66d8b4c967da23659584e869d0d7b6edaa2b51' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Mon, 20 Jul 2026 23:10:39 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e1a012c582658595907e3bb95020b74b2eba039b057d6ae7fa71f3393ca70c9`  
		Last Modified: Mon, 20 Jul 2026 22:35:26 GMT  
		Size: 33.5 MB (33536329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b59fa3808041b3de62a45c7929a9cdecb7b20775b02f5ba4f367bbf0afa5fae5`  
		Last Modified: Mon, 20 Jul 2026 22:35:25 GMT  
		Size: 7.9 MB (7862448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:464b95a79acd4cbdd4790c2c283f0dada32a0489b0c2d44aafbb359a818128a6`  
		Last Modified: Mon, 20 Jul 2026 22:35:25 GMT  
		Size: 1.4 MB (1403542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cfb4f40d3df385ff4df51e48b64ac0524625de11b87c82225aafa3c9ed54c52`  
		Last Modified: Mon, 20 Jul 2026 22:35:26 GMT  
		Size: 26.1 MB (26102414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dabedfe30d29adfe3f6e7a6c2eaf5c0613a113bf67999e29640bb75299a5df6`  
		Last Modified: Mon, 20 Jul 2026 22:35:27 GMT  
		Size: 192.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8699785bcb47ec74f198ac45c1010b5e8fc2959d72a00ba09e3c44c1ed9165cc`  
		Last Modified: Mon, 20 Jul 2026 22:35:27 GMT  
		Size: 108.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8b145e92cb0c77152351a46eef0102a939a563e35b005fbfd0721138c798323`  
		Last Modified: Mon, 20 Jul 2026 22:35:28 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea8ea8f59a9df17bba50d56455bac44b6c57a7431fdd64563525708088c93df0`  
		Last Modified: Mon, 20 Jul 2026 22:35:28 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a1d14a18bba6af1de616c6f306b7db48245b706639d44918060f8deb9ba1b82`  
		Last Modified: Mon, 20 Jul 2026 23:10:43 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:962797ddf302dc61f4c9fac7d086bb67374c71eb50d7d15fd413466fa8579108
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 KB (15112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4a5e95005d4ca7aee79046bc4a3653d45b3ef3cc15bcc8c7b0026e41c1f3e1f`

```dockerfile
```

-	Layers:
	-	`sha256:a7c0a873534986c969032a80595211bfcd354263c34d48a49abc2577ec5960df`  
		Last Modified: Mon, 20 Jul 2026 23:10:43 GMT  
		Size: 15.1 KB (15112 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management-alpine` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:c97526eeeb48dc80faa31d8e12431ae811c9630348e5e4a82696a0a0746e452f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.5 MB (71545340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee4d5becdab1db131a26e47446ce412425ee5e28d59244216fbd14db1690168a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:42:41 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Mon, 20 Jul 2026 22:42:41 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Mon, 20 Jul 2026 22:42:41 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Mon, 20 Jul 2026 22:42:41 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Mon, 20 Jul 2026 22:42:41 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:42:41 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Mon, 20 Jul 2026 22:42:43 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Mon, 20 Jul 2026 22:42:43 GMT
ENV RABBITMQ_VERSION=4.3.3
# Mon, 20 Jul 2026 22:42:43 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 20 Jul 2026 22:42:43 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 20 Jul 2026 22:42:43 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:42:49 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Mon, 20 Jul 2026 22:42:50 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Mon, 20 Jul 2026 22:42:50 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Mon, 20 Jul 2026 22:42:50 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 20 Jul 2026 22:42:50 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 20 Jul 2026 22:42:50 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 20 Jul 2026 22:42:50 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Mon, 20 Jul 2026 22:42:50 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Mon, 20 Jul 2026 22:42:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 20 Jul 2026 22:42:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 20 Jul 2026 22:42:50 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Mon, 20 Jul 2026 22:42:50 GMT
CMD ["rabbitmq-server"]
# Mon, 20 Jul 2026 23:10:05 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Mon, 20 Jul 2026 23:10:05 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-x86_64-unknown-linux-musl'; digest='be19cca3ccbaaff0d778c8ac34c5dd96481df219cf1831ec4bb15927e29374ea' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-aarch64-unknown-linux-musl'; digest='fab009d193fcbe1a5947f4066a66d8b4c967da23659584e869d0d7b6edaa2b51' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Mon, 20 Jul 2026 23:10:05 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:940c4094d33bbc59f21ea166cda859a55b86b9c890183f3b55cf9e6735957653`  
		Last Modified: Mon, 20 Jul 2026 22:43:06 GMT  
		Size: 33.4 MB (33441657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:731597ce2631c0bf22b20e947617bcb0e2ef6344f5a96d69f9fa4c2139b94c49`  
		Last Modified: Mon, 20 Jul 2026 22:43:05 GMT  
		Size: 7.4 MB (7442931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0b197e789531c565f390c194efe0518b7c6926c79d58b4fc7467127b8ae8f1f`  
		Last Modified: Mon, 20 Jul 2026 22:43:05 GMT  
		Size: 1.3 MB (1294854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30c75a2d00ba66ae3a04a9011c05a7ecb96e4a957adcffe977c80a8d48fcb392`  
		Last Modified: Mon, 20 Jul 2026 22:43:06 GMT  
		Size: 26.1 MB (26101987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4ac1eb55451e01ae9d3fb7da3d0262a3240979b048d50211806cfa23cd619d4`  
		Last Modified: Mon, 20 Jul 2026 22:43:06 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a85701435bb0fc162bf8ce39ba12bf48bdb3ed2b5ea7b6409f3671a2867641bf`  
		Last Modified: Mon, 20 Jul 2026 22:43:07 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00fd8ef90b8722588dbc8db499175e42ac9f9bc8539d026693b5c3217acf18ba`  
		Last Modified: Mon, 20 Jul 2026 22:43:07 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de0a650b4cc0c22f1cbd541cd143c975de62a3bbc66bca7f9adf7d762fc99070`  
		Last Modified: Mon, 20 Jul 2026 22:43:08 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f77a8b37ff5421ee2a854e3d13a1b812504da8ded8af2491848d022c4ce4b534`  
		Last Modified: Mon, 20 Jul 2026 23:10:11 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:af7180385335a4884b70d532a5afd8b6b63536dda96597a7db73d044cf890ab6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **686.4 KB (686382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54e5a3cbbf178d76be2fb4e16eaf62a06842b577e848e25f7fea5a099fc26eb4`

```dockerfile
```

-	Layers:
	-	`sha256:2015e5e5c4bc08260c67182955f24a236109989581f43e23bc4320de3b8a8831`  
		Last Modified: Mon, 20 Jul 2026 23:10:11 GMT  
		Size: 671.1 KB (671055 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aaecd50677ca18cc3da61ff6235dd5697f97dd4a303ea815008ed45de0b04ce4`  
		Last Modified: Mon, 20 Jul 2026 23:10:11 GMT  
		Size: 15.3 KB (15327 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:5924f6d86abd6ef4331334dd825b4c2becdc26947eb42fe5aa4b46e0fff3a7f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.4 MB (87447286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c06b9b7f283f88348d5dd5426aed0bc8c5c0caae8ef14a0fb16aa0165512347`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:37:03 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Mon, 20 Jul 2026 22:37:03 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Mon, 20 Jul 2026 22:37:03 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Mon, 20 Jul 2026 22:37:03 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Mon, 20 Jul 2026 22:37:03 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:37:03 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Mon, 20 Jul 2026 22:37:06 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Mon, 20 Jul 2026 22:37:06 GMT
ENV RABBITMQ_VERSION=4.3.3
# Mon, 20 Jul 2026 22:37:06 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 20 Jul 2026 22:37:06 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 20 Jul 2026 22:37:06 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:37:13 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Mon, 20 Jul 2026 22:37:14 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Mon, 20 Jul 2026 22:37:14 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Mon, 20 Jul 2026 22:37:14 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 20 Jul 2026 22:37:14 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 20 Jul 2026 22:37:14 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 20 Jul 2026 22:37:14 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Mon, 20 Jul 2026 22:37:14 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Mon, 20 Jul 2026 22:37:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 20 Jul 2026 22:37:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 20 Jul 2026 22:37:14 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Mon, 20 Jul 2026 22:37:14 GMT
CMD ["rabbitmq-server"]
# Mon, 20 Jul 2026 23:10:16 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Mon, 20 Jul 2026 23:10:17 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-x86_64-unknown-linux-musl'; digest='be19cca3ccbaaff0d778c8ac34c5dd96481df219cf1831ec4bb15927e29374ea' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-aarch64-unknown-linux-musl'; digest='fab009d193fcbe1a5947f4066a66d8b4c967da23659584e869d0d7b6edaa2b51' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Mon, 20 Jul 2026 23:10:17 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:172d2e779c721cf1c1259bb68f8e6281479438d75df11df81d665f254aa982c8`  
		Last Modified: Mon, 20 Jul 2026 22:37:31 GMT  
		Size: 40.5 MB (40512202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88feaf592436dc573d421b058dc8f76b309154f333cbf4eebaae03b78ed0d7f2`  
		Last Modified: Mon, 20 Jul 2026 22:37:30 GMT  
		Size: 10.0 MB (9992315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22343f5ee271528bd6545585d6858ffaf7c0079d1d3a20454e6bc870e6afbc11`  
		Last Modified: Mon, 20 Jul 2026 22:37:29 GMT  
		Size: 2.5 MB (2513459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1681159b357f3118777958d809f7b7641cedeca911c6cb931f1adf25df436711`  
		Last Modified: Mon, 20 Jul 2026 22:37:30 GMT  
		Size: 26.1 MB (26102594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:599f3fb31b3d819788be50999af9f6a529d0cbff487d37d6f22afd52ef621fea`  
		Last Modified: Mon, 20 Jul 2026 22:37:31 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6074c15d0b8001f8d2ef66fdd68bcf14d4f736ab1e27d2a668841f1d8df86b17`  
		Last Modified: Mon, 20 Jul 2026 22:37:31 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:033a09b230b1d5af732fa7c727bc632a0a0c5f9b78da4101c263e6c1fdf6805c`  
		Last Modified: Mon, 20 Jul 2026 22:37:32 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4d983573d21eaa19df2762b7c550fba62a83fc44ecc719288eddafe2d568778`  
		Last Modified: Mon, 20 Jul 2026 22:37:32 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6502cc04bff0abf20ed3d4f1e2ed75298cf3279957b2d1e5cb0346641bf73188`  
		Last Modified: Mon, 20 Jul 2026 23:10:24 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b5931661f3bf1340a486608bc3ec367ba81c8362257489f9384a511fe1b2090`  
		Last Modified: Mon, 20 Jul 2026 23:10:24 GMT  
		Size: 4.1 MB (4142837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:0a4bf3804440cafd1d8bd2816cbee0a9c0cf0a6202aeb44b741209a8582580ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.4 KB (691413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:676e9dabbc2c74f76c900a1dff747ee91e53967abe8443e60a7b7e3166bbec7a`

```dockerfile
```

-	Layers:
	-	`sha256:91a57ef31bf42658074dbf015a52769e78eda7593017aa0ed10236c591474794`  
		Last Modified: Mon, 20 Jul 2026 23:10:24 GMT  
		Size: 676.1 KB (676055 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2ad32fd18716cbec77a3076b07b55ab6941dd7b6d04851fd4c0c6cf51c1f436`  
		Last Modified: Mon, 20 Jul 2026 23:10:23 GMT  
		Size: 15.4 KB (15358 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:586c4abe373473f9fcfb629c505596b20682a74299a976275979b9d8959b29cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.9 MB (73876752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a196f26fa9e3c9b5b4f6ea14b72c908e0793c49b49ee94fe72cd6fcdd62653f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:37:30 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Mon, 20 Jul 2026 22:37:30 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Mon, 20 Jul 2026 22:37:30 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Mon, 20 Jul 2026 22:37:30 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Mon, 20 Jul 2026 22:37:30 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:37:30 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Mon, 20 Jul 2026 22:37:32 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Mon, 20 Jul 2026 22:37:32 GMT
ENV RABBITMQ_VERSION=4.3.3
# Mon, 20 Jul 2026 22:37:32 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 20 Jul 2026 22:37:32 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 20 Jul 2026 22:37:32 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:37:37 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Mon, 20 Jul 2026 22:37:38 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Mon, 20 Jul 2026 22:37:38 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Mon, 20 Jul 2026 22:37:38 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 20 Jul 2026 22:37:38 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 20 Jul 2026 22:37:38 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 20 Jul 2026 22:37:38 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Mon, 20 Jul 2026 22:37:38 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Mon, 20 Jul 2026 22:37:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 20 Jul 2026 22:37:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 20 Jul 2026 22:37:38 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Mon, 20 Jul 2026 22:37:38 GMT
CMD ["rabbitmq-server"]
# Mon, 20 Jul 2026 23:10:09 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Mon, 20 Jul 2026 23:10:09 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-x86_64-unknown-linux-musl'; digest='be19cca3ccbaaff0d778c8ac34c5dd96481df219cf1831ec4bb15927e29374ea' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-aarch64-unknown-linux-musl'; digest='fab009d193fcbe1a5947f4066a66d8b4c967da23659584e869d0d7b6edaa2b51' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Mon, 20 Jul 2026 23:10:09 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28a5297cbf7e9248b9e6bc640c7b0a26c321af47c8812c20e06a81e9135e6218`  
		Last Modified: Mon, 20 Jul 2026 22:37:54 GMT  
		Size: 33.5 MB (33500605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b97145fd18c7477e38675d323d00a0afea709c65a5c085528b2e20469e8a6d7`  
		Last Modified: Mon, 20 Jul 2026 22:37:53 GMT  
		Size: 9.2 MB (9196077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d92d50a4ee6f873fba1fdade030f42c13d8d07d7bb3d25659aa5532597aef046`  
		Last Modified: Mon, 20 Jul 2026 22:37:53 GMT  
		Size: 1.4 MB (1408091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:515d307ad294e5e5a402c428e5568300e51a2f439f1bdf1eb47cc3bcb96ae919`  
		Last Modified: Mon, 20 Jul 2026 22:37:54 GMT  
		Size: 26.1 MB (26101936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bc99334687118d5a55029229c2837adf0f7b9de9da53567acc36e5832f2a2ad`  
		Last Modified: Mon, 20 Jul 2026 22:37:54 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11b47f4cb8134e3d12d163bf8889bf2eafc3009d050cf7c548fe552a57bb76d7`  
		Last Modified: Mon, 20 Jul 2026 22:37:55 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ef33f7bb60cbe9830743d4bf55d47c788cb9c358d95368ead9534cbc29f0b6`  
		Last Modified: Mon, 20 Jul 2026 22:37:55 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5f749a726b3e192f73ee8b30acec29e9b95153162774e31daaa79668903f644`  
		Last Modified: Mon, 20 Jul 2026 22:37:55 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3acb72b0529eec9409e32a0411b083ae491dd6e897553879704693864bcb77a8`  
		Last Modified: Mon, 20 Jul 2026 23:10:16 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:fe968593032fb9ce06ed62722d109c8fbb28cb4534fc54ea1bbda59a9649b333
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **686.1 KB (686105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c548b86eae9db43ba595aa7cb603153db5b616a1eaf11073292353ede9d96c93`

```dockerfile
```

-	Layers:
	-	`sha256:07622c15b5220abe74a18d897b1187d1ab4ee557cfadf2e10618b06f0d61c8f1`  
		Last Modified: Mon, 20 Jul 2026 23:10:16 GMT  
		Size: 670.9 KB (670906 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa47452bbe66c7b649bf1e4674bf1cdbc36832a517adc049c8a4da967104195f`  
		Last Modified: Mon, 20 Jul 2026 23:10:16 GMT  
		Size: 15.2 KB (15199 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:29969bef4c5ab60dbf10871d11d0684bbef89339d0f76038c672527dfe5a6590
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.5 MB (75535153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bba4f180826165057bcb9b0c6d7fd1438115ea4946e92df6ea1e93f90c496115`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 23:50:27 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Mon, 20 Jul 2026 23:50:27 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Mon, 20 Jul 2026 23:50:27 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Mon, 20 Jul 2026 23:50:28 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Mon, 20 Jul 2026 23:50:28 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 23:50:28 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Mon, 20 Jul 2026 23:50:32 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Mon, 20 Jul 2026 23:50:32 GMT
ENV RABBITMQ_VERSION=4.3.3
# Mon, 20 Jul 2026 23:50:32 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 20 Jul 2026 23:50:32 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 20 Jul 2026 23:50:32 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 23:50:44 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Mon, 20 Jul 2026 23:50:46 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Mon, 20 Jul 2026 23:50:46 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Mon, 20 Jul 2026 23:50:46 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 20 Jul 2026 23:50:46 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 20 Jul 2026 23:50:46 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 20 Jul 2026 23:50:46 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Mon, 20 Jul 2026 23:50:47 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Mon, 20 Jul 2026 23:50:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 20 Jul 2026 23:50:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 20 Jul 2026 23:50:47 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Mon, 20 Jul 2026 23:50:47 GMT
CMD ["rabbitmq-server"]
# Tue, 21 Jul 2026 00:09:11 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Tue, 21 Jul 2026 00:09:12 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-x86_64-unknown-linux-musl'; digest='be19cca3ccbaaff0d778c8ac34c5dd96481df219cf1831ec4bb15927e29374ea' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-aarch64-unknown-linux-musl'; digest='fab009d193fcbe1a5947f4066a66d8b4c967da23659584e869d0d7b6edaa2b51' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Tue, 21 Jul 2026 00:09:12 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7bb6f39771fdc720fba8579ac070f0cd7401f26d0b1258150d9d6d7617df549`  
		Last Modified: Mon, 20 Jul 2026 23:51:22 GMT  
		Size: 34.1 MB (34110302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a7c71e0be0ea1fc53df3a19f3ca49e6665069ac3824ff0530acb2bcf9e83e99`  
		Last Modified: Mon, 20 Jul 2026 23:51:21 GMT  
		Size: 10.0 MB (9966943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db864f2512b6b440c3ef3663edf9b89bfaba02967e9921fef018f62f61f557ee`  
		Last Modified: Mon, 20 Jul 2026 23:51:20 GMT  
		Size: 1.5 MB (1541526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1715f3073d69df8f72e5d92d618c2158f944e7225edd8a7026dbb79d0eef8fcd`  
		Last Modified: Mon, 20 Jul 2026 23:51:22 GMT  
		Size: 26.1 MB (26102021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27b080da26bb97f1d8ce610dc03e7c221c6e512e85d00c8be679a723da66ccd`  
		Last Modified: Mon, 20 Jul 2026 23:51:22 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a58d8eabbc55ab9ad7b9f2210f60c1aab95fdc032b9fc362e9c206bcdd74ec`  
		Last Modified: Mon, 20 Jul 2026 23:51:22 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b964f14f00af8f82f285034cfe5e08820f41d0a848a0f80bfbf935269224b941`  
		Last Modified: Mon, 20 Jul 2026 23:51:23 GMT  
		Size: 622.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53154f35c2f60a815b8483091951aef34944455b1862a996e410e45d6ae16d18`  
		Last Modified: Mon, 20 Jul 2026 23:51:23 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c02df68d4e6e8e01ba37e93dab61dc890724de6414f1a905e0b6725e16b82d`  
		Last Modified: Tue, 21 Jul 2026 00:09:25 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:f65453cdfe90d3a8bb7a3cf3a17c1997e02e5fb0c7566d207552a3349524fe50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **686.3 KB (686332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94a5b53b1f42e5e14a1fb38aea7580b8845628ace3142cc2b07de19844ae2515`

```dockerfile
```

-	Layers:
	-	`sha256:8591dddf74b6ecdcee1140d4eb8fc987eea345c0282be15afbf8041204a50995`  
		Last Modified: Tue, 21 Jul 2026 00:09:25 GMT  
		Size: 671.1 KB (671052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d4e35f0894d1440c422142eeaeb663d6f91ca689ef77e43ffbc5450caa90dd4`  
		Last Modified: Tue, 21 Jul 2026 00:09:25 GMT  
		Size: 15.3 KB (15280 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management-alpine` - linux; riscv64

```console
$ docker pull rabbitmq@sha256:cbce289c2ac1077816249bce716f1294d16b0a40d9b92597517df9a917f36720
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.5 MB (79465415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53b7c158571aa5fa48f4d180befb1c6c8ca585b35b4744ed64a66bd8a71e03ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 08:01:59 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 07 Jul 2026 08:01:59 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 07 Jul 2026 08:01:59 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 07 Jul 2026 08:02:00 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 07 Jul 2026 08:02:00 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 08:02:00 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 07 Jul 2026 08:02:11 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Tue, 07 Jul 2026 08:02:11 GMT
ENV RABBITMQ_VERSION=4.3.3
# Tue, 07 Jul 2026 08:02:11 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 07 Jul 2026 08:02:11 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 07 Jul 2026 08:02:11 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 04:51:07 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Wed, 22 Jul 2026 04:51:18 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Wed, 22 Jul 2026 04:51:18 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Wed, 22 Jul 2026 04:51:18 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 22 Jul 2026 04:51:18 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 22 Jul 2026 04:51:18 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 22 Jul 2026 04:51:18 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Wed, 22 Jul 2026 04:51:19 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Wed, 22 Jul 2026 04:51:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 22 Jul 2026 04:51:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Jul 2026 04:51:19 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Wed, 22 Jul 2026 04:51:19 GMT
CMD ["rabbitmq-server"]
# Wed, 22 Jul 2026 13:17:24 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Wed, 22 Jul 2026 13:17:24 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-x86_64-unknown-linux-musl'; digest='be19cca3ccbaaff0d778c8ac34c5dd96481df219cf1831ec4bb15927e29374ea' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-aarch64-unknown-linux-musl'; digest='fab009d193fcbe1a5947f4066a66d8b4c967da23659584e869d0d7b6edaa2b51' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Wed, 22 Jul 2026 13:17:24 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f7ec1892381cf41885139aac35a559e189a0b84d0ff51762bfd73154bc37ec`  
		Last Modified: Tue, 07 Jul 2026 08:09:06 GMT  
		Size: 37.5 MB (37541924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd11ab4d50916ea9f6de18ac6ec9852f000044ec89fb21eea4912fbd040b7b2`  
		Last Modified: Tue, 07 Jul 2026 08:08:59 GMT  
		Size: 10.8 MB (10796117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5170eb35bce86c221a86ac09bae43f15c2a4962ec833e20420001019b7f8d8c2`  
		Last Modified: Tue, 07 Jul 2026 08:08:55 GMT  
		Size: 1.4 MB (1449571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e0a321ca8f2c298ea40d2de5449f5df787ef74dcf536990c34fd21631a58d62`  
		Last Modified: Wed, 22 Jul 2026 06:08:34 GMT  
		Size: 26.1 MB (26102503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d269dba76d4e56dac2a568cc224dd4cff80a8765a9cbc14201b5b6d5ccd126d1`  
		Last Modified: Wed, 22 Jul 2026 06:08:29 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45980b5a535685754a7ad90cf84f94d7f4a1ac396a4f7060219c7ff7d1580bbb`  
		Last Modified: Wed, 22 Jul 2026 06:08:29 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672ff92e6e5524efeb17738371fb54ca6dcc3a642fa4317eba8317016e8bf982`  
		Last Modified: Wed, 22 Jul 2026 06:08:29 GMT  
		Size: 624.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c51724247b7772e6776fab2e65af396316053b8f09d8098ab238c7b6eb9a22f`  
		Last Modified: Wed, 22 Jul 2026 06:08:30 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbd09dc65f9ddfa42a9e121bf6a52d47521229a2650d2d2ea70ab7f514987b35`  
		Last Modified: Wed, 22 Jul 2026 13:18:24 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:136e8d721c9780a42dc44b8415c294f685a7eddac5158df54f43dd669447cccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **689.3 KB (689304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:450e57c1318497320ee092a27b32ad6a4cb89a1309fb84f98054e6a1d57570ef`

```dockerfile
```

-	Layers:
	-	`sha256:e3316ff12d2fd8861e1ff06faeea6b04f1661b56d1e4f74f2a060a12b9314031`  
		Last Modified: Wed, 22 Jul 2026 13:18:24 GMT  
		Size: 674.0 KB (674021 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e495e191d149b965c251f2567b5c6669f0ab6a93d0f39f497c322922fdeba342`  
		Last Modified: Wed, 22 Jul 2026 13:18:23 GMT  
		Size: 15.3 KB (15283 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:760ff9a40937fc8aa60bfa89f274b5737b7cb9f8b2265b7f84dda1917d34f9d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.6 MB (73633809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:743a884014e6609a490e6aaef268676a998af399ef5686f8d32ccf11c9e0ec29`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 23:01:13 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Mon, 20 Jul 2026 23:01:13 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Mon, 20 Jul 2026 23:01:13 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Mon, 20 Jul 2026 23:01:13 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Mon, 20 Jul 2026 23:01:13 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 23:01:13 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Mon, 20 Jul 2026 23:01:16 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Mon, 20 Jul 2026 23:01:16 GMT
ENV RABBITMQ_VERSION=4.3.3
# Mon, 20 Jul 2026 23:01:16 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 20 Jul 2026 23:01:16 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 20 Jul 2026 23:01:16 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 23:01:23 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Mon, 20 Jul 2026 23:01:24 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Mon, 20 Jul 2026 23:01:24 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Mon, 20 Jul 2026 23:01:24 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 20 Jul 2026 23:01:24 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 20 Jul 2026 23:01:24 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 20 Jul 2026 23:01:24 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Mon, 20 Jul 2026 23:01:24 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Mon, 20 Jul 2026 23:01:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 20 Jul 2026 23:01:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 20 Jul 2026 23:01:24 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Mon, 20 Jul 2026 23:01:24 GMT
CMD ["rabbitmq-server"]
# Mon, 20 Jul 2026 23:09:03 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Mon, 20 Jul 2026 23:09:04 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-x86_64-unknown-linux-musl'; digest='be19cca3ccbaaff0d778c8ac34c5dd96481df219cf1831ec4bb15927e29374ea' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-aarch64-unknown-linux-musl'; digest='fab009d193fcbe1a5947f4066a66d8b4c967da23659584e869d0d7b6edaa2b51' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Mon, 20 Jul 2026 23:09:04 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e1d9a5ba4f1e4fe5d1eeb399c3f754db7788b8ebf1e52992dc8d985fb1ebdf`  
		Last Modified: Mon, 20 Jul 2026 23:01:51 GMT  
		Size: 34.0 MB (33957458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65ba0aaf0c833f5699af3932be396f671d88134ff4318c38afe06f20aa30c9f9`  
		Last Modified: Mon, 20 Jul 2026 23:01:50 GMT  
		Size: 8.4 MB (8350136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a39719b066b1aac90ff908da65826374b0110c8f57c8ffc9582e4938ab94ffe9`  
		Last Modified: Mon, 20 Jul 2026 23:01:50 GMT  
		Size: 1.5 MB (1514936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d838f8ba1b65c8579c1eb2feec4afaab9b1af206cf433e4353d22ee697f1317`  
		Last Modified: Mon, 20 Jul 2026 23:01:50 GMT  
		Size: 26.1 MB (26101973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612222b137e81ce1800cd3d46fe9c10434ec9a12d2210a39d01fbb8f68cfbea0`  
		Last Modified: Mon, 20 Jul 2026 23:01:51 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:522bb68e89e0f4269cbd30c5f1b1d45dc1be27111ae08c14c8bc0ce9538fac07`  
		Last Modified: Mon, 20 Jul 2026 23:01:51 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:547b68724fc0573613d77d190344400609f4202f9ef349d493be37d4490b7769`  
		Last Modified: Mon, 20 Jul 2026 23:01:52 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c221104f90c490baa98001edd3bdb707a173739a24e541df812b9983e4e7178`  
		Last Modified: Mon, 20 Jul 2026 23:01:52 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46cc7adbe0283e2d68618d6f53b0247a091c512167010cc4214fa8af6d5abdec`  
		Last Modified: Mon, 20 Jul 2026 23:09:14 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:6dadad8ecac89f1a72e27a0f6414bcdaf75d656a2392ef8bb298e9dd8de83ecc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **686.3 KB (686251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d05a56ff828918a9bd5debf29d89a96ab9af23ee0ee89b4b5cc46eb1baa7437`

```dockerfile
```

-	Layers:
	-	`sha256:59bdcb10b90f2cd6face0f1ded2c78c45ca63c423b3b3eee62f785908bf6cc49`  
		Last Modified: Mon, 20 Jul 2026 23:09:14 GMT  
		Size: 671.0 KB (671018 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c69dad95aca47d0eef7196ee4a5802331b8e0d1e9d6c2a1a42a2e907c26a859f`  
		Last Modified: Mon, 20 Jul 2026 23:09:14 GMT  
		Size: 15.2 KB (15233 bytes)  
		MIME: application/vnd.in-toto+json
