## `rabbitmq:alpine`

```console
$ docker pull rabbitmq@sha256:d07d6a0657affe0354ae61b3ca1a3e4d244c247ac5d7e25940c8759658ce7ad7
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

### `rabbitmq:alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:71f819e26558e523dfd26f59c207ad4f0386f274207f247a696802cbf26fc20d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.4 MB (84401882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ce835682a59de531394c58f0416fe77c72478790517350c9e1754758c5b1ab0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 18 Aug 2026 17:05:58 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 18 Aug 2026 17:05:58 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 18 Aug 2026 17:05:58 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 18 Aug 2026 17:05:58 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 18 Aug 2026 17:05:58 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 17:05:58 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 18 Aug 2026 17:06:00 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Tue, 18 Aug 2026 17:06:00 GMT
ENV RABBITMQ_VERSION=4.3.5
# Tue, 18 Aug 2026 17:06:00 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 18 Aug 2026 17:06:00 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 18 Aug 2026 17:06:00 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 17:06:06 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 18 Aug 2026 17:06:07 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 18 Aug 2026 17:06:07 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 18 Aug 2026 17:06:07 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 18 Aug 2026 17:06:07 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 18 Aug 2026 17:06:07 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 17:06:07 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 18 Aug 2026 17:06:07 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 18 Aug 2026 17:06:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 17:06:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Aug 2026 17:06:07 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 18 Aug 2026 17:06:07 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae0e90396db31544c8791c00079f6adbc3a59829d405803be208e56d1ce393e2`  
		Last Modified: Tue, 18 Aug 2026 17:06:23 GMT  
		Size: 42.7 MB (42664204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc97a3e2899a79bc6b05f7dd9f6369a1453ecd195bb1f00d3ca9fed5f8c6efc2`  
		Last Modified: Tue, 18 Aug 2026 17:06:22 GMT  
		Size: 9.2 MB (9206005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14fe65eb8f9adfbd953f73771e447679e79105c9ece7572ed498425c622c03b8`  
		Last Modified: Tue, 18 Aug 2026 17:06:22 GMT  
		Size: 2.5 MB (2464538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9f31c9b312e751d235d2ed0369668ff8f0f3109a3755ec3a9d4c71df6772fe2`  
		Last Modified: Tue, 18 Aug 2026 17:06:23 GMT  
		Size: 26.2 MB (26220976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fec72f93cd91274b65662ccc6843a97ed6126d2e937ab085c1fa2cb48d309463`  
		Last Modified: Tue, 18 Aug 2026 17:06:23 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a034725730a6d83f997cb4ad90902a2591ea3f77112c9afdd663c7d7a0b3e10b`  
		Last Modified: Tue, 18 Aug 2026 17:06:24 GMT  
		Size: 107.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03901807c8be15ff21f09297a542099e46eac0c737d5fc586bec10c263cda80c`  
		Last Modified: Tue, 18 Aug 2026 17:06:24 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d18b51739a161dd4530f71948a998da476f2797f07c299d86e880a92416c417`  
		Last Modified: Tue, 18 Aug 2026 17:06:24 GMT  
		Size: 825.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:38921ae783ae7dded5ec522121e5f2414773bf34550210d254adef4ee55e2bf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6963453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c78943c36815792a50a47212a07126725015ae90b737811672f068d20414750`

```dockerfile
```

-	Layers:
	-	`sha256:6c28d6d2d1935f48633e451c03493d83bddb715617ce3a195a0c4c284c53bd39`  
		Last Modified: Tue, 18 Aug 2026 17:06:22 GMT  
		Size: 675.8 KB (675826 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7b034470f11a00c565e03b9944e7438048b873a435ca53e38a7185c641a1678`  
		Last Modified: Tue, 18 Aug 2026 17:06:21 GMT  
		Size: 3.2 MB (3190535 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dbf76bf0eb320c3d38ecaafa08ce2b922e72b175bdc48c3965de51845bed4c99`  
		Last Modified: Tue, 18 Aug 2026 17:06:22 GMT  
		Size: 3.0 MB (3036779 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33349cf3ed76ffcbb24ec9e4a94a8df706f104af46fd0f07335a8126610fcf37`  
		Last Modified: Tue, 18 Aug 2026 17:06:21 GMT  
		Size: 60.3 KB (60313 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:55456e47ab51cc5c5397f7d75618663c0aa5458c55e8e53e55b798f4bd702681
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.6 MB (72586256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4b4f6007ae51c3c1e94f97c8db846ab5d4d7750055910cbd8619e8636a8cd7e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Tue, 18 Aug 2026 17:02:36 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 18 Aug 2026 17:02:36 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 18 Aug 2026 17:02:36 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 18 Aug 2026 17:02:36 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 18 Aug 2026 17:02:36 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 17:02:36 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 18 Aug 2026 17:02:39 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Tue, 18 Aug 2026 17:02:39 GMT
ENV RABBITMQ_VERSION=4.3.5
# Tue, 18 Aug 2026 17:02:39 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 18 Aug 2026 17:02:39 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 18 Aug 2026 17:02:39 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 17:02:48 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 18 Aug 2026 17:02:50 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 18 Aug 2026 17:02:50 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 18 Aug 2026 17:02:50 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 18 Aug 2026 17:02:50 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 18 Aug 2026 17:02:50 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 17:02:50 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 18 Aug 2026 17:02:50 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 18 Aug 2026 17:02:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 17:02:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Aug 2026 17:02:50 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 18 Aug 2026 17:02:50 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28993e15fd8c74efa018c4b8f58ac696c540b796803974e87cac96a770eeb404`  
		Last Modified: Tue, 18 Aug 2026 17:02:57 GMT  
		Size: 33.5 MB (33544912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59dad606be92671f1b0bbdd4d64226e502a2b72756e2f84d867866db7b8dc2e1`  
		Last Modified: Tue, 18 Aug 2026 17:02:56 GMT  
		Size: 7.9 MB (7862477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc56ddae14daa4719fa94cdbd1f10e66e88273e233b5c60529f9153daa741ec1`  
		Last Modified: Tue, 18 Aug 2026 17:02:56 GMT  
		Size: 1.4 MB (1403526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bb807f2b6c56af2ab371d1de1345a5f1dbe8736046a3aa322fae40ba45581b3`  
		Last Modified: Tue, 18 Aug 2026 17:02:57 GMT  
		Size: 26.2 MB (26221000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c35281953f5e62634bc2d2c55d5987555a9a05907ee6ec8c6b5d79f416899769`  
		Last Modified: Tue, 18 Aug 2026 17:02:57 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f06e80cc9aa44407e90753f1dd190b6e97f536938b02ae5e0430e2f0332ecc`  
		Last Modified: Tue, 18 Aug 2026 17:02:58 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82f2282f91c5bfc8c5c40c1fb13ee99f5f50991a7c16273a8667293608e66a8d`  
		Last Modified: Tue, 18 Aug 2026 17:02:59 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e79270c2f58a2445e1d001cfc0fb3de64e2f10df449a96bd1fc370aa4a2e33ae`  
		Last Modified: Tue, 18 Aug 2026 17:02:59 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:e4babdeb6dd5a1f099cae3f7a65c88c427c2dd3fb2f2b12cf096722c406de2a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.3 KB (60295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eef7e1b0bd6f61c48575a3230a32a1e4ecd3e8b8e0deb93246189f10d84411e9`

```dockerfile
```

-	Layers:
	-	`sha256:9e6ade8ddfaa2ff6aab95a5d74a48e07abb09c79c68eb8cb7b1b4c0f86d94de9`  
		Last Modified: Tue, 18 Aug 2026 17:02:56 GMT  
		Size: 60.3 KB (60295 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:alpine` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:73e8c8dedc9290978cf79a3b0fab8d3f31e742c038a4b28137dd0b104da3e3da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.7 MB (71674089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cf0f8328f7c84f885d03636156d5ca7b023f75c62c8f1d4bf6a8283c75499db`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Tue, 18 Aug 2026 17:05:59 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 18 Aug 2026 17:05:59 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 18 Aug 2026 17:05:59 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 18 Aug 2026 17:05:59 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 18 Aug 2026 17:05:59 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 17:05:59 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 18 Aug 2026 17:06:01 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Tue, 18 Aug 2026 17:06:01 GMT
ENV RABBITMQ_VERSION=4.3.5
# Tue, 18 Aug 2026 17:06:01 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 18 Aug 2026 17:06:01 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 18 Aug 2026 17:06:01 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 17:06:08 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 18 Aug 2026 17:06:09 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 18 Aug 2026 17:06:09 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 18 Aug 2026 17:06:09 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 18 Aug 2026 17:06:09 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 18 Aug 2026 17:06:09 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 17:06:09 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 18 Aug 2026 17:06:09 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 18 Aug 2026 17:06:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 17:06:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Aug 2026 17:06:09 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 18 Aug 2026 17:06:09 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3baf0b3b0f06dd6d7933a582abe3fb246ca10c5b2a58a5b2d610ac61770db78`  
		Last Modified: Tue, 18 Aug 2026 17:06:25 GMT  
		Size: 33.5 MB (33451739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3129ada68c997295370668bc2630c95cc37dffeb2e995a1df6fd4f64864804af`  
		Last Modified: Tue, 18 Aug 2026 17:06:24 GMT  
		Size: 7.4 MB (7442938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea7630c8653e507ec85c92b3f4f9b58d54f20f1375cb1bb3e45e92c91c8df636`  
		Last Modified: Tue, 18 Aug 2026 17:06:24 GMT  
		Size: 1.3 MB (1294856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5dc3f5bef047ca767b9d55bb1ea230c0805a444702e554b9dae6b0a1c0c726c`  
		Last Modified: Tue, 18 Aug 2026 17:06:25 GMT  
		Size: 26.2 MB (26220959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c475c20cd70026dcaad1982781cdeeb43695e7eef155c76b8452f3de747deb03`  
		Last Modified: Tue, 18 Aug 2026 17:06:25 GMT  
		Size: 192.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae147705bfc506db90dc8c058f5559d6c38a3fcef5a6d5e37b93650c07897e0`  
		Last Modified: Tue, 18 Aug 2026 17:06:25 GMT  
		Size: 108.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0e77c1013c6872a33e465c098c285e8fc6dae69740b87d66f82e642d776561c`  
		Last Modified: Tue, 18 Aug 2026 17:06:26 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f7fa9ebae6d31d75cb8771ed4a8e603e3d0439b19c1d37ce8004ec28c9a8af8`  
		Last Modified: Tue, 18 Aug 2026 17:06:26 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:8ad776507f7b2e9246820c54cd520c8a4121a7e2f2086448d4c868579bc619fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6690448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6820ea56cc6b2573358d509b1c3833f5a6064c160dbbfd7aa404ef97e7e6803`

```dockerfile
```

-	Layers:
	-	`sha256:e42ffd67d505c72a2555a7cce517000554918b8e64c5dd70a93e2bd35a38b046`  
		Last Modified: Tue, 18 Aug 2026 17:06:23 GMT  
		Size: 671.0 KB (670970 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c735cfb829b8ef36ba11b625f5c6ba9060e99b11d87c2899cbbaf94f5b1f0c83`  
		Last Modified: Tue, 18 Aug 2026 17:06:24 GMT  
		Size: 3.1 MB (3057028 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2593720205000feb940d793255af33a71e9d38e21fdfdc21b491a54f9f79d2f5`  
		Last Modified: Tue, 18 Aug 2026 17:06:24 GMT  
		Size: 2.9 MB (2901941 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c490cb29fc888192009978311a343383f42c2767e4cfe77f7c4b781b69415fbc`  
		Last Modified: Tue, 18 Aug 2026 17:06:23 GMT  
		Size: 60.5 KB (60509 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:832e2fca67dbc902c40f3921c61c849ee7ce15dff62d946c632db24c46126853
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.4 MB (83433221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:282a36f51e297f495707c0e9ec8740864fb69129eaf792c5e10f64c8e9c8920a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 18 Aug 2026 17:06:47 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 18 Aug 2026 17:06:47 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 18 Aug 2026 17:06:47 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 18 Aug 2026 17:06:47 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 18 Aug 2026 17:06:47 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 17:06:47 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 18 Aug 2026 17:06:50 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Tue, 18 Aug 2026 17:06:50 GMT
ENV RABBITMQ_VERSION=4.3.5
# Tue, 18 Aug 2026 17:06:50 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 18 Aug 2026 17:06:50 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 18 Aug 2026 17:06:50 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 17:06:58 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 18 Aug 2026 17:06:59 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 18 Aug 2026 17:06:59 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 18 Aug 2026 17:06:59 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 18 Aug 2026 17:06:59 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 18 Aug 2026 17:06:59 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 17:06:59 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 18 Aug 2026 17:06:59 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 18 Aug 2026 17:06:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 17:06:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Aug 2026 17:06:59 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 18 Aug 2026 17:06:59 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5861f27663e489361fecb12b561cfb8681c4991e08bb6e9ca025d5f42c854bc`  
		Last Modified: Tue, 18 Aug 2026 17:07:17 GMT  
		Size: 40.5 MB (40522943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:410f1ec71568a2ee12dd1c7348dbef4c409ab81a046b04abac1669615303ee21`  
		Last Modified: Tue, 18 Aug 2026 17:07:15 GMT  
		Size: 10.0 MB (9992262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb77db7df758a58fb6e131d402116a11e04bf46c4f8de8c5a77be3fba8faff85`  
		Last Modified: Tue, 18 Aug 2026 17:07:15 GMT  
		Size: 2.5 MB (2513430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7983c00aca71a0b90c2ccf6419183669a04a39f4e394340936b04979302e0b3b`  
		Last Modified: Tue, 18 Aug 2026 17:07:16 GMT  
		Size: 26.2 MB (26220976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f5ee86d385cd34b59808d987ed5e28762ac4a8c9d965901b255bc019c36a1c4`  
		Last Modified: Tue, 18 Aug 2026 17:07:16 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d4c4f881f4ae58963f82771340b4ed74f3a5bebc203fd8e8a5faf66bea4bf7b`  
		Last Modified: Tue, 18 Aug 2026 17:07:17 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76f6cb0e25b1a1d47bc9cc284db76edd8711325974b0b0643c8d11110350949f`  
		Last Modified: Tue, 18 Aug 2026 17:07:18 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1414e5a0a34150a07b7f6717ca4398746ea1b5126cf296575c98f0c1822686`  
		Last Modified: Tue, 18 Aug 2026 17:07:18 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:5747bc688df068c7f7cb029f5750b5390752934bc43d91356941356d45f002dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7036433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ede68d9ed7d7c3813d6f766e818e7a759ab8d57768dadeaa30ede563e663fd1e`

```dockerfile
```

-	Layers:
	-	`sha256:d660d0af44c1a51e20dceeeb43492d2c89a204f54e2df137b95c519d2cc9ceaf`  
		Last Modified: Tue, 18 Aug 2026 17:07:15 GMT  
		Size: 676.0 KB (675970 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b14281e1be23f47ac3e9ab00b9f8fda17fad1f20eeffcf42f5e5d2353825fcbe`  
		Last Modified: Tue, 18 Aug 2026 17:07:15 GMT  
		Size: 3.2 MB (3227496 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63bb1900a391ecb84c4f3f2f369bf01ce3cb9795a0e61658519e28c59d0c2f6d`  
		Last Modified: Tue, 18 Aug 2026 17:07:15 GMT  
		Size: 3.1 MB (3072415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ecd4d97ac144cbfa211ee06b23d2728393af078d853ef23fd97ae5c68695d45`  
		Last Modified: Tue, 18 Aug 2026 17:07:15 GMT  
		Size: 60.6 KB (60552 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:4e3e43ef28d3d385e44dd99b7b56de589f8a7e4c4231c9597882bfdf0aff6708
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.0 MB (73999913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e6ab97f197cadbdbc6b34b00b26f80d63705bfabd7e8f43498a408561a42e5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Tue, 18 Aug 2026 16:59:42 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 18 Aug 2026 16:59:42 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 18 Aug 2026 16:59:42 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 18 Aug 2026 16:59:42 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 18 Aug 2026 16:59:42 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 16:59:42 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 18 Aug 2026 16:59:45 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Tue, 18 Aug 2026 16:59:45 GMT
ENV RABBITMQ_VERSION=4.3.5
# Tue, 18 Aug 2026 16:59:45 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 18 Aug 2026 16:59:45 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 18 Aug 2026 16:59:45 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 16:59:51 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 18 Aug 2026 16:59:52 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 18 Aug 2026 16:59:52 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 18 Aug 2026 16:59:52 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 18 Aug 2026 16:59:52 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 18 Aug 2026 16:59:52 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 16:59:52 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 18 Aug 2026 16:59:52 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 18 Aug 2026 16:59:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 16:59:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Aug 2026 16:59:52 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 18 Aug 2026 16:59:52 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16be0411dcec94c871807a138d37d219f13e08e142335a4e41d3e5035b582fe0`  
		Last Modified: Tue, 18 Aug 2026 17:00:09 GMT  
		Size: 33.5 MB (33505100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:244c2d4069f097259ee711ed991060ff01eac6ba31ea6fc08d180453e71fdabe`  
		Last Modified: Tue, 18 Aug 2026 17:00:09 GMT  
		Size: 9.2 MB (9196076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75011247998de62526dda5a7437cb34ce61a73c113b42127271a523574c29982`  
		Last Modified: Tue, 18 Aug 2026 17:00:07 GMT  
		Size: 1.4 MB (1408099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f01564eb2258e2c6b93b83f367732ef331273330df80aa0ad717d4ee89da06c7`  
		Last Modified: Tue, 18 Aug 2026 17:00:09 GMT  
		Size: 26.2 MB (26220903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d852de2522690a9ca2b00cc091c5e36f559b97f09bea9b0fc8632b9f5787d61c`  
		Last Modified: Tue, 18 Aug 2026 17:00:09 GMT  
		Size: 192.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7461db14ca3d94b8c575e0886dea5034ab8c53eed647b51e48d4039f91ae8e1e`  
		Last Modified: Tue, 18 Aug 2026 17:00:10 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9b4b65322f72a9227051c90b05f58c6465d19de957c5d58dd01c988a4088f27`  
		Last Modified: Tue, 18 Aug 2026 17:00:11 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a48b5e998e4619e92a851da8a4261103a7c02869cb09dd13bde04e4eea7bef94`  
		Last Modified: Tue, 18 Aug 2026 17:00:11 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:c1e606812fcbc82a953628106a329654fd5fa50572e48aba721bc434abc1ae47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6914908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7729102f26e9a29b22de726f2bba8696a994e646a80853339aeae6644aab740`

```dockerfile
```

-	Layers:
	-	`sha256:9ad478d9b9999e4af4761270dea49ff0ae39112ec40ce436e73cc1dfdf16c28e`  
		Last Modified: Tue, 18 Aug 2026 17:00:08 GMT  
		Size: 670.8 KB (670821 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca9f7bc397fad67f1b1a5656d276bd9aac60da82db5f5a118958a4dddde508fa`  
		Last Modified: Tue, 18 Aug 2026 17:00:09 GMT  
		Size: 3.2 MB (3168788 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ee099c80a30d58018ebb18788083274185085bd47dbcbebd7412494529c8466`  
		Last Modified: Tue, 18 Aug 2026 17:00:10 GMT  
		Size: 3.0 MB (3015036 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa212c2753d17d3b63dd0b9afa638e68fab42c5d5d239a28583d21e3fa010a3c`  
		Last Modified: Tue, 18 Aug 2026 17:00:08 GMT  
		Size: 60.3 KB (60263 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:474cdf3ae67156c652920a38ab3b5956d8488f28322500e1cd596f31c1024138
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.7 MB (75662409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec8a030deebbfde411a07df04384ac4b0e10c143d909091abe0a53e6fcaacc70`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 19:32:59 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Wed, 19 Aug 2026 19:32:59 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Wed, 19 Aug 2026 19:32:59 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Wed, 19 Aug 2026 19:33:00 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Wed, 19 Aug 2026 19:33:00 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 19:33:00 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Wed, 19 Aug 2026 19:33:04 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Wed, 19 Aug 2026 19:33:04 GMT
ENV RABBITMQ_VERSION=4.3.5
# Wed, 19 Aug 2026 19:33:04 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 19 Aug 2026 19:33:04 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 19 Aug 2026 19:33:04 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 19:33:14 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Wed, 19 Aug 2026 19:33:17 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Wed, 19 Aug 2026 19:33:17 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Wed, 19 Aug 2026 19:33:17 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 19 Aug 2026 19:33:17 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 19 Aug 2026 19:33:17 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 19 Aug 2026 19:33:17 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Wed, 19 Aug 2026 19:33:18 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Wed, 19 Aug 2026 19:33:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 19 Aug 2026 19:33:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Aug 2026 19:33:18 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Wed, 19 Aug 2026 19:33:18 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a482610d831c1358d87f09fea45799a622e3301d20a4505738f682d1721918`  
		Last Modified: Wed, 19 Aug 2026 19:33:50 GMT  
		Size: 34.1 MB (34118970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cebb868d989bedf2a0fc1e6844027e709a5d5b66e43a93295004896c3680fd48`  
		Last Modified: Wed, 19 Aug 2026 19:33:49 GMT  
		Size: 10.0 MB (9966935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e47962ba30d66d8fd341a05344a08047e6c3d218625abde341c4c223e15418df`  
		Last Modified: Wed, 19 Aug 2026 19:33:48 GMT  
		Size: 1.5 MB (1541535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca6e02829954e3da00502abafca2012568e61381ca8ff970508cd74c5aebdd4e`  
		Last Modified: Wed, 19 Aug 2026 19:33:50 GMT  
		Size: 26.2 MB (26220915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa4027e92f0d8443bf966bc1e75d977c622304d6078811f731238277d2df9b66`  
		Last Modified: Wed, 19 Aug 2026 19:33:50 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cde7c7d392696f366740151572d85edc23b0693cae1205ccd720018fd48c4a16`  
		Last Modified: Wed, 19 Aug 2026 19:33:50 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be9c87830ffa6fc298d83ab5bb155840b34ef351d243d6de764fff14f9cb0386`  
		Last Modified: Wed, 19 Aug 2026 19:33:51 GMT  
		Size: 624.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9854e547166dbc637a34cbfec75f417740d613755856dfac433d02bf535259a5`  
		Last Modified: Wed, 19 Aug 2026 19:33:51 GMT  
		Size: 831.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:66af40010efac2ae5dc49fc669307dc5b10232ab3f5929cffd22e7132a426dec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6938111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10a865e5e4addf2ec33fc94580da3b6c5accce184f5d83a66aed8bc97eece15c`

```dockerfile
```

-	Layers:
	-	`sha256:13b9160e5613aed615e836c175522f2a5e428787db71772d6b0f60816363941d`  
		Last Modified: Wed, 19 Aug 2026 19:33:49 GMT  
		Size: 671.0 KB (670967 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be5707c2d9d2a19a3a0cbd46db5759a4af7455962f254ce4502f07feac11b3ff`  
		Last Modified: Wed, 19 Aug 2026 19:33:49 GMT  
		Size: 3.2 MB (3180931 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f58e92dfa21ea6fff5ec347aad7f70aae5aa6169b71ffb092b166c42a0ac2dc`  
		Last Modified: Wed, 19 Aug 2026 19:33:49 GMT  
		Size: 3.0 MB (3025838 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7fbc52df1f04908cde2bdbce22f007acfd53989219bb12bcf0c0125778982491`  
		Last Modified: Wed, 19 Aug 2026 19:33:48 GMT  
		Size: 60.4 KB (60375 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:alpine` - linux; riscv64

```console
$ docker pull rabbitmq@sha256:15060c388bb99ee0bd64db6a35973d1e2b40dd3f404eae769d965dad0d6455d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79585619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d289a4e870a37c2412cc9dd5985133fd2922c6d2b9f01015a474f2aac93bb14`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Wed, 05 Aug 2026 03:30:37 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Wed, 05 Aug 2026 03:30:37 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Wed, 05 Aug 2026 03:30:37 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Wed, 05 Aug 2026 03:30:38 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Wed, 05 Aug 2026 03:30:38 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:30:38 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Wed, 05 Aug 2026 03:30:50 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Wed, 05 Aug 2026 03:30:50 GMT
ENV RABBITMQ_VERSION=4.3.5
# Wed, 05 Aug 2026 03:30:50 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 05 Aug 2026 03:30:50 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 05 Aug 2026 03:30:50 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 22:42:08 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 18 Aug 2026 22:42:18 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 18 Aug 2026 22:42:19 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 18 Aug 2026 22:42:19 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 18 Aug 2026 22:42:19 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 18 Aug 2026 22:42:19 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 22:42:19 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 18 Aug 2026 22:42:19 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 18 Aug 2026 22:42:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 22:42:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Aug 2026 22:42:19 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 18 Aug 2026 22:42:19 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d30614c00228e28d485b4df12d37746488de8a3b7d5f0d2e1e2f666b4eaeafa`  
		Last Modified: Wed, 05 Aug 2026 03:37:40 GMT  
		Size: 37.5 MB (37544531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:719874c421014ac600b847b4c96459ab1094d358518e0f5335694dbaa5b9df92`  
		Last Modified: Wed, 05 Aug 2026 03:37:33 GMT  
		Size: 10.8 MB (10796140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0344566dfc56ff735e9ef62ca1cb9533463bd66b56842f1c3c54409c58c5b7a`  
		Last Modified: Wed, 05 Aug 2026 03:37:29 GMT  
		Size: 1.4 MB (1448955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97e60d3bc71f28cb7573688c4b09de32efc0aba6ed2dca7af597f8c923c62810`  
		Last Modified: Wed, 19 Aug 2026 00:03:03 GMT  
		Size: 26.2 MB (26220998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45cc785c9fc9471f966d0a4acd7f28ed568b6b9069515e453b042f87dc60daae`  
		Last Modified: Wed, 19 Aug 2026 00:02:58 GMT  
		Size: 192.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43c38e60eda0843186baa05bf0a76b40c013ec724d079128dafcbddf5f22acb5`  
		Last Modified: Wed, 19 Aug 2026 00:02:59 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c439677def6724dff646453321c915b5fa5bd0a2ab764d8b29ee0078ec711746`  
		Last Modified: Wed, 19 Aug 2026 00:02:58 GMT  
		Size: 625.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7f4f7e23adcbc96df96582a45bc28f0f86ab0f022f8de49f4efe59220d34fd`  
		Last Modified: Wed, 19 Aug 2026 00:03:00 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:ed4eb9a5f03a1b987643a9dd09ebf03d6f9856ae134a75ceba84d580fd4a9251
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7017329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d2e076c7c4e10561275e0ea682c920f61ff495a0b5cd2dcf3c5a47338328778`

```dockerfile
```

-	Layers:
	-	`sha256:97cefcf619b496581b5e203cb9b01531408e4014fbcb3351835a1c2b04b1f8e1`  
		Last Modified: Wed, 19 Aug 2026 00:02:59 GMT  
		Size: 673.9 KB (673936 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b99c00331bb8c4b2d3eaf49022680bfe488cda26595ddbd07ba6c3e8c164351`  
		Last Modified: Wed, 19 Aug 2026 00:03:00 GMT  
		Size: 3.2 MB (3219046 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b410e5c135494d4236aff03f1d9470990cee4e11954eec34783a7e1993cb654`  
		Last Modified: Wed, 19 Aug 2026 00:03:00 GMT  
		Size: 3.1 MB (3063965 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47b1e3999845e5832612699dc1f6880567350bb87539364c3770004a0d01de06`  
		Last Modified: Wed, 19 Aug 2026 00:02:58 GMT  
		Size: 60.4 KB (60382 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:1ce606da3de258623e3567bf11381ae6a4604b1602e2ae20d91a49344a91200f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.8 MB (73759445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9ee21b5fb3eae99e42ff76b8c625009968719f97a2be6783fd85b37d5729070`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Tue, 04 Aug 2026 22:07:14 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 04 Aug 2026 22:07:14 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 04 Aug 2026 22:07:14 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 04 Aug 2026 22:07:18 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 04 Aug 2026 22:07:18 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 22:07:18 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 04 Aug 2026 22:07:30 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Tue, 04 Aug 2026 22:07:30 GMT
ENV RABBITMQ_VERSION=4.3.5
# Tue, 04 Aug 2026 22:07:30 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 04 Aug 2026 22:07:30 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 04 Aug 2026 22:07:30 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 17:20:23 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 18 Aug 2026 17:20:31 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 18 Aug 2026 17:20:32 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 18 Aug 2026 17:20:32 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 18 Aug 2026 17:20:32 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 18 Aug 2026 17:20:32 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 17:20:32 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 18 Aug 2026 17:20:34 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 18 Aug 2026 17:20:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 17:20:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Aug 2026 17:20:35 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 18 Aug 2026 17:20:35 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:878dc8a4995a4bc99d032f58191816e281736e3384c47f45fd4b7c863eebe8fe`  
		Last Modified: Tue, 04 Aug 2026 22:09:52 GMT  
		Size: 34.0 MB (33964352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e210bd34b653cd4f995a6048439b6d75c9d27987026cc54f7d4b41fe36c68a`  
		Last Modified: Tue, 04 Aug 2026 22:09:49 GMT  
		Size: 8.4 MB (8350143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f45a0efd40eeb9bc6dde0335e638225e56fda576467f64498e3e152ecc73e17`  
		Last Modified: Tue, 04 Aug 2026 22:09:48 GMT  
		Size: 1.5 MB (1514957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2156df304321bc82b5c0ef8bfe8ef6258f5b7deef5cabed4beebbe389510d198`  
		Last Modified: Tue, 18 Aug 2026 17:28:06 GMT  
		Size: 26.2 MB (26220990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9436dcf31461f821875a4779f320096d944fea85b6ad2ad36c6f7627cc246b1`  
		Last Modified: Tue, 18 Aug 2026 17:28:04 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2104e04ec47c9a1d7e04375b2bccb30ccf11ac2f136e77f0d026dad109e14a38`  
		Last Modified: Tue, 18 Aug 2026 17:28:04 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e576d2e4a21cabae3137975d77f9bfdc896f500a5a96a9546c08c2bfd641267c`  
		Last Modified: Tue, 18 Aug 2026 17:28:05 GMT  
		Size: 625.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c4d02f0e33b3e92ce7d95c1a4b2f38d22b4d88463fb174d6d5916290140c73d`  
		Last Modified: Tue, 18 Aug 2026 17:28:06 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:b6c58977284edd99d4b8b19090120f3aaf0d5655d775a82e521511f09269f578
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6714493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bd9121aeb4e85fe308f47082efa68c5045d631f88b9ec5a0b62f2b0703235ca`

```dockerfile
```

-	Layers:
	-	`sha256:b3d19ae6d8fc690189bd352c999b12fcb471d5e44e8b4ff9c82dd47f892d3741`  
		Last Modified: Tue, 18 Aug 2026 17:28:04 GMT  
		Size: 670.9 KB (670933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65a740649ccc35b552f4e6769d2a910c81280ed17d84e755c0868051275facf4`  
		Last Modified: Tue, 18 Aug 2026 17:28:05 GMT  
		Size: 3.1 MB (3069155 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a113b5fb35fb47c52d70aefedeccd1b5711d39c1e61910ad05c6a004e7fd89b5`  
		Last Modified: Tue, 18 Aug 2026 17:28:05 GMT  
		Size: 2.9 MB (2914092 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:547bdd3758873d04676b4d6bc67cacacd050a9ad69ea2057d6493723b219d3f2`  
		Last Modified: Tue, 18 Aug 2026 17:28:04 GMT  
		Size: 60.3 KB (60313 bytes)  
		MIME: application/vnd.in-toto+json
