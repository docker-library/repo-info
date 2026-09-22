## `rabbitmq:4-management-alpine`

```console
$ docker pull rabbitmq@sha256:e2e80de7995b55f33ebe8c8411e6896b883602436ad4d4406f55c32d863c4533
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
$ docker pull rabbitmq@sha256:62a2f1b50ad9c469cd2f586fe5ba6aa44a0c30ef269f40e5b7348fb392a87f61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.0 MB (88970132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59b7e649908c1de3f633bef176b7cc196f18952a91c354c6fe0fa1b6c4989cd6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 19:16:45 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 22 Sep 2026 19:16:45 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 22 Sep 2026 19:16:45 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 22 Sep 2026 19:16:45 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 22 Sep 2026 19:16:45 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 19:16:45 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 22 Sep 2026 19:16:47 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Tue, 22 Sep 2026 19:16:47 GMT
ENV RABBITMQ_VERSION=4.3.6
# Tue, 22 Sep 2026 19:16:47 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 22 Sep 2026 19:16:47 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 22 Sep 2026 19:16:47 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 19:16:53 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 22 Sep 2026 19:16:54 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 22 Sep 2026 19:16:54 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 22 Sep 2026 19:16:54 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 22 Sep 2026 19:16:54 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 22 Sep 2026 19:16:54 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 22 Sep 2026 19:16:54 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 22 Sep 2026 19:16:54 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 22 Sep 2026 19:16:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 22 Sep 2026 19:16:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 22 Sep 2026 19:16:54 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 22 Sep 2026 19:16:54 GMT
CMD ["rabbitmq-server"]
# Tue, 22 Sep 2026 19:48:06 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Tue, 22 Sep 2026 19:48:06 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-musl'; digest='8e87764f19e80339abd16f5617bcd9712ad7560b75e123d5e8b8d7922c11ab6e' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-musl'; digest='bde1b0b5e45b5bd9758b2597b3a1c1031b492d0ca0654000222725f400291cbd' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Tue, 22 Sep 2026 19:48:06 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b613c45f1454c41ad8e05f237e7df17537ea49417a616d4680af2e6ed7ac1c86`  
		Last Modified: Tue, 22 Sep 2026 19:17:10 GMT  
		Size: 42.7 MB (42717194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db567a420b182ffafcefcaf04aa577272ef73ad103b4ed80953f816cce8a42e0`  
		Last Modified: Tue, 22 Sep 2026 19:17:09 GMT  
		Size: 9.2 MB (9217484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:170395c32cc3ffc1a470ac1f1ab77e63e2d3c7609dc90ed3236c9ba61fbd9810`  
		Last Modified: Tue, 22 Sep 2026 19:17:09 GMT  
		Size: 2.5 MB (2468828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:927dd03b2b72912071a09ac319d9a0a36536b850335cea702073f0481fa4299a`  
		Last Modified: Tue, 22 Sep 2026 19:17:10 GMT  
		Size: 26.3 MB (26291887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a828bf9a520eb0cea6bf1ac45cb371ea2266c43382f1d39c248afda980c9470a`  
		Last Modified: Tue, 22 Sep 2026 19:17:10 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e61af1675302c3e6c8545c9926552b1bab62f9818be54e7b3588607360da7269`  
		Last Modified: Tue, 22 Sep 2026 19:17:10 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62266d7dfcb3c6d8e1c5d756bf0eaacbf3ece0b4ee61f75a79ecc1d69230dd04`  
		Last Modified: Tue, 22 Sep 2026 19:17:11 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9997b892da12b002f4cf4612ff7ab27cc1053b706016fcd7a5d360f64ea600d0`  
		Last Modified: Tue, 22 Sep 2026 19:17:11 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47d68e62fcfaab96ce2add93dc4d1c39bea7245cc5b4f9c4aacaad0569cd982c`  
		Last Modified: Tue, 22 Sep 2026 19:48:13 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e10468229bfea98594af8e01fd7b0e01b03b1f371a1601d1d53d9b8903ccd0b9`  
		Last Modified: Tue, 22 Sep 2026 19:48:14 GMT  
		Size: 4.4 MB (4424214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:28e1ae1c5c99390fada0928934343fc487f160e731cc1d6ef8d72756656e89b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.2 KB (691159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d56f1da1787dcdb4b39c7d1c981737e0aaaab252c862d270cee6097ef612d96`

```dockerfile
```

-	Layers:
	-	`sha256:e6ed57e145a29c72f37981f07f1f7f897c45453d21f3d18af628c17407080088`  
		Last Modified: Tue, 22 Sep 2026 19:48:13 GMT  
		Size: 675.9 KB (675920 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e52025bc9a7610bd76484e5ba37b88e13c1359f3034d56cad384c78b86ed50c1`  
		Last Modified: Tue, 22 Sep 2026 19:48:13 GMT  
		Size: 15.2 KB (15239 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:a1568ac3bd6102f3539cf20b8e7fc09f6a32d15495f911e967a82788bd54d0a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.7 MB (72714999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:074bbc2df032bb7972db05fd69725738a87104e8676fa8d4546d265ee456e7fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 18:57:26 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 22 Sep 2026 18:57:26 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 22 Sep 2026 18:57:26 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 22 Sep 2026 18:57:26 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 22 Sep 2026 18:57:26 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:57:26 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 22 Sep 2026 18:57:29 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Tue, 22 Sep 2026 18:57:29 GMT
ENV RABBITMQ_VERSION=4.3.6
# Tue, 22 Sep 2026 18:57:29 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 22 Sep 2026 18:57:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 22 Sep 2026 18:57:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:57:38 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 22 Sep 2026 18:57:40 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 22 Sep 2026 18:57:40 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 22 Sep 2026 18:57:40 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 22 Sep 2026 18:57:40 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 22 Sep 2026 18:57:40 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 22 Sep 2026 18:57:40 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 22 Sep 2026 18:57:40 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 22 Sep 2026 18:57:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 22 Sep 2026 18:57:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 22 Sep 2026 18:57:40 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 22 Sep 2026 18:57:40 GMT
CMD ["rabbitmq-server"]
# Tue, 22 Sep 2026 19:10:02 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Tue, 22 Sep 2026 19:10:02 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-musl'; digest='8e87764f19e80339abd16f5617bcd9712ad7560b75e123d5e8b8d7922c11ab6e' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-musl'; digest='bde1b0b5e45b5bd9758b2597b3a1c1031b492d0ca0654000222725f400291cbd' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Tue, 22 Sep 2026 19:10:02 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4740b77319bd76dda1f345d8f2a6dff0d0f47776e9a3eaac6b2e177a02d63a`  
		Last Modified: Tue, 22 Sep 2026 18:57:48 GMT  
		Size: 33.6 MB (33589875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f3d561e1a574d33e8a98e641f7ce95429a16c9665e4ef2ed45cf3f05f59164a`  
		Last Modified: Tue, 22 Sep 2026 18:57:47 GMT  
		Size: 7.9 MB (7867696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63febce9cbca1d36d94e4c8afab38aed2f3867677c2966973975bf268da22657`  
		Last Modified: Tue, 22 Sep 2026 18:57:46 GMT  
		Size: 1.4 MB (1408227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b7072d2fe458795a0df335d3366a81e74e09ebf6e92c9930ab02524989769ad`  
		Last Modified: Tue, 22 Sep 2026 18:57:47 GMT  
		Size: 26.3 MB (26292223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1924a9d1a8293b91265f8b56b86527c2e8d9047d4aca61bb6077e15e32ef2351`  
		Last Modified: Tue, 22 Sep 2026 18:57:48 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3e488496ad7478075480a1a99e0cda1290813cf9b428ac067b2b72035c0fa96`  
		Last Modified: Tue, 22 Sep 2026 18:57:48 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d57b3367ada8a1de55b4a2e44ad68c3765c4e59e02efd4d536ee1c2745b940`  
		Last Modified: Tue, 22 Sep 2026 18:57:49 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:887399d3c2a32c72a523c3380a66bb2b916ac335bdbcea2bc6e090706c8d5b31`  
		Last Modified: Tue, 22 Sep 2026 18:57:49 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f7289f7a00685b826c7650a53b4d0a4bc0b6d620cbfe37e80d5038d3f10d734`  
		Last Modified: Tue, 22 Sep 2026 19:10:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:fddd678665f75c6bad636e6fb8d92410303774c05bb15b16088845e70962e6b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 KB (15112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:478546e20639fa7e18f757036766bd1fba6c802938466e0612cc031619b6d8f1`

```dockerfile
```

-	Layers:
	-	`sha256:6078bfca7723070d8a819198ebeb15d3b70b2ed0c844322fe7c0b8a37a39a36e`  
		Last Modified: Tue, 22 Sep 2026 19:10:05 GMT  
		Size: 15.1 KB (15112 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management-alpine` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:fb99874e7fae1d1b52065ef216da0794ee5cc4090875181605835b95f3233ea1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71802527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:717fdf7c404a0d194fd16c3b2007fc638e3f6dd58a8464e8e8df111deb2ff20f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 19:04:31 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 22 Sep 2026 19:04:31 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 22 Sep 2026 19:04:31 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 22 Sep 2026 19:04:31 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 22 Sep 2026 19:04:31 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 19:04:31 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 22 Sep 2026 19:04:34 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Tue, 22 Sep 2026 19:04:34 GMT
ENV RABBITMQ_VERSION=4.3.6
# Tue, 22 Sep 2026 19:04:34 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 22 Sep 2026 19:04:34 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 22 Sep 2026 19:04:34 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 19:04:40 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 22 Sep 2026 19:04:41 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 22 Sep 2026 19:04:41 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 22 Sep 2026 19:04:41 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 22 Sep 2026 19:04:41 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 22 Sep 2026 19:04:41 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 22 Sep 2026 19:04:41 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 22 Sep 2026 19:04:41 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 22 Sep 2026 19:04:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 22 Sep 2026 19:04:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 22 Sep 2026 19:04:41 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 22 Sep 2026 19:04:41 GMT
CMD ["rabbitmq-server"]
# Tue, 22 Sep 2026 19:10:00 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Tue, 22 Sep 2026 19:10:00 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-musl'; digest='8e87764f19e80339abd16f5617bcd9712ad7560b75e123d5e8b8d7922c11ab6e' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-musl'; digest='bde1b0b5e45b5bd9758b2597b3a1c1031b492d0ca0654000222725f400291cbd' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Tue, 22 Sep 2026 19:10:00 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb5879770afc67e78159f99ea262d00dcd25347ce85d71e8ac5c24d2a73de6b`  
		Last Modified: Tue, 22 Sep 2026 19:04:58 GMT  
		Size: 33.5 MB (33495912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de65c7f77089fd27c48c9078ef4be6733a6cb4e0aa5f49cdc9f28ba682019375`  
		Last Modified: Tue, 22 Sep 2026 19:04:57 GMT  
		Size: 7.5 MB (7450147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0e1258aa94a3eb328d6eea34231f44207d886e70ab303c5b6eedc98c6b7d4c5`  
		Last Modified: Tue, 22 Sep 2026 19:04:56 GMT  
		Size: 1.3 MB (1298826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d75fb7970e81fe7afd5a09f36d7402a424d255a9110b5580a37f3561cb45c8a2`  
		Last Modified: Tue, 22 Sep 2026 19:04:57 GMT  
		Size: 26.3 MB (26292678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f798e6f19dd38c5f99feb62a506d3ba14e5b5c8714c8f3186f720b3cfd4d056c`  
		Last Modified: Tue, 22 Sep 2026 19:04:57 GMT  
		Size: 192.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b040c9a471045f5bd93647575af1d7d53fb49b15a8704e1f04fa40338cb584c`  
		Last Modified: Tue, 22 Sep 2026 19:04:58 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce5de4fc368fff24346d1d0d492a1fce9540e6de911b2975c283c8a608370f68`  
		Last Modified: Tue, 22 Sep 2026 19:04:59 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ff08f65efc85889e89a3f8e71f4f5a4c9a1523f97272da596721b42fd38e78c`  
		Last Modified: Tue, 22 Sep 2026 19:04:59 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b2e1470555c2b9bea943d0a3243bc61cd431f5374551838596173cfc346d58a`  
		Last Modified: Tue, 22 Sep 2026 19:10:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:fd3dcea2bb630ffa14404b50cfb5aa70ff4e70f42e8508809a5263a0d629c6f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **686.4 KB (686391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92adae8698e0a29da8f1585047506bec5c144ad1db91b222b2538d3d64fc7309`

```dockerfile
```

-	Layers:
	-	`sha256:1ebf644e8761d3757cf122804ddf9ef04ed25fcd2771fe28729d3372dce6c488`  
		Last Modified: Tue, 22 Sep 2026 19:10:05 GMT  
		Size: 671.1 KB (671064 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04624d32b8dc3bd5b7dfd0ab17874efe294691f2e380a5d2146d2697bd148528`  
		Last Modified: Tue, 22 Sep 2026 19:10:05 GMT  
		Size: 15.3 KB (15327 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:aba12d4a333823561405a521fe46593b003ce7a8202bedc5b9406026f357b880
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.7 MB (87684484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:215833565a8bf5723095f06cf59a51b0fcdcf88440f34b3c1c668691758a0ce1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:07:04 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Thu, 17 Sep 2026 22:07:04 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Thu, 17 Sep 2026 22:07:04 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Thu, 17 Sep 2026 22:07:04 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Thu, 17 Sep 2026 22:07:04 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 22:07:04 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 17 Sep 2026 22:07:06 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Thu, 17 Sep 2026 22:07:06 GMT
ENV RABBITMQ_VERSION=4.3.6
# Thu, 17 Sep 2026 22:07:06 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 17 Sep 2026 22:07:06 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 17 Sep 2026 22:07:06 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 22:07:12 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Thu, 17 Sep 2026 22:07:13 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Thu, 17 Sep 2026 22:07:13 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Thu, 17 Sep 2026 22:07:13 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 17 Sep 2026 22:07:13 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 17 Sep 2026 22:07:13 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 17 Sep 2026 22:07:13 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Thu, 17 Sep 2026 22:07:13 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Thu, 17 Sep 2026 22:07:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:07:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:07:13 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Thu, 17 Sep 2026 22:07:13 GMT
CMD ["rabbitmq-server"]
# Thu, 17 Sep 2026 22:53:12 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Thu, 17 Sep 2026 22:53:12 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-musl'; digest='8e87764f19e80339abd16f5617bcd9712ad7560b75e123d5e8b8d7922c11ab6e' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-musl'; digest='bde1b0b5e45b5bd9758b2597b3a1c1031b492d0ca0654000222725f400291cbd' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Thu, 17 Sep 2026 22:53:12 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1837e0531986f4f170c46b2e29531d4494b079fc41ad8115f40e06949e9c741e`  
		Last Modified: Thu, 17 Sep 2026 22:07:32 GMT  
		Size: 40.5 MB (40539378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0a79e8884b0368d25af999fc45e05a632b94671709cdbfda983452ee04752c2`  
		Last Modified: Thu, 17 Sep 2026 22:07:30 GMT  
		Size: 10.0 MB (10006868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e24d872982235903a224ed65042ce941517003605d3976813914ffddc19891b`  
		Last Modified: Thu, 17 Sep 2026 22:07:29 GMT  
		Size: 2.5 MB (2517622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93d3628a339cfd74c97feeb4dffcdcfa4f399419907b07e6000ad0e273b7ac59`  
		Last Modified: Thu, 17 Sep 2026 22:07:31 GMT  
		Size: 26.3 MB (26291942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fff4f09c992868adced79c72bad9121754a89c17f0d183f4b7868934b984644`  
		Last Modified: Thu, 17 Sep 2026 22:07:31 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3cf6e6429b4b34dbe77b586cfe2825e77d3365e3f5cd208ca4bc1eeb23808e5`  
		Last Modified: Thu, 17 Sep 2026 22:07:32 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caf5acefe26f530ac11f9c36b02c71fe9123d26d1ee8055ae41f1ec7e47f1dbd`  
		Last Modified: Thu, 17 Sep 2026 22:07:32 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7fe3675fb279a717423d51bf9dea2ddf59de9edfe94fbee4f6244bcceb9c973`  
		Last Modified: Thu, 17 Sep 2026 22:07:33 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8e2e80f661e55bcf449a6624a615d39d496eb5b0e5c678bd7eb3da2fff2c6f4`  
		Last Modified: Thu, 17 Sep 2026 22:53:19 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21b9b57e6e4d55d4e20412ff9ca47d57fe25762b906ed337b40637bcb2b09a7d`  
		Last Modified: Thu, 17 Sep 2026 22:53:19 GMT  
		Size: 4.1 MB (4140596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:35a576c842f6da57b1a1b52bd51516c543cddf15758a3ea014f396797b39a177
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.4 KB (691425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24f663edab2c00c1f52742a7f2255fb867b374a6b8b4af6bcac6d5f2aee286a5`

```dockerfile
```

-	Layers:
	-	`sha256:d603adaf4a9d1bb405943f142fe10c54b77f9a6ef5e5f7351565c57176e3df26`  
		Last Modified: Thu, 17 Sep 2026 22:53:19 GMT  
		Size: 676.1 KB (676064 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0304bb64250d2ab91c970cd8336f62baeaf11ba80e5fb717241b08cbae0ee162`  
		Last Modified: Thu, 17 Sep 2026 22:53:19 GMT  
		Size: 15.4 KB (15361 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:98865867908a434ae4e406b6d46188b8aeadb166dd5abb842cec0ff5141f0a33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.1 MB (74141614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47aa759f1b00ad8dfe0f8b061ac5f80d3acc901343e429476295b4880c1abc9a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:28 GMT
ADD alpine-minirootfs-3.23.6-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:28 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 19:00:26 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 22 Sep 2026 19:00:26 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 22 Sep 2026 19:00:26 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 22 Sep 2026 19:00:26 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 22 Sep 2026 19:00:26 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 19:00:26 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 22 Sep 2026 19:00:28 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Tue, 22 Sep 2026 19:00:28 GMT
ENV RABBITMQ_VERSION=4.3.6
# Tue, 22 Sep 2026 19:00:28 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 22 Sep 2026 19:00:28 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 22 Sep 2026 19:00:28 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 19:00:34 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 22 Sep 2026 19:00:35 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 22 Sep 2026 19:00:35 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 22 Sep 2026 19:00:35 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 22 Sep 2026 19:00:35 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 22 Sep 2026 19:00:35 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 22 Sep 2026 19:00:35 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 22 Sep 2026 19:00:35 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 22 Sep 2026 19:00:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 22 Sep 2026 19:00:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 22 Sep 2026 19:00:35 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 22 Sep 2026 19:00:35 GMT
CMD ["rabbitmq-server"]
# Tue, 22 Sep 2026 19:11:17 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Tue, 22 Sep 2026 19:11:17 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-musl'; digest='8e87764f19e80339abd16f5617bcd9712ad7560b75e123d5e8b8d7922c11ab6e' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-musl'; digest='bde1b0b5e45b5bd9758b2597b3a1c1031b492d0ca0654000222725f400291cbd' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Tue, 22 Sep 2026 19:11:17 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:1f89eeb8219ece88ee6dd2e7cad6761d1e9da9e18f4b7929d9ee0052902df74a`  
		Last Modified: Thu, 17 Sep 2026 20:37:33 GMT  
		Size: 3.7 MB (3675111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb8cf17cc06e494e7f2fd7b263dd74a811b950695536fbda2f069d964f336a61`  
		Last Modified: Tue, 22 Sep 2026 19:00:51 GMT  
		Size: 33.6 MB (33551465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea0c2ad27aa2cdcf6ed2fd39853907500c283c3631811e6e6cf6a56a172880d`  
		Last Modified: Tue, 22 Sep 2026 19:00:50 GMT  
		Size: 9.2 MB (9207707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64de74c4a5d86553169618048b956db593ebadff6d6d8678b1be1dba5ebb14b6`  
		Last Modified: Tue, 22 Sep 2026 19:00:50 GMT  
		Size: 1.4 MB (1412595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32ac8fe78a4291ae4f7357e1bf8b9f6d199db98d242706ccdd098e19ef8d1e85`  
		Last Modified: Tue, 22 Sep 2026 19:00:51 GMT  
		Size: 26.3 MB (26292680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f224128dc2dccf80fb925f34488433bf2b17f70d8d229e5e09ae4da87edcb81`  
		Last Modified: Tue, 22 Sep 2026 19:00:51 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:624f5991216cebe9c6c0f6ffa4c8103c8383d1e2293679a2de07c9cab40ab629`  
		Last Modified: Tue, 22 Sep 2026 19:00:51 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:866aa92d62cf731b326a2316f434f8ba085bdfb72c3a63675b0748e41dd0fdaf`  
		Last Modified: Tue, 22 Sep 2026 19:00:53 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f1e6b2fd3b7d8ab6c8e54a2b99b5b0c69ceec89430a8b98cb5335fad8bd7232`  
		Last Modified: Tue, 22 Sep 2026 19:00:53 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c1fa98d0198d17bbda88f63a6349e078c4d1bac2900ecfc70c0db86a710aedc`  
		Last Modified: Tue, 22 Sep 2026 19:11:23 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:7b5adb7fa6fcf6d4017097f5d0fd56c2246a69352251f6cba86b88ef388db9e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **686.1 KB (686115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41455be58c629a2f066c91f35735c60e64468017291a3d3d6530a5603bdea07a`

```dockerfile
```

-	Layers:
	-	`sha256:d39e705608d152a328a68b0f454903b29f56d1cf2d5547ee79feec044a4e4143`  
		Last Modified: Tue, 22 Sep 2026 19:11:23 GMT  
		Size: 670.9 KB (670915 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4da9eb5fdd5242d56361ca7b478600c04eefada794a1e775256e27fdcf1cc5e`  
		Last Modified: Tue, 22 Sep 2026 19:11:22 GMT  
		Size: 15.2 KB (15200 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:805abb9e864de88fdce42d8f92ea0a8fb8a45ebc419c9125b5a9f37db6cef735
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.8 MB (75780845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd9dc7f02b697b35556e2e2241ecbc7ae0510bd98b7843acd74ef98950480dad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 00:44:48 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Fri, 18 Sep 2026 00:44:48 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Fri, 18 Sep 2026 00:44:48 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Fri, 18 Sep 2026 00:44:48 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Fri, 18 Sep 2026 00:44:48 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 18 Sep 2026 00:44:48 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Fri, 18 Sep 2026 00:44:52 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Fri, 18 Sep 2026 00:44:52 GMT
ENV RABBITMQ_VERSION=4.3.6
# Fri, 18 Sep 2026 00:44:52 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 18 Sep 2026 00:44:52 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 18 Sep 2026 00:44:52 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 18 Sep 2026 00:45:01 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Fri, 18 Sep 2026 00:45:03 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Fri, 18 Sep 2026 00:45:03 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Fri, 18 Sep 2026 00:45:03 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 18 Sep 2026 00:45:03 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 18 Sep 2026 00:45:03 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Fri, 18 Sep 2026 00:45:03 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Fri, 18 Sep 2026 00:45:03 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Fri, 18 Sep 2026 00:45:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 18 Sep 2026 00:45:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Sep 2026 00:45:03 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Fri, 18 Sep 2026 00:45:03 GMT
CMD ["rabbitmq-server"]
# Fri, 18 Sep 2026 02:16:15 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Fri, 18 Sep 2026 02:16:15 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-musl'; digest='8e87764f19e80339abd16f5617bcd9712ad7560b75e123d5e8b8d7922c11ab6e' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-musl'; digest='bde1b0b5e45b5bd9758b2597b3a1c1031b492d0ca0654000222725f400291cbd' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Fri, 18 Sep 2026 02:16:15 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f08a0e63c0bbb3c9a75cda4c737f53edb46a022088ab0b4e28e4d2322326adae`  
		Last Modified: Fri, 18 Sep 2026 00:45:36 GMT  
		Size: 34.1 MB (34144545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ceb5b025e5a72ce14b9379e481657f6476c63c0ed93fdf01693b022d4ccc82`  
		Last Modified: Fri, 18 Sep 2026 00:45:35 GMT  
		Size: 10.0 MB (9980621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aae826c2bc539a16c89fe5c9f22b37f0909ae3e051df56cad1c82d9ab3921f4c`  
		Last Modified: Fri, 18 Sep 2026 00:45:34 GMT  
		Size: 1.5 MB (1546218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c6ab2a6d590b2f165ecc11e77b66b331f12cee125fa6939f71276d2b01d0e4`  
		Last Modified: Fri, 18 Sep 2026 00:45:36 GMT  
		Size: 26.3 MB (26292644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a88d3dec904d501049bdb5bf9594335cab8bc4ef34bc24b30cfc7f61396e119`  
		Last Modified: Fri, 18 Sep 2026 00:45:36 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06fbf87d921ddc63f1439662b128466f1a05b8f10ab8f9940e182b26a2869953`  
		Last Modified: Fri, 18 Sep 2026 00:45:36 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b5d104c8ffe8dd125bb783dc748625ab0d093f4d2f274ed5c707837a13427ca`  
		Last Modified: Fri, 18 Sep 2026 00:45:37 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90ffdc008ce5d1303bebbbdf1501f891ec1e5c507af39af18c8bf208a745f2ea`  
		Last Modified: Fri, 18 Sep 2026 00:45:37 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed14260e68dfbd0d52eccc6bb394f5be53ffd26e3701f8ecedf1889122562cc2`  
		Last Modified: Fri, 18 Sep 2026 02:16:37 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:24ca24dd18191ebff18b347871e1d311a70243f92eb1381ae8e2f16c108308c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **686.3 KB (686341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b3f432e9b3ba6134132b6923cdb72666b24545b58461bb29d8c0ffa9289be85`

```dockerfile
```

-	Layers:
	-	`sha256:07ce7385d8e7c68a6dc60095b1c1e9d56a1624742fd784b889d7ccdb934dca5f`  
		Last Modified: Fri, 18 Sep 2026 02:16:37 GMT  
		Size: 671.1 KB (671061 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1d55c46a932e8076543d0259cbd1ac29cf7c18ff9fff5326e5cf0869cd1ae02`  
		Last Modified: Fri, 18 Sep 2026 02:16:37 GMT  
		Size: 15.3 KB (15280 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management-alpine` - linux; riscv64

```console
$ docker pull rabbitmq@sha256:f1c091e694eb8e6302ab96b9ad3118e110b9879ff846b50a1f6d2cb7fa84772d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79623161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a3faf3fa8699be10909a3bbecf430095d32e60f0a6aa5a84fd8a736c08d7e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Thu, 03 Sep 2026 03:16:52 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Thu, 03 Sep 2026 03:16:52 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Thu, 03 Sep 2026 03:16:52 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Thu, 03 Sep 2026 03:16:53 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Thu, 03 Sep 2026 03:16:53 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 03 Sep 2026 03:16:53 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 03 Sep 2026 03:17:03 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Thu, 03 Sep 2026 03:17:03 GMT
ENV RABBITMQ_VERSION=4.3.5
# Thu, 03 Sep 2026 03:17:03 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 03 Sep 2026 03:17:03 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 03 Sep 2026 03:17:03 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 03 Sep 2026 03:17:41 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Thu, 03 Sep 2026 03:17:50 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Thu, 03 Sep 2026 03:17:50 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Thu, 03 Sep 2026 03:17:50 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 03 Sep 2026 03:17:50 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 03 Sep 2026 03:17:50 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 03 Sep 2026 03:17:50 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Thu, 03 Sep 2026 03:17:50 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Thu, 03 Sep 2026 03:17:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 03 Sep 2026 03:17:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 03 Sep 2026 03:17:50 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Thu, 03 Sep 2026 03:17:50 GMT
CMD ["rabbitmq-server"]
# Thu, 03 Sep 2026 16:32:19 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Thu, 10 Sep 2026 05:46:53 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-musl'; digest='8e87764f19e80339abd16f5617bcd9712ad7560b75e123d5e8b8d7922c11ab6e' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-musl'; digest='bde1b0b5e45b5bd9758b2597b3a1c1031b492d0ca0654000222725f400291cbd' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Thu, 10 Sep 2026 05:46:53 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:825da0272f4b98354ac4b9a2ce140f2f02c157ce223c0838fa4f67d09804da09`  
		Last Modified: Thu, 03 Sep 2026 03:21:52 GMT  
		Size: 37.6 MB (37571720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9b37c8a2914a8700b4535137f5a08d48b8e718c28f7b83d05c0331fba3d5f3b`  
		Last Modified: Thu, 03 Sep 2026 03:21:45 GMT  
		Size: 10.8 MB (10806210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb474a187332c5ffb6b668d586220a478799e0908f596c31e227ea1328e1039f`  
		Last Modified: Thu, 03 Sep 2026 03:21:40 GMT  
		Size: 1.4 MB (1448962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7278fbbed9993ee2a3173b4b5515f3b2b1754688768592bf78346cb22ae206b4`  
		Last Modified: Thu, 03 Sep 2026 03:21:50 GMT  
		Size: 26.2 MB (26220967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ca51de6348b1ba65b7aa39759d08ab3a7f836247cb2a2c75ab57f46259d8bd3`  
		Last Modified: Thu, 03 Sep 2026 03:21:43 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e497f01b961ad6c9933d4234297a5d053b061593d91e7e663b095514f04fe7`  
		Last Modified: Thu, 03 Sep 2026 03:21:45 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef25e2f13a82e682a3d3620555548fe966c2b661d240b919e406d48e6e390ded`  
		Last Modified: Thu, 03 Sep 2026 03:21:47 GMT  
		Size: 624.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ea905d3d979e0e5a9d942f8bf72cb0c9ab0fd38b6928cc9e8b53c95b72b4049`  
		Last Modified: Thu, 03 Sep 2026 03:21:47 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b247c1259b750572f874ce9f10ccd65b9d8e8b9a714b76eaf425f1ec060a61a`  
		Last Modified: Thu, 03 Sep 2026 16:33:14 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:42e93620fb1259e68fb9e2bd39fe1d60ccbb27fed58515430bc87d596825f277
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **689.3 KB (689313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae94ae3bc80b84c4573ff9106c6c2ba48800ca99f36c1283c82995c7f2d32b6c`

```dockerfile
```

-	Layers:
	-	`sha256:3b9f83704bfd6cbaac5f91e2458f4f03d42117bb1209e864351c417d7c25aa38`  
		Last Modified: Thu, 10 Sep 2026 05:47:48 GMT  
		Size: 674.0 KB (674030 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6566e98972b15a2467878d74ac77a3bbbe3d740f53a733fe1d1cf6b6003878e0`  
		Last Modified: Thu, 10 Sep 2026 05:47:47 GMT  
		Size: 15.3 KB (15283 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:10fd215c1fdd9b1c909aad337590685dc8aa356d967d893f04ddeb567548903b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.9 MB (73884472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7b204145d83278fb75bd22a8d8a1353b9923f9cb7020b835a6a26509290ce8c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:23 GMT
ADD alpine-minirootfs-3.23.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:23 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 01:38:01 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Fri, 18 Sep 2026 01:38:01 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Fri, 18 Sep 2026 01:38:01 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Fri, 18 Sep 2026 01:38:01 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Fri, 18 Sep 2026 01:38:01 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 18 Sep 2026 01:38:01 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Fri, 18 Sep 2026 01:38:04 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Fri, 18 Sep 2026 01:38:04 GMT
ENV RABBITMQ_VERSION=4.3.6
# Fri, 18 Sep 2026 01:38:04 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 18 Sep 2026 01:38:04 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 18 Sep 2026 01:38:04 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 18 Sep 2026 01:38:09 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Fri, 18 Sep 2026 01:38:09 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Fri, 18 Sep 2026 01:38:10 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Fri, 18 Sep 2026 01:38:10 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 18 Sep 2026 01:38:10 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 18 Sep 2026 01:38:10 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Fri, 18 Sep 2026 01:38:10 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Fri, 18 Sep 2026 01:38:10 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Fri, 18 Sep 2026 01:38:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 18 Sep 2026 01:38:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Sep 2026 01:38:10 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Fri, 18 Sep 2026 01:38:10 GMT
CMD ["rabbitmq-server"]
# Fri, 18 Sep 2026 02:49:25 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Fri, 18 Sep 2026 02:49:25 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-musl'; digest='8e87764f19e80339abd16f5617bcd9712ad7560b75e123d5e8b8d7922c11ab6e' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-musl'; digest='bde1b0b5e45b5bd9758b2597b3a1c1031b492d0ca0654000222725f400291cbd' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Fri, 18 Sep 2026 02:49:25 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:4387077d70188f8428b97ed5df25698ad5aa9b8967d00a98ebb627a3e08ae986`  
		Last Modified: Thu, 17 Sep 2026 21:38:32 GMT  
		Size: 3.7 MB (3713255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c9fc3fc5777eea86db5ca252742ba1118481113dd01f591afddf51feb12f0f8`  
		Last Modified: Fri, 18 Sep 2026 01:38:31 GMT  
		Size: 34.0 MB (34001829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df2b7bdb19926afdaf4be61d3cc90aff01d495ed0942743abd2eba62c53ea90a`  
		Last Modified: Fri, 18 Sep 2026 01:38:30 GMT  
		Size: 8.4 MB (8355717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccae8b26acdf7edb5c67f7c98da2a09cdac1d576e183fd6306e9de10f7bc4521`  
		Last Modified: Fri, 18 Sep 2026 01:38:30 GMT  
		Size: 1.5 MB (1519038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb01f01915c43bf053cab391f7a5b9ee056d4cf37bcccd04cd796bdb393b94d8`  
		Last Modified: Fri, 18 Sep 2026 01:38:31 GMT  
		Size: 26.3 MB (26292582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc2c848c30694961ac5b3e0c554b089bd03305e19b7a4d3ed44d15a752787d07`  
		Last Modified: Fri, 18 Sep 2026 01:38:31 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adf2a23931cb1271cb6c88f5ca1bd9de3302322c52a4a09454d61bb1e12a17c0`  
		Last Modified: Fri, 18 Sep 2026 01:38:31 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9978bb75b38bf0df3f8410a917ed5fa591ec9b60108d894988529755e9700d1`  
		Last Modified: Fri, 18 Sep 2026 01:38:32 GMT  
		Size: 620.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a181f75badd3c3b889fc654c25b1d0b8777cf4c895ce90b3358866aca227284`  
		Last Modified: Fri, 18 Sep 2026 01:38:32 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:309e0f6479790e51606f7c55c4feece16250cb23d0207c4ff8ac0b6b83fb53fa`  
		Last Modified: Fri, 18 Sep 2026 02:49:35 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:587922d1b09d5c14062404d0f812b247000efa9cfe84519773fd31320f32a3bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **686.3 KB (686259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:237b1569be14fcbb96509f41a9674828dcd212e2980597ddf9599a1c4951f6f2`

```dockerfile
```

-	Layers:
	-	`sha256:1958f42d46255aa3d6d2ac640cf7418cd78afff792b02b8240ec226997f4aea6`  
		Last Modified: Fri, 18 Sep 2026 02:49:35 GMT  
		Size: 671.0 KB (671027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:905fb8dc9a394468112dcb6dd80bd6e8dd961facb4651f89abe8bea067dfe6cc`  
		Last Modified: Fri, 18 Sep 2026 02:49:35 GMT  
		Size: 15.2 KB (15232 bytes)  
		MIME: application/vnd.in-toto+json
