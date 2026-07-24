## `rabbitmq:management-alpine`

```console
$ docker pull rabbitmq@sha256:c511562a12d3299f760b213d8e4454919840afc73dab21f398479988d460b4ce
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

### `rabbitmq:management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:9a3bde5fa391c2cb257fd2a5333b0c1a3fbe4866aa8b9200924926f35d1148dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88765215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8eec2bfe97aa38d6873d15935ea42135c912abe2e2a8b811c17f547b74c9bd3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:20:05 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Thu, 23 Jul 2026 22:20:05 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Thu, 23 Jul 2026 22:20:05 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Thu, 23 Jul 2026 22:20:05 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Thu, 23 Jul 2026 22:20:05 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:20:05 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 23 Jul 2026 22:20:07 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Thu, 23 Jul 2026 22:20:07 GMT
ENV RABBITMQ_VERSION=4.3.4
# Thu, 23 Jul 2026 22:20:07 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 23 Jul 2026 22:20:07 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 23 Jul 2026 22:20:07 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:20:13 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Thu, 23 Jul 2026 22:20:13 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Thu, 23 Jul 2026 22:20:13 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Thu, 23 Jul 2026 22:20:13 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 23 Jul 2026 22:20:13 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 23 Jul 2026 22:20:13 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 23 Jul 2026 22:20:13 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Thu, 23 Jul 2026 22:20:13 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Thu, 23 Jul 2026 22:20:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 22:20:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 22:20:13 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Thu, 23 Jul 2026 22:20:13 GMT
CMD ["rabbitmq-server"]
# Thu, 23 Jul 2026 22:31:32 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Thu, 23 Jul 2026 22:31:33 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-x86_64-unknown-linux-musl'; digest='be19cca3ccbaaff0d778c8ac34c5dd96481df219cf1831ec4bb15927e29374ea' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-aarch64-unknown-linux-musl'; digest='fab009d193fcbe1a5947f4066a66d8b4c967da23659584e869d0d7b6edaa2b51' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Thu, 23 Jul 2026 22:31:33 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31c42cc39bc0d85769410aa517fa99bf7c6ab91a36460431c17e57c06b4d3a6c`  
		Last Modified: Thu, 23 Jul 2026 22:20:29 GMT  
		Size: 42.7 MB (42658793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f500a7de1244f094b15f9c5e0194de5807216f9089208e353e7c8874c9d6d5e8`  
		Last Modified: Thu, 23 Jul 2026 22:20:28 GMT  
		Size: 9.2 MB (9206076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e813e4ba1160b04a176ba2ce674521799ee648f8896e498689c0554d4bd7dc`  
		Last Modified: Thu, 23 Jul 2026 22:20:27 GMT  
		Size: 2.5 MB (2464538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64eeadaba686927886e6bba1dccf05846aafc78a3cc75621a1f7606b8acf5cfb`  
		Last Modified: Thu, 23 Jul 2026 22:20:29 GMT  
		Size: 26.2 MB (26151720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1eab1b54fdb9c4f4f933e2f5db74ee77d522875b6580a777305921b2224c1b9`  
		Last Modified: Thu, 23 Jul 2026 22:20:29 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a22e4545ed9b49315da0ba2a33f7a69353997dc01a6a03e7dfad47fda8bbb45`  
		Last Modified: Thu, 23 Jul 2026 22:20:29 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18f7ee9a1e4e98c2fa1207cba7f3ea987a7916a9d4d4484ad135a3ff9207f4e1`  
		Last Modified: Thu, 23 Jul 2026 22:20:30 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4864f53821f8800884c0ffefc92605980c285dfd1841738b1e1a59d35e2b779a`  
		Last Modified: Thu, 23 Jul 2026 22:20:30 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d25321a659865fc1bbf3c123b2ece1ea3046dc52f21a3f9178be4d0b512557a`  
		Last Modified: Thu, 23 Jul 2026 22:31:40 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94ba1b24675bf697e34123fff81646db831a39d3f6a3aee95e1a89acad2da30a`  
		Last Modified: Thu, 23 Jul 2026 22:31:40 GMT  
		Size: 4.4 MB (4437646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:9b52331e473a5e513dd46c9a149b418089f034a22b6a681363744153fad53d99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.1 KB (691150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:750088f6dbfa2ae3fcf9a7d8518c6b4e1380da281caa4e3adc229c6c8353494a`

```dockerfile
```

-	Layers:
	-	`sha256:2b21b31cfe4507f594a96de3fb7dcefa9a2f99dcabf60fc7766273d2a7331378`  
		Last Modified: Thu, 23 Jul 2026 22:31:40 GMT  
		Size: 675.9 KB (675911 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1371c04e379305da6f8e17ac4918edf4f0421dedea9146ffaeffbf504830cb11`  
		Last Modified: Thu, 23 Jul 2026 22:31:40 GMT  
		Size: 15.2 KB (15239 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:management-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:d08a3706860e6a25c7c10650fd7029e4955dc6791fe5682ba47325a2af3e1e53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.5 MB (72508400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e0a29145aeee99add153e33e331b7520352fd2afc5b648fdfd3bcdce9f566a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:18:46 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Thu, 23 Jul 2026 22:18:46 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Thu, 23 Jul 2026 22:18:46 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Thu, 23 Jul 2026 22:18:46 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Thu, 23 Jul 2026 22:18:46 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:18:46 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 23 Jul 2026 22:18:49 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Thu, 23 Jul 2026 22:18:49 GMT
ENV RABBITMQ_VERSION=4.3.4
# Thu, 23 Jul 2026 22:18:49 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 23 Jul 2026 22:18:49 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 23 Jul 2026 22:18:49 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:18:58 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Thu, 23 Jul 2026 22:19:00 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Thu, 23 Jul 2026 22:19:00 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Thu, 23 Jul 2026 22:19:00 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 23 Jul 2026 22:19:00 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 23 Jul 2026 22:19:00 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 23 Jul 2026 22:19:00 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Thu, 23 Jul 2026 22:19:00 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Thu, 23 Jul 2026 22:19:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 22:19:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 22:19:00 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Thu, 23 Jul 2026 22:19:00 GMT
CMD ["rabbitmq-server"]
# Thu, 23 Jul 2026 22:28:14 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Thu, 23 Jul 2026 22:28:14 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-x86_64-unknown-linux-musl'; digest='be19cca3ccbaaff0d778c8ac34c5dd96481df219cf1831ec4bb15927e29374ea' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-aarch64-unknown-linux-musl'; digest='fab009d193fcbe1a5947f4066a66d8b4c967da23659584e869d0d7b6edaa2b51' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Thu, 23 Jul 2026 22:28:14 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d60594a3531bb0db42b02d5dbee1fb877fce61cc5ce1eb7125b585125282b13a`  
		Last Modified: Thu, 23 Jul 2026 22:19:08 GMT  
		Size: 33.5 MB (33536230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12ff89f19837d7633442fe1407ad41cadaea8aaaf4aef2b50212ba02dec0d75a`  
		Last Modified: Thu, 23 Jul 2026 22:19:07 GMT  
		Size: 7.9 MB (7862466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbbda32c53616aa2a1c1934e3fc54af3f7e83e909ef2c8558dfb6f9c518c3a1a`  
		Last Modified: Thu, 23 Jul 2026 22:19:07 GMT  
		Size: 1.4 MB (1403551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16adc4353daa43f699d7839a76d14b646eb5b908b7f328bbdc766f4839c9002f`  
		Last Modified: Thu, 23 Jul 2026 22:19:08 GMT  
		Size: 26.2 MB (26151503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e8ce0f34003a7ac834e8d15b4cff13371eba436ecfbfe9890fa1024a1ce1e53`  
		Last Modified: Thu, 23 Jul 2026 22:19:08 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d02020b83463ef2d08a1df96a7e563669791be136f65e01573aa5f6ae224be5c`  
		Last Modified: Thu, 23 Jul 2026 22:19:08 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a9a76bcb1820f147db9c8774279ad6282af237b3ec1d679853f63cc0f224eb8`  
		Last Modified: Thu, 23 Jul 2026 22:19:09 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77be0184bfea80dd9919bff9d1536bb312b259044afb61382e2456af7cf792e9`  
		Last Modified: Thu, 23 Jul 2026 22:19:09 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7416ed0d9409c6661ccb902fcf044a08b28ccba61a698d0fc7fb9022edead60f`  
		Last Modified: Thu, 23 Jul 2026 22:28:18 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:88bb55cd39418b6d66dad7f60e0a225d3ca481bd8fd805baf155189cdfc4c6ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 KB (15112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42e91480baf7bbf2f2661101c64468db92fc570cb017fb5a4c87e06e386a1f7e`

```dockerfile
```

-	Layers:
	-	`sha256:ebab8f95ad9a02bd5332a8acb85e92a416b9fa6c52dee09c6fe41eedc64f2727`  
		Last Modified: Thu, 23 Jul 2026 22:28:17 GMT  
		Size: 15.1 KB (15112 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:management-alpine` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:847a8fe77dd908083fb497b55a43d0adac9eff2bae605364bcf91fdfa4b939fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71594313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64282528029118125c4b90c548f42d3fe3e827a70212fe922bd2aef9851a0143`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:21:39 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Thu, 23 Jul 2026 22:21:39 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Thu, 23 Jul 2026 22:21:39 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Thu, 23 Jul 2026 22:21:39 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Thu, 23 Jul 2026 22:21:39 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:21:39 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 23 Jul 2026 22:21:41 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Thu, 23 Jul 2026 22:21:41 GMT
ENV RABBITMQ_VERSION=4.3.4
# Thu, 23 Jul 2026 22:21:41 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 23 Jul 2026 22:21:41 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 23 Jul 2026 22:21:41 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:21:47 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Thu, 23 Jul 2026 22:21:48 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Thu, 23 Jul 2026 22:21:48 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Thu, 23 Jul 2026 22:21:48 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 23 Jul 2026 22:21:48 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 23 Jul 2026 22:21:48 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 23 Jul 2026 22:21:48 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Thu, 23 Jul 2026 22:21:48 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Thu, 23 Jul 2026 22:21:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 22:21:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 22:21:48 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Thu, 23 Jul 2026 22:21:48 GMT
CMD ["rabbitmq-server"]
# Thu, 23 Jul 2026 22:27:54 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Thu, 23 Jul 2026 22:27:54 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-x86_64-unknown-linux-musl'; digest='be19cca3ccbaaff0d778c8ac34c5dd96481df219cf1831ec4bb15927e29374ea' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-aarch64-unknown-linux-musl'; digest='fab009d193fcbe1a5947f4066a66d8b4c967da23659584e869d0d7b6edaa2b51' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Thu, 23 Jul 2026 22:27:54 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c68848fdc76a8808980fd27c1e48ed54689ab4330a76ef10d3a42c4f71fbd20d`  
		Last Modified: Thu, 23 Jul 2026 22:22:04 GMT  
		Size: 33.4 MB (33441661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b82b71acf053d5517554ad5c784c9061e2fad4eca757898829ec6c42d0b3cfc`  
		Last Modified: Thu, 23 Jul 2026 22:22:03 GMT  
		Size: 7.4 MB (7442948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2822c1e151ef05897141d3120927e41a8b47ef3bd0e1fdb7aef5bb887da4b24`  
		Last Modified: Thu, 23 Jul 2026 22:22:03 GMT  
		Size: 1.3 MB (1294863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:329f6e32f01d86e6c86bb63c72debad93884039cc4b102aa8a973cad8e45eef5`  
		Last Modified: Thu, 23 Jul 2026 22:22:04 GMT  
		Size: 26.2 MB (26150934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ba78ad0f8a26d195e03f7888f89c843e97a98525c2c8dc769779130462a5a80`  
		Last Modified: Thu, 23 Jul 2026 22:22:04 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9079f2f19206850bd8b549a73f504c02594438586fe042e0870d3fad439009d`  
		Last Modified: Thu, 23 Jul 2026 22:22:04 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bcb042b0ee0c60599b3e5dae32083738f703567ad446bb927510cfad0718265`  
		Last Modified: Thu, 23 Jul 2026 22:22:05 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcaf3614ab6f299c3fba511f763f4b709fe123055890a4cd0c0bf628da702893`  
		Last Modified: Thu, 23 Jul 2026 22:22:05 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a63a12f3a0eb92df6dcf455d96951ad3a3e67a7d2a11e08097d7ba146b2b882d`  
		Last Modified: Thu, 23 Jul 2026 22:28:00 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:37ea70b24e0550cb25ffd1490b55189697ca19b7bfbeb20c5fded53388722e9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **686.4 KB (686381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c9cff572b65f65a5918014d0ab99b3155a78a25fe34c998f022b955ac30ddc3`

```dockerfile
```

-	Layers:
	-	`sha256:3845fd7821f54caeba1314adc54106503afddb02a9fe02e1d02074e3268f1125`  
		Last Modified: Thu, 23 Jul 2026 22:28:00 GMT  
		Size: 671.1 KB (671055 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:055c028aeb65526945680accb84a07aaa1931b1db6e3c5de6af872ec8e452939`  
		Last Modified: Thu, 23 Jul 2026 22:28:00 GMT  
		Size: 15.3 KB (15326 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:ca92782c6ff8a5297304f4f87fa735975df2eb59cf9d144d795064a3aac53274
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.5 MB (87496052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:256624ebcab85617b5f7eb70133afa9700720cb3caac56ff4407d7d25cc06508`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:20:50 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Thu, 23 Jul 2026 22:20:50 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Thu, 23 Jul 2026 22:20:50 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Thu, 23 Jul 2026 22:20:50 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Thu, 23 Jul 2026 22:20:50 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:20:50 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 23 Jul 2026 22:20:52 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Thu, 23 Jul 2026 22:20:52 GMT
ENV RABBITMQ_VERSION=4.3.4
# Thu, 23 Jul 2026 22:20:52 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 23 Jul 2026 22:20:52 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 23 Jul 2026 22:20:52 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:20:58 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Thu, 23 Jul 2026 22:20:59 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Thu, 23 Jul 2026 22:20:59 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Thu, 23 Jul 2026 22:20:59 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 23 Jul 2026 22:20:59 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 23 Jul 2026 22:20:59 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 23 Jul 2026 22:20:59 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Thu, 23 Jul 2026 22:20:59 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Thu, 23 Jul 2026 22:20:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 22:20:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 22:20:59 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Thu, 23 Jul 2026 22:20:59 GMT
CMD ["rabbitmq-server"]
# Thu, 23 Jul 2026 22:32:38 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Thu, 23 Jul 2026 22:32:39 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-x86_64-unknown-linux-musl'; digest='be19cca3ccbaaff0d778c8ac34c5dd96481df219cf1831ec4bb15927e29374ea' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-aarch64-unknown-linux-musl'; digest='fab009d193fcbe1a5947f4066a66d8b4c967da23659584e869d0d7b6edaa2b51' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Thu, 23 Jul 2026 22:32:39 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7362cab2e17e82330f8a89fe452fab31d68246f1c7a7de201fbe2c6a9c1b1f32`  
		Last Modified: Thu, 23 Jul 2026 22:21:16 GMT  
		Size: 40.5 MB (40512098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:410866ddca26aba78b49729e5ad69366fcb593481a140a654860f630f36ab838`  
		Last Modified: Thu, 23 Jul 2026 22:21:15 GMT  
		Size: 10.0 MB (9992076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a548b8fa6d0c2b935a69ba2c3adcde21637ab1de48669f6357a2249b3f74a4e0`  
		Last Modified: Thu, 23 Jul 2026 22:21:15 GMT  
		Size: 2.5 MB (2513435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7006a743a521ebc23d5e1a60a8f2b9e492eec4d0ab3716ea911fd4b522c51d6`  
		Last Modified: Thu, 23 Jul 2026 22:21:16 GMT  
		Size: 26.2 MB (26151725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:296b81945954a032723e06279e16dbcff00f1a0ca53d06bcde6fb6433e497d53`  
		Last Modified: Thu, 23 Jul 2026 22:21:16 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:155f07ac4e28d05b6f4f7ea8000e72b5f308c0d9edf2750c0b1250ee7b37a492`  
		Last Modified: Thu, 23 Jul 2026 22:21:17 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:871c73d1b1f637186da0a9aab8e4f7e8d19e672dc5e86c3d97fa9753ae60aaff`  
		Last Modified: Thu, 23 Jul 2026 22:21:17 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4cf40edeb6611d70780efef611195b8188ff2a851dae23bdd5e8bcff088612f`  
		Last Modified: Thu, 23 Jul 2026 22:21:18 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ec039b32c0c76043eb4c649abc4003699cee624004916e12a85a5c41c88ecc2`  
		Last Modified: Thu, 23 Jul 2026 22:32:45 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65ef329720b884503d282f5c10ab1244cd29240ed39a05e8a0240c994da24696`  
		Last Modified: Thu, 23 Jul 2026 22:32:45 GMT  
		Size: 4.1 MB (4142842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:f9347fa72a36745210f3f8a0cf98f5a0ff55efcbf576d94a27f59afb61b38cd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.4 KB (691412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bccdd6f607eb511ead15568e184c6de66d4387700580b763e149be53c14a9a0`

```dockerfile
```

-	Layers:
	-	`sha256:458c32753b6cdc7c4d8ab0a05897e85815f537d0b76b93f65c50c817c86cca68`  
		Last Modified: Thu, 23 Jul 2026 22:32:45 GMT  
		Size: 676.1 KB (676055 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e272968526ea9d362c226696e0fa254e4828c902b791fe3ae9187ca48db340d5`  
		Last Modified: Thu, 23 Jul 2026 22:32:45 GMT  
		Size: 15.4 KB (15357 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:management-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:05c7fe949616dcca8184a46f95198a5f449cf8e9f87e2d3126a70272caebdf15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.9 MB (73925621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffb953f1c460d6ef29d5902d2118610fe75eca111f1af34bdb972a92f6cd05d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:18:53 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Thu, 23 Jul 2026 22:18:53 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Thu, 23 Jul 2026 22:18:53 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Thu, 23 Jul 2026 22:18:53 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Thu, 23 Jul 2026 22:18:53 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:18:53 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 23 Jul 2026 22:18:55 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Thu, 23 Jul 2026 22:18:55 GMT
ENV RABBITMQ_VERSION=4.3.4
# Thu, 23 Jul 2026 22:18:55 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 23 Jul 2026 22:18:55 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 23 Jul 2026 22:18:55 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:19:01 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Thu, 23 Jul 2026 22:19:01 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Thu, 23 Jul 2026 22:19:01 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Thu, 23 Jul 2026 22:19:01 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 23 Jul 2026 22:19:01 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 23 Jul 2026 22:19:01 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 23 Jul 2026 22:19:01 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Thu, 23 Jul 2026 22:19:02 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Thu, 23 Jul 2026 22:19:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 22:19:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 22:19:02 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Thu, 23 Jul 2026 22:19:02 GMT
CMD ["rabbitmq-server"]
# Thu, 23 Jul 2026 22:27:48 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Thu, 23 Jul 2026 22:27:49 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-x86_64-unknown-linux-musl'; digest='be19cca3ccbaaff0d778c8ac34c5dd96481df219cf1831ec4bb15927e29374ea' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-aarch64-unknown-linux-musl'; digest='fab009d193fcbe1a5947f4066a66d8b4c967da23659584e869d0d7b6edaa2b51' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Thu, 23 Jul 2026 22:27:49 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3daad7b0a242fb46da2afd135211e367e9962c619419fe8ec7a26176d74a769c`  
		Last Modified: Thu, 23 Jul 2026 22:19:17 GMT  
		Size: 33.5 MB (33500739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efa9a2220d33d01220fdecb3fde9f7cdf72bd23d3e364b7c5762b3ad1d0617a`  
		Last Modified: Thu, 23 Jul 2026 22:19:16 GMT  
		Size: 9.2 MB (9196082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22683de7a6cce4c06895f109187bebedf8c2337e8bf68d1e46d1233192d30003`  
		Last Modified: Thu, 23 Jul 2026 22:19:16 GMT  
		Size: 1.4 MB (1408084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d75c3b2f63d34c4a7fb4e672edf54f5d8ac704039ffe2b55f94543a4b5a1334`  
		Last Modified: Thu, 23 Jul 2026 22:19:17 GMT  
		Size: 26.2 MB (26150679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ca6638ec5b5e5cfa90d95139f5e88d8805da0c492299ba5620d0e5fce2af7c3`  
		Last Modified: Thu, 23 Jul 2026 22:19:17 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f96227f58bb89b4f062de6cea2b1a9113d2dcd8cb78586f0b839df9c89befa7d`  
		Last Modified: Thu, 23 Jul 2026 22:19:18 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a35201a3dff37096215c890e3221f12450c50cd2bef10d0b46b1cc4c4fa5a35e`  
		Last Modified: Thu, 23 Jul 2026 22:19:18 GMT  
		Size: 621.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:470368ddbc8ed9ce5cb69bfe86525db13c6ddf17761736c4aa4f56d005bf1bd9`  
		Last Modified: Thu, 23 Jul 2026 22:19:19 GMT  
		Size: 824.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed0d2a9e517e0112652ecd51c05761538a4e11cc5f3b2e502d72f6b36e3a78b5`  
		Last Modified: Thu, 23 Jul 2026 22:27:55 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:72d16b7ddeccdc8fcb6b9e47ce36dd847a202bc98ddbc617beff413808af9fdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **686.1 KB (686106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3111d6eb889a36da7d9f3aebbbaecad8694c25917f4f18a87019f579b10a591a`

```dockerfile
```

-	Layers:
	-	`sha256:79182f05365b285ed35444329c8f478130028c87ff55f185185e09810501f152`  
		Last Modified: Thu, 23 Jul 2026 22:27:55 GMT  
		Size: 670.9 KB (670906 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7e6b080c97492614a3df51fdb9266d1034aac33ac20222f3ef11f957b22ffe5`  
		Last Modified: Thu, 23 Jul 2026 22:27:55 GMT  
		Size: 15.2 KB (15200 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:d5292802f91b319709973dbfdef38f598ec1f9cd3401da0d5ea7c2ef090afd32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75583876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3452ca7dca359953a5b202549feae4900331055da96a253287555ac88894c2aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:18:51 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Thu, 23 Jul 2026 22:18:51 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Thu, 23 Jul 2026 22:18:51 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Thu, 23 Jul 2026 22:18:52 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Thu, 23 Jul 2026 22:18:52 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:18:52 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 23 Jul 2026 22:18:56 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Thu, 23 Jul 2026 22:18:56 GMT
ENV RABBITMQ_VERSION=4.3.4
# Thu, 23 Jul 2026 22:18:56 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 23 Jul 2026 22:18:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 23 Jul 2026 22:18:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:19:06 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Thu, 23 Jul 2026 22:19:09 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Thu, 23 Jul 2026 22:19:09 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Thu, 23 Jul 2026 22:19:09 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 23 Jul 2026 22:19:09 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 23 Jul 2026 22:19:09 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 23 Jul 2026 22:19:09 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Thu, 23 Jul 2026 22:19:10 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Thu, 23 Jul 2026 22:19:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 22:19:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 22:19:10 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Thu, 23 Jul 2026 22:19:10 GMT
CMD ["rabbitmq-server"]
# Thu, 23 Jul 2026 22:48:39 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Thu, 23 Jul 2026 22:48:39 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-x86_64-unknown-linux-musl'; digest='be19cca3ccbaaff0d778c8ac34c5dd96481df219cf1831ec4bb15927e29374ea' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-aarch64-unknown-linux-musl'; digest='fab009d193fcbe1a5947f4066a66d8b4c967da23659584e869d0d7b6edaa2b51' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Thu, 23 Jul 2026 22:48:39 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69ee84936a63e7c8f27de91a02fdb334e5712ecd424903899c31d6347a5cfd07`  
		Last Modified: Thu, 23 Jul 2026 22:19:44 GMT  
		Size: 34.1 MB (34110150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59b11c2d49a6229fe5d0298b8b369c99c1dbe2beca6b0df730a048e459d7e0ed`  
		Last Modified: Thu, 23 Jul 2026 22:19:43 GMT  
		Size: 10.0 MB (9966944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c21ce96ebe18b273dd6976cab607ad57761e6c79c784063efe25cf349e23a9d6`  
		Last Modified: Thu, 23 Jul 2026 22:19:42 GMT  
		Size: 1.5 MB (1541514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0877b880dd47f6aace5d081a9cb2dbafe8c41dbbe9faf326fe0777de1a57718`  
		Last Modified: Thu, 23 Jul 2026 22:19:44 GMT  
		Size: 26.2 MB (26150908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bc63e21a93121ed5a20f552c8b7947ce45a92959743a879d32c51de0f0ac2f6`  
		Last Modified: Thu, 23 Jul 2026 22:19:44 GMT  
		Size: 192.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ff6a90366da82cb25e4a7c43bee867cc02cd78b37039870105ed6a98722bfa5`  
		Last Modified: Thu, 23 Jul 2026 22:19:44 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5725570b8364b2a07166f70981cde1dbf71ed8677ad5602ffc1c4d7f76f741c0`  
		Last Modified: Thu, 23 Jul 2026 22:19:45 GMT  
		Size: 624.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca49257e8147764ab73c4033f574aaf5d92ece6561488873fc6b0013eb9626c`  
		Last Modified: Thu, 23 Jul 2026 22:19:45 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e551c4ac5b826b7f0ed3ab00e15badf83f81652f9262de06698c0f42273bcb5c`  
		Last Modified: Thu, 23 Jul 2026 22:48:58 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:eb0bbee8b02a379d2fe2ea6a65c19f92ee6f5a2cb42e267090f65409f34ea16e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **686.3 KB (686331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd48a9d69cc96d8983deec129c446f176819abf18444b07bdcc83d935bcf6e0f`

```dockerfile
```

-	Layers:
	-	`sha256:14c160e96481e7d1f6f5c86986b0c311442af8ebaff4b95747fa9da6813b80b4`  
		Last Modified: Thu, 23 Jul 2026 22:48:58 GMT  
		Size: 671.1 KB (671052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfdfa8b495006155781dd9485b913444ecd619d086788a3ff0fe667a16eda8c0`  
		Last Modified: Thu, 23 Jul 2026 22:48:58 GMT  
		Size: 15.3 KB (15279 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:management-alpine` - linux; riscv64

```console
$ docker pull rabbitmq@sha256:71a69a28f4c67c8e82f18f426bfec29b83093754a149d6b2802111ccece7fd39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.5 MB (79514487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36826023e85433652efdac169c85e65d36db013aa5273bafa711805e4e1dae02`
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
ENV RABBITMQ_VERSION=4.3.4
# Tue, 07 Jul 2026 08:02:11 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 07 Jul 2026 08:02:11 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 07 Jul 2026 08:02:11 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 10:30:07 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Fri, 24 Jul 2026 10:30:16 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Fri, 24 Jul 2026 10:30:16 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Fri, 24 Jul 2026 10:30:16 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 24 Jul 2026 10:30:16 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 24 Jul 2026 10:30:16 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Fri, 24 Jul 2026 10:30:16 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Fri, 24 Jul 2026 10:30:16 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Fri, 24 Jul 2026 10:30:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 24 Jul 2026 10:30:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 24 Jul 2026 10:30:16 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Fri, 24 Jul 2026 10:30:16 GMT
CMD ["rabbitmq-server"]
# Fri, 24 Jul 2026 12:49:32 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Fri, 24 Jul 2026 12:49:32 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-x86_64-unknown-linux-musl'; digest='be19cca3ccbaaff0d778c8ac34c5dd96481df219cf1831ec4bb15927e29374ea' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-aarch64-unknown-linux-musl'; digest='fab009d193fcbe1a5947f4066a66d8b4c967da23659584e869d0d7b6edaa2b51' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Fri, 24 Jul 2026 12:49:32 GMT
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
	-	`sha256:f130ded52b3b47b5b857cd25817531e0a12233aed72e1fe67cc99d37acb0ab4f`  
		Last Modified: Fri, 24 Jul 2026 11:01:54 GMT  
		Size: 26.2 MB (26151573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d3c73a5e447cc4dbb38b91a60ed7efedf91211c0c30ce41fe1c4fd63508686`  
		Last Modified: Fri, 24 Jul 2026 11:01:50 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4976a53f24a013306b5c4725f8452324a6c740bcc19f2261216c99a9b74f1e4`  
		Last Modified: Fri, 24 Jul 2026 11:01:50 GMT  
		Size: 108.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a5223780cde101bff819fcb8f7674bfa8a5d55d873d67094115471d6ff04857`  
		Last Modified: Fri, 24 Jul 2026 11:01:49 GMT  
		Size: 622.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50098a4fc4a8f2d6fb3b75d4591ab314a879ff54a80488419b59b8a767f8eb65`  
		Last Modified: Fri, 24 Jul 2026 11:01:51 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29347ca8d7ec5d21b48631f78dce36a26fd8e4392c110e60cc2f90f584930003`  
		Last Modified: Fri, 24 Jul 2026 12:50:26 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:145d5cd6bbecae199bd4304bec59806a8c8db0b9175b9f1a1cff21f8f7592de1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **689.3 KB (689304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b60cf894e61847b351dc80b0721584a61715b56009c02595f9796738f3ee99aa`

```dockerfile
```

-	Layers:
	-	`sha256:10c6409c1e04f0cd828529495d58a7eddd1234f843fe8fe039b21ab5f0d0717c`  
		Last Modified: Fri, 24 Jul 2026 12:50:26 GMT  
		Size: 674.0 KB (674021 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5575450075010a063c71e4ed817c7200a612f756dff4256820c88230acffc312`  
		Last Modified: Fri, 24 Jul 2026 12:50:26 GMT  
		Size: 15.3 KB (15283 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:management-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:3c5ed154c4d3231f39525219c2790637ec00a04b2122bd4c02f97ee7a5bf45b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.7 MB (73682776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e62382308e5d5858d9351a6c6c3c961ee3015a1e5008c80e81586168d478ebe`
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
ENV RABBITMQ_VERSION=4.3.4
# Mon, 20 Jul 2026 23:01:16 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 20 Jul 2026 23:01:16 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 20 Jul 2026 23:01:16 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:14:24 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Thu, 23 Jul 2026 22:14:25 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Thu, 23 Jul 2026 22:14:25 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Thu, 23 Jul 2026 22:14:25 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 23 Jul 2026 22:14:25 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 23 Jul 2026 22:14:25 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 23 Jul 2026 22:14:25 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Thu, 23 Jul 2026 22:14:25 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Thu, 23 Jul 2026 22:14:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 22:14:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 22:14:25 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Thu, 23 Jul 2026 22:14:25 GMT
CMD ["rabbitmq-server"]
# Thu, 23 Jul 2026 22:28:19 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Thu, 23 Jul 2026 22:28:19 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-x86_64-unknown-linux-musl'; digest='be19cca3ccbaaff0d778c8ac34c5dd96481df219cf1831ec4bb15927e29374ea' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-aarch64-unknown-linux-musl'; digest='fab009d193fcbe1a5947f4066a66d8b4c967da23659584e869d0d7b6edaa2b51' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Thu, 23 Jul 2026 22:28:19 GMT
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
	-	`sha256:bde9a1567a39993ab5bd3a6d84069af51975cda022be2722d4f1d1117c5f0b21`  
		Last Modified: Thu, 23 Jul 2026 22:18:30 GMT  
		Size: 26.2 MB (26150948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bd6bcb06b99322dc106b00bb7cd9e0187e163539019091e102f79541d85aa3c`  
		Last Modified: Thu, 23 Jul 2026 22:18:30 GMT  
		Size: 192.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3de196c94a87206cf19b55b29e2d3a0169e0657706fe6aea514c527efb982ad`  
		Last Modified: Thu, 23 Jul 2026 22:18:30 GMT  
		Size: 108.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:287223f597cee4fa6a94b095322fd98a7abf238f45f869ff5847fe17c4b446c8`  
		Last Modified: Thu, 23 Jul 2026 22:18:30 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f85efb5b9c8a518130557c44cc9abefccb2e8a827423cdd2f5ed3bb9cd668e3c`  
		Last Modified: Thu, 23 Jul 2026 22:18:31 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac16e3ac9bda2a0fcaf12f0d12424bad8e4ae756fd1429b440e2f5f69543bb4a`  
		Last Modified: Thu, 23 Jul 2026 22:28:28 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:666e17daf72cc4f30d1d903b53395a9ef8391addb6e8d76d3027e4d335731b05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **686.3 KB (686252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cca54f396f90dd460b2cedd00a981bd01678177774d51a13feb58917ca7babaa`

```dockerfile
```

-	Layers:
	-	`sha256:70af648c9fda2abae672ad93a892781431fc6a05b94da04c03be0437104fc9e6`  
		Last Modified: Thu, 23 Jul 2026 22:28:28 GMT  
		Size: 671.0 KB (671018 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea423269759a8e63c1a29da623e1fa1155241acfffe26594ae359bc9234cfde7`  
		Last Modified: Thu, 23 Jul 2026 22:28:28 GMT  
		Size: 15.2 KB (15234 bytes)  
		MIME: application/vnd.in-toto+json
