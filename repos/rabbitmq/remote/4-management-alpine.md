## `rabbitmq:4-management-alpine`

```console
$ docker pull rabbitmq@sha256:3ef7f7e89fed709a78f79b8b5f4e30e1312a1d4089da752e23595566d9d61a95
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
$ docker pull rabbitmq@sha256:ad995f859fce23a0ccd91c24cfac89d8f8cc57de4d708b58dcecea2697ad0d8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.0 MB (88984303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2214b2ab489a7df5bd3ad3361717375c32df86f1fe8cf465760733c27cd38759`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Tue, 29 Sep 2026 22:02:45 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 29 Sep 2026 22:02:45 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 29 Sep 2026 22:02:45 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 29 Sep 2026 22:02:45 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 29 Sep 2026 22:02:45 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 22:02:45 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 29 Sep 2026 22:02:47 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Tue, 29 Sep 2026 22:02:47 GMT
ENV RABBITMQ_VERSION=4.3.6
# Tue, 29 Sep 2026 22:02:47 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 29 Sep 2026 22:02:47 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 29 Sep 2026 22:02:47 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 22:02:53 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 29 Sep 2026 22:02:54 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 29 Sep 2026 22:02:54 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 29 Sep 2026 22:02:54 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 29 Sep 2026 22:02:54 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 29 Sep 2026 22:02:54 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 29 Sep 2026 22:02:54 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 29 Sep 2026 22:02:54 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 29 Sep 2026 22:02:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 29 Sep 2026 22:02:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Sep 2026 22:02:54 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 29 Sep 2026 22:02:54 GMT
CMD ["rabbitmq-server"]
# Tue, 29 Sep 2026 22:07:05 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Tue, 29 Sep 2026 22:07:06 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-musl'; digest='8e87764f19e80339abd16f5617bcd9712ad7560b75e123d5e8b8d7922c11ab6e' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-musl'; digest='bde1b0b5e45b5bd9758b2597b3a1c1031b492d0ca0654000222725f400291cbd' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Tue, 29 Sep 2026 22:07:06 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da086f142782cb6212a6c765312be5601e2a08d65e34a4c0d8663d990c57bbe1`  
		Last Modified: Tue, 29 Sep 2026 22:03:10 GMT  
		Size: 42.7 MB (42716864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0b386de469b8bb2a254ff3dd0845200a71ada04f2c1a13d2e9437594309c3f2`  
		Last Modified: Tue, 29 Sep 2026 22:03:09 GMT  
		Size: 9.2 MB (9231996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ca157036ac22f9d573188f43f944e4724823451a14f0f125015e1ca71f9e9da`  
		Last Modified: Tue, 29 Sep 2026 22:03:09 GMT  
		Size: 2.5 MB (2468857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c021773ba03849430aea336b91faaae39e5eb013063a3da93a52664ca76ff8c5`  
		Last Modified: Tue, 29 Sep 2026 22:03:10 GMT  
		Size: 26.3 MB (26291854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a16b02923077590412a11eac67e28eae937ff0d0d660c0618bcce37ae64910a9`  
		Last Modified: Tue, 29 Sep 2026 22:03:10 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4ce679ecaadd584435267c6e21fc679313dcb71578063ab3f49b3e8d30923bd`  
		Last Modified: Tue, 29 Sep 2026 22:03:10 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a48840a5754c200baa4e2d9811afbe11c11100b6f1d97f20a5d2fa55247e8c19`  
		Last Modified: Tue, 29 Sep 2026 22:03:11 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fa9912c40466caf0c7c92f54837eb367945d58931ebe2dbe03954e41470d304`  
		Last Modified: Tue, 29 Sep 2026 22:03:11 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30eccaf4a6f66035d6efb5bc690f1190bdeb69d1ce43844ffdbc14caafcd1a3b`  
		Last Modified: Tue, 29 Sep 2026 22:07:12 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca217fc8aa31cbc7cfdb5113594aed50e99b3d66475e970304e04314565b0c7e`  
		Last Modified: Tue, 29 Sep 2026 22:07:12 GMT  
		Size: 4.4 MB (4424211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:e2678e589db8daa2f1c0e002e2553a6125347a65e659021bdfe331b452226269
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.2 KB (691159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9ef5b9b5c8c01bf4a4d53e6b42d7c235b5fda09f33517774d25578fc04975d0`

```dockerfile
```

-	Layers:
	-	`sha256:09ba6917b78dcc473305125777a48553faa2026cbda128d9f82c31fc3872c9e6`  
		Last Modified: Tue, 29 Sep 2026 22:07:12 GMT  
		Size: 675.9 KB (675920 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ccc5fc8e91b94d2747403d8bf9be3e987702bb396c8f29bdeb557a7bee9dcd37`  
		Last Modified: Tue, 29 Sep 2026 22:07:12 GMT  
		Size: 15.2 KB (15239 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:2798e47b53814995f8fc564429f3094ad0c711eee3e2e30a47c953e5fc6098ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.7 MB (72724979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a7ae47a3114384e3fd669ba8801e8eaf33ed3a75370857dd44603e97c0eec01`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Tue, 29 Sep 2026 22:03:29 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 29 Sep 2026 22:03:29 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 29 Sep 2026 22:03:29 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 29 Sep 2026 22:03:29 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 29 Sep 2026 22:03:29 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 22:03:29 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 29 Sep 2026 22:03:32 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Tue, 29 Sep 2026 22:03:32 GMT
ENV RABBITMQ_VERSION=4.3.6
# Tue, 29 Sep 2026 22:03:32 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 29 Sep 2026 22:03:32 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 29 Sep 2026 22:03:32 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 22:03:41 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 29 Sep 2026 22:03:43 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 29 Sep 2026 22:03:43 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 29 Sep 2026 22:03:43 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 29 Sep 2026 22:03:43 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 29 Sep 2026 22:03:43 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 29 Sep 2026 22:03:43 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 29 Sep 2026 22:03:43 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 29 Sep 2026 22:03:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 29 Sep 2026 22:03:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Sep 2026 22:03:43 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 29 Sep 2026 22:03:43 GMT
CMD ["rabbitmq-server"]
# Tue, 29 Sep 2026 22:07:05 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Tue, 29 Sep 2026 22:07:05 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-musl'; digest='8e87764f19e80339abd16f5617bcd9712ad7560b75e123d5e8b8d7922c11ab6e' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-musl'; digest='bde1b0b5e45b5bd9758b2597b3a1c1031b492d0ca0654000222725f400291cbd' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Tue, 29 Sep 2026 22:07:05 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc966db5b34864524201ebd7298e50e3ebe2f596f86608ffda35b7619dc4d0c`  
		Last Modified: Tue, 29 Sep 2026 22:03:50 GMT  
		Size: 33.6 MB (33589901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e52d3474a770876b29c1f6dad53370fc12aeb353ffb4feeab301aaea7baeb87c`  
		Last Modified: Tue, 29 Sep 2026 22:03:49 GMT  
		Size: 7.9 MB (7877660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09909c9beca45abab2c67197f3d84fff2933fe4e93751ff4c64c9322ef833c4c`  
		Last Modified: Tue, 29 Sep 2026 22:03:49 GMT  
		Size: 1.4 MB (1408235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5688d53bade6aa41131774614486dfd1fea0e3e0976112ca303c13140816b44`  
		Last Modified: Tue, 29 Sep 2026 22:03:50 GMT  
		Size: 26.3 MB (26292205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1880e7241af4234a2968b983416149ed3a513651dd060051adceb92a6ecc9282`  
		Last Modified: Tue, 29 Sep 2026 22:03:50 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53db448cb0e7e2233c09b6f3304b1ea7fe53972a7ef0c6a0854d95792fdd474a`  
		Last Modified: Tue, 29 Sep 2026 22:03:51 GMT  
		Size: 107.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6836796a20c116d98d7de4f378727f9350094c4c1bef7cfb5f56230f08042006`  
		Last Modified: Tue, 29 Sep 2026 22:03:51 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05f749c37e0fcaac39f34c5b3ef8c7c8ebca718211d75828bacb90256a0192b1`  
		Last Modified: Tue, 29 Sep 2026 22:03:51 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e39b5a1fc392617e84cf454e5c214fb1213b402ba692988d22361d22f367f1d6`  
		Last Modified: Tue, 29 Sep 2026 22:07:09 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:188fcb05bb0ca31df2b8de6d6ce65f6046c4ef117c17be54125c09a2289f9657
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 KB (15112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4a333475769b5a2d7719a93afcf7359bef699e62bf52b8a411194e666e2d0e0`

```dockerfile
```

-	Layers:
	-	`sha256:a05922f3fd7dba059661d8d8a8704a67b9b22a0a7f7e776f87ceb9387c5c6fd3`  
		Last Modified: Tue, 29 Sep 2026 22:07:09 GMT  
		Size: 15.1 KB (15112 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management-alpine` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:555bf3e2c99411bff7c21f60369f2283c895f5b8ec3696d863d55c34b7607e17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71818186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd900b07162a7ab69380326d18737ea6c5e03a003436d17bb1e60dba26109544`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Tue, 29 Sep 2026 22:02:44 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 29 Sep 2026 22:02:44 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 29 Sep 2026 22:02:44 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 29 Sep 2026 22:02:44 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 29 Sep 2026 22:02:44 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 22:02:44 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 29 Sep 2026 22:02:47 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Tue, 29 Sep 2026 22:02:47 GMT
ENV RABBITMQ_VERSION=4.3.6
# Tue, 29 Sep 2026 22:02:47 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 29 Sep 2026 22:02:47 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 29 Sep 2026 22:02:47 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 22:02:53 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 29 Sep 2026 22:02:54 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 29 Sep 2026 22:02:54 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 29 Sep 2026 22:02:54 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 29 Sep 2026 22:02:54 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 29 Sep 2026 22:02:54 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 29 Sep 2026 22:02:54 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 29 Sep 2026 22:02:54 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 29 Sep 2026 22:02:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 29 Sep 2026 22:02:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Sep 2026 22:02:54 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 29 Sep 2026 22:02:54 GMT
CMD ["rabbitmq-server"]
# Tue, 29 Sep 2026 22:07:08 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Tue, 29 Sep 2026 22:07:08 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-musl'; digest='8e87764f19e80339abd16f5617bcd9712ad7560b75e123d5e8b8d7922c11ab6e' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-musl'; digest='bde1b0b5e45b5bd9758b2597b3a1c1031b492d0ca0654000222725f400291cbd' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Tue, 29 Sep 2026 22:07:08 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec6f1cac2f47cfe056c4d12355d29734468d6b6b6e7748d1960ef331848a6f7`  
		Last Modified: Tue, 29 Sep 2026 22:03:10 GMT  
		Size: 33.5 MB (33496041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4191ebfa34ce5a596eaae0f29065aff0182aeecc9beefbf17024e34e687cf1ae`  
		Last Modified: Tue, 29 Sep 2026 22:03:09 GMT  
		Size: 7.5 MB (7465676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b7842152a8b5e24859c012e59774eca130fa6f6e55eae4a66ddcce843e1895`  
		Last Modified: Tue, 29 Sep 2026 22:03:09 GMT  
		Size: 1.3 MB (1298828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b5374e5c8c13c2f6c00b54255b2dba947ed11611e3952546d9ad681be1cce7c`  
		Last Modified: Tue, 29 Sep 2026 22:03:10 GMT  
		Size: 26.3 MB (26292677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a16b02923077590412a11eac67e28eae937ff0d0d660c0618bcce37ae64910a9`  
		Last Modified: Tue, 29 Sep 2026 22:03:10 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4ce679ecaadd584435267c6e21fc679313dcb71578063ab3f49b3e8d30923bd`  
		Last Modified: Tue, 29 Sep 2026 22:03:10 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c54d652c001d7c25ce0a9f7fee0e7796e85761628b6ff0ae87cc2cc7fe218f4`  
		Last Modified: Tue, 29 Sep 2026 22:03:11 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01bd9914a78d9e9beb1ecac3c5c8d2c2ea5ad5d6704291928a13294f4a4e453d`  
		Last Modified: Tue, 29 Sep 2026 22:03:11 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a44d49c9b9304bec0b89c1484fe9c0af1ea0e7696e6790359307173426314ed8`  
		Last Modified: Tue, 29 Sep 2026 22:07:14 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:3c4dcfaa66889b2f5beafd8f25250ecac46607cfbf6a1862617490083d6fbcd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **686.4 KB (686391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4394da64b18e515f9bfdf6a8bbdd5c0ea7e5b01788a8507f5f21d7ddbae20f86`

```dockerfile
```

-	Layers:
	-	`sha256:ed37ca1e3f20af0faf653fcb36e564a731d70d162cbe3c797fd85c2fab25ad0e`  
		Last Modified: Tue, 29 Sep 2026 22:07:14 GMT  
		Size: 671.1 KB (671064 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2ccc592b3980874b70b17d09ba2e51a8c0bc0987843039feb36594b094ba997`  
		Last Modified: Tue, 29 Sep 2026 22:07:14 GMT  
		Size: 15.3 KB (15327 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:58dce3b05806022e53e6632018d9bc76305a3f1e6f7f5498703a947004e4b983
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.7 MB (87724343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3b1d10b087d5e3113e097c5c237ae00b05c92480ab2d6a1df07aafe787bf2e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Tue, 29 Sep 2026 22:02:59 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 29 Sep 2026 22:02:59 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 29 Sep 2026 22:02:59 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 29 Sep 2026 22:02:59 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 29 Sep 2026 22:02:59 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 22:02:59 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 29 Sep 2026 22:03:02 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Tue, 29 Sep 2026 22:03:02 GMT
ENV RABBITMQ_VERSION=4.3.6
# Tue, 29 Sep 2026 22:03:02 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 29 Sep 2026 22:03:02 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 29 Sep 2026 22:03:02 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 22:03:08 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 29 Sep 2026 22:03:09 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 29 Sep 2026 22:03:09 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 29 Sep 2026 22:03:09 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 29 Sep 2026 22:03:09 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 29 Sep 2026 22:03:09 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 29 Sep 2026 22:03:09 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 29 Sep 2026 22:03:09 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 29 Sep 2026 22:03:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 29 Sep 2026 22:03:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Sep 2026 22:03:09 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 29 Sep 2026 22:03:09 GMT
CMD ["rabbitmq-server"]
# Tue, 29 Sep 2026 22:07:59 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Tue, 29 Sep 2026 22:08:00 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-musl'; digest='8e87764f19e80339abd16f5617bcd9712ad7560b75e123d5e8b8d7922c11ab6e' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-musl'; digest='bde1b0b5e45b5bd9758b2597b3a1c1031b492d0ca0654000222725f400291cbd' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Tue, 29 Sep 2026 22:08:00 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d69ae6dfc4fcce1e7dc3a93bfe62bc3f58abb61f79318db6c666bbec2882100`  
		Last Modified: Tue, 29 Sep 2026 22:03:26 GMT  
		Size: 40.6 MB (40565219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87878de128066f47bbce9734b5fa5d763753b1d932610ef6c7bc0a90f678eafb`  
		Last Modified: Tue, 29 Sep 2026 22:03:25 GMT  
		Size: 10.0 MB (10020901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cced681fd97a2e70c8304bfef2057ccb5c4cdab37b7705023b30ead802b1747`  
		Last Modified: Tue, 29 Sep 2026 22:03:24 GMT  
		Size: 2.5 MB (2517637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a645f28330a52c0973fd0135ced4f6ec847c2cddb60343ea9038537182b312b`  
		Last Modified: Tue, 29 Sep 2026 22:03:26 GMT  
		Size: 26.3 MB (26291915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dce08f64e6c1ce59995f09913516e5499b1ff23f90b580eed3b106bd55865c7`  
		Last Modified: Tue, 29 Sep 2026 22:03:26 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23d83450a8b9baaab5fef48d05239c37cd3aa1a10eaa7b45b04e169bffea9914`  
		Last Modified: Tue, 29 Sep 2026 22:03:26 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82db87451c2203d0334f10a7ac39b60b35256aee51cb26712178c6473716e76b`  
		Last Modified: Tue, 29 Sep 2026 22:03:27 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20b4233885f6bad9da8353128cac9db6fa756600f123b455cb0bbe09ede4a13`  
		Last Modified: Tue, 29 Sep 2026 22:03:27 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cefa1fba201a6d18c073b8e11723a6a53f33eb83745f700fa9250bb21d473158`  
		Last Modified: Tue, 29 Sep 2026 22:08:06 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6ecd64ffe65e08259b550cbdcb25361a2ae9c8a6330580082cdc6f28c2f07c4`  
		Last Modified: Tue, 29 Sep 2026 22:08:06 GMT  
		Size: 4.1 MB (4140595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:499779e35eeba07e6f3869f4c7160d043e20597773382284fc5e89968162304f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.4 KB (691424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23703ca1bc10f6d76f24469bf104b47b4ebf0f76a12cf8f71ef74d234c08779c`

```dockerfile
```

-	Layers:
	-	`sha256:4aab9b135b5d9643fb385b7d7f801da5e7bae620d9ceaf86c3b0f33a076e2073`  
		Last Modified: Tue, 29 Sep 2026 22:08:06 GMT  
		Size: 676.1 KB (676064 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1fcec25f15e4f2015a5dba019c35f618015090fe6bbea4cda57ffe053d1fe277`  
		Last Modified: Tue, 29 Sep 2026 22:08:06 GMT  
		Size: 15.4 KB (15360 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:c3858753634a9f025de23ebed88cfa7d3c522c649146a2418920dbfca9e4bead
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74160184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c40722f24d5efb279bd42a42bdf9a9710b4e7ba3a18f3ae48901f73571b36d79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:28 GMT
ADD alpine-minirootfs-3.23.6-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:28 GMT
CMD ["/bin/sh"]
# Tue, 29 Sep 2026 22:02:57 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 29 Sep 2026 22:02:57 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 29 Sep 2026 22:02:57 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 29 Sep 2026 22:02:57 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 29 Sep 2026 22:02:57 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 22:02:57 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 29 Sep 2026 22:03:00 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Tue, 29 Sep 2026 22:03:00 GMT
ENV RABBITMQ_VERSION=4.3.6
# Tue, 29 Sep 2026 22:03:00 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 29 Sep 2026 22:03:00 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 29 Sep 2026 22:03:00 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 22:03:06 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 29 Sep 2026 22:03:06 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 29 Sep 2026 22:03:06 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 29 Sep 2026 22:03:06 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 29 Sep 2026 22:03:06 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 29 Sep 2026 22:03:06 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 29 Sep 2026 22:03:06 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 29 Sep 2026 22:03:06 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 29 Sep 2026 22:03:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 29 Sep 2026 22:03:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Sep 2026 22:03:06 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 29 Sep 2026 22:03:06 GMT
CMD ["rabbitmq-server"]
# Tue, 29 Sep 2026 22:07:03 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Tue, 29 Sep 2026 22:07:03 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-musl'; digest='8e87764f19e80339abd16f5617bcd9712ad7560b75e123d5e8b8d7922c11ab6e' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-musl'; digest='bde1b0b5e45b5bd9758b2597b3a1c1031b492d0ca0654000222725f400291cbd' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Tue, 29 Sep 2026 22:07:03 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:1f89eeb8219ece88ee6dd2e7cad6761d1e9da9e18f4b7929d9ee0052902df74a`  
		Last Modified: Thu, 17 Sep 2026 20:37:33 GMT  
		Size: 3.7 MB (3675111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12f4cd7010062c01f9d89f736db49e39db635a4baef599ee7787a859b68bddbf`  
		Last Modified: Tue, 29 Sep 2026 22:03:22 GMT  
		Size: 33.6 MB (33551682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d75a2744fe6114058fd2125748e712e3857594850cd9ad7fec4967531a63cc13`  
		Last Modified: Tue, 29 Sep 2026 22:03:22 GMT  
		Size: 9.2 MB (9226062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e9a1c24b392a3153e456959ea38a16b40b6ab2c46ef69b9ebe7950c4f9cc33f`  
		Last Modified: Tue, 29 Sep 2026 22:03:21 GMT  
		Size: 1.4 MB (1412605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:719840679dfccab04877a227f28e717401852b35a69a62dcec7e36549ea52786`  
		Last Modified: Tue, 29 Sep 2026 22:03:22 GMT  
		Size: 26.3 MB (26292671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50bdb444ddf157945a6b012e17f1e33aff9c866eb28e7b31470eb273d0a63770`  
		Last Modified: Tue, 29 Sep 2026 22:03:22 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dd5103e10db69ec4fc298b73d152bcb368e27a1f7fabfa095d90206bb66e4ec`  
		Last Modified: Tue, 29 Sep 2026 22:03:23 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b01d16d78929ca3a0b7b8b73cab378fe9770175a69a606b994e7fcc85ef5267`  
		Last Modified: Tue, 29 Sep 2026 22:03:23 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab21cad5ba5391b5916ed881d72c33c3d6cbf340fa12f266a9ae90cb145caa46`  
		Last Modified: Tue, 29 Sep 2026 22:03:24 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:883e0a48f83fc2a1360b46c47ca4db01fa8c0358ec50cd11f5c1c9c385c5bdea`  
		Last Modified: Tue, 29 Sep 2026 22:07:09 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:8603c821e467366ff9c66832b404a9d44795512e90ff9687e8544d6475c8fc33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **686.1 KB (686115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9f573e48f607dcbec9af76ca3e979e74577b1a9fdd2112abc3480eb116c928a`

```dockerfile
```

-	Layers:
	-	`sha256:78e9520de8637db4878ef418ef77a55f40a9b2962fd928fb473491e599843a01`  
		Last Modified: Tue, 29 Sep 2026 22:07:09 GMT  
		Size: 670.9 KB (670915 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0ef897f6620e43ec86a26fd5ce4eec6e4859e799c015af1147522abfb072b07`  
		Last Modified: Tue, 29 Sep 2026 22:07:08 GMT  
		Size: 15.2 KB (15200 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:36cdc86070f6de40076389279b25f64162b5c5af75398ff21c1451dae04a0fc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.8 MB (75815970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60f10da90068921ab6c28a942f5815683853b846946b9451212b4131ba30cd91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Tue, 29 Sep 2026 22:03:14 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 29 Sep 2026 22:03:14 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 29 Sep 2026 22:03:14 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 29 Sep 2026 22:03:14 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 29 Sep 2026 22:03:14 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 22:03:14 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 29 Sep 2026 22:03:19 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Tue, 29 Sep 2026 22:03:19 GMT
ENV RABBITMQ_VERSION=4.3.6
# Tue, 29 Sep 2026 22:03:19 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 29 Sep 2026 22:03:19 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 29 Sep 2026 22:03:19 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 22:03:30 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 29 Sep 2026 22:03:32 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 29 Sep 2026 22:03:32 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 29 Sep 2026 22:03:32 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 29 Sep 2026 22:03:32 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 29 Sep 2026 22:03:32 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 29 Sep 2026 22:03:32 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 29 Sep 2026 22:03:34 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 29 Sep 2026 22:03:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 29 Sep 2026 22:03:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Sep 2026 22:03:34 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 29 Sep 2026 22:03:34 GMT
CMD ["rabbitmq-server"]
# Tue, 29 Sep 2026 22:21:39 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Tue, 29 Sep 2026 22:21:42 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-musl'; digest='8e87764f19e80339abd16f5617bcd9712ad7560b75e123d5e8b8d7922c11ab6e' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-musl'; digest='bde1b0b5e45b5bd9758b2597b3a1c1031b492d0ca0654000222725f400291cbd' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Tue, 29 Sep 2026 22:21:42 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cd5e494c88ca4ffb37aa9f6b7c59965ca84239c89af0d2637bc2a6d22dbf9e3`  
		Last Modified: Tue, 29 Sep 2026 22:04:14 GMT  
		Size: 34.2 MB (34162905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a92170f424918721559fac3412a6fed17ba7e08fbdab1a061810108aa56679c7`  
		Last Modified: Tue, 29 Sep 2026 22:04:12 GMT  
		Size: 10.0 MB (9997352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdfe43dd3490b8e0b20031dbdea8c5d22f9c87bab1fb95bfb462d095103a544c`  
		Last Modified: Tue, 29 Sep 2026 22:04:12 GMT  
		Size: 1.5 MB (1546250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90c3127e085767c4d45373aee6de19e9ad3fc5a1ca8fd56a6fa596a24e7f4bd3`  
		Last Modified: Tue, 29 Sep 2026 22:04:13 GMT  
		Size: 26.3 MB (26292634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40c7c9e063c8362b68a1c1fd86b3db247dd318b58559abd019f533874d8480e3`  
		Last Modified: Tue, 29 Sep 2026 22:04:13 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3025e45b03f7c942df2c63531a833199d46e65216eb9b06b098a188a567695b`  
		Last Modified: Tue, 29 Sep 2026 22:03:47 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79dd5406661fa9790542a29fb080ca91cac673483b43206d8df020d9eb285d55`  
		Last Modified: Tue, 29 Sep 2026 22:04:14 GMT  
		Size: 621.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5130c0f6a9392ce33fc037f7baf72b662b7f42cd09595e1db530f2335131e36e`  
		Last Modified: Tue, 29 Sep 2026 22:04:15 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32fda201f3c1a903c7551c45cf08337c0b9d6f42473148ea8e57d8e86c520713`  
		Last Modified: Tue, 29 Sep 2026 22:22:04 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:cb36113494711f7c25668beb230183a2e0f58b37c083564fa076831a081a7ba7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **686.3 KB (686341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d560661bd9a2d0a3e05bae32daa820f3ddfe41035f7dddb11daecbbd45dd04c`

```dockerfile
```

-	Layers:
	-	`sha256:c33f00f3dc37180db1912b81bd69048f76da6792af686838a21b4d42d1c5a66a`  
		Last Modified: Tue, 29 Sep 2026 22:22:04 GMT  
		Size: 671.1 KB (671061 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:daae10425ccedaff873a0d7fe4295d53b8e8fb7f2444d9da26bfd4893f2233e4`  
		Last Modified: Tue, 29 Sep 2026 22:22:04 GMT  
		Size: 15.3 KB (15280 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management-alpine` - linux; riscv64

```console
$ docker pull rabbitmq@sha256:c53212c9b063ea7749d3bd4b94ed6ab199e0cab5ec7bf93862dfcc7062db97ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.7 MB (79740705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2fe48ec1c967b0ef2c2e14356285f0fb1be31f02eb8653f9b8a91f220451e4a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Fri, 02 Oct 2026 21:02:38 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Fri, 02 Oct 2026 21:02:38 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Fri, 02 Oct 2026 21:02:38 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Fri, 02 Oct 2026 21:02:39 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Fri, 02 Oct 2026 21:02:39 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 21:02:39 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Fri, 02 Oct 2026 21:02:51 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Fri, 02 Oct 2026 21:02:51 GMT
ENV RABBITMQ_VERSION=4.3.6
# Fri, 02 Oct 2026 21:02:51 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 02 Oct 2026 21:02:51 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 02 Oct 2026 21:02:51 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 21:03:33 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Fri, 02 Oct 2026 21:03:43 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Fri, 02 Oct 2026 21:03:43 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Fri, 02 Oct 2026 21:03:43 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 02 Oct 2026 21:03:43 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 02 Oct 2026 21:03:43 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Fri, 02 Oct 2026 21:03:43 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Fri, 02 Oct 2026 21:03:43 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Fri, 02 Oct 2026 21:03:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 21:03:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Oct 2026 21:03:43 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Fri, 02 Oct 2026 21:03:43 GMT
CMD ["rabbitmq-server"]
# Sun, 04 Oct 2026 15:50:18 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Sun, 04 Oct 2026 15:50:18 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-musl'; digest='8e87764f19e80339abd16f5617bcd9712ad7560b75e123d5e8b8d7922c11ab6e' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-musl'; digest='bde1b0b5e45b5bd9758b2597b3a1c1031b492d0ca0654000222725f400291cbd' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Sun, 04 Oct 2026 15:50:18 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:125f7ed2919501383cc2a463efb0a6d988a780211c71de97a05b674ca6bb8dde`  
		Last Modified: Fri, 18 Sep 2026 16:50:46 GMT  
		Size: 3.6 MB (3576321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bf09e73e0def8842d7f7fe4fc70b7b50f352c4fc0092c3af1d27e2021e320a4`  
		Last Modified: Fri, 02 Oct 2026 21:09:42 GMT  
		Size: 37.6 MB (37590493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca1692c2afae23639f747caa44db1d2c738b86123ff7b63e43ba76e3c2d9e938`  
		Last Modified: Fri, 02 Oct 2026 21:09:35 GMT  
		Size: 10.8 MB (10826141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:368c40f49afa089fd6dc01218ea1cd5350239fa05c831e10865292a346c508aa`  
		Last Modified: Fri, 02 Oct 2026 21:09:31 GMT  
		Size: 1.5 MB (1453679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:616ca12262c2e344291bbd78ad0d285004e83ef127c83f5f4e456e8d35f0d7af`  
		Last Modified: Fri, 02 Oct 2026 21:09:40 GMT  
		Size: 26.3 MB (26292011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15e3c45eecc45a78e0f182d5681f4271a4dcad863a425abe7efceba665a6280c`  
		Last Modified: Fri, 02 Oct 2026 21:09:33 GMT  
		Size: 192.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e01ca254fe6a118fe11c3ecd7affd193c375e601dc2889acccd8b7ab9afc551`  
		Last Modified: Fri, 02 Oct 2026 21:09:36 GMT  
		Size: 108.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9884175007aedc22012dc313f18c8c569a6fbfe9b869c2253071c2f94850b269`  
		Last Modified: Fri, 02 Oct 2026 21:09:37 GMT  
		Size: 620.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7cc18c03cd58133a5433adddf6d3e94c66d2ce3c529a6042b053c487a203c83`  
		Last Modified: Fri, 02 Oct 2026 21:09:38 GMT  
		Size: 832.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2e55553d4f06a257593fa0cc4aea48103429b27976b1838010a9f12d8a04bfd`  
		Last Modified: Sun, 04 Oct 2026 15:51:25 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:7249177f8c6c27f1b01e940cd275bfeb37e0932b3006029feafa8b7ecdcb63f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **689.3 KB (689313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:541358ac44ea43b402a1944abe4b0f8dcabe20848fa40743bcf44abc57600657`

```dockerfile
```

-	Layers:
	-	`sha256:4f7ab95129f03ad3fd346aebe90919059a021ef26f5aec8fc1c374d22ad67c67`  
		Last Modified: Sun, 04 Oct 2026 15:51:25 GMT  
		Size: 674.0 KB (674030 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e42055ef4fffff1f5d1e6dcf4121d57f871ed16b848cfb0cd7ba4ba5293a34a0`  
		Last Modified: Sun, 04 Oct 2026 15:51:24 GMT  
		Size: 15.3 KB (15283 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:4d477869f8650c6a0ec42ef5076574c7155205d1be87b1df37566d999d4090c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.9 MB (73921074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5aa4ba5b3278d29e4098b40d85c913bf6f172e980a9a1f93cb54fabc1f62014`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:23 GMT
ADD alpine-minirootfs-3.23.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:23 GMT
CMD ["/bin/sh"]
# Tue, 29 Sep 2026 22:03:21 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 29 Sep 2026 22:03:21 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 29 Sep 2026 22:03:21 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 29 Sep 2026 22:03:21 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 29 Sep 2026 22:03:21 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 22:03:21 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 29 Sep 2026 22:03:24 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Tue, 29 Sep 2026 22:03:24 GMT
ENV RABBITMQ_VERSION=4.3.6
# Tue, 29 Sep 2026 22:03:24 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 29 Sep 2026 22:03:24 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 29 Sep 2026 22:03:24 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 22:03:29 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 29 Sep 2026 22:03:29 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 29 Sep 2026 22:03:30 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 29 Sep 2026 22:03:30 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 29 Sep 2026 22:03:30 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 29 Sep 2026 22:03:30 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 29 Sep 2026 22:03:30 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 29 Sep 2026 22:03:30 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 29 Sep 2026 22:03:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 29 Sep 2026 22:03:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Sep 2026 22:03:30 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 29 Sep 2026 22:03:30 GMT
CMD ["rabbitmq-server"]
# Tue, 29 Sep 2026 22:08:58 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Tue, 29 Sep 2026 22:08:58 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-musl'; digest='8e87764f19e80339abd16f5617bcd9712ad7560b75e123d5e8b8d7922c11ab6e' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-musl'; digest='bde1b0b5e45b5bd9758b2597b3a1c1031b492d0ca0654000222725f400291cbd' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Tue, 29 Sep 2026 22:08:58 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:4387077d70188f8428b97ed5df25698ad5aa9b8967d00a98ebb627a3e08ae986`  
		Last Modified: Thu, 17 Sep 2026 21:38:32 GMT  
		Size: 3.7 MB (3713255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce62e72163f5e9b24d0aea7e1b8cd40d736e2a6796fc6be02042e33d065346cd`  
		Last Modified: Tue, 29 Sep 2026 22:03:51 GMT  
		Size: 34.0 MB (34023567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c1b8cb8066f49ab4271b617b6defc0534f6673e250e2423b964327b6e613966`  
		Last Modified: Tue, 29 Sep 2026 22:03:50 GMT  
		Size: 8.4 MB (8370606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b83397084a3730ed915af1f86a97aa116baf7a16a5598f5df19c046f6fc20efc`  
		Last Modified: Tue, 29 Sep 2026 22:03:50 GMT  
		Size: 1.5 MB (1519037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef32b7845fb29921caf0eeb6f54467e2a564f0d13183c0cda6717fd8916e3d1b`  
		Last Modified: Tue, 29 Sep 2026 22:03:51 GMT  
		Size: 26.3 MB (26292556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff7e8ca8151d7464c99f1fdc7803e73082d719c482d3d53017981b77b2a7ccc2`  
		Last Modified: Tue, 29 Sep 2026 22:03:51 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b62bc0bf1b493315723f564a53b7e9020a448acf1041bd4b97c8a20328e313f3`  
		Last Modified: Tue, 29 Sep 2026 22:03:48 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:535921260aed1582ef3342a86584c61cec31b06d530fcc612a7e7d346812be2c`  
		Last Modified: Tue, 29 Sep 2026 22:03:52 GMT  
		Size: 620.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23441b89a02645e0db388a6cd4e2b93fef03384d039ecf94889c3e90b51c1756`  
		Last Modified: Tue, 29 Sep 2026 22:03:52 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e8b078d71b96ac6091e0829754480384b98145e189a0785717713d76b1896c4`  
		Last Modified: Tue, 29 Sep 2026 22:09:07 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:ce8d4931cef85ecaf7762d137bfc2236522315614478d55830709236b07180c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **686.3 KB (686261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bbe87292acca8917cc31433124fae2ad8c8a710f4b8c47ee0b064a602dda666`

```dockerfile
```

-	Layers:
	-	`sha256:afb2bcd987f5daaaa06a655b73babf961c74b3658baf467f5e9de959403cd57c`  
		Last Modified: Tue, 29 Sep 2026 22:09:07 GMT  
		Size: 671.0 KB (671027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:575e5f588a76ef663fa5f5af95328de564854502041661fb35a64423c033597b`  
		Last Modified: Tue, 29 Sep 2026 22:09:07 GMT  
		Size: 15.2 KB (15234 bytes)  
		MIME: application/vnd.in-toto+json
