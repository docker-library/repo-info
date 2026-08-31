## `rabbitmq:4-alpine`

```console
$ docker pull rabbitmq@sha256:4b93812804b41679198d340bfb644ff93f270a1658b28cb57dab6c85516a5da1
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
$ docker pull rabbitmq@sha256:843b1f0f2a9d906bba8dc7b9f3e0859d830a2e51b2cecc045a398f6a694f90d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.4 MB (84413344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85997b6d7c1208848ce95ff7540a3351f8d6137f2b80f07f95b02b6d17aa8fbe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:24:40 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Thu, 27 Aug 2026 18:24:40 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Thu, 27 Aug 2026 18:24:40 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Thu, 27 Aug 2026 18:24:40 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Thu, 27 Aug 2026 18:24:40 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Aug 2026 18:24:40 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 27 Aug 2026 18:24:42 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Thu, 27 Aug 2026 18:24:42 GMT
ENV RABBITMQ_VERSION=4.3.5
# Thu, 27 Aug 2026 18:24:42 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 27 Aug 2026 18:24:42 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 27 Aug 2026 18:24:42 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Aug 2026 18:24:49 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Thu, 27 Aug 2026 18:24:49 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Thu, 27 Aug 2026 18:24:49 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Thu, 27 Aug 2026 18:24:49 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 27 Aug 2026 18:24:49 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 27 Aug 2026 18:24:49 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 27 Aug 2026 18:24:49 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Thu, 27 Aug 2026 18:24:50 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Thu, 27 Aug 2026 18:24:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 18:24:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:24:50 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Thu, 27 Aug 2026 18:24:50 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:799a4081797e78b7cadacbb8c967b66d8d1eb3973208799d934f3f15cccacbb2`  
		Last Modified: Thu, 27 Aug 2026 18:25:07 GMT  
		Size: 42.7 MB (42664171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:270b3404756c7c710a0eedfe9abbe3e629214c57ec511fc27a60094e9d0724b9`  
		Last Modified: Thu, 27 Aug 2026 18:25:06 GMT  
		Size: 9.2 MB (9217470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3188c78b861410a4cf7a934e513f847df119eaaffd266b6fad92f0dc9194b1`  
		Last Modified: Thu, 27 Aug 2026 18:25:05 GMT  
		Size: 2.5 MB (2464540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5cbe4029933904d1d3f1480b1188811e4fb50348a964b0584304329b8bac89`  
		Last Modified: Thu, 27 Aug 2026 18:25:06 GMT  
		Size: 26.2 MB (26220999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87f93bb2bf2a5423de44e2b0863990911c1850f3ea15a6d19b45b3c451ecebde`  
		Last Modified: Thu, 27 Aug 2026 18:25:07 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:069833581828fe43e8d4b337b822f27a084ae2106ae6cfda3aa08d86fb31d709`  
		Last Modified: Thu, 27 Aug 2026 18:25:07 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84ef5dab2a586e34e8feaa1b33a2081d8f301337c451bece453610cfe414f8f2`  
		Last Modified: Thu, 27 Aug 2026 18:25:08 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a42096565a20e93b94a3e07c9673f83662e5b2c785bc4d0666bee676dcd30fdb`  
		Last Modified: Thu, 27 Aug 2026 18:25:08 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:4b4a0b42e4d796111f1ebc88c5de96bde19525af20398ba87800b27d3bf75843
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6963452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46ae0ff3036dff00dd9491286a38d5c987af3ae864d1d968832c4647b4e49ad8`

```dockerfile
```

-	Layers:
	-	`sha256:1d1b6440ca7bfa8d4bc538f06bf82effe09270e74682d9de5e719c2d04b1c550`  
		Last Modified: Thu, 27 Aug 2026 18:25:05 GMT  
		Size: 675.8 KB (675826 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31e02f470ca935d5e09d50d3c125b60b2e995c8be60179e8752064f85be2c8b7`  
		Last Modified: Thu, 27 Aug 2026 18:25:05 GMT  
		Size: 3.2 MB (3190535 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:679e943049eca1bc7b4bf42f5c7148210f71db7bb0b333f4779c1ecbc32c7de3`  
		Last Modified: Thu, 27 Aug 2026 18:25:05 GMT  
		Size: 3.0 MB (3036779 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c086e72900ed9654545a833fe36e34525ce0472547fde5961a0bc280d7c2520a`  
		Last Modified: Thu, 27 Aug 2026 18:25:05 GMT  
		Size: 60.3 KB (60312 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:5e48c5de1dbb8d2a5739381eab3e8c432ebe04a4e430288463ff1589d58837c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.6 MB (72591476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0943a1a6481e78970411eee921c8cd8412c68696de8eeec6221b3518eeb9b254`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:24:01 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Thu, 27 Aug 2026 18:24:01 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Thu, 27 Aug 2026 18:24:01 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Thu, 27 Aug 2026 18:24:01 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Thu, 27 Aug 2026 18:24:01 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Aug 2026 18:24:01 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 27 Aug 2026 18:24:04 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Thu, 27 Aug 2026 18:24:04 GMT
ENV RABBITMQ_VERSION=4.3.5
# Thu, 27 Aug 2026 18:24:04 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 27 Aug 2026 18:24:04 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 27 Aug 2026 18:24:04 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Aug 2026 18:24:13 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Thu, 27 Aug 2026 18:24:15 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Thu, 27 Aug 2026 18:24:15 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Thu, 27 Aug 2026 18:24:15 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 27 Aug 2026 18:24:15 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 27 Aug 2026 18:24:15 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 27 Aug 2026 18:24:15 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Thu, 27 Aug 2026 18:24:15 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Thu, 27 Aug 2026 18:24:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 18:24:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:24:15 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Thu, 27 Aug 2026 18:24:15 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:350fdbfeb65012643802d40b6f8df5a03d2af4326922e6a13d7a32d966b96336`  
		Last Modified: Thu, 27 Aug 2026 18:24:23 GMT  
		Size: 33.5 MB (33544965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3acefa5ed25e81cb0c04e72debc42039655410f122e88d38683ee23caa9e08a6`  
		Last Modified: Thu, 27 Aug 2026 18:24:22 GMT  
		Size: 7.9 MB (7867627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37b8100eed495ef249ddf028f8017f2b4981774400bee2fb5407afa4bdea6e8f`  
		Last Modified: Thu, 27 Aug 2026 18:24:21 GMT  
		Size: 1.4 MB (1403550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d99cefb7f10c5583274a57ae34c55983e6875705b8a667c22096dedc98e68911`  
		Last Modified: Thu, 27 Aug 2026 18:24:23 GMT  
		Size: 26.2 MB (26220990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55eb60d8e46c41a6372e947ffe0360db8039b3b53b9e73e69183778b6db3020b`  
		Last Modified: Thu, 27 Aug 2026 18:24:23 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2914e4f4dec24a86c7bb0c47359cfb3e70826a38ea9e6ab46e4995c9e6e69d5`  
		Last Modified: Thu, 27 Aug 2026 18:24:23 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1a4c4c3b66ef49be5e8608a1766db022b7c2fbf19e396d341334a25918c458c`  
		Last Modified: Thu, 27 Aug 2026 18:24:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b94f9f97ad0916e6521d229d0844877c29e7edb1c0b91cf7af9f00c670b21246`  
		Last Modified: Thu, 27 Aug 2026 18:24:24 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:e4036a64ee01c4dbd61fc91c85a24e091dba36abb5a886933da4b83b795fa27e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.3 KB (60294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a0060705c1852194f85b3832e708ac5c3251dee48518c375a5806bf3451ff2c`

```dockerfile
```

-	Layers:
	-	`sha256:db43bad176f89b7274793ca283f203031baf98b7b06ada240918960ee0c86c80`  
		Last Modified: Thu, 27 Aug 2026 18:24:21 GMT  
		Size: 60.3 KB (60294 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-alpine` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:25cf2a595f5f40e65bf8dc1d3a808d1a9cf04f2d15630c4232cb093baa7277a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.7 MB (71681206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49dfe4774ccd8370b3413589f7c9b877224b6b3f012126f6cc31b59812380d24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:25:05 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Thu, 27 Aug 2026 18:25:05 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Thu, 27 Aug 2026 18:25:05 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Thu, 27 Aug 2026 18:25:05 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Thu, 27 Aug 2026 18:25:05 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Aug 2026 18:25:05 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 27 Aug 2026 18:25:08 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Thu, 27 Aug 2026 18:25:08 GMT
ENV RABBITMQ_VERSION=4.3.5
# Thu, 27 Aug 2026 18:25:08 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 27 Aug 2026 18:25:08 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 27 Aug 2026 18:25:08 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Aug 2026 18:25:14 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Thu, 27 Aug 2026 18:25:15 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Thu, 27 Aug 2026 18:25:15 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Thu, 27 Aug 2026 18:25:15 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 27 Aug 2026 18:25:15 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 27 Aug 2026 18:25:15 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 27 Aug 2026 18:25:15 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Thu, 27 Aug 2026 18:25:15 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Thu, 27 Aug 2026 18:25:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 18:25:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:25:15 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Thu, 27 Aug 2026 18:25:15 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:547aa4ca7a1494e19dfac789ff8731fff2001ca8d30d509fc74d956ccbf3f304`  
		Last Modified: Thu, 27 Aug 2026 18:25:31 GMT  
		Size: 33.5 MB (33451677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:227ed82c9c662fad1accbe22810206970c206d31d1dde42c9c46235d9d7200d9`  
		Last Modified: Thu, 27 Aug 2026 18:25:30 GMT  
		Size: 7.5 MB (7450117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7605af9709f5090406261b8a96dc3f7707838a7bd64650bf9d93fcdd0934741c`  
		Last Modified: Thu, 27 Aug 2026 18:25:30 GMT  
		Size: 1.3 MB (1294870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2351fc1236912948e5a2f225a3b41cf69212feb56c21a22ed0dacbdbf82c0fe8`  
		Last Modified: Thu, 27 Aug 2026 18:25:31 GMT  
		Size: 26.2 MB (26220946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b511aaf022d85e017ac322ff0a6663d044d7e1d8ba8ce4d6f4558eff4736dc77`  
		Last Modified: Thu, 27 Aug 2026 18:25:31 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca57ab67c8fb2da6a386deef42e48c30c62283b09affdfd3d0fe8f13dda7d75e`  
		Last Modified: Thu, 27 Aug 2026 18:25:31 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29f5a770dbf7554ea88746db8d700cb4b3159f4511072c7a9c01588ac7ea623e`  
		Last Modified: Thu, 27 Aug 2026 18:25:32 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ee0816ae55d2ea267be88b054db55ac627da9f6bbdd23cf86bd286849d4a127`  
		Last Modified: Thu, 27 Aug 2026 18:25:32 GMT  
		Size: 826.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:598eeb29c0f804653b5ef1f11d0dc25d457333cfc53d9c91f0ea606cfe1d7771
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6690448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5474953655a91d1b4aff1a5700d5d36ecb8940c234b7171ff8ed0098a76feb7`

```dockerfile
```

-	Layers:
	-	`sha256:9aca8bcfda2cdead6939d217633e520dcd2b70514f91045624394f261d38283e`  
		Last Modified: Thu, 27 Aug 2026 18:25:30 GMT  
		Size: 671.0 KB (670970 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6969e34a330ddc1491cb2b25f3a48045cb6157ac530156a32f9ac67d263c33f4`  
		Last Modified: Thu, 27 Aug 2026 18:25:30 GMT  
		Size: 3.1 MB (3057028 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:faaaf1562f21f2d7df993d5cf2c109d14df0ac0109fbecde2559057ec1b6de73`  
		Last Modified: Thu, 27 Aug 2026 18:25:30 GMT  
		Size: 2.9 MB (2901941 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c78c117c6fc0915aabcff815c97befa015e68497fed8d7a2a39e638cdda1cdb9`  
		Last Modified: Thu, 27 Aug 2026 18:25:29 GMT  
		Size: 60.5 KB (60509 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:a32248c84695781b27ad605d7a36af30cc076dd7aad698128828f0dda8b93683
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.4 MB (83447827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff3eba6b63b3b593fdfea0f76f33b17ee7173fd09eaa5114da2db2a32b95e012`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:24:14 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Thu, 27 Aug 2026 18:24:14 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Thu, 27 Aug 2026 18:24:14 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Thu, 27 Aug 2026 18:24:15 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Thu, 27 Aug 2026 18:24:15 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Aug 2026 18:24:15 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 27 Aug 2026 18:24:17 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Thu, 27 Aug 2026 18:24:17 GMT
ENV RABBITMQ_VERSION=4.3.5
# Thu, 27 Aug 2026 18:24:17 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 27 Aug 2026 18:24:17 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 27 Aug 2026 18:24:17 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Aug 2026 18:24:23 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Thu, 27 Aug 2026 18:24:24 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Thu, 27 Aug 2026 18:24:24 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Thu, 27 Aug 2026 18:24:24 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 27 Aug 2026 18:24:24 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 27 Aug 2026 18:24:24 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 27 Aug 2026 18:24:24 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Thu, 27 Aug 2026 18:24:24 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Thu, 27 Aug 2026 18:24:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 18:24:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:24:24 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Thu, 27 Aug 2026 18:24:24 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:011fa871fa4d0061cf1c4ed54b9c61e2b9820a80dd6d06f1b6e09f0517e81093`  
		Last Modified: Thu, 27 Aug 2026 18:24:42 GMT  
		Size: 40.5 MB (40522902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ced9eaf9720227fa0994d3ece6589412b5777c14715e339df3dcac421508d44e`  
		Last Modified: Thu, 27 Aug 2026 18:24:41 GMT  
		Size: 10.0 MB (10006853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304b7667c38919eaa335df7a54da24caec97ba09848009a41ed3fc353e858f93`  
		Last Modified: Thu, 27 Aug 2026 18:24:40 GMT  
		Size: 2.5 MB (2513423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:367694370cfa52d889ba0220dc4444b33a7f4e6926d7ca10fc6cd5bf61124957`  
		Last Modified: Thu, 27 Aug 2026 18:24:41 GMT  
		Size: 26.2 MB (26221040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04d4768c8206ed5b41cc36b5fb60b22a16d62f005a1f0627aa5cf454351257e6`  
		Last Modified: Thu, 27 Aug 2026 18:24:41 GMT  
		Size: 192.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e974f1230aa10df6de90f4eeadcf8935ffd9d67d6a237abcb609a1a82f8372ab`  
		Last Modified: Thu, 27 Aug 2026 18:24:42 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f67cc367b480465bf7fda8130ca0b6dc30981e5dbcd0a83e3b424f6ee2f41ecf`  
		Last Modified: Thu, 27 Aug 2026 18:24:43 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12239356772bc40ca5fd8ab933f47c74e2df7da8fd19927163d786971a76a126`  
		Last Modified: Thu, 27 Aug 2026 18:24:43 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:ef171f4c9ec881b4746403063bdb5118ec15e8e48ffa2078a47cebfaab58c2a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7036440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b7133b69cfb5bc4a29442639ab2b4d7d1c9a9c86f0d1a27bc35aabd8f2063f7`

```dockerfile
```

-	Layers:
	-	`sha256:55c7c753ae73409062dceebdc0f69a1abb01db29cf37376f7a72c2c773108b76`  
		Last Modified: Thu, 27 Aug 2026 18:24:40 GMT  
		Size: 676.0 KB (675970 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:054cd534eb8497d9592db4a3f694ac6246eeb80d9b8e6e7948a83a8d6a6ee3dd`  
		Last Modified: Thu, 27 Aug 2026 18:24:40 GMT  
		Size: 3.2 MB (3227496 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46a7e2444b3d926c476bf41f4c17969994de86dc16e1648a333df1b0c5b7fa03`  
		Last Modified: Thu, 27 Aug 2026 18:24:40 GMT  
		Size: 3.1 MB (3072415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e62fd6f69915dad80042c8e3451c5730e3c5a7a4258f6009ac711f7c87f2aa9`  
		Last Modified: Thu, 27 Aug 2026 18:24:40 GMT  
		Size: 60.6 KB (60559 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:93f690782f778819b3cb56b5fbd01d7939974da807061c8c49b77ed7cab70dc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.0 MB (74011523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d61d54ae717b04d225b99e8d231a599c10eca1af6286659585bd29db55dd30e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:24:09 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Thu, 27 Aug 2026 18:24:09 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Thu, 27 Aug 2026 18:24:09 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Thu, 27 Aug 2026 18:24:09 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Thu, 27 Aug 2026 18:24:09 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Aug 2026 18:24:09 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 27 Aug 2026 18:24:11 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Thu, 27 Aug 2026 18:24:11 GMT
ENV RABBITMQ_VERSION=4.3.5
# Thu, 27 Aug 2026 18:24:11 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 27 Aug 2026 18:24:11 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 27 Aug 2026 18:24:11 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Aug 2026 18:24:17 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Thu, 27 Aug 2026 18:24:17 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Thu, 27 Aug 2026 18:24:17 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Thu, 27 Aug 2026 18:24:17 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 27 Aug 2026 18:24:17 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 27 Aug 2026 18:24:17 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 27 Aug 2026 18:24:17 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Thu, 27 Aug 2026 18:24:17 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Thu, 27 Aug 2026 18:24:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 18:24:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:24:17 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Thu, 27 Aug 2026 18:24:17 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c03eabe76c1c80f9b94418be700987060fa2a19c0f240b7019efcbf7c2f45d3`  
		Last Modified: Thu, 27 Aug 2026 18:24:32 GMT  
		Size: 33.5 MB (33505125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccdb27a3582292d1fa841f8ba32fc0ae462a53b5f4f10f9560c65226620ed48f`  
		Last Modified: Thu, 27 Aug 2026 18:24:31 GMT  
		Size: 9.2 MB (9207661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86dc6c08f0d52c0cff98bec616e04b62c91ffa7d21a826f1b6d52e3aee8f848d`  
		Last Modified: Thu, 27 Aug 2026 18:24:31 GMT  
		Size: 1.4 MB (1408082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca03b0c4e4c2c937bf19da75b09a67c28743fd4c302443b7892fc26511fc477b`  
		Last Modified: Thu, 27 Aug 2026 18:24:32 GMT  
		Size: 26.2 MB (26220918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e81d739977433c117638d8c78a1728727555d3a6a54792f6e74d0925dc0cf115`  
		Last Modified: Thu, 27 Aug 2026 18:24:32 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32c7c7d8c98d49d34e3fb8a40fde4b09bc6cb0ef2de102ed48528791f0f89659`  
		Last Modified: Thu, 27 Aug 2026 18:24:33 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1717794f681a11ebefd97e02d8f396abad3075ee11cdd69704a7e1b2c81c702`  
		Last Modified: Thu, 27 Aug 2026 18:24:33 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3966e1889edf1aa10baa955d232869f1e79478dc724a23c1016f6990ba7670cc`  
		Last Modified: Thu, 27 Aug 2026 18:24:34 GMT  
		Size: 831.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:1c2b7cdd5bb739959e345453012c81a456cd2cb28c2c28a3a8548471f4a131af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6914908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:524bf5ac51e1b200e4b7e47afbf3c96ce2462caa4992bd69a306474b36d43e2b`

```dockerfile
```

-	Layers:
	-	`sha256:8959401ffcc1a2c0c43ed9c4b712e2285004e93bd16b088a75d69c083ed5d8c1`  
		Last Modified: Thu, 27 Aug 2026 18:24:31 GMT  
		Size: 670.8 KB (670821 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a4e6f95ff2fb780e764e1aac9f456e09340a35cbfd226c3f0c432c88cc28f7a1`  
		Last Modified: Thu, 27 Aug 2026 18:24:31 GMT  
		Size: 3.2 MB (3168788 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a9a8d55bf8e3dc05e0f1c15f72940371cd83cb4a57310aa9294102963ce686d`  
		Last Modified: Thu, 27 Aug 2026 18:24:31 GMT  
		Size: 3.0 MB (3015036 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab3c0351aa3e0250e55f4b21bce229af7b2a90a1e2d12ba5632c94b6ea6d5404`  
		Last Modified: Thu, 27 Aug 2026 18:24:31 GMT  
		Size: 60.3 KB (60263 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:93d92dbabffe452933412263a801901acc8fba9216182f257641c92e32ce1e64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.7 MB (75677208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a6d43f7408dbc22efc1b0bbeff7fcf8adb7cfbd4829fd81e649fcd483aaeded`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:23:54 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Thu, 27 Aug 2026 18:23:54 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Thu, 27 Aug 2026 18:23:54 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Thu, 27 Aug 2026 18:23:55 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Thu, 27 Aug 2026 18:23:55 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Aug 2026 18:23:55 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 27 Aug 2026 18:24:00 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Thu, 27 Aug 2026 18:24:00 GMT
ENV RABBITMQ_VERSION=4.3.5
# Thu, 27 Aug 2026 18:24:00 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 27 Aug 2026 18:24:00 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 27 Aug 2026 18:24:00 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Aug 2026 18:24:09 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Thu, 27 Aug 2026 18:24:10 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Thu, 27 Aug 2026 18:24:11 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Thu, 27 Aug 2026 18:24:11 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 27 Aug 2026 18:24:11 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 27 Aug 2026 18:24:11 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 27 Aug 2026 18:24:11 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Thu, 27 Aug 2026 18:24:11 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Thu, 27 Aug 2026 18:24:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 18:24:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:24:12 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Thu, 27 Aug 2026 18:24:12 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f48cdf0ae2398b1395f8f4e01e6edcfd175da41417864b97db4b53b9678a028`  
		Last Modified: Thu, 27 Aug 2026 18:24:44 GMT  
		Size: 34.1 MB (34120050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:014732b614d767590f8492fdb4239ba3b238c980f457afb2c9cee2215f29b51d`  
		Last Modified: Thu, 27 Aug 2026 18:24:43 GMT  
		Size: 10.0 MB (9980655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:323a8d02b668f0a6d81d67ed0ac60e3434e07a43086342243237130af492009b`  
		Last Modified: Thu, 27 Aug 2026 18:24:43 GMT  
		Size: 1.5 MB (1541515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1b45584ded10af729b1edef0625a42b739f7351f4839f5ef152712ae0893070`  
		Last Modified: Thu, 27 Aug 2026 18:24:44 GMT  
		Size: 26.2 MB (26220937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f1bb90e143a31e36d5eb28c552fea74e35a795a23a8e2b286ba40d1d3377ab2`  
		Last Modified: Thu, 27 Aug 2026 18:24:44 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7801eaab106323cae511a160bc9e451e489f94423ae3e8e8c166e31ea40bca1f`  
		Last Modified: Thu, 27 Aug 2026 18:24:45 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:292fc409eba978897c4c092d0b2da7e12eb449b7f7cece4d9f73990c367c8e36`  
		Last Modified: Thu, 27 Aug 2026 18:24:45 GMT  
		Size: 622.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dabd3896e7d7a791a7946e71ec06e229fc00e32bb8c9877d011760ba85f719e2`  
		Last Modified: Thu, 27 Aug 2026 18:24:46 GMT  
		Size: 831.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:afead9b3ba81d52cd0c5c1e5f8f1baff7575c19dba8ba6be939c1404cacd5f18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6938111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9da4ca89d79b1964b9addac056dd7dccaa9f045dcf7a2e5f6c06063b3b033fd0`

```dockerfile
```

-	Layers:
	-	`sha256:4145604dfe5782a7e7f7970c1714e4c889142010a3b028c792ff23002fbd1ad1`  
		Last Modified: Thu, 27 Aug 2026 18:24:43 GMT  
		Size: 671.0 KB (670967 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24ce06385c74becadf4ec6aef19013c68b8de6e82da687e0ecd23fde1fcc1181`  
		Last Modified: Thu, 27 Aug 2026 18:24:43 GMT  
		Size: 3.2 MB (3180931 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2dd99db89bb169f688ecc23b8894fe26ff83305f5b9b6963c8673eb0de3f1763`  
		Last Modified: Thu, 27 Aug 2026 18:24:43 GMT  
		Size: 3.0 MB (3025838 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8b899284e2e718819d352a0f42fa538bcce490373a7a3d189a47037c7b75d78`  
		Last Modified: Thu, 27 Aug 2026 18:24:42 GMT  
		Size: 60.4 KB (60375 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-alpine` - linux; riscv64

```console
$ docker pull rabbitmq@sha256:ae37d574a1320ddb14b2baa6f9526f07187f23ea656619eb0061e75ec943046e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79595713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f6179a83805352e879c7d8620e531a6eb9cf203d3a73d20ea77421bce524b62`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Sat, 29 Aug 2026 20:49:52 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Sat, 29 Aug 2026 20:49:52 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Sat, 29 Aug 2026 20:49:52 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Sat, 29 Aug 2026 20:49:53 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Sat, 29 Aug 2026 20:49:53 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Aug 2026 20:49:53 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Sat, 29 Aug 2026 20:50:04 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Sat, 29 Aug 2026 20:50:04 GMT
ENV RABBITMQ_VERSION=4.3.5
# Sat, 29 Aug 2026 20:50:04 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 29 Aug 2026 20:50:04 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sat, 29 Aug 2026 20:50:04 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 30 Aug 2026 20:42:06 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Sun, 30 Aug 2026 20:42:14 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Sun, 30 Aug 2026 20:42:15 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Sun, 30 Aug 2026 20:42:15 GMT
ENV HOME=/var/lib/rabbitmq
# Sun, 30 Aug 2026 20:42:15 GMT
VOLUME [/var/lib/rabbitmq]
# Sun, 30 Aug 2026 20:42:15 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Sun, 30 Aug 2026 20:42:15 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Sun, 30 Aug 2026 20:42:15 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Sun, 30 Aug 2026 20:42:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sun, 30 Aug 2026 20:42:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 30 Aug 2026 20:42:15 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Sun, 30 Aug 2026 20:42:15 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43e2ba993a519b44305f3e1bca4c9d6517bdf962b0f3ca68076d058529f8b8b9`  
		Last Modified: Sat, 29 Aug 2026 20:54:50 GMT  
		Size: 37.5 MB (37544546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7b464e72fa006c0c57867678eb803fdd387c8bf5b8ee4b8482b51591b2430d`  
		Last Modified: Sat, 29 Aug 2026 20:54:44 GMT  
		Size: 10.8 MB (10806210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d10c7272827dd79a931b38fb6c0f83660ff3a6b5bddd3ad641a68ca74ef44c`  
		Last Modified: Sat, 29 Aug 2026 20:54:40 GMT  
		Size: 1.4 MB (1448969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d5f44faa69ff864c635d90973dc9e7694b03a9e0cf873339d2a4129a81754b7`  
		Last Modified: Sun, 30 Aug 2026 21:13:38 GMT  
		Size: 26.2 MB (26220996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5b3c312a7c78f12d9d92b220bfcc18cb9f2a39d1432e3acbe023923f4995a0c`  
		Last Modified: Sun, 30 Aug 2026 21:13:33 GMT  
		Size: 192.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e623e7ff4ba7e33de340ff9d378f40febda34cd9054a276574c15fa3bc0c3e2d`  
		Last Modified: Sun, 30 Aug 2026 21:13:33 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac3fa5354bdac883ab769cc77a1f6729b1fa23d5da217e907b416ab16bf67560`  
		Last Modified: Sun, 30 Aug 2026 21:13:33 GMT  
		Size: 622.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e4b33644b717d8b8cfb1839b7f994c5561c16e14043766eb0696d1b0ddb4ca4`  
		Last Modified: Sun, 30 Aug 2026 21:13:34 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:0968cc6f0da0c04869256d4a7066e47928a72d7b2b0a885940b4ce58e3b02c66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7017328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66d9e5d8d9c3f986f73c4b410bcda7d70f0dd198f678b3c12ff3d017e1035649`

```dockerfile
```

-	Layers:
	-	`sha256:87f3bf6a9aa0989899c7d8263eca06f821a7c6b6d480160f2fab89e61cad8c4f`  
		Last Modified: Sun, 30 Aug 2026 21:13:33 GMT  
		Size: 673.9 KB (673936 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b7052cafbaf04852efea21c0aeed275c27c6c285c6f83c7dcba3cd29ec76ec4`  
		Last Modified: Sun, 30 Aug 2026 21:13:34 GMT  
		Size: 3.2 MB (3219046 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac21f4753e69ad956aa1ef4433d9a7a9d2713bdeafe49d63303357ab6bc493b4`  
		Last Modified: Sun, 30 Aug 2026 21:13:34 GMT  
		Size: 3.1 MB (3063965 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20517700e746530400ad584d93fcd8722c6907157fb96bab730f6021a220c4f4`  
		Last Modified: Sun, 30 Aug 2026 21:13:33 GMT  
		Size: 60.4 KB (60381 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:24fc2798a77737d01302ba9aff7f89fb4ce24c4c23891d29bcdc63ef9747d7ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.8 MB (73764957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:086b3534749fa0fbd23253542a9dee888b560b1950d359b2972cbf32836ea6b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:29:29 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Thu, 27 Aug 2026 18:29:29 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Thu, 27 Aug 2026 18:29:29 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Thu, 27 Aug 2026 18:29:33 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Thu, 27 Aug 2026 18:29:33 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Aug 2026 18:29:33 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 27 Aug 2026 18:29:43 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Thu, 27 Aug 2026 18:29:43 GMT
ENV RABBITMQ_VERSION=4.3.5
# Thu, 27 Aug 2026 18:29:43 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 27 Aug 2026 18:29:43 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 27 Aug 2026 18:29:43 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Aug 2026 18:30:08 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Thu, 27 Aug 2026 18:30:15 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Thu, 27 Aug 2026 18:30:19 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Thu, 27 Aug 2026 18:30:19 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 27 Aug 2026 18:30:19 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 27 Aug 2026 18:30:19 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 27 Aug 2026 18:30:19 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Thu, 27 Aug 2026 18:30:23 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Thu, 27 Aug 2026 18:30:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 18:30:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:30:26 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Thu, 27 Aug 2026 18:30:26 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb50a7cf0e86d855c100c670ecdf27077f90b7c7ff6f7f66b34c58bc12b18783`  
		Last Modified: Thu, 27 Aug 2026 18:31:27 GMT  
		Size: 34.0 MB (33964334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dee0f105d0a6ed9da450ac3d4c69175d68fd682ad88ad2e6183428d24aa5a10`  
		Last Modified: Thu, 27 Aug 2026 18:31:26 GMT  
		Size: 8.4 MB (8355696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f5fbd7d4e15a852e151fc73ebf17fa8f2ce87471d3411fba9b5d4ec647383ef`  
		Last Modified: Thu, 27 Aug 2026 18:31:24 GMT  
		Size: 1.5 MB (1514944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b527cb4882746e5b4797f25ae583bb928a0bef2d4309db1d35b0d80e7229b037`  
		Last Modified: Thu, 27 Aug 2026 18:31:28 GMT  
		Size: 26.2 MB (26220973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e0eb963d0b3acf25ee57192fbd5de6bc7950732f6e3694c2a5ff96622e2257b`  
		Last Modified: Thu, 27 Aug 2026 18:31:26 GMT  
		Size: 192.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8e264ef44d72f643cd10d233848217580be94cc8f6653ccba575052f652a237`  
		Last Modified: Thu, 27 Aug 2026 18:31:27 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fc9917f0ebc3132ccbbe7c3a7ec7f4bd267724e09ce1fc1ff3000412f4c50b3`  
		Last Modified: Thu, 27 Aug 2026 18:31:27 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec8600427baa26956be78f7a14405d1a1bcda7046aae1b4a60ead86ab6fa97c8`  
		Last Modified: Thu, 27 Aug 2026 18:31:29 GMT  
		Size: 832.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:a0fb986d2ad8aa253ab2e52564e0e41f23f40fa41f64659a59d9696f0e9445e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6714493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:411e748e8bea6387c49b4ae2fa5c69eb46d19897b893273520a1ec3c8103cac6`

```dockerfile
```

-	Layers:
	-	`sha256:93955c603cfa3ca1f4d2f7b5c1e25ff14106c181a173f877199931d379271007`  
		Last Modified: Thu, 27 Aug 2026 18:31:23 GMT  
		Size: 670.9 KB (670933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ddb1d1e43d0c0a22385e327b4a89c7dce8bf067afa23964617d54ff2144ab55`  
		Last Modified: Thu, 27 Aug 2026 18:31:25 GMT  
		Size: 3.1 MB (3069155 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac1dc421c84a903de0d5e0da6ef0e8dcd33d3be73a7b477fb48f0b150e7cca4b`  
		Last Modified: Thu, 27 Aug 2026 18:31:24 GMT  
		Size: 2.9 MB (2914092 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc70dbaf0105f3a5e49430ce5696549e7f922e3376fbaaf79ed83a86b0535647`  
		Last Modified: Thu, 27 Aug 2026 18:31:22 GMT  
		Size: 60.3 KB (60313 bytes)  
		MIME: application/vnd.in-toto+json
