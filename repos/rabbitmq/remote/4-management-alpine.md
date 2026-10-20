## `rabbitmq:4-management-alpine`

```console
$ docker pull rabbitmq@sha256:d5c8b200a061242868833c8bbdd0703534a4a06ffe654a853e33acd46c7ce258
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
$ docker pull rabbitmq@sha256:3b467adbb1ef29f97aeaa3fd492f142d1312ee31f78621909969a60ab2b4ac08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 MB (94630867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58e5f9c0ae29acea728c52f93c5d3f6f6a7d5c3718096f5c3c17e11060e07abb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Mon, 19 Oct 2026 22:38:45 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Mon, 19 Oct 2026 22:38:45 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Mon, 19 Oct 2026 22:38:45 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Mon, 19 Oct 2026 22:38:45 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Mon, 19 Oct 2026 22:38:45 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 22:38:45 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Mon, 19 Oct 2026 22:38:47 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Mon, 19 Oct 2026 22:38:47 GMT
ENV RABBITMQ_VERSION=4.4.0
# Mon, 19 Oct 2026 22:38:47 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 19 Oct 2026 22:38:47 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 19 Oct 2026 22:38:47 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 22:38:52 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Mon, 19 Oct 2026 22:38:53 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Mon, 19 Oct 2026 22:38:53 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Mon, 19 Oct 2026 22:38:53 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 19 Oct 2026 22:38:53 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 19 Oct 2026 22:38:53 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 19 Oct 2026 22:38:53 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Mon, 19 Oct 2026 22:38:53 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Mon, 19 Oct 2026 22:38:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:38:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:38:53 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Mon, 19 Oct 2026 22:38:53 GMT
CMD ["rabbitmq-server"]
# Mon, 19 Oct 2026 23:10:48 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Mon, 19 Oct 2026 23:10:49 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-musl'; digest='8e87764f19e80339abd16f5617bcd9712ad7560b75e123d5e8b8d7922c11ab6e' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-musl'; digest='bde1b0b5e45b5bd9758b2597b3a1c1031b492d0ca0654000222725f400291cbd' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Mon, 19 Oct 2026 23:10:49 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b32c07fb0bca9efa6184870369425306ece019ccf1ea3e72a1e344d86090e036`  
		Last Modified: Mon, 19 Oct 2026 22:39:11 GMT  
		Size: 47.8 MB (47782751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98d98a5bcecf1ff0aae61c19ed63a3ba54351a2f62d1e07de824590ac73b53d8`  
		Last Modified: Mon, 19 Oct 2026 22:39:09 GMT  
		Size: 9.2 MB (9231981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bb9ab38bbb2cb35846829f10ffe26005b93f3adbdb6e0e8dd1c5fca5e7936fb`  
		Last Modified: Mon, 19 Oct 2026 22:39:09 GMT  
		Size: 2.5 MB (2479341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b52df7a9963477c9de9c563602ba990d286d4fcd568ca339f5f6fac4f939565a`  
		Last Modified: Mon, 19 Oct 2026 22:39:10 GMT  
		Size: 26.9 MB (26860811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:325b72086dd09a7fbf056b48065212c90d71b7752c0f2b1cae2e21d8b2c909e8`  
		Last Modified: Mon, 19 Oct 2026 22:39:10 GMT  
		Size: 192.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11a2f297aeb523220f4e769e1ac3f10a6c6e4c66cbf67410e39667c4a5c75ec5`  
		Last Modified: Mon, 19 Oct 2026 22:39:11 GMT  
		Size: 108.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1733a88b5ccc5100aace15a02877f68fe9f761dbf3f1c06d0553f57189f61451`  
		Last Modified: Mon, 19 Oct 2026 22:39:12 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03fb2e8cacd4583ac5c9f1a9f72366a1402e905c0046790a132b06ad43ffe614`  
		Last Modified: Mon, 19 Oct 2026 22:39:12 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e75d5a8a3497c1cf08918f749cc5dd327afa6a640199a998f3ac048b8d266860`  
		Last Modified: Mon, 19 Oct 2026 23:10:56 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb22f485576c7bb42e8101f8887bcc4830a02dfac80403edecdadbdda6329577`  
		Last Modified: Mon, 19 Oct 2026 23:10:56 GMT  
		Size: 4.4 MB (4424224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:a6926eee7c95ec550d418809ccf3739e6a70aa19f4c229238f84a34c82efc53d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.0 KB (690960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a02b20ded5fd094e41d86f58dbd9f51e212937c8ed15d8cc1494c456690f171f`

```dockerfile
```

-	Layers:
	-	`sha256:3a8a80c94f17c8cc6986c380a57cda115919b2d8e36b6af24040a98fe96da0c4`  
		Last Modified: Mon, 19 Oct 2026 23:10:56 GMT  
		Size: 675.7 KB (675721 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43db5d96cf4458267fe0c22094619fae68ea4b929ac39a13e75b7f75fdce9d6c`  
		Last Modified: Mon, 19 Oct 2026 23:10:56 GMT  
		Size: 15.2 KB (15239 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:8d5962bd2b5ff13ee969cf58ea7889092439ef5e02a40a679fbfd9c7a48edd78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.2 MB (78200767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d387b55f3b8a249c705ee29e2608248ff25f7da1a32e36e98d3ffff2b270d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Oct 2026 22:37:39 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Mon, 19 Oct 2026 22:37:39 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Mon, 19 Oct 2026 22:37:39 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Mon, 19 Oct 2026 22:37:39 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Mon, 19 Oct 2026 22:37:39 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 22:37:39 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Mon, 19 Oct 2026 22:37:42 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Mon, 19 Oct 2026 22:37:42 GMT
ENV RABBITMQ_VERSION=4.4.0
# Mon, 19 Oct 2026 22:37:42 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 19 Oct 2026 22:37:42 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 19 Oct 2026 22:37:42 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 22:37:51 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Mon, 19 Oct 2026 22:37:52 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Mon, 19 Oct 2026 22:37:53 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Mon, 19 Oct 2026 22:37:53 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 19 Oct 2026 22:37:53 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 19 Oct 2026 22:37:53 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 19 Oct 2026 22:37:53 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Mon, 19 Oct 2026 22:37:53 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Mon, 19 Oct 2026 22:37:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:37:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:37:53 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Mon, 19 Oct 2026 22:37:53 GMT
CMD ["rabbitmq-server"]
# Mon, 19 Oct 2026 23:09:52 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Mon, 19 Oct 2026 23:09:52 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-musl'; digest='8e87764f19e80339abd16f5617bcd9712ad7560b75e123d5e8b8d7922c11ab6e' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-musl'; digest='bde1b0b5e45b5bd9758b2597b3a1c1031b492d0ca0654000222725f400291cbd' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Mon, 19 Oct 2026 23:09:52 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6d8c0595c956e2f617ab2cf71a0129617662de5e071b227d4290f0da39e5f9d`  
		Last Modified: Mon, 19 Oct 2026 22:38:02 GMT  
		Size: 38.5 MB (38468350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2665da4ff88e7f95628271cc4395395dfc0f992155915937b26701f7e1adf034`  
		Last Modified: Mon, 19 Oct 2026 22:38:00 GMT  
		Size: 7.9 MB (7877640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:833a55f93ff47fe6fcd0689a7fc07c9b8adbbb9f96aeba23ed1134b93d5152e4`  
		Last Modified: Mon, 19 Oct 2026 22:38:00 GMT  
		Size: 1.4 MB (1436753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0070fd50b398de4448319c55dd8bd92105a6aa607031c437fce1b0751786cd2`  
		Last Modified: Mon, 19 Oct 2026 22:38:01 GMT  
		Size: 26.9 MB (26860853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b42190bf3e92926f7b33f60fc1efc997b3c321cefef73043adc2a1146c4b009c`  
		Last Modified: Mon, 19 Oct 2026 22:38:01 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90c2fe8594485a3bac6b55e4becd429adc0e5cbc14b995ad70aabbb4e30f07af`  
		Last Modified: Mon, 19 Oct 2026 22:38:01 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1de46d98f29158b512ebce66cb901192874ed95a95b330f3fb82009f7ea1e6`  
		Last Modified: Mon, 19 Oct 2026 22:38:02 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f88edfa96cd46873f129ec3e380f82f5dadde8835772b7372f339bd156ae8ca9`  
		Last Modified: Mon, 19 Oct 2026 22:38:03 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ef46823605532e19fcfc3fb17f290c18f82b01ca825205c1c78f3efa613dd21`  
		Last Modified: Mon, 19 Oct 2026 23:09:56 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:5ddc81ffece835b743d5a020d8518d14472073c9a1e49f74d3c1016c18960906
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 KB (15112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0fb74800bed9980863e9714b2284c3a0f74d3fc109aaec67806b0981775fa21`

```dockerfile
```

-	Layers:
	-	`sha256:ced8de53609183fbdcbe70c9c3630305c0ff449561a7ddd026cc627d77508410`  
		Last Modified: Mon, 19 Oct 2026 23:09:56 GMT  
		Size: 15.1 KB (15112 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management-alpine` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:bb94b1c3cd2bc681dabd2c6f5114f397a671514bd5d8a1b9b51310abc87df7a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.3 MB (77258698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f548f9538fb48b85cd53493e5bd501a56431155cc392b888e7944816022fb76d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Mon, 19 Oct 2026 22:36:54 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Mon, 19 Oct 2026 22:36:54 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Mon, 19 Oct 2026 22:36:54 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Mon, 19 Oct 2026 22:36:54 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Mon, 19 Oct 2026 22:36:54 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 22:36:54 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Mon, 19 Oct 2026 22:36:56 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Mon, 19 Oct 2026 22:36:56 GMT
ENV RABBITMQ_VERSION=4.4.0
# Mon, 19 Oct 2026 22:36:56 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 19 Oct 2026 22:36:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 19 Oct 2026 22:36:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 22:37:03 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Mon, 19 Oct 2026 22:37:03 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Mon, 19 Oct 2026 22:37:04 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Mon, 19 Oct 2026 22:37:04 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 19 Oct 2026 22:37:04 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 19 Oct 2026 22:37:04 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 19 Oct 2026 22:37:04 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Mon, 19 Oct 2026 22:37:04 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Mon, 19 Oct 2026 22:37:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:37:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:37:04 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Mon, 19 Oct 2026 22:37:04 GMT
CMD ["rabbitmq-server"]
# Mon, 19 Oct 2026 23:09:24 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Mon, 19 Oct 2026 23:09:25 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-musl'; digest='8e87764f19e80339abd16f5617bcd9712ad7560b75e123d5e8b8d7922c11ab6e' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-musl'; digest='bde1b0b5e45b5bd9758b2597b3a1c1031b492d0ca0654000222725f400291cbd' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Mon, 19 Oct 2026 23:09:25 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97c6b827a28ae2d7cbbe63ed38802e6f05187a421b19cc124486b5fe70e0215b`  
		Last Modified: Mon, 19 Oct 2026 22:37:21 GMT  
		Size: 38.3 MB (38338324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c83ab95634b2824a6bfbc0cd5e604096a68a1c2c90ee308bcdb1b6d7dee4b615`  
		Last Modified: Mon, 19 Oct 2026 22:37:19 GMT  
		Size: 7.5 MB (7465502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c862ebc12c5651f0c60856beddbd3fb4c30c2b699adf9d818cc214e172e0d8dd`  
		Last Modified: Mon, 19 Oct 2026 22:37:19 GMT  
		Size: 1.3 MB (1327008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df147128302ec1b7d483044e8c4af5beb342c8580fce635d2e06e25b14672f93`  
		Last Modified: Mon, 19 Oct 2026 22:37:20 GMT  
		Size: 26.9 MB (26860608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aa63fecdf94ded45e5cbdb27bf8153d641b48ed46b6ee8e77cbb279b8aceecb`  
		Last Modified: Mon, 19 Oct 2026 22:37:21 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5dce2f13e9e3ab056210fbc98329363edbcdd3cdcf4a533fd5a861b79f9056d`  
		Last Modified: Mon, 19 Oct 2026 22:37:21 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a64c5a354536281e6c2b90e759f7ebe9c9f415ef3a5166922eb74ce6f9ed4211`  
		Last Modified: Mon, 19 Oct 2026 22:37:22 GMT  
		Size: 622.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed76c7d767a8b16c400ba087c9a259f75cc9a1bb198aa60b5eebdfc0b70dd57d`  
		Last Modified: Mon, 19 Oct 2026 22:37:22 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8d466fdbff65aca3ef77bce907d00641edd11be97bdd98be8fbc41ee8a21e22`  
		Last Modified: Mon, 19 Oct 2026 23:09:31 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:50e3ac4ac91efabe7355d0f45305fd9734893f52a3ec79e0b410fa50ec4bf185
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **689.2 KB (689179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d31b6b8859d5b039c8f6565fffadb95f3709f3d19f925ac272ded790530c3aa`

```dockerfile
```

-	Layers:
	-	`sha256:fe459ca2874f77dcbdd73c723713a544692429652e265e7845a5714ae5aac688`  
		Last Modified: Mon, 19 Oct 2026 23:09:31 GMT  
		Size: 673.9 KB (673852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:339f793ec6c7d2e1c22d00a0c6bcf3f5431e7c5082ee915e6a906371f8da28f6`  
		Last Modified: Mon, 19 Oct 2026 23:09:31 GMT  
		Size: 15.3 KB (15327 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:ffafa5bd7cda2b3fa178980384957d421f13f182de347ec8241ab8ba0f76a580
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.8 MB (93757949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0318a7db1c9f810182f8a2fc19a46c45e931bd16ef23cbf70ea4f6a608119647`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Mon, 19 Oct 2026 22:38:37 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Mon, 19 Oct 2026 22:38:37 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Mon, 19 Oct 2026 22:38:37 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Mon, 19 Oct 2026 22:38:37 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Mon, 19 Oct 2026 22:38:37 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 22:38:37 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Mon, 19 Oct 2026 22:38:38 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Mon, 19 Oct 2026 22:38:38 GMT
ENV RABBITMQ_VERSION=4.4.0
# Mon, 19 Oct 2026 22:38:38 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 19 Oct 2026 22:38:38 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 19 Oct 2026 22:38:38 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 22:38:44 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Mon, 19 Oct 2026 22:38:45 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Mon, 19 Oct 2026 22:38:45 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Mon, 19 Oct 2026 22:38:45 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 19 Oct 2026 22:38:45 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 19 Oct 2026 22:38:45 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 19 Oct 2026 22:38:45 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Mon, 19 Oct 2026 22:38:45 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Mon, 19 Oct 2026 22:38:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:38:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:38:45 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Mon, 19 Oct 2026 22:38:45 GMT
CMD ["rabbitmq-server"]
# Mon, 19 Oct 2026 23:10:29 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Mon, 19 Oct 2026 23:10:30 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-musl'; digest='8e87764f19e80339abd16f5617bcd9712ad7560b75e123d5e8b8d7922c11ab6e' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-musl'; digest='bde1b0b5e45b5bd9758b2597b3a1c1031b492d0ca0654000222725f400291cbd' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Mon, 19 Oct 2026 23:10:30 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd196f7bf607e339c4acc737a83a39f5398f9027a995532b38599ba90a34fe29`  
		Last Modified: Mon, 19 Oct 2026 22:39:04 GMT  
		Size: 46.0 MB (46021601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52ca81d45e0186df89024cf88d36c6a5eb50e2868da9ff14f095f46c270e5558`  
		Last Modified: Mon, 19 Oct 2026 22:39:02 GMT  
		Size: 10.0 MB (10020906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50d8731cfd90586b5afc84270291b5592e41d95dabe24cf0e5a4d05f5cd5d52e`  
		Last Modified: Mon, 19 Oct 2026 22:39:02 GMT  
		Size: 2.5 MB (2524339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c25785c382e90420fa8f1a595b7350a054d6a494a7898d0a71d09393e17d03b`  
		Last Modified: Mon, 19 Oct 2026 22:39:04 GMT  
		Size: 26.9 MB (26860828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:793ffe46dcca5b8ece58bc447d5fa82801d225219c86ada269ccf7565c7f19e8`  
		Last Modified: Mon, 19 Oct 2026 22:39:03 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15623f589986beae8e2f99fe7413d80b2e5c9984da7dd207a9d7234b8fb03d4c`  
		Last Modified: Mon, 19 Oct 2026 22:39:04 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d69bb6c3f4115ac337d6ce18c776fe0cf5855db7087b148ef5ed37a9090c359d`  
		Last Modified: Mon, 19 Oct 2026 22:39:04 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25e498dc39ba46f75fb8c7b0b5f645ab05d16890ed800a4c5d4fa7eaa896bf9c`  
		Last Modified: Mon, 19 Oct 2026 22:39:05 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2ec93acaa5d2e258e2a61b752b40f9042fb0e4776d519efa69ceff87492ffc9`  
		Last Modified: Mon, 19 Oct 2026 23:10:37 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0db1f2e2397205025d4bcbe7e23fc46360501c78cb5807e26e8f5d623560d614`  
		Last Modified: Mon, 19 Oct 2026 23:10:37 GMT  
		Size: 4.1 MB (4140595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:80b228a78375377289416a9883eac756f7db7a79b9528a30c00270d275034028
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.2 KB (691222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a07432b1d6c5b2f6bdf0e426909774aaed9859038d760527ea6ff3aa5141064`

```dockerfile
```

-	Layers:
	-	`sha256:d9e1e9846efd30a2e8d41bd9ccb0ddbe818613809a68e792049d4c5327d2f4a8`  
		Last Modified: Mon, 19 Oct 2026 23:10:36 GMT  
		Size: 675.9 KB (675862 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81e2296e91f05cb5781928374dbdd4990f9368cb61c450a4fac6897a950bd42c`  
		Last Modified: Mon, 19 Oct 2026 23:10:37 GMT  
		Size: 15.4 KB (15360 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:67eb0218391735ffead6a894d7467e9c50afd114c4a9e8dad2a698040c938a98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79768782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ffcbad4548941dd82e7b8870c5667d6721d9e42edb3b8b0254a57f1393b8399`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Mon, 19 Oct 2026 22:37:09 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Mon, 19 Oct 2026 22:37:09 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Mon, 19 Oct 2026 22:37:09 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Mon, 19 Oct 2026 22:37:09 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Mon, 19 Oct 2026 22:37:09 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 22:37:09 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Mon, 19 Oct 2026 22:37:10 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Mon, 19 Oct 2026 22:37:10 GMT
ENV RABBITMQ_VERSION=4.4.0
# Mon, 19 Oct 2026 22:37:10 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 19 Oct 2026 22:37:10 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 19 Oct 2026 22:37:10 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 22:37:18 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Mon, 19 Oct 2026 22:37:19 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Mon, 19 Oct 2026 22:37:19 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Mon, 19 Oct 2026 22:37:19 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 19 Oct 2026 22:37:19 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 19 Oct 2026 22:37:19 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 19 Oct 2026 22:37:19 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Mon, 19 Oct 2026 22:37:19 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Mon, 19 Oct 2026 22:37:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:37:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:37:19 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Mon, 19 Oct 2026 22:37:19 GMT
CMD ["rabbitmq-server"]
# Mon, 19 Oct 2026 23:10:29 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Mon, 19 Oct 2026 23:10:29 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-musl'; digest='8e87764f19e80339abd16f5617bcd9712ad7560b75e123d5e8b8d7922c11ab6e' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-musl'; digest='bde1b0b5e45b5bd9758b2597b3a1c1031b492d0ca0654000222725f400291cbd' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Mon, 19 Oct 2026 23:10:29 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11e045a80d06e802cd271b0e7c372a856e56556a17715263ffa1c99a9e3dc44d`  
		Last Modified: Mon, 19 Oct 2026 22:37:35 GMT  
		Size: 38.6 MB (38578032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b886ed5644769930ebfcb94137a3cfc4f1e2dc11d06bc41afa5920182ccf7b7`  
		Last Modified: Mon, 19 Oct 2026 22:37:34 GMT  
		Size: 9.2 MB (9226062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d54aab441bf65067dcae87bf05c026c981f0e9d61d8838f32d9a50fcda2c044`  
		Last Modified: Mon, 19 Oct 2026 22:37:34 GMT  
		Size: 1.4 MB (1425630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63856f0b1f5db020050a2bd4fa3749f4cd87e4f8ed4e62106838e5a99c03122f`  
		Last Modified: Mon, 19 Oct 2026 22:37:35 GMT  
		Size: 26.9 MB (26860227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad92981329e4076fad9ffc2cda00662a27d32de5b9efc83e3efffd569bbc929f`  
		Last Modified: Mon, 19 Oct 2026 22:37:35 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8804ef848622e51d8d487848b40e303357f088583b7d3012936dd0065bbeccaf`  
		Last Modified: Mon, 19 Oct 2026 22:37:35 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4263113fd91792c1378db4cde4bb4d67acca74afbdd04a410813f00b4936199`  
		Last Modified: Mon, 19 Oct 2026 22:37:36 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcf26df86be86aabd9e9a313c08245230e3731c1ea07376c9facec4dbb62715e`  
		Last Modified: Mon, 19 Oct 2026 22:37:36 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd83799cf2f5fb7793d1bf3ba2b86d7b4fc634064ea770eb75a0904a9e60ec74`  
		Last Modified: Mon, 19 Oct 2026 23:10:35 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:ad9c163fdd1b8dff8df6b1bf592a3af2bdad8272f73c9bd9751e99a88254608f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **685.9 KB (685916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:270e09e64cb99cef281abc5bf0c00751e9134b26e1dbce0f99a3978a74099050`

```dockerfile
```

-	Layers:
	-	`sha256:7ddc60e4488bcefe0dd42d03d767f1f8b66ebaad5a79a4ea6479cd2e9606fe80`  
		Last Modified: Mon, 19 Oct 2026 23:10:35 GMT  
		Size: 670.7 KB (670716 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e68aad3d003e36a11834f44cecfb3d031daf855923746e81f8839a2748c22b16`  
		Last Modified: Mon, 19 Oct 2026 23:10:35 GMT  
		Size: 15.2 KB (15200 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:88157d04955f2f84414e77d335f69fa623a41bbc6a91e7b2a6cc722e47b30e62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81354134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e60818fd520462dadf3cc3c658c61d0dc4b84aa18c1a99e3eafba885c5567bb0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Mon, 19 Oct 2026 22:37:46 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Mon, 19 Oct 2026 22:37:46 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Mon, 19 Oct 2026 22:37:46 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Mon, 19 Oct 2026 22:37:47 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Mon, 19 Oct 2026 22:37:47 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 22:37:47 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Mon, 19 Oct 2026 22:37:50 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Mon, 19 Oct 2026 22:37:50 GMT
ENV RABBITMQ_VERSION=4.4.0
# Mon, 19 Oct 2026 22:37:50 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 19 Oct 2026 22:37:50 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 19 Oct 2026 22:37:50 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 22:38:01 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Mon, 19 Oct 2026 22:38:02 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Mon, 19 Oct 2026 22:38:03 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Mon, 19 Oct 2026 22:38:03 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 19 Oct 2026 22:38:03 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 19 Oct 2026 22:38:03 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 19 Oct 2026 22:38:03 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Mon, 19 Oct 2026 22:38:04 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Mon, 19 Oct 2026 22:38:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:38:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:38:04 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Mon, 19 Oct 2026 22:38:04 GMT
CMD ["rabbitmq-server"]
# Mon, 19 Oct 2026 23:09:03 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Mon, 19 Oct 2026 23:09:04 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-musl'; digest='8e87764f19e80339abd16f5617bcd9712ad7560b75e123d5e8b8d7922c11ab6e' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-musl'; digest='bde1b0b5e45b5bd9758b2597b3a1c1031b492d0ca0654000222725f400291cbd' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Mon, 19 Oct 2026 23:09:04 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c14b51f0625c839a9c961a5837d695581cff3204655ada7f350e5bce9da74532`  
		Last Modified: Mon, 19 Oct 2026 22:38:48 GMT  
		Size: 39.1 MB (39121733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adac73d581a7cefb555621a62e4523aad6b85eed66738a4b7f536e4d1d643ef2`  
		Last Modified: Mon, 19 Oct 2026 22:38:47 GMT  
		Size: 10.0 MB (9997389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b2a61a73e8edfdffbeb2ecbfd61595ee9720d6de382660083a3816883aabc55`  
		Last Modified: Mon, 19 Oct 2026 22:38:47 GMT  
		Size: 1.6 MB (1555320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e31a31928afc9e9245c00505162bf803dd9f4e7ac72fa59893126de330f9b766`  
		Last Modified: Mon, 19 Oct 2026 22:38:48 GMT  
		Size: 26.9 MB (26860152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c02ad884104ed73101647fdf27e6a3c6cd68d0736986e8c33b4b080be285b79`  
		Last Modified: Mon, 19 Oct 2026 22:38:48 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0257fb47015146d843b016c811f4a33f8067b06f881209ee5f10a306819c368a`  
		Last Modified: Mon, 19 Oct 2026 22:38:48 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91633a910920681363f5db5fbae96ea0e07b4f939e82175b6187036f2e8f1944`  
		Last Modified: Mon, 19 Oct 2026 22:38:49 GMT  
		Size: 624.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc1673a7c276b90238834e64f34a1ca00dd0e53614e432cb556e15629d987bce`  
		Last Modified: Mon, 19 Oct 2026 22:38:50 GMT  
		Size: 831.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8da149ef40cc1cd051de7fc968895af1f8cda6a92f6a9027fef513045a3db623`  
		Last Modified: Mon, 19 Oct 2026 23:09:27 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:63893f26b8f5b58d6bda8d0f4c2fd37b1b86b2223af5cb74ca795d5c507373ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **686.1 KB (686139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:067e33c3a9b61579f6b825f3aa7dc3cab223a6484c8377a1fc55763900b18132`

```dockerfile
```

-	Layers:
	-	`sha256:fed183fcf7afa0ded6f193285989bc0fdcd58ed43592989c60adf51a43d1103b`  
		Last Modified: Mon, 19 Oct 2026 23:09:27 GMT  
		Size: 670.9 KB (670859 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4fe7e90aefd27ff41eb822ac03b89c4dabdf4b9af23f8f1a7a0bd353b6213b86`  
		Last Modified: Mon, 19 Oct 2026 23:09:26 GMT  
		Size: 15.3 KB (15280 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management-alpine` - linux; riscv64

```console
$ docker pull rabbitmq@sha256:19fb716620cef3bbd96b34a6f839ce83b4667bcc953c89f3d221d3a0919fbe4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85716459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd3b91ada34bc2d60530740dad469e17674e488455abf63a295373dc8f158800`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Mon, 19 Oct 2026 23:56:50 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Mon, 19 Oct 2026 23:56:50 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Mon, 19 Oct 2026 23:56:50 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Mon, 19 Oct 2026 23:56:50 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Mon, 19 Oct 2026 23:56:50 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 23:56:50 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Mon, 19 Oct 2026 23:57:00 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Mon, 19 Oct 2026 23:57:00 GMT
ENV RABBITMQ_VERSION=4.4.0
# Mon, 19 Oct 2026 23:57:00 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 19 Oct 2026 23:57:00 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 19 Oct 2026 23:57:00 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 23:57:40 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Mon, 19 Oct 2026 23:57:49 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Mon, 19 Oct 2026 23:57:49 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Mon, 19 Oct 2026 23:57:49 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 19 Oct 2026 23:57:49 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 19 Oct 2026 23:57:49 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 19 Oct 2026 23:57:49 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Mon, 19 Oct 2026 23:57:49 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Mon, 19 Oct 2026 23:57:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 23:57:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 23:57:49 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Mon, 19 Oct 2026 23:57:49 GMT
CMD ["rabbitmq-server"]
# Tue, 20 Oct 2026 00:10:18 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Tue, 20 Oct 2026 00:10:18 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-musl'; digest='8e87764f19e80339abd16f5617bcd9712ad7560b75e123d5e8b8d7922c11ab6e' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-musl'; digest='bde1b0b5e45b5bd9758b2597b3a1c1031b492d0ca0654000222725f400291cbd' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Tue, 20 Oct 2026 00:10:18 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4d59b37333455296792c6e0cd4df6d0180d631ea45b11a41c4bf4b8ddc63800`  
		Last Modified: Tue, 20 Oct 2026 00:02:08 GMT  
		Size: 43.0 MB (42990860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe87b0ec5c70f4346e11aee6275d1be662339dd37c222dfe5952de2d2a9fdc59`  
		Last Modified: Tue, 20 Oct 2026 00:02:00 GMT  
		Size: 10.8 MB (10826172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c08219e75fa4cbf932ed068ea635b6b289055c42779f37edef6a206f8f77b42b`  
		Last Modified: Tue, 20 Oct 2026 00:01:55 GMT  
		Size: 1.5 MB (1461276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:431da5440748f4a21bedbe2e5b2deab9ab8d94cd83b334422138620cc85ee807`  
		Last Modified: Tue, 20 Oct 2026 00:02:06 GMT  
		Size: 26.9 MB (26860718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d35b7e7345cef4a6831273158a0ff9914a4e02c3baac427ca5722072f739b16d`  
		Last Modified: Tue, 20 Oct 2026 00:01:58 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d489ba4a607a2ccd0cf9c04fb1e6df445c928cd6f56c52a72a30928fa3da5cce`  
		Last Modified: Tue, 20 Oct 2026 00:02:01 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4525cadc6007eba33798e22fe1e08d34d0a47a7008da78bae86e1802854a4aac`  
		Last Modified: Tue, 20 Oct 2026 00:02:02 GMT  
		Size: 620.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a858d71581ea934a64a9cace5bed850fa70f871bda8eef18c2b1a71d29687f80`  
		Last Modified: Tue, 20 Oct 2026 00:02:03 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7878e8c0b6591f93e60454a4f754fcd0d282c5caf4457ec3995f79cc8f5e4e8c`  
		Last Modified: Tue, 20 Oct 2026 00:11:25 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:72091457cbaf000c4090a1e4a8686298ce583f09d294e0dfdba5e534ddf8ef8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **689.1 KB (689111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83daf3f3b79aeb4764e613f71e1a7371090510af041c80c296d593f6bcaab98c`

```dockerfile
```

-	Layers:
	-	`sha256:7b053f33743826d63edbb046ec824da579d0551b52391ca018c29c9f06e3464f`  
		Last Modified: Tue, 20 Oct 2026 00:11:25 GMT  
		Size: 673.8 KB (673828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e86969d893b76a0556960f473a3d9034b4142c97f8d6bb550650dffae846e3fd`  
		Last Modified: Tue, 20 Oct 2026 00:11:25 GMT  
		Size: 15.3 KB (15283 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:85511643e765e2eed5accb00b6f031135315e9aae766860a072433ac8ca85898
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79559428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f586fb1f7c7a67348631fc2f41a50c5cdf0dc31a347027aa263862c1151cd8c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Mon, 19 Oct 2026 22:35:46 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Mon, 19 Oct 2026 22:35:46 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Mon, 19 Oct 2026 22:35:46 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Mon, 19 Oct 2026 22:35:46 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Mon, 19 Oct 2026 22:35:46 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 22:35:46 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Mon, 19 Oct 2026 22:35:48 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Mon, 19 Oct 2026 22:35:48 GMT
ENV RABBITMQ_VERSION=4.4.0
# Mon, 19 Oct 2026 22:35:48 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 19 Oct 2026 22:35:48 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 19 Oct 2026 22:35:48 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 22:35:53 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Mon, 19 Oct 2026 22:35:54 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Mon, 19 Oct 2026 22:35:54 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Mon, 19 Oct 2026 22:35:54 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 19 Oct 2026 22:35:54 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 19 Oct 2026 22:35:54 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 19 Oct 2026 22:35:54 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Mon, 19 Oct 2026 22:35:54 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Mon, 19 Oct 2026 22:35:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:35:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:35:54 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Mon, 19 Oct 2026 22:35:54 GMT
CMD ["rabbitmq-server"]
# Mon, 19 Oct 2026 23:09:08 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Mon, 19 Oct 2026 23:09:08 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-musl'; digest='8e87764f19e80339abd16f5617bcd9712ad7560b75e123d5e8b8d7922c11ab6e' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-musl'; digest='bde1b0b5e45b5bd9758b2597b3a1c1031b492d0ca0654000222725f400291cbd' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Mon, 19 Oct 2026 23:09:08 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75b6420fc0b290919bf677aa0ff1849881e5f89580346ccc3de50b59e1946137`  
		Last Modified: Mon, 19 Oct 2026 22:36:15 GMT  
		Size: 39.1 MB (39083541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fe87982abd9bd63de9d5dcfffea54a7570ede891154b3261e83d9245ce80876`  
		Last Modified: Mon, 19 Oct 2026 22:36:14 GMT  
		Size: 8.4 MB (8370623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a5d9979c700c4c0d8ab857964e57b53ec954b01bced31ce9e9fcb97e32e1710`  
		Last Modified: Mon, 19 Oct 2026 22:36:14 GMT  
		Size: 1.5 MB (1527654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2af8b95bdc7f08449dcce4da73ba7cff9810f82760399d01333d2ceab9f571c6`  
		Last Modified: Mon, 19 Oct 2026 22:36:15 GMT  
		Size: 26.9 MB (26860224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2479c49097784393e29e1da210c9751bec24d4ffa71479f91d652b44b4cae536`  
		Last Modified: Mon, 19 Oct 2026 22:36:15 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f85bd6c109665106e2758e2206e96e72ed7b3ca214addd800289329407a32d95`  
		Last Modified: Mon, 19 Oct 2026 22:36:15 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e634a3021769697c21bc0f623b6fd5aa4ef72b2d4f801df19e5fb7a5cc3df33`  
		Last Modified: Mon, 19 Oct 2026 22:36:16 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80798a29cd3e30d078608c61a95e420a6afdea68ca579a31ac0986ac83dcbbff`  
		Last Modified: Mon, 19 Oct 2026 22:36:16 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9acb1c8d13b80c32f77346e130cf0e3f59975c9397a9f69fdabf1eae9c38d5bb`  
		Last Modified: Mon, 19 Oct 2026 23:09:18 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:049269616d80e97766df6c8e96192e3a44f355cc2bfdc76cf933e66a8c81ddbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **686.1 KB (686058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da9dd267bc760ba486f2b5dccd5747e0b1e327b3a47436aad7ed1555593b1fb7`

```dockerfile
```

-	Layers:
	-	`sha256:e42ed325d8dbf935ef45f1ed2aa5e2eaa10b75291f99ec90c8c5935131f44d25`  
		Last Modified: Mon, 19 Oct 2026 23:09:19 GMT  
		Size: 670.8 KB (670825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4b085ec289ab0634d98bada738e9bd4947d4864b6520069ff16ad8ccca0024a`  
		Last Modified: Mon, 19 Oct 2026 23:09:18 GMT  
		Size: 15.2 KB (15233 bytes)  
		MIME: application/vnd.in-toto+json
