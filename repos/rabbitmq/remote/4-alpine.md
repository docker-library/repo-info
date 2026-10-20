## `rabbitmq:4-alpine`

```console
$ docker pull rabbitmq@sha256:fd67f931edf93ff6bfb68128ff651c775616c7770dd319b945f3851fcaef0fda
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

### `rabbitmq:4-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:ad5baccbd83d81f37db914b8af4b442e90322a43492499abf051cb4eb2667997
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90206368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6107d68bc4a4483571128341c91ae360d58787ef215552b6b638e436bdd9143`
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

### `rabbitmq:4-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:52fe18ea4f5a23c6ecad1bd70156da725303bc2d3fd0e51066afa9bc003447dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7019938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88d97aef425ea3c9394bdd1ccf83efacf24b1229dc11718fdd8b7da02f67cc04`

```dockerfile
```

-	Layers:
	-	`sha256:8ca5f9899a792679dcacc0ca522ea2bc3fdd6d3e076c9e597254718e4db33c3b`  
		Last Modified: Mon, 19 Oct 2026 22:39:09 GMT  
		Size: 675.6 KB (675633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b312b9bee99eae75b3f37f3054b54c4e318b97b085bed52cd3be5acb5b9aea2f`  
		Last Modified: Mon, 19 Oct 2026 22:39:09 GMT  
		Size: 3.2 MB (3218320 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26e089e1d53e6b91dbcb548ee28e9e5b4b37442f06b0df4ff04d9bd069589c44`  
		Last Modified: Mon, 19 Oct 2026 22:39:09 GMT  
		Size: 3.1 MB (3065692 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33bc9735500134ab7b75ffa6dfd88e589e01e984672cbc986bd68784e2266713`  
		Last Modified: Mon, 19 Oct 2026 22:39:09 GMT  
		Size: 60.3 KB (60293 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:e47d8da3403503bc32263a42f5857560b1105c0bb4bd35f5fb19316b4aae155f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.2 MB (78200460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e48755821b134a28cc9e81f5e5a62e63505f77819b23be73d4865a44883dc839`
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

### `rabbitmq:4-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:fffc24a10d423461adabe45d1c0835116cfadd5cbdea49bfc1f11335daab56d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.3 KB (60276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e9bdba21916a5be1bf613888b278cfd9b772e6833c1bbbf7bac96d80f8b5ca0`

```dockerfile
```

-	Layers:
	-	`sha256:fd0aabf4e839a31b43983781ebf90b59a667a8c0f5d557079aa635a7eff2b6f1`  
		Last Modified: Mon, 19 Oct 2026 22:38:00 GMT  
		Size: 60.3 KB (60276 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-alpine` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:bd1c996c570f79e4026d31a6153f0e5f071112a531157bec12dde751f28cfeee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.3 MB (77258394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e86c2b1496f102689f20d1b18e488b39071929d4d03323168686f0bd7b986a8a`
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

### `rabbitmq:4-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:c8ec5fdb8747be23f2d9eeacf7566321cf91a7cbec4fe65256a6c130d5a599da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6749704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71c52d356f5de0bc1c4f04cb0a354d664773eb7c9e7b86eac548142ee3db3aca`

```dockerfile
```

-	Layers:
	-	`sha256:c967c680e0344442d8c82cddde202e934f234bd6610c2ac1e1adb13e61eb3665`  
		Last Modified: Mon, 19 Oct 2026 22:37:19 GMT  
		Size: 673.8 KB (673764 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4aaeaaaea30d8529562af05c9ae7029a1008aeed0613a64dd5f9ff36f5c8650`  
		Last Modified: Mon, 19 Oct 2026 22:37:20 GMT  
		Size: 3.1 MB (3084701 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:815d94d3cfc27378a2deddc1d2b9d1dfc3689b21494dd9c9b495b7a71934ed21`  
		Last Modified: Mon, 19 Oct 2026 22:37:19 GMT  
		Size: 2.9 MB (2930748 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55c5b5ee4d0d210e126e679195f874c0483f2ec795f2ef48e7552fcff9360615`  
		Last Modified: Mon, 19 Oct 2026 22:37:19 GMT  
		Size: 60.5 KB (60491 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:a2aa1ba1efca66916fda1cfa767f039a5a2c8b9939443b1f1d3bc768748341dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.6 MB (89617079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff1c7554232b37c015f9a71f966ee8039629f4eb9e742606352d0b55c41ada8b`
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

### `rabbitmq:4-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:b463ef7bf22e45b26187b686b4f49e1036153313d4ffcbcaa838f3bac9faa33c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7092704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4e15fb02598ef4495259cb1bab66d820b47e2d74cff493e6b8a15a4d911d2a5`

```dockerfile
```

-	Layers:
	-	`sha256:828f0a02ec96148a580bb9d69b2d51be68c2b514717443458fa4149b1d77a0fd`  
		Last Modified: Mon, 19 Oct 2026 22:39:02 GMT  
		Size: 675.8 KB (675774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a56ba7fde8eab73bd0f3b687531b27701b742fd06999c097e871cd6b8e19e6ad`  
		Last Modified: Mon, 19 Oct 2026 22:39:02 GMT  
		Size: 3.3 MB (3255169 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a4e4c6402e15dd7d0cdaaf7c6197849bda26701d331c51e1daaf980707ba4c4`  
		Last Modified: Mon, 19 Oct 2026 22:39:02 GMT  
		Size: 3.1 MB (3101222 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46eab203a10828c27668ddf5700853328ce9ca9ea69230daba7f15d345d7b064`  
		Last Modified: Mon, 19 Oct 2026 22:39:02 GMT  
		Size: 60.5 KB (60539 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:1b602e2c83aac0dffca24bc485e8a4e497778cec8508765a1c20009d6be29f51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79768478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2ff9fb632569dffb9d0800d46ed4e40db0381514077a95cfe770fc8f75ecfb7`
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

### `rabbitmq:4-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:16fac05dca2c0962d9a82d03828e51d4dc879720a629fe7d8cdcdc30a95733d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6971394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8396ca7d6fae7a461f9d4658b124ef5fc25c3fe7cfa9cb1e652057ac5e6b1a0`

```dockerfile
```

-	Layers:
	-	`sha256:f9f508be01df95e8f02b964b0d9813af861260dfb81c60aaa599204be8c0d525`  
		Last Modified: Mon, 19 Oct 2026 22:37:33 GMT  
		Size: 670.6 KB (670628 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79fbe8c7508ee60ae55b286f68832522221f238906125ecc58e2491946148a5e`  
		Last Modified: Mon, 19 Oct 2026 22:37:33 GMT  
		Size: 3.2 MB (3196573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bed3cbedbbe562d43b847d6ebdf7bfc9c3c5c17d3f5ff208adee69c3d2af46a`  
		Last Modified: Mon, 19 Oct 2026 22:37:33 GMT  
		Size: 3.0 MB (3043949 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ac3c78df8c4f80af6893d928595b298eda8ae9a9c3159b9cd24808e6ff3f7b9`  
		Last Modified: Mon, 19 Oct 2026 22:37:33 GMT  
		Size: 60.2 KB (60244 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:70cf81ec0e7e062af28ef3675917fd78e26e0479f9557781af6d7c46e07bb131
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81353826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c1624a49723af977c9cf7fc71d1f1c077d953b5dc6856c9f35c2c5245bb7d93`
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

### `rabbitmq:4-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:8c160036c6427343db62a67286e182f45227e7009e897e425d49a60da605d865
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6995420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3d8c9098507a61ec66fc3c80d5cb8b5b702f9caf963a2bc30aca6011a5eb86b`

```dockerfile
```

-	Layers:
	-	`sha256:6f5b8c842c8716735d59c2d78fb4545377baf5ab4947015e4d4aa53a8df75f62`  
		Last Modified: Mon, 19 Oct 2026 22:38:46 GMT  
		Size: 670.8 KB (670771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd4acad8745b4f710bad56ce1d322df4f0e46a32bdfaf4633b8f6f1d94e9ae1a`  
		Last Modified: Mon, 19 Oct 2026 22:38:47 GMT  
		Size: 3.2 MB (3209126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f07455b2a497df885ff7c31d699d2029016eae9e86d1c523104a238a4cee1a00`  
		Last Modified: Mon, 19 Oct 2026 22:38:47 GMT  
		Size: 3.1 MB (3055167 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2f192762a5c30e84e38119f3407e87837019419697f929233423c18ac6d37b0`  
		Last Modified: Mon, 19 Oct 2026 22:38:46 GMT  
		Size: 60.4 KB (60356 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-alpine` - linux; riscv64

```console
$ docker pull rabbitmq@sha256:c8e97c29411c540a165447a8535f551418bcad23f2e87c9d9bfb0429dfa5bb7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.7 MB (79741213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ba678c33f211a72a870eba9de5f00345e35f9e75c04e996a834d30ac6df39c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Thu, 15 Oct 2026 18:24:51 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Thu, 15 Oct 2026 18:24:51 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Thu, 15 Oct 2026 18:24:51 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Thu, 15 Oct 2026 18:24:52 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Thu, 15 Oct 2026 18:24:52 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Oct 2026 18:24:52 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 15 Oct 2026 18:25:02 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Thu, 15 Oct 2026 18:25:02 GMT
ENV RABBITMQ_VERSION=4.3.6
# Thu, 15 Oct 2026 18:25:02 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 15 Oct 2026 18:25:02 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 15 Oct 2026 18:25:02 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Oct 2026 18:25:41 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Thu, 15 Oct 2026 18:25:50 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Thu, 15 Oct 2026 18:25:51 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Thu, 15 Oct 2026 18:25:51 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 15 Oct 2026 18:25:51 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 15 Oct 2026 18:25:51 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 15 Oct 2026 18:25:51 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Thu, 15 Oct 2026 18:25:51 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Thu, 15 Oct 2026 18:25:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 15 Oct 2026 18:25:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Oct 2026 18:25:51 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Thu, 15 Oct 2026 18:25:51 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:125f7ed2919501383cc2a463efb0a6d988a780211c71de97a05b674ca6bb8dde`  
		Last Modified: Fri, 18 Sep 2026 16:50:46 GMT  
		Size: 3.6 MB (3576321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0b80802aa33e9aea4011fefb9e12b8c170706c554e88fc227ddb38a4e34c6c4`  
		Last Modified: Thu, 15 Oct 2026 18:30:17 GMT  
		Size: 37.6 MB (37591350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50ddf31c0a4095e7f8a4d85033efa84cfb5bc5ec5aeb3e0122de25102868c7de`  
		Last Modified: Thu, 15 Oct 2026 18:30:09 GMT  
		Size: 10.8 MB (10826110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfcc39ad43b6355ca22986462e73da60c5a2d5a8523d85dbe48c854249bd683f`  
		Last Modified: Thu, 15 Oct 2026 18:30:06 GMT  
		Size: 1.5 MB (1453724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514351b119da799d7f73d4b907ab4a0699dd7dfa86c685c2662c20e61f60d720`  
		Last Modified: Thu, 15 Oct 2026 18:30:15 GMT  
		Size: 26.3 MB (26291953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2635f58eb1ff7f69d7cf2e456e574eb5bb2e127715537ad7935a7190090affe`  
		Last Modified: Thu, 15 Oct 2026 18:30:08 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9121c3ed7d583d27bfb34b6e6073a71da324f1d9703152d53daa2d76e13bfae`  
		Last Modified: Thu, 15 Oct 2026 18:30:10 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12094dcf550f5619eb90b28d11d1050fff4c0ebe425433cbd4d521219d2f8765`  
		Last Modified: Thu, 15 Oct 2026 18:30:12 GMT  
		Size: 623.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c8d26963e27e2e9cabf589a9f5a38609376678d50c0cad31d625dc939ab1089`  
		Last Modified: Thu, 15 Oct 2026 18:30:12 GMT  
		Size: 832.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:df083db1573bde8c78de3f9113d51e886c07887fe3d95009a7c485f45adb3317
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7017353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:834a15419394b9518db0dde2182caba1bc94b61858e3bfb778ff7b9f446e2d86`

```dockerfile
```

-	Layers:
	-	`sha256:a7467a53c4b59f8d292298b3f6c68cf6deaabb5efbc5243331a1fd81964a0323`  
		Last Modified: Thu, 15 Oct 2026 18:30:04 GMT  
		Size: 673.9 KB (673942 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:deadae8ed9f23462daa46773afa9f2f317144c3facccbdb3f3f38859ba4ad6cd`  
		Last Modified: Thu, 15 Oct 2026 18:30:06 GMT  
		Size: 3.2 MB (3219064 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ef333a10e8fb82615befa13e9a54ca77859afcfd628bb37d7591882886cd363`  
		Last Modified: Thu, 15 Oct 2026 18:30:06 GMT  
		Size: 3.1 MB (3063965 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db4ea9464682b0dbf43498d08b989c337f48e5611f4db3d61908b0d6858854cd`  
		Last Modified: Thu, 15 Oct 2026 18:30:04 GMT  
		Size: 60.4 KB (60382 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:783bb8b53dadcba3ce36dced49ede2af2f70748f288ab2d4413d2dbff7e0d4e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79559123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8be1415e6e4248c3e3fc2401cd177d16ab76b9007d73ae67c8c5ae1a801587e0`
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

### `rabbitmq:4-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:3fee8f2b7c7275c03978f8616c4a8ec6cb00c0218dd9e34be1c2230133e70a89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6768682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d47c6843f53c07d2ae181ac5b80e257abf8b2b0eebe910ceab854fcd1d878099`

```dockerfile
```

-	Layers:
	-	`sha256:9f878d8373b7b9ad8fccdc8a38a5bd26fa0cc100fe0e590034fba2352e0cc92f`  
		Last Modified: Mon, 19 Oct 2026 22:36:14 GMT  
		Size: 670.7 KB (670737 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b48ea1108bdc6f4cf2e6e3cc0134254c38599a99c1e0f3dbfb78f7a5895016f2`  
		Last Modified: Mon, 19 Oct 2026 22:36:14 GMT  
		Size: 3.1 MB (3095790 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b997bcb948e7c0a926ed737c86828bdd1ce16ec163318c9aa16ec7eab45884c`  
		Last Modified: Mon, 19 Oct 2026 22:36:14 GMT  
		Size: 2.9 MB (2941861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5418470bff64dba12c64a2e6524f83addd7bb5ceecd8e4c7c3018ab751e3278`  
		Last Modified: Mon, 19 Oct 2026 22:36:14 GMT  
		Size: 60.3 KB (60294 bytes)  
		MIME: application/vnd.in-toto+json
