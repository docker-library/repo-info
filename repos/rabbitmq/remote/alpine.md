## `rabbitmq:alpine`

```console
$ docker pull rabbitmq@sha256:594432bec3faa6c141e1ac3e50b17c384b36ae65ccd565837f4469ec0664a546
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
$ docker pull rabbitmq@sha256:2225c65600dbdd89d7d0a8e2ed386b1d0b32817a3c97ab6ef621ac33056bec27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90209869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e32174ea7bfa3a979e37493b0b7348eb1f0c46f8201a12fd91c7db8098b0fa4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:04:01 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Wed, 21 Oct 2026 23:04:01 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Wed, 21 Oct 2026 23:04:01 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Wed, 21 Oct 2026 23:04:01 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Wed, 21 Oct 2026 23:04:01 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:04:01 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Wed, 21 Oct 2026 23:04:03 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Wed, 21 Oct 2026 23:04:03 GMT
ENV RABBITMQ_VERSION=4.4.0
# Wed, 21 Oct 2026 23:04:03 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 21 Oct 2026 23:04:03 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 21 Oct 2026 23:04:03 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:04:10 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Wed, 21 Oct 2026 23:04:10 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Wed, 21 Oct 2026 23:04:11 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Wed, 21 Oct 2026 23:04:11 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 21 Oct 2026 23:04:11 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 21 Oct 2026 23:04:11 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 21 Oct 2026 23:04:11 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Wed, 21 Oct 2026 23:04:11 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Wed, 21 Oct 2026 23:04:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:04:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:04:11 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Wed, 21 Oct 2026 23:04:11 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7bae20055beef0e8e8e035b5ef85007fd8b700f3c89e1c61631d52d2ca50c20`  
		Last Modified: Wed, 21 Oct 2026 23:04:29 GMT  
		Size: 47.8 MB (47782667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aeca134e2ee1398e0656fbc1b1374a56d9ac8b0261c8c9996f531670c8f193e`  
		Last Modified: Wed, 21 Oct 2026 23:04:28 GMT  
		Size: 9.2 MB (9231984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c541e85eb6a87b96d20ef34f3b7c1cfd50ca2dd18a7fe1a7d0baf002f15b061`  
		Last Modified: Wed, 21 Oct 2026 23:04:28 GMT  
		Size: 2.5 MB (2479334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:705ec0ba1a4f9af03743a63af5be1361f060645734547f120d17e3a525eb0ada`  
		Last Modified: Wed, 21 Oct 2026 23:04:29 GMT  
		Size: 26.9 MB (26861028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47978bf4a272215a80d47a4f27300ebd3cf551c61837a939218bccaec7ed3561`  
		Last Modified: Wed, 21 Oct 2026 23:04:29 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2ac89bc4c9fb51a7c81a92212d144735bd884614ef1c1c6da428f6a9a9b555e`  
		Last Modified: Wed, 21 Oct 2026 23:04:29 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91e56fb15809ed954541f1beaaf7a5307f14219c41c28dc87398f8c7c159de3a`  
		Last Modified: Wed, 21 Oct 2026 23:04:30 GMT  
		Size: 620.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a511ee8166df3e110f0899ca8a2888531ad4eab1e05cba5a0289a7ef2ea1e445`  
		Last Modified: Wed, 21 Oct 2026 23:04:30 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:ef4d10d7461484e1007001f7cf2507a21403711e21cf109bddcb42ff63eeff91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7019939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9b0db956083a0f714eef095d216d8747769f827d1ef233c8961eb103504e640`

```dockerfile
```

-	Layers:
	-	`sha256:6b37c39af795ed14e0893f01a291eba6d3429cc8a0f02a0aaa19d5aa4304df84`  
		Last Modified: Wed, 21 Oct 2026 23:04:27 GMT  
		Size: 675.6 KB (675633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e962fed756dda27b4830d23a0047c0964fbaaf85545b85e26c128b6d83aa8623`  
		Last Modified: Wed, 21 Oct 2026 23:04:28 GMT  
		Size: 3.2 MB (3218320 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ecb3e72f1d1339793b950486614d50f1ac809626e867a40f23009e31a1d262c`  
		Last Modified: Wed, 21 Oct 2026 23:04:28 GMT  
		Size: 3.1 MB (3065692 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29b1c07cdcb6832232b651953920699b0e39108397a69ec8cd1749b315fbd439`  
		Last Modified: Wed, 21 Oct 2026 23:04:27 GMT  
		Size: 60.3 KB (60294 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:e3cacd630c56a9dbb77f0ab05948d9d1410e1e17145ee6aa71bb1977ac8a3107
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.2 MB (78203857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a28e149fed1ce9e7cce73e512d0a9416f3cbd5c4bdb81b182a0155cd141a1820`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:37:44 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Wed, 21 Oct 2026 23:37:44 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Wed, 21 Oct 2026 23:37:44 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Wed, 21 Oct 2026 23:37:44 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Wed, 21 Oct 2026 23:37:44 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:37:44 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Wed, 21 Oct 2026 23:37:46 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Wed, 21 Oct 2026 23:37:46 GMT
ENV RABBITMQ_VERSION=4.4.0
# Wed, 21 Oct 2026 23:37:46 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 21 Oct 2026 23:37:46 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 21 Oct 2026 23:37:46 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:37:56 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Wed, 21 Oct 2026 23:37:58 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Wed, 21 Oct 2026 23:37:58 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Wed, 21 Oct 2026 23:37:58 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 21 Oct 2026 23:37:58 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 21 Oct 2026 23:37:58 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 21 Oct 2026 23:37:58 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Wed, 21 Oct 2026 23:37:58 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Wed, 21 Oct 2026 23:37:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:37:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:37:58 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Wed, 21 Oct 2026 23:37:58 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7a5216437a25ecb4870e88eb2ca214b5cdf4dfcf842c6c314da25fd5f605d64`  
		Last Modified: Wed, 21 Oct 2026 23:38:06 GMT  
		Size: 38.5 MB (38468350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72f1dbc65d447f8e3c5dca5779a2d0ee0dddf5cef3258770b9e7865fb1aa07d5`  
		Last Modified: Wed, 21 Oct 2026 23:38:05 GMT  
		Size: 7.9 MB (7877692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4efb0e073618d21aad0d3f58b93a68275897d93df168795cc10a0884a13da997`  
		Last Modified: Wed, 21 Oct 2026 23:38:04 GMT  
		Size: 1.4 MB (1436738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5edd512ed2a1ef2b3778ef47705829ac0be4383e190cd497711ae2b9b0fc233e`  
		Last Modified: Wed, 21 Oct 2026 23:38:06 GMT  
		Size: 26.9 MB (26861034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5678644bf278dafad8a69cfc2fc2993df9df6ef2513eb79f4c01981221ac53a`  
		Last Modified: Wed, 21 Oct 2026 23:38:06 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84691026a6f223512392c3990d3a470fafbbe1990c1a6a6afb5801ea193ecf36`  
		Last Modified: Wed, 21 Oct 2026 23:38:06 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99be7529ea67d8bd2abe1f8f6825e8124f4ceda01a3c59d21672ea1130660a12`  
		Last Modified: Wed, 21 Oct 2026 23:38:07 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3ccdbd5c3085f0e64702668855fd4e08045b13ad91302c05fb1a05f8a68d4aa`  
		Last Modified: Wed, 21 Oct 2026 23:38:07 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:be1b05f2a74b84bf4d51f91d7c79531a6388292f44c3bfa4a63dccfbe4d84036
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.3 KB (60276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4c328ea0a5b45f3b90367d132fa95c4360ede483c24cf01b7c8479f9fc10fc4`

```dockerfile
```

-	Layers:
	-	`sha256:9e11d52e147ca8608536e5c548bf900c60e629914a9baf46a272d97857e874b2`  
		Last Modified: Wed, 21 Oct 2026 23:38:04 GMT  
		Size: 60.3 KB (60276 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:alpine` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:ddfd52b4d6dfffc244f171cd595396a806281876b900ae5189301cf0b3e0d8d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.3 MB (77259857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56cb9644ab43c73077d82b993b55593f05f4144b5697d4b92d4f94c3ff18a509`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:44:14 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Wed, 21 Oct 2026 23:44:14 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Wed, 21 Oct 2026 23:44:14 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Wed, 21 Oct 2026 23:44:14 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Wed, 21 Oct 2026 23:44:14 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:44:14 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Wed, 21 Oct 2026 23:44:16 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Wed, 21 Oct 2026 23:44:16 GMT
ENV RABBITMQ_VERSION=4.4.0
# Wed, 21 Oct 2026 23:44:16 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 21 Oct 2026 23:44:16 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 21 Oct 2026 23:44:16 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:44:22 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Wed, 21 Oct 2026 23:44:23 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Wed, 21 Oct 2026 23:44:23 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Wed, 21 Oct 2026 23:44:23 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 21 Oct 2026 23:44:23 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 21 Oct 2026 23:44:23 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 21 Oct 2026 23:44:23 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Wed, 21 Oct 2026 23:44:23 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Wed, 21 Oct 2026 23:44:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:44:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:44:23 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Wed, 21 Oct 2026 23:44:23 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3efd9abbbd813d820022a2870a0859028d7c7ee8f0c502a874787977b11721b`  
		Last Modified: Wed, 21 Oct 2026 23:44:40 GMT  
		Size: 38.3 MB (38338231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:253f549e7bad3b5b6171506bc1eef1592e74bde7e0e31ec3a01309012562657a`  
		Last Modified: Wed, 21 Oct 2026 23:44:39 GMT  
		Size: 7.5 MB (7465487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30b325658903085fb5b9263fe5f12ca09e76ba7171b48859451fecbff2dbe4f2`  
		Last Modified: Wed, 21 Oct 2026 23:44:39 GMT  
		Size: 1.3 MB (1327010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e3899dd99388660c0273fbaebfb0a82bf6f5dbd95b197aaf8529478d0a15c0e`  
		Last Modified: Wed, 21 Oct 2026 23:44:40 GMT  
		Size: 26.9 MB (26860718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed07ca031479e338e53df28d513e8f51c46fcb612250d96b7caccdbe334efe26`  
		Last Modified: Wed, 21 Oct 2026 23:44:40 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1ad555c16465ed8473d8a9220ddc56fcf81382b9fd9d57c37a5ef1f2dafbb76`  
		Last Modified: Wed, 21 Oct 2026 23:44:41 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51517601063258e24de161638425a69768b2dac08f141311120e86e487609bae`  
		Last Modified: Wed, 21 Oct 2026 23:44:41 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2705f8e92bf90d2ddd6301555c8874e5c20a4a93ac5ac58b4a6d46cd3c0089bc`  
		Last Modified: Wed, 21 Oct 2026 23:44:41 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:a2b9b99178e0903209c364c97a391af29b45c2be2688978ee66fdc1938dc57e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6749703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:579aadd1524cf135898f3e064dc4385791437b1a6841711dc71edc448b8aeb9c`

```dockerfile
```

-	Layers:
	-	`sha256:4bf4fcd7c964a1f1d5034b8a9d07b6141ab226ffb0f3efc6b85be75820d15bad`  
		Last Modified: Wed, 21 Oct 2026 23:44:39 GMT  
		Size: 673.8 KB (673764 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89251c5b863a37bbd85834732fd80c2678b100187d6ac56ac922b1eb4630b4d6`  
		Last Modified: Wed, 21 Oct 2026 23:44:39 GMT  
		Size: 3.1 MB (3084701 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0768da87cbfef89c4a22899e56e094328b85a05a19748ad0ac81d7a8a43972b`  
		Last Modified: Wed, 21 Oct 2026 23:44:39 GMT  
		Size: 2.9 MB (2930748 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed6fb2126f4c3c945b7815dfa47b590e550886e45c24596b2cdbd5a5dc4f82a1`  
		Last Modified: Wed, 21 Oct 2026 23:44:39 GMT  
		Size: 60.5 KB (60490 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:a2e05067846b9f64fe765ce5fe22d337ecf4666acdcca7112c8b21a0fa60d381
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.6 MB (89619729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc9d78f17950b82272be0ea054b3479d5a27766bf2ee30922cb9865b967c9964`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:28:42 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Wed, 21 Oct 2026 23:28:42 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Wed, 21 Oct 2026 23:28:42 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Wed, 21 Oct 2026 23:28:42 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Wed, 21 Oct 2026 23:28:42 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:28:42 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Wed, 21 Oct 2026 23:28:43 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Wed, 21 Oct 2026 23:28:43 GMT
ENV RABBITMQ_VERSION=4.4.0
# Wed, 21 Oct 2026 23:28:43 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 21 Oct 2026 23:28:43 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 21 Oct 2026 23:28:43 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:28:49 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Wed, 21 Oct 2026 23:28:50 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Wed, 21 Oct 2026 23:28:50 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Wed, 21 Oct 2026 23:28:50 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 21 Oct 2026 23:28:50 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 21 Oct 2026 23:28:50 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 21 Oct 2026 23:28:50 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Wed, 21 Oct 2026 23:28:50 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Wed, 21 Oct 2026 23:28:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:28:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:28:50 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Wed, 21 Oct 2026 23:28:50 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5232f8a05a59d5b27dc846c3eadb88b7298f105af2d60d8c32e2602449dcb037`  
		Last Modified: Wed, 21 Oct 2026 23:29:09 GMT  
		Size: 46.0 MB (46021461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8452781bf27c1c405ac140766857248dff0046b84646aba1e66950176a2cbdc6`  
		Last Modified: Wed, 21 Oct 2026 23:29:07 GMT  
		Size: 10.0 MB (10020714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12f2eec5911ff1b3c141f1c1fd1c831205b35bfc27867267a3260eb39729d6b3`  
		Last Modified: Wed, 21 Oct 2026 23:29:06 GMT  
		Size: 2.5 MB (2524277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d2d5fcf05e2015128d96e97b33145dc83a495333ae3551e74cbac133f8dccd3`  
		Last Modified: Wed, 21 Oct 2026 23:29:08 GMT  
		Size: 26.9 MB (26861039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:784d8506106037fccefdc92f6621ba89c816c757442ae508c3a0303b15921543`  
		Last Modified: Wed, 21 Oct 2026 23:29:08 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6a2e8bcb161752b55eaea219dfb67dc2d1209ca3bb278456e890c64b8f4bc26`  
		Last Modified: Wed, 21 Oct 2026 23:29:08 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74572a491f42a1ce1811924f1d4ec070ed7c58b6bc99c96807c21a4937dd3e7c`  
		Last Modified: Wed, 21 Oct 2026 23:29:09 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78f075cb47930f893f94fd4262e112e3069775eec046de9412a1585117181c86`  
		Last Modified: Wed, 21 Oct 2026 23:29:09 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:2a521945ac4e6e4f4ab1cdc9b95664a0f55dcc1acd1f7481196758a1223d2e3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7092705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:243702c074f453a9b1493a2a841c39ebd9ab3779b3ae8af44b0c078abaaad4f2`

```dockerfile
```

-	Layers:
	-	`sha256:261bb0811d3272465bab6900443ad6f34c4a04216235e25da3408ff9df7a3521`  
		Last Modified: Wed, 21 Oct 2026 23:29:06 GMT  
		Size: 675.8 KB (675774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:912eb6b056b8a0e5ce685e5d2fb4f71f262585059d72af9ac6eb96cddde4062a`  
		Last Modified: Wed, 21 Oct 2026 23:29:07 GMT  
		Size: 3.3 MB (3255169 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:322450feba35f19dd75b4904146ce8be7c1ff45611a16cb49f2455667cd52045`  
		Last Modified: Wed, 21 Oct 2026 23:29:07 GMT  
		Size: 3.1 MB (3101222 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d70400ce5bbf01e832265cc8a22cc1cff1e445c66f20b612f8ab0b1dbe63c09a`  
		Last Modified: Wed, 21 Oct 2026 23:29:06 GMT  
		Size: 60.5 KB (60540 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:cde79ad60beebe82bee748df3f71f67e329bbcb8e1fbae155e2e7fd0d7405b14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79770841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:331dab634aa2e28c4a5f86f0ad15f5e576986d90459dac6e1363e207516f84bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 21 Oct 2026 22:50:43 GMT
ADD alpine-minirootfs-3.24.3-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:50:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:25:49 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Wed, 21 Oct 2026 23:25:49 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Wed, 21 Oct 2026 23:25:49 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Wed, 21 Oct 2026 23:25:49 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Wed, 21 Oct 2026 23:25:49 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:25:49 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Wed, 21 Oct 2026 23:25:51 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Wed, 21 Oct 2026 23:25:51 GMT
ENV RABBITMQ_VERSION=4.4.0
# Wed, 21 Oct 2026 23:25:51 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 21 Oct 2026 23:25:51 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 21 Oct 2026 23:25:51 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:25:56 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Wed, 21 Oct 2026 23:25:57 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Wed, 21 Oct 2026 23:25:57 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Wed, 21 Oct 2026 23:25:57 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 21 Oct 2026 23:25:57 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 21 Oct 2026 23:25:57 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 21 Oct 2026 23:25:57 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Wed, 21 Oct 2026 23:25:57 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Wed, 21 Oct 2026 23:25:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:25:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:25:57 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Wed, 21 Oct 2026 23:25:57 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:f89afe85a29e874c0bc6d49b09150af4f08fbc4e6db82e7870677ef76977c07d`  
		Last Modified: Wed, 21 Oct 2026 22:50:49 GMT  
		Size: 3.7 MB (3678996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c6626bb62b4267f1f8ca6f1c6bf315e1c9bc1c409415dd483adcbd2ca2a5237`  
		Last Modified: Wed, 21 Oct 2026 23:26:15 GMT  
		Size: 38.6 MB (38578003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19bba5ac2bf78c7640ab92679e4f378f442d926ff3ed05006ceacb093a02b43e`  
		Last Modified: Wed, 21 Oct 2026 23:26:13 GMT  
		Size: 9.2 MB (9226061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:088ce7d6784e8edae4f2698e68262e57faf149c00859db1b48331f812aee27bf`  
		Last Modified: Wed, 21 Oct 2026 23:26:13 GMT  
		Size: 1.4 MB (1425633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cb710798dccc18b5f8e8c0936b60be1c956fe257bcf77fa160a384257c61b6a`  
		Last Modified: Wed, 21 Oct 2026 23:26:14 GMT  
		Size: 26.9 MB (26860401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc23be83f9b8f2ddcc8f3522f4f9b899eedaa87397036c5be409d409a0ef6b40`  
		Last Modified: Wed, 21 Oct 2026 23:26:14 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebbc749eec599b418cdb966bce2236fc5ebab6d3539529724fb0f28f79aa523c`  
		Last Modified: Wed, 21 Oct 2026 23:26:15 GMT  
		Size: 108.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cec41d9fe570906391b882c5a35dbe1b965e80b08fbe7fabbbd8272d2981c34`  
		Last Modified: Wed, 21 Oct 2026 23:26:15 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbcdc6cee726ceb090ba155c656571c8eab2d1fd0354b6802e355b6e9791b43`  
		Last Modified: Wed, 21 Oct 2026 23:26:15 GMT  
		Size: 831.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:4cfa9fa9948c80d51714720463c61fb2f9d89a522acfc49f0c59597cc40100ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6971394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2826ccbd2b059135821734f2fff43882fe3673c3cc15b1632958438d8b3a35b5`

```dockerfile
```

-	Layers:
	-	`sha256:f8dd1bbbd159a3b0ddb2576fed1a9157d13d6c1fec55783989e3bf978bc9ef93`  
		Last Modified: Wed, 21 Oct 2026 23:26:13 GMT  
		Size: 670.6 KB (670628 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:424ec487fe7cda1e3170d18dc939cb62f083d41f90bc38faf4a15d9ea20ce6aa`  
		Last Modified: Wed, 21 Oct 2026 23:26:13 GMT  
		Size: 3.2 MB (3196573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14b02f106ab82436af66cc8837fe57787b0086a3f17c8ea74e71e42fb2959aa2`  
		Last Modified: Wed, 21 Oct 2026 23:26:13 GMT  
		Size: 3.0 MB (3043949 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d01bb0f230f87102a307a51ec6d894ae61836c636abd8f4ef3aa61652396fa91`  
		Last Modified: Wed, 21 Oct 2026 23:26:13 GMT  
		Size: 60.2 KB (60244 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:70cf81ec0e7e062af28ef3675917fd78e26e0479f9557781af6d7c46e07bb131
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81353826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c1624a49723af977c9cf7fc71d1f1c077d953b5dc6856c9f35c2c5245bb7d93`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Mon, 19 Oct 2026 22:37:46 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Mon, 19 Oct 2026 22:37:46 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Mon, 19 Oct 2026 22:37:46 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Mon, 19 Oct 2026 22:37:47 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Mon, 19 Oct 2026 22:37:47 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 22:37:47 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Mon, 19 Oct 2026 22:37:50 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Mon, 19 Oct 2026 22:37:50 GMT
ENV RABBITMQ_VERSION=4.4.0
# Mon, 19 Oct 2026 22:37:50 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 19 Oct 2026 22:37:50 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 19 Oct 2026 22:37:50 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 22:38:01 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Mon, 19 Oct 2026 22:38:02 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Mon, 19 Oct 2026 22:38:03 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Mon, 19 Oct 2026 22:38:03 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 19 Oct 2026 22:38:03 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 19 Oct 2026 22:38:03 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 19 Oct 2026 22:38:03 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Mon, 19 Oct 2026 22:38:04 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Mon, 19 Oct 2026 22:38:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:38:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:38:04 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Mon, 19 Oct 2026 22:38:04 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c14b51f0625c839a9c961a5837d695581cff3204655ada7f350e5bce9da74532`  
		Last Modified: Mon, 19 Oct 2026 22:38:48 GMT  
		Size: 39.1 MB (39121733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adac73d581a7cefb555621a62e4523aad6b85eed66738a4b7f536e4d1d643ef2`  
		Last Modified: Mon, 19 Oct 2026 22:38:47 GMT  
		Size: 10.0 MB (9997389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b2a61a73e8edfdffbeb2ecbfd61595ee9720d6de382660083a3816883aabc55`  
		Last Modified: Mon, 19 Oct 2026 22:38:47 GMT  
		Size: 1.6 MB (1555320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e31a31928afc9e9245c00505162bf803dd9f4e7ac72fa59893126de330f9b766`  
		Last Modified: Mon, 19 Oct 2026 22:38:48 GMT  
		Size: 26.9 MB (26860152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c02ad884104ed73101647fdf27e6a3c6cd68d0736986e8c33b4b080be285b79`  
		Last Modified: Mon, 19 Oct 2026 22:38:48 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0257fb47015146d843b016c811f4a33f8067b06f881209ee5f10a306819c368a`  
		Last Modified: Mon, 19 Oct 2026 22:38:48 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91633a910920681363f5db5fbae96ea0e07b4f939e82175b6187036f2e8f1944`  
		Last Modified: Mon, 19 Oct 2026 22:38:49 GMT  
		Size: 624.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc1673a7c276b90238834e64f34a1ca00dd0e53614e432cb556e15629d987bce`  
		Last Modified: Mon, 19 Oct 2026 22:38:50 GMT  
		Size: 831.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:8c160036c6427343db62a67286e182f45227e7009e897e425d49a60da605d865
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6995420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3d8c9098507a61ec66fc3c80d5cb8b5b702f9caf963a2bc30aca6011a5eb86b`

```dockerfile
```

-	Layers:
	-	`sha256:6f5b8c842c8716735d59c2d78fb4545377baf5ab4947015e4d4aa53a8df75f62`  
		Last Modified: Mon, 19 Oct 2026 22:38:46 GMT  
		Size: 670.8 KB (670771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd4acad8745b4f710bad56ce1d322df4f0e46a32bdfaf4633b8f6f1d94e9ae1a`  
		Last Modified: Mon, 19 Oct 2026 22:38:47 GMT  
		Size: 3.2 MB (3209126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f07455b2a497df885ff7c31d699d2029016eae9e86d1c523104a238a4cee1a00`  
		Last Modified: Mon, 19 Oct 2026 22:38:47 GMT  
		Size: 3.1 MB (3055167 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2f192762a5c30e84e38119f3407e87837019419697f929233423c18ac6d37b0`  
		Last Modified: Mon, 19 Oct 2026 22:38:46 GMT  
		Size: 60.4 KB (60356 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:alpine` - linux; riscv64

```console
$ docker pull rabbitmq@sha256:c831b93b1bb49cefea041996a6a1cd6a629c5db0c7fba137804fa017eaa5bd8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85716149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91a8e7f71adf1cf18150a5b1462810813d2d653ea0d101817885c689f7c53bdc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Mon, 19 Oct 2026 23:56:50 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Mon, 19 Oct 2026 23:56:50 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Mon, 19 Oct 2026 23:56:50 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Mon, 19 Oct 2026 23:56:50 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Mon, 19 Oct 2026 23:56:50 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 23:56:50 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Mon, 19 Oct 2026 23:57:00 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Mon, 19 Oct 2026 23:57:00 GMT
ENV RABBITMQ_VERSION=4.4.0
# Mon, 19 Oct 2026 23:57:00 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 19 Oct 2026 23:57:00 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 19 Oct 2026 23:57:00 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 23:57:40 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Mon, 19 Oct 2026 23:57:49 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Mon, 19 Oct 2026 23:57:49 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Mon, 19 Oct 2026 23:57:49 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 19 Oct 2026 23:57:49 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 19 Oct 2026 23:57:49 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 19 Oct 2026 23:57:49 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Mon, 19 Oct 2026 23:57:49 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Mon, 19 Oct 2026 23:57:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 23:57:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 23:57:49 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Mon, 19 Oct 2026 23:57:49 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4d59b37333455296792c6e0cd4df6d0180d631ea45b11a41c4bf4b8ddc63800`  
		Last Modified: Tue, 20 Oct 2026 00:02:08 GMT  
		Size: 43.0 MB (42990860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe87b0ec5c70f4346e11aee6275d1be662339dd37c222dfe5952de2d2a9fdc59`  
		Last Modified: Tue, 20 Oct 2026 00:02:00 GMT  
		Size: 10.8 MB (10826172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c08219e75fa4cbf932ed068ea635b6b289055c42779f37edef6a206f8f77b42b`  
		Last Modified: Tue, 20 Oct 2026 00:01:55 GMT  
		Size: 1.5 MB (1461276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:431da5440748f4a21bedbe2e5b2deab9ab8d94cd83b334422138620cc85ee807`  
		Last Modified: Tue, 20 Oct 2026 00:02:06 GMT  
		Size: 26.9 MB (26860718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d35b7e7345cef4a6831273158a0ff9914a4e02c3baac427ca5722072f739b16d`  
		Last Modified: Tue, 20 Oct 2026 00:01:58 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d489ba4a607a2ccd0cf9c04fb1e6df445c928cd6f56c52a72a30928fa3da5cce`  
		Last Modified: Tue, 20 Oct 2026 00:02:01 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4525cadc6007eba33798e22fe1e08d34d0a47a7008da78bae86e1802854a4aac`  
		Last Modified: Tue, 20 Oct 2026 00:02:02 GMT  
		Size: 620.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a858d71581ea934a64a9cace5bed850fa70f871bda8eef18c2b1a71d29687f80`  
		Last Modified: Tue, 20 Oct 2026 00:02:03 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:84d59c1c90fb881e9330adaab89a510cc2589d1b75dfb18f22c5cefc97790e7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7074638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51ac5f1b5aab539f81a329816e378dc05f37f4425e7257f5f308913cea7e92e9`

```dockerfile
```

-	Layers:
	-	`sha256:63ce4840094dbe6dbef212d1c2d1e9d5f616eaf4635ce92929b2378fececf317`  
		Last Modified: Tue, 20 Oct 2026 00:01:55 GMT  
		Size: 673.7 KB (673740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a77cd0d225e2e874e4e7754205c563f446d55b3f16abdf3afd4b999d378142d7`  
		Last Modified: Tue, 20 Oct 2026 00:01:57 GMT  
		Size: 3.2 MB (3247241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:596c702f6a3d7f2f1117380dbceccbb514c1375c101d93678cdeb8d7743f0f89`  
		Last Modified: Tue, 20 Oct 2026 00:01:57 GMT  
		Size: 3.1 MB (3093294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cba8949215000567fc99aa78e3931dc82cd7421cb6d9ac41e216146665245414`  
		Last Modified: Tue, 20 Oct 2026 00:01:55 GMT  
		Size: 60.4 KB (60363 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:56c08c6fb09f5d0999a41714b3e09d7dea75daf247a8e18df1eefbe1eb93b3c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79563457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d211514f1fdf579d27ede027b804de74b658126ebce550d31fca16aebd434ffe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 00:05:51 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Thu, 22 Oct 2026 00:05:51 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Thu, 22 Oct 2026 00:05:51 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Thu, 22 Oct 2026 00:05:51 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Thu, 22 Oct 2026 00:05:51 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Oct 2026 00:05:51 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 22 Oct 2026 00:05:52 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Thu, 22 Oct 2026 00:05:52 GMT
ENV RABBITMQ_VERSION=4.4.0
# Thu, 22 Oct 2026 00:05:52 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 22 Oct 2026 00:05:52 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 22 Oct 2026 00:05:52 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Oct 2026 00:05:58 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Thu, 22 Oct 2026 00:05:59 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Thu, 22 Oct 2026 00:05:59 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Thu, 22 Oct 2026 00:05:59 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 22 Oct 2026 00:05:59 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 22 Oct 2026 00:05:59 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 22 Oct 2026 00:05:59 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Thu, 22 Oct 2026 00:05:59 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Thu, 22 Oct 2026 00:05:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 00:05:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 00:05:59 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Thu, 22 Oct 2026 00:05:59 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0997dcc63d4c65cc321d11af68f587f2e8579c06320c0761362d90639fce4544`  
		Last Modified: Thu, 22 Oct 2026 00:06:25 GMT  
		Size: 39.1 MB (39083526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4d9461e6fd84493409f3cb2b9be3362db3dc29191bd6bdd519501c49f33b751`  
		Last Modified: Thu, 22 Oct 2026 00:06:25 GMT  
		Size: 8.4 MB (8370624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbbb299c640254425a558513c1145a59c58f903d3d0177dafa62f6305c27c4d`  
		Last Modified: Thu, 22 Oct 2026 00:06:24 GMT  
		Size: 1.5 MB (1527638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914a571ff39d21efa75c0f52f6105b1f502390e7b602ba48ecced129c52b6217`  
		Last Modified: Thu, 22 Oct 2026 00:06:25 GMT  
		Size: 26.9 MB (26860208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79dfaa5f6cf8cd0f812cd075c3c5a4276a4660b6ba3b2aedc07d63220e8eb9f1`  
		Last Modified: Thu, 22 Oct 2026 00:06:25 GMT  
		Size: 192.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f91d8affe23a3b1819ee9d5f34b357853f2f7402bf41018acf590bb0cf4e9a3`  
		Last Modified: Thu, 22 Oct 2026 00:06:26 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bcacd5459fdcce89b05a02fb38ffcd20f30979838065824d247882a4954ac11`  
		Last Modified: Thu, 22 Oct 2026 00:06:26 GMT  
		Size: 622.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a30cdf6ce90e8f77941be1f2ba89d2814e9a9d86c6c57b74a5768850511b7152`  
		Last Modified: Thu, 22 Oct 2026 00:06:27 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:7f18f7bf286efc3afa13945e84ddb1422b2c5fbc73ac3619a2c12213d334be1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6768682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2188dcd4b4191ce835ed6a13a87355c4a9d4a1867f825ef5500632954cf6438a`

```dockerfile
```

-	Layers:
	-	`sha256:c3388cf0cc63cf7b10eaf54f7f498a34cad937b21664791facebb54e1b5fe5da`  
		Last Modified: Thu, 22 Oct 2026 00:06:24 GMT  
		Size: 670.7 KB (670737 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8cc1bd680c8807cf6cd63898f6dc9a7ff0916100469932b12d81c7049000321d`  
		Last Modified: Thu, 22 Oct 2026 00:06:24 GMT  
		Size: 3.1 MB (3095790 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fea5e8f394afc36c18b976dbc43065ad3118941359859480a47aa1914aeba6b6`  
		Last Modified: Thu, 22 Oct 2026 00:06:24 GMT  
		Size: 2.9 MB (2941861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82c83ff8d572c6702f312a1b3c4b763f99d11f850b9b36ef8dd0c83bc990a175`  
		Last Modified: Thu, 22 Oct 2026 00:06:24 GMT  
		Size: 60.3 KB (60294 bytes)  
		MIME: application/vnd.in-toto+json
