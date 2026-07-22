## `rabbitmq:4-alpine`

```console
$ docker pull rabbitmq@sha256:c0331b994befdadcdb35a6fff2163052e58dbd1a38c80819065df5c8114f5020
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
$ docker pull rabbitmq@sha256:d177028986b08b01c99c37b9e1dee2dad31a714e4f8821ea74b156d6be6fb3d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.3 MB (84278063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abf57847612b4576d00e48b3ed1fcd808d432fd6c119999c73e49385338a0caf`
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

### `rabbitmq:4-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:8064fde46d3225af4c6ada6dff3201cffb6c6fffb6d5637258f96bf6d2bc0281
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6963450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6722b1f76984eea38818142ee6fb7a92d437289660460d2be18505dd878a0d72`

```dockerfile
```

-	Layers:
	-	`sha256:d05a3376a3751a3e0d404d530b5086b3811b86cff9f42e632e0b957ae18ec2fe`  
		Last Modified: Mon, 20 Jul 2026 22:37:50 GMT  
		Size: 675.8 KB (675823 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f4a07f92489afe757e9a63ce46e4a69415f227abb7880c2030322f92f63d38c`  
		Last Modified: Mon, 20 Jul 2026 22:37:50 GMT  
		Size: 3.2 MB (3190535 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6dfc5467b57a3e86ba358212c749cbaff98727fdb530f1113c3ea7e82d2a5ac3`  
		Last Modified: Mon, 20 Jul 2026 22:37:50 GMT  
		Size: 3.0 MB (3036779 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5fb6b52465af9891715219b472002776231a46d1afbefe33cd9fc7ac48bb6ca0`  
		Last Modified: Mon, 20 Jul 2026 22:37:50 GMT  
		Size: 60.3 KB (60313 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:14fc2f63cea3f9fc78e7b217979ff56b54789d9ec707b0fce67c1ff845d68402
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.5 MB (72459074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b01425b1f2d989eaf4dee7caabe76623fbaaa72821e363ccc7cd98e9e419fe03`
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

### `rabbitmq:4-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:4bca0bfe164eff76c9434cdcc8c3ccc8c3a3e45a82df3a145cce661698699251
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.3 KB (60295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6a0765df74a39c3a7952f71a9a491470ba52251c36f10c7fb5050ebae89d879`

```dockerfile
```

-	Layers:
	-	`sha256:eaae7981eee13bf6861b0897f84b6da34dcf808e774c0f64a46c56b78781432b`  
		Last Modified: Mon, 20 Jul 2026 22:35:25 GMT  
		Size: 60.3 KB (60295 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-alpine` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:a0e894769defd8e8fd09af1703bc7247ff846bddda781d7eb73c73a5641c85b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.5 MB (71545033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0feb2b32604a64f8d8e7e45409fa1ce82f7767de062da01e773974c17ed439c9`
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

### `rabbitmq:4-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:8e68c1980803f15c93069597c717c03fb266909b0363ca8858d0f98b4b363dc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6690446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2071d837ef56aae055b6155def0906ff79ad98ff1ffbbdf56d9a8410808576c8`

```dockerfile
```

-	Layers:
	-	`sha256:e82930958f32731e518a488a6cd9492c15b1dfcbf63a0f207b08ae67f794c03c`  
		Last Modified: Mon, 20 Jul 2026 22:43:05 GMT  
		Size: 671.0 KB (670967 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc95532a7f2dab4de360b138635ecd8f07ee3e16be58c1f4074835d773b06a03`  
		Last Modified: Mon, 20 Jul 2026 22:43:05 GMT  
		Size: 3.1 MB (3057028 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c12b43ee4c69e55868dc2da9cf436718eaa5e83ad2e02b8fec2574aca50d655`  
		Last Modified: Mon, 20 Jul 2026 22:43:05 GMT  
		Size: 2.9 MB (2901941 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51280835cdcea1af6b695a9339bdf39f5b4c19b762b4af9571470c95e218c4a9`  
		Last Modified: Mon, 20 Jul 2026 22:43:05 GMT  
		Size: 60.5 KB (60510 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:1a7bbe7cbb5b0c90bb1675b062d896927235f72b19e4f7a49a599f962110504a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.3 MB (83304177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:338eb450e94908ad114ab6c0e63ccf9e275b620be0505c493110516f58801578`
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

### `rabbitmq:4-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:c1b23a43ce2455ec3ef3485db2da787680a66fc0292a24c1338517358de0c1ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7036430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7575e4430f93957d32a58a3b8aeee92367b11910a6c43884bef23f50b63aa612`

```dockerfile
```

-	Layers:
	-	`sha256:83c6db20040f5f314f715458e864c75d7ec86e711c2f32081c6b4a4ca5cf32c2`  
		Last Modified: Mon, 20 Jul 2026 22:37:29 GMT  
		Size: 676.0 KB (675967 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2bc5c25dd783f6c258ee185f96c35e8149ef3e5b8e70d791e71fc85a0451561a`  
		Last Modified: Mon, 20 Jul 2026 22:37:29 GMT  
		Size: 3.2 MB (3227496 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:766ce71f6adeb3508edbb094236b3bd159b1b232d5126a379ff2c5a87d37cd39`  
		Last Modified: Mon, 20 Jul 2026 22:37:29 GMT  
		Size: 3.1 MB (3072415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e563423325ef7c55f0c28b06c7355806e1c5748b988dd7dc302a7b06e5b675a4`  
		Last Modified: Mon, 20 Jul 2026 22:37:29 GMT  
		Size: 60.6 KB (60552 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:a552b1c5bb6093ac204c565f6693248e23e99b5abdb2f40e7590230002bab8fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.9 MB (73876445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c877e305df36fd27409ff560e1d3c330b5f205ef35fd1a247675edf16f4cd8c3`
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

### `rabbitmq:4-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:8024e95eacd9ecf4f26fe0e651bf7857be12c17a32a4d5fb89eca7975b666dbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6914905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5e72777e469186a17f5dd0623ad8a3a4be4ff13ededec0261487cd803030c95`

```dockerfile
```

-	Layers:
	-	`sha256:6840b4fe08cf1880f5a2d5264288df8266c68ef5c615f0551c005d9add9fda3a`  
		Last Modified: Mon, 20 Jul 2026 22:37:53 GMT  
		Size: 670.8 KB (670818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c21d921db14dd42ed198c1fbf73ac5b79f615cb93f91ac95126e520670f71a98`  
		Last Modified: Mon, 20 Jul 2026 22:37:53 GMT  
		Size: 3.2 MB (3168788 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01d486872c153359442d7c5ab5c4639cf6707204c20992b12e3742a444fbfe1b`  
		Last Modified: Mon, 20 Jul 2026 22:37:53 GMT  
		Size: 3.0 MB (3015036 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:691cdf32165859c0ebc2a8dd15359a0f6de1ddc174700f474295ad1d9ae5b705`  
		Last Modified: Mon, 20 Jul 2026 22:37:53 GMT  
		Size: 60.3 KB (60263 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:9c55d5cacdfc09f2743492d1bd7306523bf80d1cfcde098c3a5931f15ffbdcec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.5 MB (75534846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f1cd0cfb1dd908aa8394205ce063b6d42b8269567c15976678bc18f772849c8`
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

### `rabbitmq:4-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:92199b6c3b4423c577684fb9ca0df5c0d5d6c401edcca50178e6c979b20d06cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6938108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70d1eaeaf85f547d09d3f0943c637811223ec265269d352c2f964242ec0904be`

```dockerfile
```

-	Layers:
	-	`sha256:bcfdd92f4689c9c41e7c0a3d8b3cd63491a1dd4eb1326099e63bb1c367134472`  
		Last Modified: Mon, 20 Jul 2026 23:51:20 GMT  
		Size: 671.0 KB (670964 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:869075aa83c46681f5f54fd11f77485ec78f1dfbe02bcab581bbf3bb5a5d2643`  
		Last Modified: Mon, 20 Jul 2026 23:51:21 GMT  
		Size: 3.2 MB (3180931 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:314106ac4f467f0f47f65361e78f687f5db709506c0e1eb7ad486607007f4d2e`  
		Last Modified: Mon, 20 Jul 2026 23:51:21 GMT  
		Size: 3.0 MB (3025838 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec3c8a6eed2f5a8c78be6ba0716503c2d0f8adcae88aefcc85d235b5086f3e61`  
		Last Modified: Mon, 20 Jul 2026 23:51:20 GMT  
		Size: 60.4 KB (60375 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-alpine` - linux; riscv64

```console
$ docker pull rabbitmq@sha256:1672e9bf561dc349674fea02fb539359d714d06b6fe50e62530232f3e9eda02c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.5 MB (79465110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d7e2760ccdbe54cdaae2fa971a3b4df5ae20bf86977b71b707085238e0b0c71`
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

### `rabbitmq:4-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:8bcbff6a78bf117e446dde34968f72768fa00ffd8c29ab3a3a60b92c2ba8c6f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7017325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:311a5581be2b850e0aee760c50001926ea03a8eef7ae66f82c991790962cd824`

```dockerfile
```

-	Layers:
	-	`sha256:2e8b971abc82732375103ffc979172561238aed05e6fd8caa02a366a58246a5b`  
		Last Modified: Wed, 22 Jul 2026 06:08:29 GMT  
		Size: 673.9 KB (673933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69e07f2334b578cefe683619e6b03ecbb9b91d99cc1a99a6a9d84c8f51743335`  
		Last Modified: Wed, 22 Jul 2026 06:08:30 GMT  
		Size: 3.2 MB (3219046 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c091bc384217704d1264876c794719a41176337ec3becf2b1795fe29f4fea10e`  
		Last Modified: Wed, 22 Jul 2026 06:08:30 GMT  
		Size: 3.1 MB (3063965 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28ce0cafd0440368408793d0b425129da2eee5cc6fd75489a3d3c6574e85a2b6`  
		Last Modified: Wed, 22 Jul 2026 06:08:29 GMT  
		Size: 60.4 KB (60381 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:ef3dd69c4b88431ff08236b7ff2e9b2f6a4d4143e0cda6e4f9501b036f88059a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.6 MB (73633504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd2b88a401c466fd64a1fdee7d2f9e6b19f09a247cd4fd554f29dbc6de12ee6c`
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

### `rabbitmq:4-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:319d93c87e25dfb6917d54a3d73fe29c035ae325592a3aebf40d255c9acecbef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6714490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0db18018e9ba08adca3437c70b6dd3030a8bbf92db83f361eb3e0682b442b40b`

```dockerfile
```

-	Layers:
	-	`sha256:89d4993c056d9a9c051906adbfcb2fa3b4fda9984c44453148e20e59cd33da95`  
		Last Modified: Mon, 20 Jul 2026 23:01:50 GMT  
		Size: 670.9 KB (670930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e51ece0464033e417eb19c62e747d2da4047b04003dc6b4e32f8d10aa1c6d740`  
		Last Modified: Mon, 20 Jul 2026 23:01:50 GMT  
		Size: 3.1 MB (3069155 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdfc5f783ceaa6c35d2a1024cce86e1c25a0e2c50219ad688f574fe9d6ca6712`  
		Last Modified: Mon, 20 Jul 2026 23:01:50 GMT  
		Size: 2.9 MB (2914092 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac14eddfc93e420edce1b38194c964d5ffbf462905c2137cb037b7e5ba3be719`  
		Last Modified: Mon, 20 Jul 2026 23:01:49 GMT  
		Size: 60.3 KB (60313 bytes)  
		MIME: application/vnd.in-toto+json
