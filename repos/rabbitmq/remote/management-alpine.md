## `rabbitmq:management-alpine`

```console
$ docker pull rabbitmq@sha256:e2f08f846de10bb09649a8b020f286ed362a8f72ee45e5a8d043851f1533fda8
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
$ docker pull rabbitmq@sha256:4c3c04dc6e120ad047de4a7fff18c93d3bfc9c38832ae6430d8689fbc84fff1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88834018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fd92a6fbfdd0e123065ee866d1b3382bf176f3e10c3fc3e7efe1075fa104f70`
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
# Thu, 27 Aug 2026 18:29:05 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Thu, 27 Aug 2026 18:29:05 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.34.0/rabbitmqadmin-2.34.0-x86_64-unknown-linux-musl'; digest='54df220660aaaf577dc033c88dec5034d234f5dfa439b6af99437f4fe4fa2833' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.34.0/rabbitmqadmin-2.34.0-aarch64-unknown-linux-musl'; digest='dec2af9911c2ee8b4dfc9528b67d7c6e0e7707d60f13f349cce0fb4920e1f90a' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Thu, 27 Aug 2026 18:29:05 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
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
	-	`sha256:930592b2dabe7965f5a3ab692e49e13fc159237518a65e9c22c186ecbaab4cde`  
		Last Modified: Thu, 27 Aug 2026 18:29:12 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6f0a537b7ce6ae3b4c24b424bcdccfedcb6f0d51e6164eb5811b64b4dbf8bb0`  
		Last Modified: Thu, 27 Aug 2026 18:29:12 GMT  
		Size: 4.4 MB (4420402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:51d9ac9390d4328cc90171b27fb7692f0cc954a609d540de6fc1cc2b90cd74bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.2 KB (691152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99bd1c5efe8dca365f7231e4c9066eabc1e9f44a486659b2c415924c16bf0ef5`

```dockerfile
```

-	Layers:
	-	`sha256:89ead628bd4853720e0581a883b47efb785e0b7fd9625cdc324bb774917d8c32`  
		Last Modified: Thu, 27 Aug 2026 18:29:12 GMT  
		Size: 675.9 KB (675914 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2aa2fd28febf5b3b59d9e62bc87cbabacfd0fb56f9e5d7ef95cf7e5a6fb9de6`  
		Last Modified: Thu, 27 Aug 2026 18:29:12 GMT  
		Size: 15.2 KB (15238 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:management-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:8dd0ad4283c1dc25d74a24f4832d390dd9d934612d58190eb5f9450be72ee4ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.6 MB (72591783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:409a26ab7cf0395d755dd8920e5519c3bfd163c26f2b7952a62ef99a968963f3`
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
# Thu, 27 Aug 2026 18:26:36 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Thu, 27 Aug 2026 18:26:36 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.34.0/rabbitmqadmin-2.34.0-x86_64-unknown-linux-musl'; digest='54df220660aaaf577dc033c88dec5034d234f5dfa439b6af99437f4fe4fa2833' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.34.0/rabbitmqadmin-2.34.0-aarch64-unknown-linux-musl'; digest='dec2af9911c2ee8b4dfc9528b67d7c6e0e7707d60f13f349cce0fb4920e1f90a' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Thu, 27 Aug 2026 18:26:36 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
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
	-	`sha256:01cd0c8c1f93a3f9f1c58669d2e082fff2371d45a5dcc4f271182ecd22197cc5`  
		Last Modified: Thu, 27 Aug 2026 18:26:40 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:56936306a6ba1db3d586a4d62ea7148da16f1c69a0b2fba4d84e1b5942ae09cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 KB (15111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b40cf61af4cfd6a69baeb9202d4439562ff484747de0dfb25fb48e20a5483cab`

```dockerfile
```

-	Layers:
	-	`sha256:6a43ae13e8153766d6ece3220a52e2f231107bbd7a4a92281f1f1f5921de425b`  
		Last Modified: Thu, 27 Aug 2026 18:26:40 GMT  
		Size: 15.1 KB (15111 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:management-alpine` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:f3b83c69188aab5c3b416d7a8e5209719dc722dc5b801d7532116402d8b0ac49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.7 MB (71681512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8769a610be8fbc394aae4e03f8515014d0b9d5c4d96a9bf82f03337f74bc872`
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
# Thu, 27 Aug 2026 18:29:33 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Thu, 27 Aug 2026 18:29:33 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.34.0/rabbitmqadmin-2.34.0-x86_64-unknown-linux-musl'; digest='54df220660aaaf577dc033c88dec5034d234f5dfa439b6af99437f4fe4fa2833' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.34.0/rabbitmqadmin-2.34.0-aarch64-unknown-linux-musl'; digest='dec2af9911c2ee8b4dfc9528b67d7c6e0e7707d60f13f349cce0fb4920e1f90a' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Thu, 27 Aug 2026 18:29:33 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
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
	-	`sha256:6786dbb12e472d7009ee870b326d59ef3c52da003985e7bdd66955c01c40d409`  
		Last Modified: Thu, 27 Aug 2026 18:29:39 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:7b4cbf02d17bed966ba9d021ec7751e2ee46965ed1ac0cea45faa5aeb4fa10cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **686.4 KB (686385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddb942aa3c22ec19dd61fe93a7df3c48de58f9783c8485492af600895d2c1c96`

```dockerfile
```

-	Layers:
	-	`sha256:181c01378d321fd325e7ac7ed101f54e18fdaad03f894fd091a8cc7987216e92`  
		Last Modified: Thu, 27 Aug 2026 18:29:39 GMT  
		Size: 671.1 KB (671058 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca4105318a2982b69f0a4bd1e91d7ba9442179a9bdc727b8f73f37eccbc5d99e`  
		Last Modified: Thu, 27 Aug 2026 18:29:39 GMT  
		Size: 15.3 KB (15327 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:b53d43da31e3effef6453eba1bc97ced153fdb06bee45640e430be9edb433ce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.6 MB (87583716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a14f398bc93551442ccdc175b873065b24290e885b1d5e075f23e73a824a44a`
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
# Thu, 27 Aug 2026 18:28:15 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Thu, 27 Aug 2026 18:28:15 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.34.0/rabbitmqadmin-2.34.0-x86_64-unknown-linux-musl'; digest='54df220660aaaf577dc033c88dec5034d234f5dfa439b6af99437f4fe4fa2833' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.34.0/rabbitmqadmin-2.34.0-aarch64-unknown-linux-musl'; digest='dec2af9911c2ee8b4dfc9528b67d7c6e0e7707d60f13f349cce0fb4920e1f90a' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Thu, 27 Aug 2026 18:28:15 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
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
	-	`sha256:d45f10857ae6a0943bab4b680ed0b1556e80f4def3bcf266e3d9f1c5591ad913`  
		Last Modified: Thu, 27 Aug 2026 18:28:22 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b17fcbf75752e02eadafcf548068c2a8f77f95bb387cebe1931502fd4aadf6b`  
		Last Modified: Thu, 27 Aug 2026 18:28:22 GMT  
		Size: 4.1 MB (4135617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:9923f7d9a2fa8ef015302630c42ca55aaec8b0ff0b36463a9e45a56a0d172f38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.4 KB (691419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7bf49c87fa51c5a51beaaf0e4621c8496f1425c5c7c0c3eab6d55e87e2fbb73`

```dockerfile
```

-	Layers:
	-	`sha256:6f9fb5cc22310eb757f7314a4d97c186463ff49a68bdca90950c5c58aa1b2385`  
		Last Modified: Thu, 27 Aug 2026 18:28:22 GMT  
		Size: 676.1 KB (676058 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e36cfaf6a7b64357b865dceb50f8c67c68e318a638d1b28b494ddca429911838`  
		Last Modified: Thu, 27 Aug 2026 18:28:22 GMT  
		Size: 15.4 KB (15361 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:management-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:bb76e980735a9061405b7946e7a1ba9a14b7ec48657fdf3eb553eeb2f26f2407
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.0 MB (74011830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:410342785f9fa7e4d2b0f8889363143815258f5b9c57978923aca9009c912912`
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
# Thu, 27 Aug 2026 18:26:32 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Thu, 27 Aug 2026 18:26:32 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.34.0/rabbitmqadmin-2.34.0-x86_64-unknown-linux-musl'; digest='54df220660aaaf577dc033c88dec5034d234f5dfa439b6af99437f4fe4fa2833' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.34.0/rabbitmqadmin-2.34.0-aarch64-unknown-linux-musl'; digest='dec2af9911c2ee8b4dfc9528b67d7c6e0e7707d60f13f349cce0fb4920e1f90a' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Thu, 27 Aug 2026 18:26:32 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
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
	-	`sha256:4743f8dc10ecc8e10511114ccd670867e1cf2e44e4fbda07cbb7d3e7d1b2bc7b`  
		Last Modified: Thu, 27 Aug 2026 18:26:38 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:64b110047963269b48f482cf85ac79e55521dcebe635b3a04f7b0578b1713c1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **686.1 KB (686109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef1c49ac169dc337d41411ea922ba51b836eb70732516848601dc3b5f4d9bfdc`

```dockerfile
```

-	Layers:
	-	`sha256:8a9fc227d8f4f9dac28149b0c7332cc6bb22ba92c91f2e3db12285fd9b0b1e30`  
		Last Modified: Thu, 27 Aug 2026 18:26:38 GMT  
		Size: 670.9 KB (670909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67f3688804734f80c3c4b95be8c66e9fb7271eddb0ebb9995e5c82820fcec3bb`  
		Last Modified: Thu, 27 Aug 2026 18:26:38 GMT  
		Size: 15.2 KB (15200 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:1175a4fec7b07d3cc745f6ed7dc96008b7064a10947ae3210d5f5087bc7c09c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.7 MB (75677515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52862207e799006f988da67aead8108382b309613711a58ee6d9e269e33cae58`
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
# Thu, 27 Aug 2026 18:31:08 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Thu, 27 Aug 2026 18:31:08 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.34.0/rabbitmqadmin-2.34.0-x86_64-unknown-linux-musl'; digest='54df220660aaaf577dc033c88dec5034d234f5dfa439b6af99437f4fe4fa2833' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.34.0/rabbitmqadmin-2.34.0-aarch64-unknown-linux-musl'; digest='dec2af9911c2ee8b4dfc9528b67d7c6e0e7707d60f13f349cce0fb4920e1f90a' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Thu, 27 Aug 2026 18:31:08 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
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
	-	`sha256:30d6d7e56b56bfc7eb3b4dad11115dc9477c5759966eb6b8e121bbf056920422`  
		Last Modified: Thu, 27 Aug 2026 18:31:19 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:f3b3867f7f1abcbd4028e7f3116540538d01f6cbde96f6a602d52e1a137d56f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **686.3 KB (686335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae5c60d10750c8e429fb422ce515d6611a34728e3883ecf0ee2bdcd81ecd7395`

```dockerfile
```

-	Layers:
	-	`sha256:8801cd6fba6ab34c4a45396eea2cc1b98bacbe26ed07ba908821008b6fe7807f`  
		Last Modified: Thu, 27 Aug 2026 18:31:19 GMT  
		Size: 671.1 KB (671055 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9b5ab11602123adf45560025b74ebc71bac7d869b47277a826abe79cfd7806e`  
		Last Modified: Thu, 27 Aug 2026 18:31:19 GMT  
		Size: 15.3 KB (15280 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:management-alpine` - linux; riscv64

```console
$ docker pull rabbitmq@sha256:6482db04cff4d6ae53ea164f85bd1b833d7d88e9358ea67dec66f14a5962e76f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79585927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2e984bb82a782aa48da8cd54d8d6d716e912b2e8d9d0389d6727ed19a515c0a`
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
# Wed, 19 Aug 2026 04:06:25 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Fri, 21 Aug 2026 17:26:37 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.34.0/rabbitmqadmin-2.34.0-x86_64-unknown-linux-musl'; digest='54df220660aaaf577dc033c88dec5034d234f5dfa439b6af99437f4fe4fa2833' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.34.0/rabbitmqadmin-2.34.0-aarch64-unknown-linux-musl'; digest='dec2af9911c2ee8b4dfc9528b67d7c6e0e7707d60f13f349cce0fb4920e1f90a' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Fri, 21 Aug 2026 17:26:37 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
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
	-	`sha256:afc4402806efe747901a49ffb65426e2de4b0daf1d6f25e64193bf1a191f4a2c`  
		Last Modified: Wed, 19 Aug 2026 04:07:21 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:489295ae3051011192aa4875a52804f5a0e4aec3641606bd51dbc6d97497f45a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **689.3 KB (689307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d24b51d8846adac60dc8ea2cc9ebfc8ca60f48f65ea581a7d9d063c46a22d27`

```dockerfile
```

-	Layers:
	-	`sha256:2ba805d6e6c1db3665651b5094e6c78de4cab80cdd6a802ce9b2f88296fed58d`  
		Last Modified: Fri, 21 Aug 2026 17:27:32 GMT  
		Size: 674.0 KB (674024 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c0ff17174ff21e55c34fc4fcde4ddfb89dd3743e04833386b05e6adf87ee4d9`  
		Last Modified: Fri, 21 Aug 2026 17:27:32 GMT  
		Size: 15.3 KB (15283 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:management-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:bd41faea8b4be6acbbc4dea4ae0b119b330b420034ac8c8f6ad23a4a6aab0842
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.8 MB (73765263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35fffd79cff609bd6fed531f1697bd84f2e4c42f08f9cffecbb05ce862da29b9`
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
# Thu, 27 Aug 2026 19:09:46 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Thu, 27 Aug 2026 19:09:50 GMT
RUN set -eux; 	arch="$(apk --print-arch)"; 		case "$arch" in 		'x86_64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.34.0/rabbitmqadmin-2.34.0-x86_64-unknown-linux-musl'; digest='54df220660aaaf577dc033c88dec5034d234f5dfa439b6af99437f4fe4fa2833' ;; 		'aarch64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.34.0/rabbitmqadmin-2.34.0-aarch64-unknown-linux-musl'; digest='dec2af9911c2ee8b4dfc9528b67d7c6e0e7707d60f13f349cce0fb4920e1f90a' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum -c -; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Thu, 27 Aug 2026 19:09:50 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
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
	-	`sha256:bdf1a5b27e0de5f306596a0d1ff7d6d89b7809e488cb291e8a4d2c2e35e97173`  
		Last Modified: Thu, 27 Aug 2026 19:10:25 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:management-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:15c88f00180bcf2b7009623a8b0daf3e2a3392dddf8bf17150b411b680d67be1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **686.3 KB (686255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18a0d06e2df02712854f6994659c4849a94ec7d9c988065ed9b5bf4bf8aa37b6`

```dockerfile
```

-	Layers:
	-	`sha256:f05150f79354a1eb5d928ac54446decb49ffae4565269ee8c8be64e455318e49`  
		Last Modified: Thu, 27 Aug 2026 19:10:25 GMT  
		Size: 671.0 KB (671021 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3af2705b69d9f3fb7602d8a33319b74dd5f097291ed251d7fb208cb23f650ff`  
		Last Modified: Thu, 27 Aug 2026 19:10:25 GMT  
		Size: 15.2 KB (15234 bytes)  
		MIME: application/vnd.in-toto+json
