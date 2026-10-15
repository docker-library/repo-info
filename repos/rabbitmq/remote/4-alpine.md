## `rabbitmq:4-alpine`

```console
$ docker pull rabbitmq@sha256:6931816af1a943f471c038b278835d36692d55dec769232739296bb91b7de0f5
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
$ docker pull rabbitmq@sha256:266f3807c975a22ffce3274b042b42ac6500b88496c460ad8468ee8a197992be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.6 MB (84558767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d89a00a30facfc2f9a485665b1f1846f8f5da3f85e60e95f83fc805d7e0e9fdd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Wed, 14 Oct 2026 20:30:16 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Wed, 14 Oct 2026 20:30:16 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Wed, 14 Oct 2026 20:30:16 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Wed, 14 Oct 2026 20:30:16 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Wed, 14 Oct 2026 20:30:16 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 20:30:16 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Wed, 14 Oct 2026 20:30:19 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Wed, 14 Oct 2026 20:30:19 GMT
ENV RABBITMQ_VERSION=4.3.6
# Wed, 14 Oct 2026 20:30:19 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 14 Oct 2026 20:30:19 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 14 Oct 2026 20:30:19 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 20:30:25 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Wed, 14 Oct 2026 20:30:26 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Wed, 14 Oct 2026 20:30:26 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Wed, 14 Oct 2026 20:30:26 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 14 Oct 2026 20:30:26 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 14 Oct 2026 20:30:26 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 14 Oct 2026 20:30:26 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Wed, 14 Oct 2026 20:30:26 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Wed, 14 Oct 2026 20:30:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 14 Oct 2026 20:30:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Oct 2026 20:30:26 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Wed, 14 Oct 2026 20:30:26 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a01c6bc953818933b12c110fbe17bc07db598b740eba0a6135d8dc1b9ccf73e`  
		Last Modified: Wed, 14 Oct 2026 20:30:43 GMT  
		Size: 42.7 MB (42715819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10087dbe9fa9013116a3c100fdab5669539d36eb91675381429ef4eeb53aa4e5`  
		Last Modified: Wed, 14 Oct 2026 20:30:42 GMT  
		Size: 9.2 MB (9231952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:290a9a2021ca1849bc863880a5e8f64eb296ace2978c05494bf56306a338fd34`  
		Last Modified: Wed, 14 Oct 2026 20:30:41 GMT  
		Size: 2.5 MB (2468945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31fcec3929d053d2d357005b51896a33bbcb602641f3022106ef8eb5e38ba29d`  
		Last Modified: Wed, 14 Oct 2026 20:30:43 GMT  
		Size: 26.3 MB (26291797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df83c86b2ef4d7c4579cb31f0bf6fc17fb33fdda25b13c2d485b5a98e99ab47d`  
		Last Modified: Wed, 14 Oct 2026 20:30:43 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43b20fd7114bae2452c486de46465b6b9c1aee037178aeae23c614139fe7185f`  
		Last Modified: Wed, 14 Oct 2026 20:30:43 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a14ed0d8bfd827adf13de5dc104d926c7e4893c483293ed3cbd40dad0ce208fa`  
		Last Modified: Wed, 14 Oct 2026 20:30:44 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc8782b2d0ce4e4142c87719e68ecdc9cb8ec86874fcd7430074bfa736e43887`  
		Last Modified: Wed, 14 Oct 2026 20:30:44 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:c21649afe604af7f8efd82d3c16f25cdfcb773ad487d33f3e272aa0d5fe8399f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6963477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b4ae2015adf92777dfc2e3640512ab36a8b7048a09285ea87f373a1276b3d09`

```dockerfile
```

-	Layers:
	-	`sha256:ff118c58398bd5ad4315cea9121454a27ac2eb4d765762b3352306ddafe23459`  
		Last Modified: Wed, 14 Oct 2026 20:30:41 GMT  
		Size: 675.8 KB (675832 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c2df69f7c52f690a2b787b117f76fe12e22d3f551025defc9b9c2877136a3ef`  
		Last Modified: Wed, 14 Oct 2026 20:30:42 GMT  
		Size: 3.2 MB (3190553 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4113f2e4e929c9c93ef30f2eaf8868b04fba75ae67af6621f79ce1691a13cb8c`  
		Last Modified: Wed, 14 Oct 2026 20:30:41 GMT  
		Size: 3.0 MB (3036779 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d576e072d015795317c714bd150e020e0f1050f12da3430449d93e07bd654e8a`  
		Last Modified: Wed, 14 Oct 2026 20:30:41 GMT  
		Size: 60.3 KB (60313 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:a14b65afb57d78a28a737f6fe6def02a7c0d01a24be7acce60a17c9e258f47b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.7 MB (72723610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abd991be1e83fa8899a164f6e21a6a2fdb488e9cc34dc33b7118d3fe2298088b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Wed, 14 Oct 2026 20:29:39 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Wed, 14 Oct 2026 20:29:39 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Wed, 14 Oct 2026 20:29:39 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Wed, 14 Oct 2026 20:29:39 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Wed, 14 Oct 2026 20:29:39 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 20:29:39 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Wed, 14 Oct 2026 20:29:42 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Wed, 14 Oct 2026 20:29:42 GMT
ENV RABBITMQ_VERSION=4.3.6
# Wed, 14 Oct 2026 20:29:42 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 14 Oct 2026 20:29:42 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 14 Oct 2026 20:29:42 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 20:29:52 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Wed, 14 Oct 2026 20:29:53 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Wed, 14 Oct 2026 20:29:54 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Wed, 14 Oct 2026 20:29:54 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 14 Oct 2026 20:29:54 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 14 Oct 2026 20:29:54 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 14 Oct 2026 20:29:54 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Wed, 14 Oct 2026 20:29:54 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Wed, 14 Oct 2026 20:29:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 14 Oct 2026 20:29:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Oct 2026 20:29:54 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Wed, 14 Oct 2026 20:29:54 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24d79fae353a13ef672d12fff8f3de362e82d4e08278b13b13bfa0d3bf413a20`  
		Last Modified: Wed, 14 Oct 2026 20:30:01 GMT  
		Size: 33.6 MB (33588838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ecd0cbd033eb722b61d549385a95f52262c82b223f6b68358b44f6c0ecaf46c`  
		Last Modified: Wed, 14 Oct 2026 20:30:00 GMT  
		Size: 7.9 MB (7877698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9da1471c2fb7f819dfabc1e38502a69e93d15d375b44ec1be2e73a17c0d5d24`  
		Last Modified: Wed, 14 Oct 2026 20:30:00 GMT  
		Size: 1.4 MB (1408265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d326d5c20e7a770e8775df43b9aedcb9d026b57f4692e295cfacd47805770d`  
		Last Modified: Wed, 14 Oct 2026 20:30:01 GMT  
		Size: 26.3 MB (26292128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b67d28c9bc4f0f6f573cbe605edcbc4b2ba7bff0146c33cf29c9b6b5041ae8eb`  
		Last Modified: Wed, 14 Oct 2026 20:30:01 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91d5424428e3ddb583537c3ebf5aa5d047cb9aeba00b554b532d4bebbf4b5a42`  
		Last Modified: Wed, 14 Oct 2026 20:30:02 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3914bb3bfdd1d3017ae34824b005c38f2019bfb2ed8c9d8f030e09b88c6565b`  
		Last Modified: Wed, 14 Oct 2026 20:30:03 GMT  
		Size: 621.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c7070c29226cfe8459b36041c7082764ca47d554b79d7a05f5943d7c721a971`  
		Last Modified: Wed, 14 Oct 2026 20:30:03 GMT  
		Size: 832.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:1af0738423b3f7a783f3061df074ae9e469d73fe667983ba2824b7f18cd697ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.3 KB (60293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:536b70dd9cd6c2c2168245304a1f639eb1e6b6068feee5eb89d3c72cdd84fcb6`

```dockerfile
```

-	Layers:
	-	`sha256:1bdc1ddf52af83a18eb7bfdbf81b9ef5e62baaf3956780ec0a901fb23d6e6260`  
		Last Modified: Wed, 14 Oct 2026 20:30:00 GMT  
		Size: 60.3 KB (60293 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-alpine` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:bad729db957479f1cdc5028d35f1852a880576abdc18b33a94568908b93c8321
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71816231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8f2334e0cd808d25b981d96629275a846e9f2fe073f89d25ad02cd1831f80a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Wed, 14 Oct 2026 20:33:05 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Wed, 14 Oct 2026 20:33:05 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Wed, 14 Oct 2026 20:33:05 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Wed, 14 Oct 2026 20:33:05 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Wed, 14 Oct 2026 20:33:05 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 20:33:05 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Wed, 14 Oct 2026 20:33:08 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Wed, 14 Oct 2026 20:33:08 GMT
ENV RABBITMQ_VERSION=4.3.6
# Wed, 14 Oct 2026 20:33:08 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 14 Oct 2026 20:33:08 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 14 Oct 2026 20:33:08 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 20:33:16 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Wed, 14 Oct 2026 20:33:17 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Wed, 14 Oct 2026 20:33:17 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Wed, 14 Oct 2026 20:33:17 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 14 Oct 2026 20:33:17 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 14 Oct 2026 20:33:17 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 14 Oct 2026 20:33:17 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Wed, 14 Oct 2026 20:33:17 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Wed, 14 Oct 2026 20:33:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 14 Oct 2026 20:33:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Oct 2026 20:33:17 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Wed, 14 Oct 2026 20:33:17 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b64916216682cc794920edd8107ac4f7456ffe12c00eab486d5e3632e51aa0b8`  
		Last Modified: Wed, 14 Oct 2026 20:33:33 GMT  
		Size: 33.5 MB (33494440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e36a3e9b13248331eda7a89ba57e3260d55a96cb57c5ed9c6d38b7554a7f820c`  
		Last Modified: Wed, 14 Oct 2026 20:33:32 GMT  
		Size: 7.5 MB (7465684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1523dc146d258dd1cb77277e123a65465f81fddc07768f99dc16cb6bc5e58f6`  
		Last Modified: Wed, 14 Oct 2026 20:33:31 GMT  
		Size: 1.3 MB (1298856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d3a689009b94c777103272fdaa4414348c518e90b3bfae3040f21a0914a1828`  
		Last Modified: Wed, 14 Oct 2026 20:33:33 GMT  
		Size: 26.3 MB (26292589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af04375c18b2b9fcf53c6363fb6b677e6cccc8be8f22f8939f50f4638e1181c`  
		Last Modified: Wed, 14 Oct 2026 20:33:33 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9229885c6ed13cc2d5d292fe913a63752b68a1ce3ab8ce5533e15e772fa01789`  
		Last Modified: Wed, 14 Oct 2026 20:33:33 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d122f3236e28bf3480cf714d8dbfacd03fa699f49e931628c6d866bdbad083f`  
		Last Modified: Wed, 14 Oct 2026 20:33:34 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44b7221a22622afc623e745729572b85a7567843ae0afb55fb6753102dfcb32d`  
		Last Modified: Wed, 14 Oct 2026 20:33:34 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:681ba2d96b937bcb9ab74711ca376dac2f43a79f935edf4f5c036aaf38827dee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6690473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a75bfbbf4d6cfe1939ad63563ac3b86fc02d416539a8b7bfb1ddc4900b538f5`

```dockerfile
```

-	Layers:
	-	`sha256:455495c44a45444609a57cbcf2274a163994227f5c46d396191869c5fb7c0f74`  
		Last Modified: Wed, 14 Oct 2026 20:33:31 GMT  
		Size: 671.0 KB (670976 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6486cd9720c90179e3ac6c23860d7d5ed2b814bdc6778aba3b94d943c63e9fb`  
		Last Modified: Wed, 14 Oct 2026 20:33:32 GMT  
		Size: 3.1 MB (3057046 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:668929d84bc132f1e1a6e83639dc3dc571374e94d0bf4072c2a5fbec09ed3a75`  
		Last Modified: Wed, 14 Oct 2026 20:33:32 GMT  
		Size: 2.9 MB (2901941 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:060170892d2ff0e1df250e3ed9c2307924e484c8e96ea4c58a1814f897101d56`  
		Last Modified: Wed, 14 Oct 2026 20:33:31 GMT  
		Size: 60.5 KB (60510 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:f84b8c4d86bb76f3cf09719db979336be482ca4237a72d06a6e3a9321f720117
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.6 MB (83584011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecbbeacfd0e49da18071154c0ae972fcb52358e954f12dc53f09bfa098cb6317`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Wed, 14 Oct 2026 20:33:14 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Wed, 14 Oct 2026 20:33:14 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Wed, 14 Oct 2026 20:33:14 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Wed, 14 Oct 2026 20:33:14 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Wed, 14 Oct 2026 20:33:14 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 20:33:14 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Wed, 14 Oct 2026 20:33:16 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Wed, 14 Oct 2026 20:33:16 GMT
ENV RABBITMQ_VERSION=4.3.6
# Wed, 14 Oct 2026 20:33:16 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 14 Oct 2026 20:33:16 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 14 Oct 2026 20:33:16 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 20:33:25 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Wed, 14 Oct 2026 20:33:26 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Wed, 14 Oct 2026 20:33:26 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Wed, 14 Oct 2026 20:33:26 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 14 Oct 2026 20:33:26 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 14 Oct 2026 20:33:26 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 14 Oct 2026 20:33:26 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Wed, 14 Oct 2026 20:33:26 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Wed, 14 Oct 2026 20:33:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 14 Oct 2026 20:33:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Oct 2026 20:33:26 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Wed, 14 Oct 2026 20:33:26 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5690c1d72d857984cc7b8a418042b2c8824a4bd6d5b1135470b9fd3c13936cc`  
		Last Modified: Wed, 14 Oct 2026 20:33:44 GMT  
		Size: 40.6 MB (40565694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:518471f77ec97e15f3572f1b45f440219c9c85b1f589f2c57ae2670823b494bf`  
		Last Modified: Wed, 14 Oct 2026 20:33:42 GMT  
		Size: 10.0 MB (10020935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42151748df21b7c0399248475084b3728ac5203573e66a33249d2a88778368fa`  
		Last Modified: Wed, 14 Oct 2026 20:33:42 GMT  
		Size: 2.5 MB (2517661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5253b0cfc13eaecd02ec2388dcf0cd1d5490e83e08d0a0e7e49def48bba2d67`  
		Last Modified: Wed, 14 Oct 2026 20:33:43 GMT  
		Size: 26.3 MB (26291916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:942ea5689b183a9dd7596762f8f452a086de0a52bc13e69cf48faaf69a5d9efe`  
		Last Modified: Wed, 14 Oct 2026 20:33:43 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89629f40a984dfaa89ba295bbb994c2122475faa5d07c286f57a48dde61d4125`  
		Last Modified: Wed, 14 Oct 2026 20:33:44 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8596c71da428eb40165be8e868874e0119ad367f356fad57a8105257a1a87e04`  
		Last Modified: Wed, 14 Oct 2026 20:33:45 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dffab3c0185b355c8826a866f21a021afb29c4b4574e8dac0035d84ec69b682`  
		Last Modified: Wed, 14 Oct 2026 20:33:45 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:0a375e3e848ad9f20d46bd64535b52df33a7698bd1a960d6d56e12643d19dff3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7036464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59e1d612101beb22845f8c830e5e014f9498784d92917af241af49aa44f83095`

```dockerfile
```

-	Layers:
	-	`sha256:11c42235046c0da53933575d1ccc79cd0ad1c85e6c82d6d87b844ec3f0830651`  
		Last Modified: Wed, 14 Oct 2026 20:33:42 GMT  
		Size: 676.0 KB (675976 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2d5425dc97c38727ddb4876e4d3407e69ae198a57d48aa17452e21f97d8c6e9`  
		Last Modified: Wed, 14 Oct 2026 20:33:42 GMT  
		Size: 3.2 MB (3227514 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6de54e56340aef37826e134867196546559c72f51e4c7e9f088529a3ff33a90`  
		Last Modified: Wed, 14 Oct 2026 20:33:42 GMT  
		Size: 3.1 MB (3072415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:144d3ab873b7633b4206d84e1478268802838bd3f50eb3b1e9a1ca85a3f8fa5c`  
		Last Modified: Wed, 14 Oct 2026 20:33:42 GMT  
		Size: 60.6 KB (60559 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:c7a36926fc64e40529da81d1a8adb038db0c35fedd941cae39ca10c79939d1c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74157934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55a857f7c70bb834dfde03ad79fe90e4eee78dbed6caba4cc1eec8914e70d482`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:28 GMT
ADD alpine-minirootfs-3.23.6-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:28 GMT
CMD ["/bin/sh"]
# Wed, 14 Oct 2026 20:30:33 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Wed, 14 Oct 2026 20:30:33 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Wed, 14 Oct 2026 20:30:33 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Wed, 14 Oct 2026 20:30:34 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Wed, 14 Oct 2026 20:30:34 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 20:30:34 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Wed, 14 Oct 2026 20:30:36 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Wed, 14 Oct 2026 20:30:36 GMT
ENV RABBITMQ_VERSION=4.3.6
# Wed, 14 Oct 2026 20:30:36 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 14 Oct 2026 20:30:36 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 14 Oct 2026 20:30:36 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 20:30:42 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Wed, 14 Oct 2026 20:30:43 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Wed, 14 Oct 2026 20:30:43 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Wed, 14 Oct 2026 20:30:43 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 14 Oct 2026 20:30:43 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 14 Oct 2026 20:30:43 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 14 Oct 2026 20:30:43 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Wed, 14 Oct 2026 20:30:43 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Wed, 14 Oct 2026 20:30:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 14 Oct 2026 20:30:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Oct 2026 20:30:43 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Wed, 14 Oct 2026 20:30:43 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:1f89eeb8219ece88ee6dd2e7cad6761d1e9da9e18f4b7929d9ee0052902df74a`  
		Last Modified: Thu, 17 Sep 2026 20:37:33 GMT  
		Size: 3.7 MB (3675111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae5d1e07fd8d36c3c60832aaf628ad906f34ff8b070b91fd31e14a7ed2827d2`  
		Last Modified: Wed, 14 Oct 2026 20:30:58 GMT  
		Size: 33.5 MB (33549717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43cf7f6892be33f7a3f80200021adde9fdf134932ee684a45576087766b9ca9a`  
		Last Modified: Wed, 14 Oct 2026 20:30:57 GMT  
		Size: 9.2 MB (9226078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84832eaa4d6a85d28dcc7362fb000263a7cb2240f32619353cdb9db58ceec255`  
		Last Modified: Wed, 14 Oct 2026 20:30:57 GMT  
		Size: 1.4 MB (1412631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9cb511f41700c34b0cacddfdc1d47c2bff99c4e792a53f44d12bb28e785175`  
		Last Modified: Wed, 14 Oct 2026 20:30:58 GMT  
		Size: 26.3 MB (26292645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09909582c525ea80794be6049531b7b5c89e9b7cbbd9cf531985d2c0da9b5488`  
		Last Modified: Wed, 14 Oct 2026 20:30:58 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e371e3f2d60d890ef6337a412672ec78c724883ac1e42650f0b703ba633928a`  
		Last Modified: Wed, 14 Oct 2026 20:30:59 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613469b0ae100eb3f92a76c0ae67a50dc3e0ac9524ea933b661acfe7209a78c1`  
		Last Modified: Wed, 14 Oct 2026 20:30:59 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8243ee26161e4baa8ac0d324a58505aa2f55b15ca84dadf1e6b0cbfe3389c28a`  
		Last Modified: Wed, 14 Oct 2026 20:31:00 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:3a0d81b641e42228c9d982ec48170592a1581a2149ce0d6a91e3a81c4511cf40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6914932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3243dc08894cfaf37686690125cb084a7223b10175c15b212c95f059811eb940`

```dockerfile
```

-	Layers:
	-	`sha256:49dd716f2e490b1d89beb979cdb930806c0681b4e60c85d6ab9b9a3e2d4cbe4b`  
		Last Modified: Wed, 14 Oct 2026 20:30:57 GMT  
		Size: 670.8 KB (670827 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79a1668be19ff01a14773e7360889a50c5bb5ec338fb8a5590e9c4a309373818`  
		Last Modified: Wed, 14 Oct 2026 20:30:57 GMT  
		Size: 3.2 MB (3168806 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1d1179f17b746d866038669c704555d6faabd682cf71730d1051679326c80af`  
		Last Modified: Wed, 14 Oct 2026 20:30:57 GMT  
		Size: 3.0 MB (3015036 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b7ee612e79038d8e2bf77a3b30df1bdc8360970aa6ae7972b16525d8abcda95`  
		Last Modified: Wed, 14 Oct 2026 20:30:56 GMT  
		Size: 60.3 KB (60263 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:8ae964944ccde74eafedc9787334aadf26146fd83f98e3ad6127b8742cb4cf66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.8 MB (75819077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4aca4a2b879e67fea486ccfa0c048e3701ae437eb15ed706b855bbe92fc656d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Wed, 14 Oct 2026 20:55:13 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Wed, 14 Oct 2026 20:55:13 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Wed, 14 Oct 2026 20:55:13 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Wed, 14 Oct 2026 20:55:14 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Wed, 14 Oct 2026 20:55:14 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 20:55:14 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Wed, 14 Oct 2026 20:55:19 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Wed, 14 Oct 2026 20:55:19 GMT
ENV RABBITMQ_VERSION=4.3.6
# Wed, 14 Oct 2026 20:55:19 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 14 Oct 2026 20:55:19 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 14 Oct 2026 20:55:19 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 20:55:29 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Wed, 14 Oct 2026 20:55:31 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Wed, 14 Oct 2026 20:55:31 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Wed, 14 Oct 2026 20:55:31 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 14 Oct 2026 20:55:31 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 14 Oct 2026 20:55:31 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 14 Oct 2026 20:55:31 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Wed, 14 Oct 2026 20:55:32 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Wed, 14 Oct 2026 20:55:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 14 Oct 2026 20:55:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Oct 2026 20:55:33 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Wed, 14 Oct 2026 20:55:33 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0703364fb57c9199e0ab44fe23641a2d8ace7b4226ae710b66ee1b60c1a8098`  
		Last Modified: Wed, 14 Oct 2026 20:56:14 GMT  
		Size: 34.2 MB (34166245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca02735844510e0a8feb6622c2abaa48eab4ee785381e26afd62b6669f20f740`  
		Last Modified: Wed, 14 Oct 2026 20:56:13 GMT  
		Size: 10.0 MB (9997403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b673e7a0b94eea4ee0b4e91eddce66e39c6755bd45c1bab2d31826d5fad11a59`  
		Last Modified: Wed, 14 Oct 2026 20:56:12 GMT  
		Size: 1.5 MB (1546283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74e839e0eacd16c5804f11d9440f49db5c490c0b4154fbe7e987c5ae58efe39c`  
		Last Modified: Wed, 14 Oct 2026 20:56:14 GMT  
		Size: 26.3 MB (26292619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fee4b468928ab7106ee3f7deaa914b879a23588ad649373fefe14e5e863cd5af`  
		Last Modified: Wed, 14 Oct 2026 20:56:14 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7741366706b5b32c8cd26b9d2db7d6507ec81c6a891abd11a20c719f539d7331`  
		Last Modified: Wed, 14 Oct 2026 20:56:14 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:727cd0a67d74878d79ff0821c72c2ef30613f2d30e3da08e9d5ca87d491a4033`  
		Last Modified: Wed, 14 Oct 2026 20:56:15 GMT  
		Size: 624.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48396477959904a494c200307c9f0cdcbd77fcd5937fb5457eebbdf35dee6a54`  
		Last Modified: Wed, 14 Oct 2026 20:56:15 GMT  
		Size: 832.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:e5ae240c54e02257f8bc1fd26da6cf0880926d5bef1118963171e5debd3cf770
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6938135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3112060edf79a15e0d2aacac76a837b722d82cf30192cb4ea1657dd93cf28088`

```dockerfile
```

-	Layers:
	-	`sha256:1bd01dd04e80666a03e880996f7a6943a1e8e7408acfabd5691dbb5534c1df94`  
		Last Modified: Wed, 14 Oct 2026 20:56:12 GMT  
		Size: 671.0 KB (670973 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a1067eb2b1cab0de12866cb72b4ee0a2c3974b9819caba3aa3d10e7e80150fd`  
		Last Modified: Wed, 14 Oct 2026 20:56:12 GMT  
		Size: 3.2 MB (3180949 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67154be0fbb8d277f0a1715e6cc2d117cde834498160e359e15464a5fd2d8b15`  
		Last Modified: Wed, 14 Oct 2026 20:56:13 GMT  
		Size: 3.0 MB (3025838 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c97c49d49f3e2615ec8b28de95b856ef0752f7f85d6abcbee1cc65ce2493b38`  
		Last Modified: Wed, 14 Oct 2026 20:56:12 GMT  
		Size: 60.4 KB (60375 bytes)  
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
$ docker pull rabbitmq@sha256:d7da1074e4773dabf7ec7b548ac2064a82138eb18529dcbb12839dbf5b7d41a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.9 MB (73919373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6336510ee3fb81b7e266666e64c8b9b4a7d5aa3881f4dbd8e0581abfe5e0c92`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:23 GMT
ADD alpine-minirootfs-3.23.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:23 GMT
CMD ["/bin/sh"]
# Wed, 14 Oct 2026 20:40:51 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Wed, 14 Oct 2026 20:40:51 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Wed, 14 Oct 2026 20:40:51 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Wed, 14 Oct 2026 20:40:52 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Wed, 14 Oct 2026 20:40:52 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 20:40:52 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Wed, 14 Oct 2026 20:40:58 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Wed, 14 Oct 2026 20:40:58 GMT
ENV RABBITMQ_VERSION=4.3.6
# Wed, 14 Oct 2026 20:40:58 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 14 Oct 2026 20:40:58 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 14 Oct 2026 20:40:58 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 20:41:07 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Wed, 14 Oct 2026 20:41:08 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Wed, 14 Oct 2026 20:41:08 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Wed, 14 Oct 2026 20:41:08 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 14 Oct 2026 20:41:08 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 14 Oct 2026 20:41:08 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 14 Oct 2026 20:41:08 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Wed, 14 Oct 2026 20:41:09 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Wed, 14 Oct 2026 20:41:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 14 Oct 2026 20:41:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Oct 2026 20:41:09 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Wed, 14 Oct 2026 20:41:09 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:4387077d70188f8428b97ed5df25698ad5aa9b8967d00a98ebb627a3e08ae986`  
		Last Modified: Thu, 17 Sep 2026 21:38:32 GMT  
		Size: 3.7 MB (3713255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21d024f7f0b9c6efbecd015229437213ff33a322f3271080149773acef878194`  
		Last Modified: Wed, 14 Oct 2026 20:41:37 GMT  
		Size: 34.0 MB (34022068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edc13d55f812b09adee449d40ba84bc75f735a408336e84f685754e7c616faff`  
		Last Modified: Wed, 14 Oct 2026 20:41:36 GMT  
		Size: 8.4 MB (8370636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6e8088c21021d14a661f895bc1df2bba10d71ac29e22504a73a7630b5c62470`  
		Last Modified: Wed, 14 Oct 2026 20:41:35 GMT  
		Size: 1.5 MB (1519100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c47686a49dfbd0081ebcb0263388d4f4fe0c19188fd301a4f26130e76a9e90dd`  
		Last Modified: Wed, 14 Oct 2026 20:41:36 GMT  
		Size: 26.3 MB (26292557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bad3dbc1ff3f4706fa2e472b750367855c77946e92a84f7845a003192a479a1`  
		Last Modified: Wed, 14 Oct 2026 20:41:36 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3936e9abc5b7a43cfc1f24855e538bc9d79bc46152af7a7c1e0f3dabba97bf33`  
		Last Modified: Wed, 14 Oct 2026 20:41:37 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a6b2ede913b0eaca2efe082df3ff725ea8f60279ded672b5bd1e8855742785c`  
		Last Modified: Wed, 14 Oct 2026 20:41:37 GMT  
		Size: 624.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf51ddc84428c2cf56a1248dd83c83c90aa1a3f21e0344bf311a3260edb4313a`  
		Last Modified: Wed, 14 Oct 2026 20:41:38 GMT  
		Size: 831.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:5d41acfff7bd1f0b56f780988158e748e6dbc436537d441ba33196a86f594c99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6714517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad59c64cf856c4c3b27fecd922a7e411fc24779e9c769311a7f19ad1214a5bc4`

```dockerfile
```

-	Layers:
	-	`sha256:30ffb3e946bf209d78e52a2a8c860b08e97e5236bebc8e32402cb5c93f2caa61`  
		Last Modified: Wed, 14 Oct 2026 20:41:34 GMT  
		Size: 670.9 KB (670939 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0eee90b22d762a18c00c9adf5035c3c3e7806cd7365ca0a6c45625273b56f381`  
		Last Modified: Wed, 14 Oct 2026 20:41:35 GMT  
		Size: 3.1 MB (3069173 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd450ffec2a6ddb25ab5c4cd646eeadecbc1322f15048a8f9b9357c9932f1a48`  
		Last Modified: Wed, 14 Oct 2026 20:41:35 GMT  
		Size: 2.9 MB (2914092 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d371abb0bd3b4c1f93c40d8425e4a2210a6515e788f35a5626626b9d8699c796`  
		Last Modified: Wed, 14 Oct 2026 20:41:35 GMT  
		Size: 60.3 KB (60313 bytes)  
		MIME: application/vnd.in-toto+json
