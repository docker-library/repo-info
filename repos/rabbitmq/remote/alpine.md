## `rabbitmq:alpine`

```console
$ docker pull rabbitmq@sha256:87a588ce0fd27033eaac0061d85601123d573b41f36d1968dfab9f4af7e82b85
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
$ docker pull rabbitmq@sha256:05ea3d1ce60612ce7bb359f4786087bea339b9329f7b5c77a29feb01c641dff8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.2 MB (84180194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:141190881143978f97195f2c6a48127db7850b265ab2577095ba4a32ddaaebb9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 18:54:01 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Mon, 06 Jul 2026 18:54:01 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Mon, 06 Jul 2026 18:54:01 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Mon, 06 Jul 2026 18:54:01 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Mon, 06 Jul 2026 18:54:01 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 18:54:01 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Mon, 06 Jul 2026 18:54:03 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Mon, 06 Jul 2026 18:54:03 GMT
ENV RABBITMQ_VERSION=4.3.2
# Mon, 06 Jul 2026 18:54:03 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 06 Jul 2026 18:54:03 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 06 Jul 2026 18:54:03 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 18:54:10 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Mon, 06 Jul 2026 18:54:10 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Mon, 06 Jul 2026 18:54:11 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Mon, 06 Jul 2026 18:54:11 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 06 Jul 2026 18:54:11 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 06 Jul 2026 18:54:11 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 06 Jul 2026 18:54:11 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Mon, 06 Jul 2026 18:54:11 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Mon, 06 Jul 2026 18:54:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 18:54:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 18:54:11 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Mon, 06 Jul 2026 18:54:11 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6737eb3d1317c71ae168a9f3fee3aa4dc2513429c7c355df48563e0bb35422fd`  
		Last Modified: Mon, 06 Jul 2026 18:54:27 GMT  
		Size: 42.7 MB (42658637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e43655aab2e5a08ae693305a27adc029e91b0c216d01df7843d37abf0ce2b5d`  
		Last Modified: Mon, 06 Jul 2026 18:54:26 GMT  
		Size: 9.2 MB (9206054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df2ec73b9326e82bad6a182e6ea7cb2d8bb7d905d88fcc32f82dcdb792e85bb6`  
		Last Modified: Mon, 06 Jul 2026 18:54:26 GMT  
		Size: 2.5 MB (2465150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4240e1c32d0da856569ecb854b619556043308c32b98f80c62a86593cdd2e65`  
		Last Modified: Mon, 06 Jul 2026 18:54:27 GMT  
		Size: 26.0 MB (26004181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb66ae3b5a55b0944c4fa41da4389adf62a205e570a78f8d44c12a211b27308f`  
		Last Modified: Mon, 06 Jul 2026 18:54:27 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d1e32a9d59a76b5b2dfeee1ae3584cc5a8874be6d42dfed4889b6efc79f1c0e`  
		Last Modified: Mon, 06 Jul 2026 18:54:28 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44a246980b68b3cfa28f7c535147f1557bed8b98a7612441c387af69e0b13b01`  
		Last Modified: Mon, 06 Jul 2026 18:54:29 GMT  
		Size: 622.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:980953656d8b70bdf264c4616edcb1919dc6952a67170661255793ff21f392f6`  
		Last Modified: Mon, 06 Jul 2026 18:54:29 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:ce9279eab5ef9db1ca1feaf1f23bd3c00a0d37173c3436c345757dbb468663ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6963450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dffd1e1f3bea0ba892586008ab2184399317986108ddc44c04b6cf605100c1fe`

```dockerfile
```

-	Layers:
	-	`sha256:7b85f9d0367892762ceafc4308e4faa484949ed8d9f58f067e3526d00e372acc`  
		Last Modified: Mon, 06 Jul 2026 18:54:26 GMT  
		Size: 675.8 KB (675823 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b147242cde305386df122ad876d7ea2c40a9ce026c3bbbfc6e64c7e306f388d1`  
		Last Modified: Mon, 06 Jul 2026 18:54:26 GMT  
		Size: 3.2 MB (3190535 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e8d5a1c3e2910e6db29dadceb849bbf5aa0a982d2426bb0b0322777734f1b52`  
		Last Modified: Mon, 06 Jul 2026 18:54:26 GMT  
		Size: 3.0 MB (3036779 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4549084f56c4315a757d9b7b5cc749854982aa4d060ae8078fcda51f6787d07c`  
		Last Modified: Mon, 06 Jul 2026 18:54:26 GMT  
		Size: 60.3 KB (60313 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:35959ab6814715fc228e31884cad31d9a90bfb07fe9c90891e34fc6bcedbbd04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.4 MB (72361231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fa2483a38b44124402076dd9674ab60b860c87c5395a1c19ca7a5d2d74b1951`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 18:59:14 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Mon, 06 Jul 2026 18:59:14 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Mon, 06 Jul 2026 18:59:14 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Mon, 06 Jul 2026 18:59:14 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Mon, 06 Jul 2026 18:59:14 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 18:59:14 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Mon, 06 Jul 2026 18:59:17 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Mon, 06 Jul 2026 18:59:17 GMT
ENV RABBITMQ_VERSION=4.3.2
# Mon, 06 Jul 2026 18:59:17 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 06 Jul 2026 18:59:17 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 06 Jul 2026 18:59:17 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 18:59:26 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Mon, 06 Jul 2026 18:59:28 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Mon, 06 Jul 2026 18:59:28 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Mon, 06 Jul 2026 18:59:28 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 06 Jul 2026 18:59:28 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 06 Jul 2026 18:59:28 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 06 Jul 2026 18:59:28 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Mon, 06 Jul 2026 18:59:28 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Mon, 06 Jul 2026 18:59:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 18:59:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 18:59:28 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Mon, 06 Jul 2026 18:59:28 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37b9f8c3b1a1371e0eef18287de77f4a0c470c954200403681af5705b7d58aa4`  
		Last Modified: Mon, 06 Jul 2026 18:59:36 GMT  
		Size: 33.5 MB (33536142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:365e0ef808e79e351508745e2511ef52f7b4df1c0b0142add9d2f333e9a9c50c`  
		Last Modified: Mon, 06 Jul 2026 18:59:35 GMT  
		Size: 7.9 MB (7862490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48d1f921697f7f6a5afaf5d555bca02b6a17dcf64dcbf8dea05f15c9923ab403`  
		Last Modified: Mon, 06 Jul 2026 18:59:35 GMT  
		Size: 1.4 MB (1404221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d5fbba7a43b93e0c7f225c0c43d4afdb7717ef50778fa2738705c8e319f54eb`  
		Last Modified: Mon, 06 Jul 2026 18:59:36 GMT  
		Size: 26.0 MB (26004040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0965836b3657dbb8718ec69b38daea84dcf66e63869d478b8072fc829c3e3e41`  
		Last Modified: Mon, 06 Jul 2026 18:59:36 GMT  
		Size: 192.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eb7063fdc486defbe6c9e52ec59c03e38855a6ef50997778f6e4a79ecf00d43`  
		Last Modified: Mon, 06 Jul 2026 18:59:37 GMT  
		Size: 108.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:273418aad45609de11bf34074d9b154bcfe59c867adcdd5d8a2b824b498163f0`  
		Last Modified: Mon, 06 Jul 2026 18:59:37 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bb1ad9dd53213e636d32de0ab9f285c4e19e9cc4de3eaff59ac077be50cc800`  
		Last Modified: Mon, 06 Jul 2026 18:59:38 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:1db4a6651cfcd60881c321b648cc082402327f6e2f4b654d33059c2f5395d724
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.3 KB (60295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54fb660dc89a81222e95060e0ed4939fe87070d1e4ffbd677424b74a9fb8b033`

```dockerfile
```

-	Layers:
	-	`sha256:ca7c21515edf42f5a545c1da876b5a26e473c24d3b0406bb3d3ed12bf4638b6d`  
		Last Modified: Mon, 06 Jul 2026 18:59:34 GMT  
		Size: 60.3 KB (60295 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:alpine` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:02ae906fed990d9e19946c1aadcae7931d7f457651026f191637208cbcafe711
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.4 MB (71447655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94dc0a4fc8362d441368f433bda97fc7f50dbf3b826103116adb2e6d9048bd6d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 19:03:29 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Mon, 06 Jul 2026 19:03:29 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Mon, 06 Jul 2026 19:03:29 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Mon, 06 Jul 2026 19:03:29 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Mon, 06 Jul 2026 19:03:29 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 19:03:29 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Mon, 06 Jul 2026 19:03:32 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Mon, 06 Jul 2026 19:03:32 GMT
ENV RABBITMQ_VERSION=4.3.2
# Mon, 06 Jul 2026 19:03:32 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 06 Jul 2026 19:03:32 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 06 Jul 2026 19:03:32 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 19:03:37 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Mon, 06 Jul 2026 19:03:38 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Mon, 06 Jul 2026 19:03:38 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Mon, 06 Jul 2026 19:03:38 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 06 Jul 2026 19:03:38 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 06 Jul 2026 19:03:38 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 06 Jul 2026 19:03:38 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Mon, 06 Jul 2026 19:03:38 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Mon, 06 Jul 2026 19:03:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 19:03:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 19:03:38 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Mon, 06 Jul 2026 19:03:38 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99edd9f86f0f9b09976adb60d12e3cf0354de704426a5477cbd4e8cf8e128b06`  
		Last Modified: Mon, 06 Jul 2026 19:03:54 GMT  
		Size: 33.4 MB (33441739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4d67090bd839d4df38802feefd9120e3a71ad4f06b0f96fd5f94d7986d0e352`  
		Last Modified: Mon, 06 Jul 2026 19:03:53 GMT  
		Size: 7.4 MB (7442965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7de78a193d821ccefc7f31a0614259e68aea01be6dc52becdb65b6e9745b1328`  
		Last Modified: Mon, 06 Jul 2026 19:03:53 GMT  
		Size: 1.3 MB (1295474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08567c1ea91e236d77a8243e96bc2548103677d98797e810b186f4095561dd74`  
		Last Modified: Mon, 06 Jul 2026 19:03:54 GMT  
		Size: 26.0 MB (26003875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7598804cb57493766d83b77572934bb68f9764b256c86e6417f5a72fe75604e7`  
		Last Modified: Mon, 06 Jul 2026 19:03:55 GMT  
		Size: 192.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36a66e9054f90f185f2686bcb083ee61f1298aefe91b7563fadc58d7c2533790`  
		Last Modified: Mon, 06 Jul 2026 19:03:55 GMT  
		Size: 108.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c102151972ff48b62092f26851bf0d9d0d018bbfb29d41e801e1cd325220ba`  
		Last Modified: Mon, 06 Jul 2026 19:03:56 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a39dc979a4cd3f98c9ad88e0675b3acbd98d665905af82095d4d5699c9a3164`  
		Last Modified: Mon, 06 Jul 2026 19:03:56 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:4f26eb9392ed3d67ab9664f93b397c22409a95a41c802700cf755db15e50760f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6690445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ba348be957f94725ba2f2c38bd4b33d5336827fcf7965021e499abbb378907`

```dockerfile
```

-	Layers:
	-	`sha256:173dc306e84a04b87f4500f9b506d8561000febb2bac952e6f964861fd8ec5f8`  
		Last Modified: Mon, 06 Jul 2026 19:03:53 GMT  
		Size: 671.0 KB (670967 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:282bc194779d9927952e83c24a16faa8ad2fe58f6d9a46a360f86dec524a9661`  
		Last Modified: Mon, 06 Jul 2026 19:03:53 GMT  
		Size: 3.1 MB (3057028 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0a72123ab0ce6c779eba88dc68d76d84ebf292774d21c047ab1f9574df99e07`  
		Last Modified: Mon, 06 Jul 2026 19:03:53 GMT  
		Size: 2.9 MB (2901941 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7726b5947057c6327c9cfc1f29c93abac488f1d56a0dbbc986c67c7c9e3bc7d7`  
		Last Modified: Mon, 06 Jul 2026 19:03:53 GMT  
		Size: 60.5 KB (60509 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:bcb05a11063f291a3eca2786f63033ae44b2252c015848d2020ffd26b076eebd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83206264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff98a6db3f25477b51045bec900c6ab5cb16a8ef43156f84117b3304ef91a1d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 18:54:59 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Mon, 06 Jul 2026 18:54:59 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Mon, 06 Jul 2026 18:54:59 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Mon, 06 Jul 2026 18:54:59 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Mon, 06 Jul 2026 18:54:59 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 18:54:59 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Mon, 06 Jul 2026 18:55:01 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Mon, 06 Jul 2026 18:55:01 GMT
ENV RABBITMQ_VERSION=4.3.2
# Mon, 06 Jul 2026 18:55:01 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 06 Jul 2026 18:55:01 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 06 Jul 2026 18:55:01 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 18:55:07 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Mon, 06 Jul 2026 18:55:08 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Mon, 06 Jul 2026 18:55:08 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Mon, 06 Jul 2026 18:55:08 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 06 Jul 2026 18:55:08 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 06 Jul 2026 18:55:08 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 06 Jul 2026 18:55:08 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Mon, 06 Jul 2026 18:55:08 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Mon, 06 Jul 2026 18:55:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 18:55:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 18:55:08 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Mon, 06 Jul 2026 18:55:08 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:787bffe30e183fa494fdedbc583488de60bc82cbf4ab176b8281c3d3b32cddd9`  
		Last Modified: Mon, 06 Jul 2026 18:55:25 GMT  
		Size: 40.5 MB (40512123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e38be065aff341eb5cb401eca56c738e6b637326499b8b8950b270ce9757ac6`  
		Last Modified: Mon, 06 Jul 2026 18:55:24 GMT  
		Size: 10.0 MB (9992319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:871715455dc6ff4de3e56cfae53ef2af502de110b3ddf8657e0ec9b9841037bc`  
		Last Modified: Mon, 06 Jul 2026 18:55:24 GMT  
		Size: 2.5 MB (2514013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f7e714e6add59202db81dfa1ecaf38b26453d77130e2251e4b592524c58cac3`  
		Last Modified: Mon, 06 Jul 2026 18:55:25 GMT  
		Size: 26.0 MB (26004199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e204eb90fcbd235ffeae11d6847a88d42ffee1400feb0525087b291a6aced6c1`  
		Last Modified: Mon, 06 Jul 2026 18:55:25 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddae2b8f6831136ec124ec1df473fe10e358db917f18d60ebdd1303d6c03a147`  
		Last Modified: Mon, 06 Jul 2026 18:55:25 GMT  
		Size: 108.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:708f803aed22179a2fb0c6395b04cf2cdb95248a9e0b88307a5605e077802860`  
		Last Modified: Mon, 06 Jul 2026 18:55:27 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58802057f5e679f6d671d394d75b4c304f8837a3959d8bbe5acb7988dadf6cb0`  
		Last Modified: Mon, 06 Jul 2026 18:55:27 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:934cdca439c06e2a5493f882f5033bfa2df3f476e8395d5b4c8488f9090921bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7036429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f724a949bf326f20a131de94a0f95f03caf61c5428d4d206ee78c12ca5b2d3ea`

```dockerfile
```

-	Layers:
	-	`sha256:ed6fb3439538ebbd4fbf2e01001665fe2824db50483db341e206c73ea0506ae2`  
		Last Modified: Mon, 06 Jul 2026 18:55:24 GMT  
		Size: 676.0 KB (675967 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfb2fc674fe0210228f69ce97bff5b31b910255ddfbbb973513668a492886278`  
		Last Modified: Mon, 06 Jul 2026 18:55:24 GMT  
		Size: 3.2 MB (3227496 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da731bad4fa6620540f3021cefa6a3ed55c5c3f2ba177e9569f59460ae27182f`  
		Last Modified: Mon, 06 Jul 2026 18:55:24 GMT  
		Size: 3.1 MB (3072415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63acdb2bd0288933b90ba4169e714a27fa68ede8ea8c90823be7db6fdcd45151`  
		Last Modified: Mon, 06 Jul 2026 18:55:23 GMT  
		Size: 60.6 KB (60551 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:683f3548862dd5dc246f93e2a1f5b374af629de7dc2357f5b3975ab11ff114c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.8 MB (73778959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41a7837b99c2a71581e28c6bf8a9680c4e0da3bd433578767be29247082020da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 18:55:51 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Mon, 06 Jul 2026 18:55:51 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Mon, 06 Jul 2026 18:55:51 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Mon, 06 Jul 2026 18:55:52 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Mon, 06 Jul 2026 18:55:52 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 18:55:52 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Mon, 06 Jul 2026 18:55:54 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Mon, 06 Jul 2026 18:55:54 GMT
ENV RABBITMQ_VERSION=4.3.2
# Mon, 06 Jul 2026 18:55:54 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 06 Jul 2026 18:55:54 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 06 Jul 2026 18:55:54 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 18:55:59 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Mon, 06 Jul 2026 18:56:00 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Mon, 06 Jul 2026 18:56:00 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Mon, 06 Jul 2026 18:56:00 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 06 Jul 2026 18:56:00 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 06 Jul 2026 18:56:00 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 06 Jul 2026 18:56:00 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Mon, 06 Jul 2026 18:56:00 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Mon, 06 Jul 2026 18:56:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 18:56:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 18:56:00 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Mon, 06 Jul 2026 18:56:00 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3747d691d2cd20be22928c084380bafc1e537460a9bf322c1ec95868faaf17e`  
		Last Modified: Mon, 06 Jul 2026 18:56:16 GMT  
		Size: 33.5 MB (33500723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc7e43c72673f7e504ee2ff268da11e1cc2055f9bd6d18a36966e17de8bf8b38`  
		Last Modified: Mon, 06 Jul 2026 18:56:15 GMT  
		Size: 9.2 MB (9196048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63946e66ef3bc3d9edfe49b1cae41d380f4c2d44b2c7ad5967c99fc59b3dce19`  
		Last Modified: Mon, 06 Jul 2026 18:56:14 GMT  
		Size: 1.4 MB (1408648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1383cb3000e959437520f1da9668a883b5a65aa8da1b72d646f238274e307577`  
		Last Modified: Mon, 06 Jul 2026 18:56:16 GMT  
		Size: 26.0 MB (26003806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15ad0ca3fa2010c7df84dc21706987320a118df03b5133331aa3c7b61835f038`  
		Last Modified: Mon, 06 Jul 2026 18:56:16 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1821e155715e3c284e02274df2643993d16d0bd1b76a9e8a6211e162d96148b`  
		Last Modified: Mon, 06 Jul 2026 18:56:17 GMT  
		Size: 106.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:819653f7a88e39694716638d4eb9d81519360b12247fa8567dd3b71097643752`  
		Last Modified: Mon, 06 Jul 2026 18:56:17 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00fec18ffac5b159b51864e0b2b2ff02ebb8d4c6cd7aebac6a4d2cd0aab3f6f0`  
		Last Modified: Mon, 06 Jul 2026 18:56:18 GMT  
		Size: 831.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:74b6aea563b2071e9a821af15a7b18617e7d644f06c76057abf0141d4104e937
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6914904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64c9c055348dc25c155164832a08df2d455d67b4e80276a72c5afe3aeace8ee8`

```dockerfile
```

-	Layers:
	-	`sha256:f635156efdb9e560efa290fbcd5833dc13b0802c7fb5ebeee48742e6d6d4c0e5`  
		Last Modified: Mon, 06 Jul 2026 18:56:14 GMT  
		Size: 670.8 KB (670818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e613957f2462ea1cef0aa8b183c35d16400c96349a7bb1a2ad730e7c68773df`  
		Last Modified: Mon, 06 Jul 2026 18:56:15 GMT  
		Size: 3.2 MB (3168788 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:314c6732e5b4b770afd25aa0a3c2447cd212e8ff9aaab1bcce3dba13550a27a3`  
		Last Modified: Mon, 06 Jul 2026 18:56:14 GMT  
		Size: 3.0 MB (3015036 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ec256b6e32fbaf811002f109bc0057f98b18e7c771b86d9f51366439dabc988`  
		Last Modified: Mon, 06 Jul 2026 18:56:14 GMT  
		Size: 60.3 KB (60262 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:217df6d847d2d2e25632310721e6769bc9482cf883a180d4b4dc2a26e5c4dfba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.4 MB (75437206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f239ad60b1dacaf8a956421b8672ecee316e1b86b6f994818221222e9d5dd61d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 19:58:22 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Mon, 06 Jul 2026 19:58:22 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Mon, 06 Jul 2026 19:58:22 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Mon, 06 Jul 2026 19:58:23 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Mon, 06 Jul 2026 19:58:23 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 19:58:23 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Mon, 06 Jul 2026 19:58:27 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Mon, 06 Jul 2026 19:58:27 GMT
ENV RABBITMQ_VERSION=4.3.2
# Mon, 06 Jul 2026 19:58:27 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 06 Jul 2026 19:58:27 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 06 Jul 2026 19:58:27 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 19:58:38 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Mon, 06 Jul 2026 19:58:40 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Mon, 06 Jul 2026 19:58:41 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Mon, 06 Jul 2026 19:58:41 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 06 Jul 2026 19:58:41 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 06 Jul 2026 19:58:41 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 06 Jul 2026 19:58:41 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Mon, 06 Jul 2026 19:58:41 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Mon, 06 Jul 2026 19:58:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 19:58:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 19:58:41 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Mon, 06 Jul 2026 19:58:41 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:320fae6050b84300429121f2ea8197e89fc9e2b4e5f6fa5892aa008b1bd9bc54`  
		Last Modified: Mon, 06 Jul 2026 19:59:15 GMT  
		Size: 34.1 MB (34110221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92965c060fd2ce7e8ae7912ad105c2a813c3e9165a789fac99eb69f0e24ac92c`  
		Last Modified: Mon, 06 Jul 2026 19:59:14 GMT  
		Size: 10.0 MB (9966924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4105b7c310f84438e56c8ec65725be072972adeb06d319f92a27af541fe73d86`  
		Last Modified: Mon, 06 Jul 2026 19:59:13 GMT  
		Size: 1.5 MB (1542214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccb881871f1df3a037929044ad2946271529915279d93dae0c5490b49e596e38`  
		Last Modified: Mon, 06 Jul 2026 19:59:15 GMT  
		Size: 26.0 MB (26003793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88859c786e965335692773212350fa7ae8002b7db435c9e5a54ac60d03d0ff14`  
		Last Modified: Mon, 06 Jul 2026 19:59:15 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16d4ba4bd9ebc1f6f75d0a6ade5f30ac267331f5f3ddde198be306e6ba0d8178`  
		Last Modified: Mon, 06 Jul 2026 19:59:16 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69f74c7886440d4b1fe6d972c1b85b0fb92686f68b09f0d3b8e8a7cc4ca1d33e`  
		Last Modified: Mon, 06 Jul 2026 19:59:16 GMT  
		Size: 623.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c22e618a282f26e01448acdafcb6dda00857b0b84377755aa0f37d4bf6c7694`  
		Last Modified: Mon, 06 Jul 2026 19:59:16 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:e137d4003212d4153fea55e2c3305b02594ca3427fde87839ae3c8e8d71a1ee0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6938108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df42f1f4ae703b593ef08bec21cc0f5970e8b284fd1d0915d1a0d76d3892070`

```dockerfile
```

-	Layers:
	-	`sha256:2e554bbc740bc19034babae9684b52e46c10d832b670923c4c1b66381e539048`  
		Last Modified: Mon, 06 Jul 2026 19:59:13 GMT  
		Size: 671.0 KB (670964 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:774faef3b5ecf312bdeee67e2ec27234944bffee1e98e589f19a9c9e04d6d04b`  
		Last Modified: Mon, 06 Jul 2026 19:59:14 GMT  
		Size: 3.2 MB (3180931 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6cd9533caef855aaf2d50fdc6533b58651e34d5f71d5d9df0d07c0e1af0e0b6a`  
		Last Modified: Mon, 06 Jul 2026 19:59:14 GMT  
		Size: 3.0 MB (3025838 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8658acaaa4e7d322e4e812297010e10dba033df80034f7b45c83eecf620ec135`  
		Last Modified: Mon, 06 Jul 2026 19:59:13 GMT  
		Size: 60.4 KB (60375 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:alpine` - linux; riscv64

```console
$ docker pull rabbitmq@sha256:0dad31bdfd38f82529ad283d6a6ce309c5b34c6227ce8535c06f829326675c8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.3 MB (79340929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fc81cb0a8a045ab466b18be7399d699fc0803ebd19b15b35d022976ad286929`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 20:18:12 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 23 Jun 2026 20:18:12 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 23 Jun 2026 20:18:12 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 23 Jun 2026 20:18:12 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 23 Jun 2026 20:18:12 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 23 Jun 2026 20:18:12 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 23 Jun 2026 20:18:23 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Tue, 23 Jun 2026 20:18:23 GMT
ENV RABBITMQ_VERSION=4.3.2
# Tue, 23 Jun 2026 20:18:23 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 23 Jun 2026 20:18:23 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 23 Jun 2026 20:18:23 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 23 Jun 2026 20:19:01 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 23 Jun 2026 20:19:10 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 23 Jun 2026 20:19:10 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 23 Jun 2026 20:19:10 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 23 Jun 2026 20:19:10 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 23 Jun 2026 20:19:10 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 23 Jun 2026 20:19:10 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 23 Jun 2026 20:19:10 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 23 Jun 2026 20:19:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 23 Jun 2026 20:19:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Jun 2026 20:19:11 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 23 Jun 2026 20:19:11 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a13ce983133397415483b046e1cb902973c749b0deec5b9e50b35703acb133a`  
		Last Modified: Tue, 23 Jun 2026 20:24:49 GMT  
		Size: 37.5 MB (37516239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84fa906b84914ed6dac5086f85f3af36e4eefd81f3802eb57b0c807fa8e2af6e`  
		Last Modified: Tue, 23 Jun 2026 20:24:43 GMT  
		Size: 10.8 MB (10796126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f111aa9f68643ba1f6a4f7defd011a770ec27949992d62352b6d98cbb438158a`  
		Last Modified: Tue, 23 Jun 2026 20:24:38 GMT  
		Size: 1.4 MB (1449573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d9da89efca5fda132c16bb75ae879dbf7e80bb51e9cf76ae9cd57533c8daeb3`  
		Last Modified: Tue, 23 Jun 2026 20:24:48 GMT  
		Size: 26.0 MB (26004001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03fe5cc3cee008e0a56c94262e780d4b1f4ceae65e5b4e1e9d3ee3d99047c1a9`  
		Last Modified: Tue, 23 Jun 2026 20:24:41 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91300fc66a10a85bbb35fab84ba6ca3e332341ba574124ddc6f96091623848f4`  
		Last Modified: Tue, 23 Jun 2026 20:24:43 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1599d0617d9a6915286f5b5453c81981a11e6c02690b31b8b75625420bad45d`  
		Last Modified: Tue, 23 Jun 2026 20:24:45 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672c5e8cf2e0848175abf6ec83f11c25c3e7214a59163bd20d790ebfee70e977`  
		Last Modified: Tue, 23 Jun 2026 20:24:45 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:3f6340e3b43eb0b8aa1d3cf14aae07a2b5164488f8eb4ba0d374e930b7e224fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7017304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09ef8b666ae3bdfe4f2a71359e7eea791a30e2fcbd7032be480c69220a077f94`

```dockerfile
```

-	Layers:
	-	`sha256:c8ab5036fc38bcea4dc99e3d5db0a26d83af4fd18a750568ff03384c0b8640a6`  
		Last Modified: Tue, 23 Jun 2026 20:24:38 GMT  
		Size: 673.9 KB (673924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db3b378dd10b201fa3a09b2aa12de92eae6407c54e55e95df859e8feaf647c68`  
		Last Modified: Tue, 23 Jun 2026 20:24:39 GMT  
		Size: 3.2 MB (3219033 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f5de0dc33c7bab99fed96c2332c19cbd337f851c56a19677918b31fd518c681`  
		Last Modified: Tue, 23 Jun 2026 20:24:39 GMT  
		Size: 3.1 MB (3063965 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f9044ff67476dd7e862224e7ae1c4ed41efef1e2c6c72e5047ee39756669ebe`  
		Last Modified: Tue, 23 Jun 2026 20:24:37 GMT  
		Size: 60.4 KB (60382 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:6a110c0ed9489729858943453df0278ad3578ed430520e6403062f0f62df2f28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73535789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f63ea7e38538839f67501e18c1ac99f677bbc6fc1e2f1c9f6e3069886167046`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 20:03:15 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Mon, 06 Jul 2026 20:03:15 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Mon, 06 Jul 2026 20:03:15 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Mon, 06 Jul 2026 20:03:16 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Mon, 06 Jul 2026 20:03:16 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 20:03:16 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Mon, 06 Jul 2026 20:03:23 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Mon, 06 Jul 2026 20:03:23 GMT
ENV RABBITMQ_VERSION=4.3.2
# Mon, 06 Jul 2026 20:03:23 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 06 Jul 2026 20:03:23 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 06 Jul 2026 20:03:23 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 20:03:37 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Mon, 06 Jul 2026 20:03:40 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Mon, 06 Jul 2026 20:03:41 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Mon, 06 Jul 2026 20:03:41 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 06 Jul 2026 20:03:41 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 06 Jul 2026 20:03:41 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 06 Jul 2026 20:03:41 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Mon, 06 Jul 2026 20:03:43 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Mon, 06 Jul 2026 20:03:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 20:03:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 20:03:45 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Mon, 06 Jul 2026 20:03:45 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b9e8399398ee99f0246a1a243e83389c40e29dd8a8b6975f92001ce624ad779`  
		Last Modified: Mon, 06 Jul 2026 20:04:33 GMT  
		Size: 34.0 MB (33957289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f26a43205c8fa0292a4c32abdd3fb94c2f9befc126805232a081cbd0f721371`  
		Last Modified: Mon, 06 Jul 2026 20:04:32 GMT  
		Size: 8.4 MB (8350151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ddaf5998f8225125a4316cd13095a1f725e47efb55481b85c7abb270e866efb`  
		Last Modified: Mon, 06 Jul 2026 20:04:32 GMT  
		Size: 1.5 MB (1515535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58d49d569809e34112afb3f3218c1b731b272051953ea0a4c4c3f48fd900ed34`  
		Last Modified: Mon, 06 Jul 2026 20:04:33 GMT  
		Size: 26.0 MB (26003809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9070d5944d4135b903bf6a41cb309b86cfe188b11a558f8e195edf47f3384ea`  
		Last Modified: Mon, 06 Jul 2026 20:04:33 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b36690c5072458f2cf8e682fb609f2a42015e75994fdcf3e24a1631ee488bd4`  
		Last Modified: Mon, 06 Jul 2026 20:04:33 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc04a15b8fd070e9e658f52bf77fc3abbdead89e9b4dcc56ecfa65af69c98e82`  
		Last Modified: Mon, 06 Jul 2026 20:04:34 GMT  
		Size: 623.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d2bf59c0802981b0bcaaece40edf6c56c5984f3e6d88679bb4c14330105cec0`  
		Last Modified: Mon, 06 Jul 2026 20:04:34 GMT  
		Size: 831.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:fea58f05bcfd456c6147388bfe82830d91481b43c94c4e732d36f67ae8426589
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6714490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd65cc3fa03bc8ce4abc4c91466f44daca732a4b593e4efafb75192105f3c2dd`

```dockerfile
```

-	Layers:
	-	`sha256:36b799babbdec5c8ad701e1258c3816d453c00b94c2024697c8535aee3b3d573`  
		Last Modified: Mon, 06 Jul 2026 20:04:31 GMT  
		Size: 670.9 KB (670930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbb6ad46c36a4c5c279d1988df2376cc834d26fb777d5c3f9125d78676fbe030`  
		Last Modified: Mon, 06 Jul 2026 20:04:32 GMT  
		Size: 3.1 MB (3069155 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:60b2ab4e9d5340bc7f3036ae2e90f8262e6626f348f5871ba15ec6e66be01dee`  
		Last Modified: Mon, 06 Jul 2026 20:04:32 GMT  
		Size: 2.9 MB (2914092 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b41d1564bd7ce8d5af20fbb106fde52e5a321b9fbb82f5ee319057ca9346e6e2`  
		Last Modified: Mon, 06 Jul 2026 20:04:31 GMT  
		Size: 60.3 KB (60313 bytes)  
		MIME: application/vnd.in-toto+json
