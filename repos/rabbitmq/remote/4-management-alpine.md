## `rabbitmq:4-management-alpine`

```console
$ docker pull rabbitmq@sha256:09b39ca8a3e884e91cab8842cd41264de21aab0625e1f1d016a9a3135ba590ef
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
$ docker pull rabbitmq@sha256:216509ee9e2d889e6cd8f050100dae23011e5da3d3e3660d77d61618a96a9d42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88772184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3c8b73548040d9b449cb608b206b34b76e2d593329657f56b4c31b07396d269`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 27 Jul 2026 22:12:27 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Mon, 27 Jul 2026 22:12:27 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Mon, 27 Jul 2026 22:12:27 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Mon, 27 Jul 2026 22:12:27 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Mon, 27 Jul 2026 22:12:27 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:12:27 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Mon, 27 Jul 2026 22:12:29 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Mon, 27 Jul 2026 22:12:29 GMT
ENV RABBITMQ_VERSION=4.3.4
# Mon, 27 Jul 2026 22:12:29 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 27 Jul 2026 22:12:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 27 Jul 2026 22:12:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:12:35 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Mon, 27 Jul 2026 22:12:36 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Mon, 27 Jul 2026 22:12:36 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Mon, 27 Jul 2026 22:12:36 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 27 Jul 2026 22:12:36 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 27 Jul 2026 22:12:36 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 27 Jul 2026 22:12:36 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Mon, 27 Jul 2026 22:12:36 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Mon, 27 Jul 2026 22:12:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:12:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:12:36 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Mon, 27 Jul 2026 22:12:36 GMT
CMD ["rabbitmq-server"]
# Mon, 27 Jul 2026 23:10:40 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Mon, 27 Jul 2026 23:10:40 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-x86_64-unknown-linux-musl'; digest='be19cca3ccbaaff0d778c8ac34c5dd96481df219cf1831ec4bb15927e29374ea' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-aarch64-unknown-linux-musl'; digest='fab009d193fcbe1a5947f4066a66d8b4c967da23659584e869d0d7b6edaa2b51' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Mon, 27 Jul 2026 23:10:40 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39b81271d3d72ac969275feeb8a625c62df95375c3a205f8316f8a9ea0229052`  
		Last Modified: Mon, 27 Jul 2026 22:12:52 GMT  
		Size: 42.7 MB (42665661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:150e928f645dd491d87391911268cb10045017dcafffe7acbe67298461759a1c`  
		Last Modified: Mon, 27 Jul 2026 22:12:51 GMT  
		Size: 9.2 MB (9206083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7c494e1a09907a36934b65d215f0f2e9728d7643e3a1513f01c1158e8640df5`  
		Last Modified: Mon, 27 Jul 2026 22:12:50 GMT  
		Size: 2.5 MB (2464556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75291f286b2d9e79ef2093b48b9f882c52042ebd7fd506b9cd60e814592d91eb`  
		Last Modified: Mon, 27 Jul 2026 22:12:51 GMT  
		Size: 26.2 MB (26151788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40899460ee98b531a37f0c961830f92106360e26c252338f70e10deaa187bc26`  
		Last Modified: Mon, 27 Jul 2026 22:12:51 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c63999d754ddf539d867badf45e00698dd3ff10393e0c91ac2e804b46cdd542e`  
		Last Modified: Mon, 27 Jul 2026 22:12:52 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c65daeb450d616c307c98f4e218238d9ba164c4944698283bad32878a4be7e4a`  
		Last Modified: Mon, 27 Jul 2026 22:12:53 GMT  
		Size: 622.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:962b5ac7f17f56cd42092039e7220cc72f5c2681efd95af97f6ce6636eee3a30`  
		Last Modified: Mon, 27 Jul 2026 22:12:53 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cf76dfc0ccfec6cdf7497bdab23f07185a014a0c9239a48f4a95ace7d924869`  
		Last Modified: Mon, 27 Jul 2026 23:10:47 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db69a2e29dbe2d3bbccbe6a5c2f91d6edca8fed1c99de2d93db09ec05cd53853`  
		Last Modified: Mon, 27 Jul 2026 23:10:47 GMT  
		Size: 4.4 MB (4437650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:4ed5e6bee9f86a80b0b5edb83c072e8d18cd6b91c770b49734406414eb678357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.1 KB (691148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a20082da821a49eba9e2d1c9918e8679b96e5e80ec326079a94f16acdace74e`

```dockerfile
```

-	Layers:
	-	`sha256:18fe11feb740642c714927fc0d1b509e1063efb3b9e2908e24a8c246bb606aac`  
		Last Modified: Mon, 27 Jul 2026 23:10:47 GMT  
		Size: 675.9 KB (675911 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4354867edc7fe65b2df0f691a47326804a141574572e4ff7849632c16756fc2e`  
		Last Modified: Mon, 27 Jul 2026 23:10:47 GMT  
		Size: 15.2 KB (15237 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:f25c3d16e26421b5f8c882b4c7e644b2b7917b5e0ca746feadabb92a0784fa50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.5 MB (72517116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02fd44b6d7cdf74f7705712128beb82c99752557e19ef29378aeb79cdb91bdf4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 27 Jul 2026 22:08:17 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Mon, 27 Jul 2026 22:08:17 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Mon, 27 Jul 2026 22:08:17 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Mon, 27 Jul 2026 22:08:17 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Mon, 27 Jul 2026 22:08:17 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:08:17 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Mon, 27 Jul 2026 22:08:19 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Mon, 27 Jul 2026 22:08:19 GMT
ENV RABBITMQ_VERSION=4.3.4
# Mon, 27 Jul 2026 22:08:19 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 27 Jul 2026 22:08:19 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 27 Jul 2026 22:08:19 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:08:28 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Mon, 27 Jul 2026 22:08:30 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Mon, 27 Jul 2026 22:08:30 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Mon, 27 Jul 2026 22:08:30 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 27 Jul 2026 22:08:30 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 27 Jul 2026 22:08:30 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 27 Jul 2026 22:08:30 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Mon, 27 Jul 2026 22:08:31 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Mon, 27 Jul 2026 22:08:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:31 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Mon, 27 Jul 2026 22:08:31 GMT
CMD ["rabbitmq-server"]
# Mon, 27 Jul 2026 23:10:34 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Mon, 27 Jul 2026 23:10:35 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-x86_64-unknown-linux-musl'; digest='be19cca3ccbaaff0d778c8ac34c5dd96481df219cf1831ec4bb15927e29374ea' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-aarch64-unknown-linux-musl'; digest='fab009d193fcbe1a5947f4066a66d8b4c967da23659584e869d0d7b6edaa2b51' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Mon, 27 Jul 2026 23:10:35 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64cf26defbbec2d44183165a652544925ed1a475d0048d230b0b1ab140b87ef7`  
		Last Modified: Mon, 27 Jul 2026 22:08:39 GMT  
		Size: 33.5 MB (33544733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2793e26823d5cea0fa86f17ca127100733e800d359a3b0b7d0490b86645deedf`  
		Last Modified: Mon, 27 Jul 2026 22:08:38 GMT  
		Size: 7.9 MB (7862466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869f4f7b73cf3625fe83053a5fb6a82bd27ba25ff072438a25a484badbb85b42`  
		Last Modified: Mon, 27 Jul 2026 22:08:37 GMT  
		Size: 1.4 MB (1403557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ba5163aeba76d9dca204b3df0b4a2c91c13f63bb180b7a61253db0f3824e154`  
		Last Modified: Mon, 27 Jul 2026 22:08:38 GMT  
		Size: 26.2 MB (26151707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6602ebec8d892bc1eba3fbf6da5b871d6b5672aa3546be033325c78b3d120fac`  
		Last Modified: Mon, 27 Jul 2026 22:08:38 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab91a97f0436aa526bfd45da1204b7de6c874c642102c83a5396c1eeee7e2cd9`  
		Last Modified: Mon, 27 Jul 2026 22:08:39 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7318f1774fa4dcb55a2db7b7660fc0db657e67706589e3d57099b7f70d369c6`  
		Last Modified: Mon, 27 Jul 2026 22:08:40 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:132302e00626657f4c6fc7811681169e08755b9065869659d064dcac457511b3`  
		Last Modified: Mon, 27 Jul 2026 22:08:40 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c897a804fd6bbc1226108341869cc9a85f83e32e0893575f97c8123434586c`  
		Last Modified: Mon, 27 Jul 2026 23:10:38 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:0c5abd30a3bb9ebf8dc817fb8d416b8bbb6f98b6babe61aec3388d9f93875bbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 KB (15110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66bdd8e2ef006311d89fed806df9f24485c108c151bf21f8debc3aa3af372e76`

```dockerfile
```

-	Layers:
	-	`sha256:35eb8c8144387844c1ef52c3e11916e9c5c43a1815de568c026b1c6b99bb0ed9`  
		Last Modified: Mon, 27 Jul 2026 23:10:38 GMT  
		Size: 15.1 KB (15110 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management-alpine` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:3e04096994f8b75c3c7b70450c65c7f3feb266c23c0e40c51a92bba921dfa4e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71604666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c73887fcd11550ea6669d5aa2f6b281cbee620392ac04bad3420cff04225c1d0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Mon, 27 Jul 2026 22:11:24 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Mon, 27 Jul 2026 22:11:24 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Mon, 27 Jul 2026 22:11:24 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Mon, 27 Jul 2026 22:11:24 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Mon, 27 Jul 2026 22:11:24 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:11:24 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Mon, 27 Jul 2026 22:11:27 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Mon, 27 Jul 2026 22:11:27 GMT
ENV RABBITMQ_VERSION=4.3.4
# Mon, 27 Jul 2026 22:11:27 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 27 Jul 2026 22:11:27 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 27 Jul 2026 22:11:27 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:11:33 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Mon, 27 Jul 2026 22:11:33 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Mon, 27 Jul 2026 22:11:34 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Mon, 27 Jul 2026 22:11:34 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 27 Jul 2026 22:11:34 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 27 Jul 2026 22:11:34 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 27 Jul 2026 22:11:34 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Mon, 27 Jul 2026 22:11:34 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Mon, 27 Jul 2026 22:11:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:11:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:11:34 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Mon, 27 Jul 2026 22:11:34 GMT
CMD ["rabbitmq-server"]
# Mon, 27 Jul 2026 23:10:01 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Mon, 27 Jul 2026 23:10:01 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-x86_64-unknown-linux-musl'; digest='be19cca3ccbaaff0d778c8ac34c5dd96481df219cf1831ec4bb15927e29374ea' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-aarch64-unknown-linux-musl'; digest='fab009d193fcbe1a5947f4066a66d8b4c967da23659584e869d0d7b6edaa2b51' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Mon, 27 Jul 2026 23:10:01 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eb8ce8beb9cfe871af5223c4eb2002ef9dbccf09bbf4375b024c8350e6ce50e`  
		Last Modified: Mon, 27 Jul 2026 22:11:50 GMT  
		Size: 33.5 MB (33451818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec0b76665c5ddf2f85176ba939d933376d7aaba6f4d3bf690526adad9c77bcb`  
		Last Modified: Mon, 27 Jul 2026 22:11:49 GMT  
		Size: 7.4 MB (7442983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:588285d98251a156edf27440900e1d3658189f1af07ba6f05f1b37863fe196ca`  
		Last Modified: Mon, 27 Jul 2026 22:11:48 GMT  
		Size: 1.3 MB (1294861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:931eb33e8da188154b3383fe8826f4ca43250455bff5d203e17a1faf206c5c63`  
		Last Modified: Mon, 27 Jul 2026 22:11:50 GMT  
		Size: 26.2 MB (26151092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24bc9d9f02f84c02f7d0e23648494fcc8c198141fab7d34d7185736955b28b3e`  
		Last Modified: Mon, 27 Jul 2026 22:11:50 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a69d5e5c5dfaab8fbc253f83c39268622068460ce82fa6d45d3a9aa937d0cc`  
		Last Modified: Mon, 27 Jul 2026 22:11:50 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2bf883c91350b040b81e9d78991d32a906b9a7fbdb52fa429cec179e0342cbb`  
		Last Modified: Mon, 27 Jul 2026 22:11:51 GMT  
		Size: 622.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b9d11e3d3bce4ca9869ce8a972cddfdae1e95ae127a4e24aa7e8f5d55115c4`  
		Last Modified: Mon, 27 Jul 2026 22:11:52 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:860b86eddfc1207ebccd260547b810f942735db74ffc1d0188a577333db364df`  
		Last Modified: Mon, 27 Jul 2026 23:10:07 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:7b5a4da28e5c80fcff8472bbf59caf4fe29a834f048ff63d04bbb7453193899c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **686.4 KB (686382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd5989a18b6e051a622f5eb189276ae54bfcd82c8abbbcf77a18f20dbaa8ac53`

```dockerfile
```

-	Layers:
	-	`sha256:a87f7db443682bbb8cfff55926e95d65c4374dcc9bcab529590ec14e389eacff`  
		Last Modified: Mon, 27 Jul 2026 23:10:07 GMT  
		Size: 671.1 KB (671055 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9611ecb45b6f27dbe1e0eda2bbde076bd89d3117893406959cb07d944020d2e`  
		Last Modified: Mon, 27 Jul 2026 23:10:07 GMT  
		Size: 15.3 KB (15327 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:66c1d74c451f83d7627c859e6310cd969a830dabda2e0b3dbcbac919e4f44e68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.5 MB (87507882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b479ec502e2cf65fce0c12ee1211c47e22a4b08dab0503ae02e2af5459f385a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 27 Jul 2026 22:13:00 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Mon, 27 Jul 2026 22:13:00 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Mon, 27 Jul 2026 22:13:00 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Mon, 27 Jul 2026 22:13:00 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Mon, 27 Jul 2026 22:13:00 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:13:00 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Mon, 27 Jul 2026 22:13:02 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Mon, 27 Jul 2026 22:13:02 GMT
ENV RABBITMQ_VERSION=4.3.4
# Mon, 27 Jul 2026 22:13:02 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 27 Jul 2026 22:13:02 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 27 Jul 2026 22:13:02 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:13:08 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Mon, 27 Jul 2026 22:13:09 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Mon, 27 Jul 2026 22:13:09 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Mon, 27 Jul 2026 22:13:09 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 27 Jul 2026 22:13:09 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 27 Jul 2026 22:13:09 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 27 Jul 2026 22:13:09 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Mon, 27 Jul 2026 22:13:09 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Mon, 27 Jul 2026 22:13:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:13:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:13:09 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Mon, 27 Jul 2026 22:13:09 GMT
CMD ["rabbitmq-server"]
# Mon, 27 Jul 2026 23:10:30 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Mon, 27 Jul 2026 23:10:31 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-x86_64-unknown-linux-musl'; digest='be19cca3ccbaaff0d778c8ac34c5dd96481df219cf1831ec4bb15927e29374ea' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-aarch64-unknown-linux-musl'; digest='fab009d193fcbe1a5947f4066a66d8b4c967da23659584e869d0d7b6edaa2b51' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Mon, 27 Jul 2026 23:10:31 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e1b76ab3811484c53b8d5dafb416c85f10bfcea0fa80977efc029f2f52f8b09`  
		Last Modified: Mon, 27 Jul 2026 22:13:26 GMT  
		Size: 40.5 MB (40523598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e28334ff3c528ca3942d6570fc97508129645b9b8d95bb24e60e68e66f933b15`  
		Last Modified: Mon, 27 Jul 2026 22:13:25 GMT  
		Size: 10.0 MB (9992314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c52bff53c09cfacd816e521c87d67fb6c196a66d94a17372a8464f8f184201d6`  
		Last Modified: Mon, 27 Jul 2026 22:13:25 GMT  
		Size: 2.5 MB (2513439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45fb1a3bc03f0d675726e6070eb9f860d104d7c52a6da845408f957453c1c3dc`  
		Last Modified: Mon, 27 Jul 2026 22:13:26 GMT  
		Size: 26.2 MB (26151818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4ee071f8e9ccfbc5142b6935de1ca4b006f0afe3dcaea29c8f63f9492409bcc`  
		Last Modified: Mon, 27 Jul 2026 22:13:26 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc27a56f7bd068dea75212f3b1ae7707f3b8a819aa05c35b6877ac4e2181917`  
		Last Modified: Mon, 27 Jul 2026 22:13:27 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:789b7dd503dddca1e604ca7f1c864bc94abe5ef2aa678de721540868042266df`  
		Last Modified: Mon, 27 Jul 2026 22:13:27 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0de55d25ecf9e16e04250d932ad4cbb990a42182173ec6af27f6b0831d4037a`  
		Last Modified: Mon, 27 Jul 2026 22:13:27 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca43a8998316c1132540d9b03751d34d5d385a2c0e47e4541b52b8a6cb89d730`  
		Last Modified: Mon, 27 Jul 2026 23:10:37 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14c7a9ccc59382f8ece865d6fca2270d4b82312922530a46f85639032f79bb2a`  
		Last Modified: Mon, 27 Jul 2026 23:10:37 GMT  
		Size: 4.1 MB (4142836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:3cd74b4f6b54dd219e5b8df3e86fb6e131904f591e306b5b1ba6809fbb9fcc36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.4 KB (691413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad1c7eaf586e950d4c9bb6617eb6f6827a2249dcf6b805853768995b7af8a53b`

```dockerfile
```

-	Layers:
	-	`sha256:680d1c87af588c25dbf1a740150102a4f6b445e73b81bd17f8e13d47250f05a8`  
		Last Modified: Mon, 27 Jul 2026 23:10:37 GMT  
		Size: 676.1 KB (676055 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64c62dfbb4306b5e1b76454838bd1fb5026d028a2936832d04bfc7f8bfea7ddc`  
		Last Modified: Mon, 27 Jul 2026 23:10:37 GMT  
		Size: 15.4 KB (15358 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:1d915d90a6acedbfca446c5018b7133c2afb08eb22d6115e85cefe2f4842545e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.9 MB (73929535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1156183555dbfaa5a5256fdab337d43cf3c1bc64f2bd4169c77d5fd58651750`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Mon, 27 Jul 2026 22:08:30 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Mon, 27 Jul 2026 22:08:30 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Mon, 27 Jul 2026 22:08:30 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Mon, 27 Jul 2026 22:08:30 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Mon, 27 Jul 2026 22:08:30 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:08:30 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Mon, 27 Jul 2026 22:08:32 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Mon, 27 Jul 2026 22:08:32 GMT
ENV RABBITMQ_VERSION=4.3.4
# Mon, 27 Jul 2026 22:08:32 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 27 Jul 2026 22:08:32 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 27 Jul 2026 22:08:32 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:08:38 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Mon, 27 Jul 2026 22:08:38 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Mon, 27 Jul 2026 22:08:39 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Mon, 27 Jul 2026 22:08:39 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 27 Jul 2026 22:08:39 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 27 Jul 2026 22:08:39 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 27 Jul 2026 22:08:39 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Mon, 27 Jul 2026 22:08:39 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Mon, 27 Jul 2026 22:08:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:39 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Mon, 27 Jul 2026 22:08:39 GMT
CMD ["rabbitmq-server"]
# Mon, 27 Jul 2026 23:10:15 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Mon, 27 Jul 2026 23:10:15 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-x86_64-unknown-linux-musl'; digest='be19cca3ccbaaff0d778c8ac34c5dd96481df219cf1831ec4bb15927e29374ea' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-aarch64-unknown-linux-musl'; digest='fab009d193fcbe1a5947f4066a66d8b4c967da23659584e869d0d7b6edaa2b51' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Mon, 27 Jul 2026 23:10:15 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b90ddbfc5091a9ada7e021ecf155e6e603f3d0a5770aff5e860134ff92ba0ba`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 33.5 MB (33504491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84b33a7cd4af4b5907bd0acaa02b1ec214b835802cc794396d548995844aae9a`  
		Last Modified: Mon, 27 Jul 2026 22:08:53 GMT  
		Size: 9.2 MB (9196059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cf0f0832746e28e95816a5f37a9f8466043f78cc1bbfd478298363879180ecc`  
		Last Modified: Mon, 27 Jul 2026 22:08:53 GMT  
		Size: 1.4 MB (1408083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e3c82e67e061a437f7d6d774c1ee36768d433555af6265d6e49f93aaa8b858`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 26.2 MB (26150859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40f59a4db8822aa02a535c89450cc916f207b482f9fe1073b72f43b27bd92c53`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e028e88f710f13246740095921110bcddfc6c33db2a590a529eb4164d7a63d5`  
		Last Modified: Mon, 27 Jul 2026 22:08:55 GMT  
		Size: 108.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03082b3f453d725244031d1159df600c6c64665edee8986b19067ad2638bf6e8`  
		Last Modified: Mon, 27 Jul 2026 22:08:55 GMT  
		Size: 621.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e05f79a09ddd45633e9c84050e2fa2094f769bcd49935baa908e4afa6afa1b44`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4a936bd66697509561090b6953bdae3d24ae410eb1a2f385192ecb5edb16a0`  
		Last Modified: Mon, 27 Jul 2026 23:10:22 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:916d68d14dc72e913c02e56f545afe7f84a128ada2fd2eb097df0193e1b37e3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **686.1 KB (686106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3acb0ab3b01e74eeab80c1397ae2136ba64ac94394732d99621f911f2c3a938d`

```dockerfile
```

-	Layers:
	-	`sha256:0f9662e278ece414238c9d06d1b0cb79af1611b9de8d2c5342fe1b31dcfe95fb`  
		Last Modified: Mon, 27 Jul 2026 23:10:21 GMT  
		Size: 670.9 KB (670906 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68c4e8ab2fc287eb3bae3d6b74c4a7434bc54a14f990007191d2dbedee64b836`  
		Last Modified: Mon, 27 Jul 2026 23:10:21 GMT  
		Size: 15.2 KB (15200 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:30edeb54af29209cc917afa67b076c5466fca0bdc85c644a2c1d25d471e7dc69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75594178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83e2443ddf4e718be5423534573526f586fd449e1d6842092dc3c74216b0c4a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 27 Jul 2026 22:18:43 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Mon, 27 Jul 2026 22:18:43 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Mon, 27 Jul 2026 22:18:43 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Mon, 27 Jul 2026 22:18:43 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Mon, 27 Jul 2026 22:18:43 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:18:43 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Mon, 27 Jul 2026 22:18:48 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Mon, 27 Jul 2026 22:18:48 GMT
ENV RABBITMQ_VERSION=4.3.4
# Mon, 27 Jul 2026 22:18:48 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 27 Jul 2026 22:18:48 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 27 Jul 2026 22:18:48 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:18:58 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Mon, 27 Jul 2026 22:19:00 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Mon, 27 Jul 2026 22:19:00 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Mon, 27 Jul 2026 22:19:00 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 27 Jul 2026 22:19:00 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 27 Jul 2026 22:19:00 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 27 Jul 2026 22:19:00 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Mon, 27 Jul 2026 22:19:00 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Mon, 27 Jul 2026 22:19:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:19:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:19:01 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Mon, 27 Jul 2026 22:19:01 GMT
CMD ["rabbitmq-server"]
# Mon, 27 Jul 2026 23:09:00 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Mon, 27 Jul 2026 23:09:01 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-x86_64-unknown-linux-musl'; digest='be19cca3ccbaaff0d778c8ac34c5dd96481df219cf1831ec4bb15927e29374ea' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-aarch64-unknown-linux-musl'; digest='fab009d193fcbe1a5947f4066a66d8b4c967da23659584e869d0d7b6edaa2b51' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Mon, 27 Jul 2026 23:09:01 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd82c4df5944a64d6aecbfd20ed5fcfd7ef959a090827075dc1b29e4437123e9`  
		Last Modified: Mon, 27 Jul 2026 22:19:41 GMT  
		Size: 34.1 MB (34120187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:173a6b3a35bed5f141375d5b447ff4cd0c298b72dbc203a827a136a5c9d36ea1`  
		Last Modified: Mon, 27 Jul 2026 22:19:40 GMT  
		Size: 10.0 MB (9966934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:847a52be54aa44bbb39cca7e65a060dc290d4f7cec7d9016d9205ef435202fb7`  
		Last Modified: Mon, 27 Jul 2026 22:19:39 GMT  
		Size: 1.5 MB (1541513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9321c263524d1f2b0f1befd52d53fc6a038f11d4adb4bc526efed89b18a96e5c`  
		Last Modified: Mon, 27 Jul 2026 22:19:40 GMT  
		Size: 26.2 MB (26151194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75b96a56f9924fef8850b2a692628990e0e6ef1f984a8451d4db1c623a81c776`  
		Last Modified: Mon, 27 Jul 2026 22:19:40 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89a2163861be71c7526ad8e8c9d31707104ac0cf0b9b578a9dfbecdd332f7a9f`  
		Last Modified: Mon, 27 Jul 2026 22:19:41 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2790b6f67d06e5713e9ea5e9ba597e3e9cd146388c77a13ba6ae8ee7f3f02eb6`  
		Last Modified: Mon, 27 Jul 2026 22:19:41 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e5e365d890ec07d1656635f088846af0362ced281d29253157a19cb41b3db74`  
		Last Modified: Mon, 27 Jul 2026 22:19:42 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:021e59ba519d4f94c05b2b11d2d28dfa4a1fdff464e7a09a5378efd6c0987857`  
		Last Modified: Mon, 27 Jul 2026 23:09:28 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:2b2a3ed2868b266df82a0243602c67fb62fed40ce257e396cf15e20d4c5dcd8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **686.3 KB (686332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09c2e3e4c8a5b4f59229111bd91592510b5f75c3f0783b314b431049ad6ee666`

```dockerfile
```

-	Layers:
	-	`sha256:96936505df7eda4ffa7f88d08a16d4fa68b883ebecab57d051794e14d4773aa0`  
		Last Modified: Mon, 27 Jul 2026 23:09:28 GMT  
		Size: 671.1 KB (671052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0c921f72d581ffffeada5e45b112ba168e7c33c4c31c740e57018394ab76fd8`  
		Last Modified: Mon, 27 Jul 2026 23:09:28 GMT  
		Size: 15.3 KB (15280 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management-alpine` - linux; riscv64

```console
$ docker pull rabbitmq@sha256:3076f0253b9fcab2a653a4a1c4bcafbfcb52eade9e2bca18ae41286251086070
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.5 MB (79516911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:951bc9973953b7910ff74c16d0e90518018a0e1c805f323322d650526d9ae87d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Tue, 28 Jul 2026 02:44:44 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 28 Jul 2026 02:44:44 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 28 Jul 2026 02:44:44 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 28 Jul 2026 02:44:45 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 28 Jul 2026 02:44:45 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Jul 2026 02:44:45 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 28 Jul 2026 02:44:56 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Tue, 28 Jul 2026 02:44:56 GMT
ENV RABBITMQ_VERSION=4.3.4
# Tue, 28 Jul 2026 02:44:56 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 28 Jul 2026 02:44:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 28 Jul 2026 02:44:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Jul 2026 02:45:35 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 28 Jul 2026 02:45:43 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 28 Jul 2026 02:45:43 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 28 Jul 2026 02:45:43 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 28 Jul 2026 02:45:43 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 28 Jul 2026 02:45:43 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 28 Jul 2026 02:45:43 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 28 Jul 2026 02:45:44 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 28 Jul 2026 02:45:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 28 Jul 2026 02:45:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Jul 2026 02:45:44 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 28 Jul 2026 02:45:44 GMT
CMD ["rabbitmq-server"]
# Tue, 28 Jul 2026 04:07:06 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Tue, 28 Jul 2026 04:07:07 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-x86_64-unknown-linux-musl'; digest='be19cca3ccbaaff0d778c8ac34c5dd96481df219cf1831ec4bb15927e29374ea' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-aarch64-unknown-linux-musl'; digest='fab009d193fcbe1a5947f4066a66d8b4c967da23659584e869d0d7b6edaa2b51' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Tue, 28 Jul 2026 04:07:07 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbdc42404531e378a611d5fee6c38bb28e12ecb490edbbf18f434143b747da7a`  
		Last Modified: Tue, 28 Jul 2026 02:49:46 GMT  
		Size: 37.5 MB (37544761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff28d01209a56473f8fcbf63a8895c192bc455a415e2f4e232b23f23d1cc924f`  
		Last Modified: Tue, 28 Jul 2026 02:49:39 GMT  
		Size: 10.8 MB (10796133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14ca9abaeb9f7539f59ca736b135a830a8a10e95ecddb900a41f621b75665053`  
		Last Modified: Tue, 28 Jul 2026 02:49:34 GMT  
		Size: 1.4 MB (1448962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c3a836638200bdb4a24d20eec260a1f768b205ec6a1bc6323b994206dc7f766`  
		Last Modified: Tue, 28 Jul 2026 02:49:44 GMT  
		Size: 26.2 MB (26151750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:511053edfd535e16586fcf2df22e4c70192282228f0b9dd52154ce751d7bcf7b`  
		Last Modified: Tue, 28 Jul 2026 02:49:37 GMT  
		Size: 192.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8955dd879869c89b5d453b3b32c0e20ff39318ac150bf4ac62fc5d284db5701`  
		Last Modified: Tue, 28 Jul 2026 02:49:40 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a41923801f565c83715c9a7d92463cbea19d360c4f7ca1c4276b5d93fe432f4`  
		Last Modified: Tue, 28 Jul 2026 02:49:41 GMT  
		Size: 625.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81a4d39b384a73677309ad0c5fb44a9f36b9f6d31127f0fd07a9f17a07408924`  
		Last Modified: Tue, 28 Jul 2026 02:49:42 GMT  
		Size: 832.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e886698bbd4ffba36c4d9c55a231d0d0d6532470a02ded138ba19f8993c22f8c`  
		Last Modified: Tue, 28 Jul 2026 04:08:03 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:7fb9227843233231cdd6149403517cae6d5d899a1d86131a32f8ba98f8a03ef3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **689.3 KB (689303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69380fd878e6a28f44e3368b1d8b5aea5c4a4f1ac6e102d51f2ef0f4e91318ba`

```dockerfile
```

-	Layers:
	-	`sha256:9f11523c55a8c85cb72a6d5490bfceda69ea02e262d90f3a1b1e91687d9fd750`  
		Last Modified: Tue, 28 Jul 2026 04:08:03 GMT  
		Size: 674.0 KB (674021 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f72555edd0a72e1804083eda35cdac60b33f68a14744d6aa0b272155339ed00`  
		Last Modified: Tue, 28 Jul 2026 04:08:03 GMT  
		Size: 15.3 KB (15282 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:d9b8c1b11065641b2a250719c02e42dd9ad10f0502cd650fe662a8411a6785d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.7 MB (73689983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ebfe7c51a2ee31975a67aab0a7ed8327b01b6169aecdca593aabb2ac07faf05`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Mon, 27 Jul 2026 22:11:09 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Mon, 27 Jul 2026 22:11:09 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Mon, 27 Jul 2026 22:11:09 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Mon, 27 Jul 2026 22:11:09 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Mon, 27 Jul 2026 22:11:09 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:11:09 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Mon, 27 Jul 2026 22:11:12 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Mon, 27 Jul 2026 22:11:12 GMT
ENV RABBITMQ_VERSION=4.3.4
# Mon, 27 Jul 2026 22:11:12 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 27 Jul 2026 22:11:12 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 27 Jul 2026 22:11:12 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:11:18 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Mon, 27 Jul 2026 22:11:19 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Mon, 27 Jul 2026 22:11:19 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Mon, 27 Jul 2026 22:11:19 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 27 Jul 2026 22:11:19 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 27 Jul 2026 22:11:19 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 27 Jul 2026 22:11:19 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Mon, 27 Jul 2026 22:11:19 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Mon, 27 Jul 2026 22:11:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:11:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:11:19 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Mon, 27 Jul 2026 22:11:19 GMT
CMD ["rabbitmq-server"]
# Mon, 27 Jul 2026 23:08:49 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Mon, 27 Jul 2026 23:08:49 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-x86_64-unknown-linux-musl'; digest='be19cca3ccbaaff0d778c8ac34c5dd96481df219cf1831ec4bb15927e29374ea' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-aarch64-unknown-linux-musl'; digest='fab009d193fcbe1a5947f4066a66d8b4c967da23659584e869d0d7b6edaa2b51' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Mon, 27 Jul 2026 23:08:49 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5a6c394ae4633f3ac943cb865a6c8ac0772b473c6a2cc73912708f2712b8ed0`  
		Last Modified: Mon, 27 Jul 2026 22:11:43 GMT  
		Size: 34.0 MB (33964427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcd166247de0e53b6d01b761abded3d61b745f9b8c9cba847804b15543b5fd57`  
		Last Modified: Mon, 27 Jul 2026 22:11:42 GMT  
		Size: 8.4 MB (8350153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7efb911b8e0a4663cd2eb626e1d5e37f5d98a4d6458e7e906c1e59ae1d238759`  
		Last Modified: Mon, 27 Jul 2026 22:11:41 GMT  
		Size: 1.5 MB (1514928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0174729e61514238e36e38b9dfecc8667c25f2b7a6893d152438bd5d6e164ff`  
		Last Modified: Mon, 27 Jul 2026 22:11:42 GMT  
		Size: 26.2 MB (26151179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95fdf6f037c551cffb15dbd871eb7c7e8aa72277adf7d51d7a9b8f07a0e89083`  
		Last Modified: Mon, 27 Jul 2026 22:11:42 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a2f39bfc9ab5892437f5c57daf290cafb476c2f84afd5cd3d52b4c3cdf0b6ee`  
		Last Modified: Mon, 27 Jul 2026 22:11:43 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7b61c5a1aa6a97e2536f5dcd431c4f9aa7cd28eab348c399d3cfc9d13417c8a`  
		Last Modified: Mon, 27 Jul 2026 22:11:43 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deaf4b1dc60c2e0dfff9bb16f9b1956dee91b3148c1b14b2b1c57ee51ff422ff`  
		Last Modified: Mon, 27 Jul 2026 22:11:44 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e3910134bc1fb1d5de5d3f16982447120d1780f2ec44f2a7ddbb5dba55b2377`  
		Last Modified: Mon, 27 Jul 2026 23:08:58 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:f721f5c128b006b8c6fd1df4ae876181513529e130b2b28576c5778847dcacce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **686.3 KB (686252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a003a67ef7274f3e93bb321a307c1713c0b83eccadb5c371218c615540b2dee7`

```dockerfile
```

-	Layers:
	-	`sha256:4719e98adea8108312366d9ddce01d244c5828361dfde5b4b02a0cd97c922167`  
		Last Modified: Mon, 27 Jul 2026 23:08:58 GMT  
		Size: 671.0 KB (671018 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d13ba6077f82cc2bec88c7c65692b5bb3af7c284b3b5696e0fcaf67a9179cb3`  
		Last Modified: Mon, 27 Jul 2026 23:08:58 GMT  
		Size: 15.2 KB (15234 bytes)  
		MIME: application/vnd.in-toto+json
