## `rabbitmq:alpine`

```console
$ docker pull rabbitmq@sha256:1bd7237893ba7be63fd66894ba3021416abc99dfea2820c357ab6e6f40bfecc7
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
$ docker pull rabbitmq@sha256:a4328c48117c7f82167ae3a247250bbd5853fde574dfe30b3f62aa3ebfe75832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90210648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fed8ec54d327f2fb71a8b89d6d7f27f08914c33ff26d3ac72b36d9e93bd2c8c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:31:48 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Thu, 05 Nov 2026 19:31:48 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Thu, 05 Nov 2026 19:31:48 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Thu, 05 Nov 2026 19:31:48 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Thu, 05 Nov 2026 19:31:48 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:31:48 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 05 Nov 2026 19:31:49 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Thu, 05 Nov 2026 19:31:49 GMT
ENV RABBITMQ_VERSION=4.4.0
# Thu, 05 Nov 2026 19:31:49 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 05 Nov 2026 19:31:49 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 05 Nov 2026 19:31:49 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:31:55 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Thu, 05 Nov 2026 19:31:56 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Thu, 05 Nov 2026 19:31:56 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Thu, 05 Nov 2026 19:31:56 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 05 Nov 2026 19:31:56 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 05 Nov 2026 19:31:56 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 05 Nov 2026 19:31:56 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Thu, 05 Nov 2026 19:31:56 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Thu, 05 Nov 2026 19:31:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:31:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:31:56 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Thu, 05 Nov 2026 19:31:56 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f244ef8ce05a5297df7187b8055a7f24a4ee727dcad178d31e82d1e67f3332d`  
		Last Modified: Thu, 05 Nov 2026 19:32:13 GMT  
		Size: 47.8 MB (47782807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7e0d2d67a44a50150e3e6a4d91aa8e32bbc44583379ca48163bb62578b9c764`  
		Last Modified: Thu, 05 Nov 2026 19:32:11 GMT  
		Size: 9.2 MB (9231988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:488795b825374be60152180c655c653fe61e64817d4377501a23112219fc0c1f`  
		Last Modified: Thu, 05 Nov 2026 19:32:11 GMT  
		Size: 2.5 MB (2479309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4a47d0b64ad0f81ab8145ca7c3e5484ff28913a3efab62d2181a98806b86975`  
		Last Modified: Thu, 05 Nov 2026 19:32:12 GMT  
		Size: 26.9 MB (26861118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a309a334c7800ac17eedfe92da94bc01fd1cda38d69043c02c88308044cad81b`  
		Last Modified: Thu, 05 Nov 2026 19:32:12 GMT  
		Size: 192.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1c6ee136de3181c0e029163c0cbd814b8f31a55e4559d9bcdc25b7979e02425`  
		Last Modified: Thu, 05 Nov 2026 19:32:13 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:649dbeeafcfac2b4ab2410be68f26aac3b3451e345a86cd9a48d7a8d00dd5786`  
		Last Modified: Thu, 05 Nov 2026 19:32:14 GMT  
		Size: 622.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:871516c41e76d37d909cf53cf62b3ac284c07ed27e005c1d2486eb4b4bffe8d1`  
		Last Modified: Thu, 05 Nov 2026 19:32:14 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:ac6b0aaa743d2675870fc1ab96e17794b98babb463cd26b10ecbb84b4f029707
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7019947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce63086980108992cec5ffdda8daad997440312550819ec2dec456b116954fe9`

```dockerfile
```

-	Layers:
	-	`sha256:391026fe5126cc501b7c5a5f8d450ad96b516e79c201b0ec4fcefcc55ffbafa5`  
		Last Modified: Thu, 05 Nov 2026 19:32:11 GMT  
		Size: 675.6 KB (675633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb32b9af18939b18d164a709621cfa61a40d601f3881651962bb0a25e090f2f5`  
		Last Modified: Thu, 05 Nov 2026 19:32:11 GMT  
		Size: 3.2 MB (3218324 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a6496c0a90fb0c9e7be0a26a267f935f31853670b177b483ef1431dc3cfd840`  
		Last Modified: Thu, 05 Nov 2026 19:32:11 GMT  
		Size: 3.1 MB (3065696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95825fc0e46e2a453efb509368513e6dab7dfa573dd4ac5b5d7490fbc6e130a7`  
		Last Modified: Thu, 05 Nov 2026 19:32:11 GMT  
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
$ docker pull rabbitmq@sha256:1c6a405520d4da79526c9bb75cb934809b74cdaa3767541733349e9426275bf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79772113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44af32ffdec57c12784cd102b809556bb8ddb9258b7c266d632ee076aed0f151`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:39:35 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Thu, 05 Nov 2026 18:39:35 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Thu, 05 Nov 2026 18:39:35 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Thu, 05 Nov 2026 18:39:35 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Thu, 05 Nov 2026 18:39:35 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 18:39:35 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 05 Nov 2026 18:39:37 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Thu, 05 Nov 2026 18:39:37 GMT
ENV RABBITMQ_VERSION=4.4.0
# Thu, 05 Nov 2026 18:39:37 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 05 Nov 2026 18:39:37 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 05 Nov 2026 18:39:37 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 18:39:43 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Thu, 05 Nov 2026 18:39:43 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Thu, 05 Nov 2026 18:39:43 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Thu, 05 Nov 2026 18:39:43 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 05 Nov 2026 18:39:43 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 05 Nov 2026 18:39:43 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 05 Nov 2026 18:39:43 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Thu, 05 Nov 2026 18:39:43 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Thu, 05 Nov 2026 18:39:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:39:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:39:43 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Thu, 05 Nov 2026 18:39:43 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e263e050a9ff30166b749e1c0830b3595f9c09b8096f242436e0011abd221e8f`  
		Last Modified: Thu, 05 Nov 2026 18:39:59 GMT  
		Size: 38.6 MB (38577999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea1cfd3323dc49e460258c73d2dee96c9f26b9e63acb05e33cdf81b4cf6859b`  
		Last Modified: Thu, 05 Nov 2026 18:39:58 GMT  
		Size: 9.2 MB (9226059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bf24a23c0f2aab84fa6adc9875458767055584cfad05acd19e77e6b51c25ce0`  
		Last Modified: Thu, 05 Nov 2026 18:39:57 GMT  
		Size: 1.4 MB (1425623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb1d83c35a32a50f394343945cb607f9ca62db29064d7ba044d204524366de0`  
		Last Modified: Thu, 05 Nov 2026 18:39:58 GMT  
		Size: 26.9 MB (26860328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4224dba2cd7827ff026ac993bceb54f20de5211c7e68c5dfaa3d0281f262f174`  
		Last Modified: Thu, 05 Nov 2026 18:39:58 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c932fee082636a68e8401a04f87ab3fecedf7c7a864a349f351f18d8b3373c5e`  
		Last Modified: Thu, 05 Nov 2026 18:39:59 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ef35dab40e450df49debb0797b9221e9447339357165c7fbe35c0587e11c6fa`  
		Last Modified: Thu, 05 Nov 2026 18:40:00 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b471c2e63ecd5be979466bf6a31a7841c95d4649f83063b6946544f4f9ee440f`  
		Last Modified: Thu, 05 Nov 2026 18:40:00 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:67b2b60f1fa8eb3b2a7c4a1075eb08551f9d18d70bdab498c3f1f82112a7667b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6971402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418551cee8f8a96a1d6c1a7950c15828149176a90dd11bfee5593ac29bf9b6ab`

```dockerfile
```

-	Layers:
	-	`sha256:5440f3f7d06085520d75ef33e3cace4b008b16c1857eb047fc16a0ea7996f4c1`  
		Last Modified: Thu, 05 Nov 2026 18:39:57 GMT  
		Size: 670.6 KB (670628 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e4448290474213d5eb636c49efc39f153ae620aa8f2d0574347bea9f5b848d1`  
		Last Modified: Thu, 05 Nov 2026 18:39:57 GMT  
		Size: 3.2 MB (3196577 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53208b7040ce4855094e17ff8ecdb7e2750632c9a2d8a290320a3217abb25810`  
		Last Modified: Thu, 05 Nov 2026 18:39:57 GMT  
		Size: 3.0 MB (3043953 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b69211fa1aed1df9ba25349c9c0fb4d95fc4fd0681b66a35b6df65ca0c6f9315`  
		Last Modified: Thu, 05 Nov 2026 18:39:57 GMT  
		Size: 60.2 KB (60244 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:cc1c42b31acccf7e1bfe0f7d14c0ef50fd7402baf925f78fbe30ea48f5756406
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81357509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f25ce51b4000b8fe504d0b4f8f7142539078600b80a292db9404861b838831a3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 14:55:31 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Thu, 22 Oct 2026 14:55:31 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Thu, 22 Oct 2026 14:55:31 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Thu, 22 Oct 2026 14:55:33 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Thu, 22 Oct 2026 14:55:33 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Oct 2026 14:55:33 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 22 Oct 2026 14:55:36 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Thu, 22 Oct 2026 14:55:36 GMT
ENV RABBITMQ_VERSION=4.4.0
# Thu, 22 Oct 2026 14:55:36 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 22 Oct 2026 14:55:36 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 22 Oct 2026 14:55:36 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Oct 2026 14:55:47 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Thu, 22 Oct 2026 14:55:49 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Thu, 22 Oct 2026 14:55:50 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Thu, 22 Oct 2026 14:55:50 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 22 Oct 2026 14:55:50 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 22 Oct 2026 14:55:50 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 22 Oct 2026 14:55:50 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Thu, 22 Oct 2026 14:55:50 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Thu, 22 Oct 2026 14:55:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 14:55:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 14:55:50 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Thu, 22 Oct 2026 14:55:50 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00cf181ab3d8c038a87b70e2b2e38e8d22b4d3dbff7ea4e35cc56aa9f65e1611`  
		Last Modified: Thu, 22 Oct 2026 14:56:41 GMT  
		Size: 39.1 MB (39121826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:242cebb430b192610372072b43798413aa1418ef7f8bfce0df990e25a5e87187`  
		Last Modified: Thu, 22 Oct 2026 14:56:40 GMT  
		Size: 10.0 MB (9997394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2966be48fbee7e501c70bb9214e0869774b33586a66e6b5db6199ba17bf875d`  
		Last Modified: Thu, 22 Oct 2026 14:56:39 GMT  
		Size: 1.6 MB (1555311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6a33502e756dd4be0d6325f905a3b90c6304a3c318efd1a52f9d5376286b62e`  
		Last Modified: Thu, 22 Oct 2026 14:56:40 GMT  
		Size: 26.9 MB (26860402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ba2a4a5437f5d059886784102f4c968c1fbc80c790daf48f73c8240807372bc`  
		Last Modified: Thu, 22 Oct 2026 14:56:40 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57c64372820084812b3ca4183b52c33bb08b65f9cc1ea1dc5fafe9f05ac0c09f`  
		Last Modified: Thu, 22 Oct 2026 14:56:41 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b917b1fc4c8c669ada81761cf2ca075eb1f0dab86586bcf5e09328fa6cfa038e`  
		Last Modified: Thu, 22 Oct 2026 14:56:41 GMT  
		Size: 623.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cc72c04a63225b665036b94bc083f49c8814adeb6b92873f316c86b87780004`  
		Last Modified: Thu, 22 Oct 2026 14:56:42 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:8c058753e1a10b5a8106049d98aa64ccea3312dcc067649fbb6b7dd2a6ed0389
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6995420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0488a68899d5148019ff6999febf01d58a7a3eced9f6523ca00bbaa715f62b88`

```dockerfile
```

-	Layers:
	-	`sha256:be10fe6a414e58f0834036bb97014f2a8af413613c8ee5629d6761fd138c79fb`  
		Last Modified: Thu, 22 Oct 2026 14:56:39 GMT  
		Size: 670.8 KB (670771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4bd693ce761c2135869cfdf21dd0ec8ab483b367907da472e44064626142428`  
		Last Modified: Thu, 22 Oct 2026 14:56:39 GMT  
		Size: 3.2 MB (3209126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7be47bade1c72cf8b776842cfd76a32c65a12f4eabb485e9d66298a6b6d088a9`  
		Last Modified: Thu, 22 Oct 2026 14:56:39 GMT  
		Size: 3.1 MB (3055167 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:437c1c6423421208fc83e8e3d2db6d1e5dbef8a7ca211fa3bf6e94110eb9465d`  
		Last Modified: Thu, 22 Oct 2026 14:56:39 GMT  
		Size: 60.4 KB (60356 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:alpine` - linux; riscv64

```console
$ docker pull rabbitmq@sha256:0589525cc6f055ddee3e07c4ec30d121e23c2b26cb91f4f2ed4601fca1c784c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85722645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c6d2dc9af776604ad2bf6b9ccb92fa7cc7058463342c1355259247c06d6606c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 17:11:46 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 27 Oct 2026 17:11:46 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 27 Oct 2026 17:11:46 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 27 Oct 2026 17:11:47 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 27 Oct 2026 17:11:47 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:11:47 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 27 Oct 2026 17:11:57 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Tue, 27 Oct 2026 17:11:57 GMT
ENV RABBITMQ_VERSION=4.4.0
# Tue, 27 Oct 2026 17:11:57 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 27 Oct 2026 17:11:57 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 27 Oct 2026 17:11:57 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:12:39 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 27 Oct 2026 17:12:48 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 27 Oct 2026 17:12:49 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 27 Oct 2026 17:12:49 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 27 Oct 2026 17:12:49 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 27 Oct 2026 17:12:49 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 27 Oct 2026 17:12:49 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 27 Oct 2026 17:12:49 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 27 Oct 2026 17:12:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:12:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:12:49 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 27 Oct 2026 17:12:49 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bfb78e1eeb02470febe9813ab3a92f459bd8ac5d56e3a787679896f944e0fca`  
		Last Modified: Tue, 27 Oct 2026 17:19:22 GMT  
		Size: 43.0 MB (42991967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd93cad6f2a867ca603e2dd96b36af228320530995e7fffc0b306995b78feb9`  
		Last Modified: Tue, 27 Oct 2026 17:19:13 GMT  
		Size: 10.8 MB (10826159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bc526de025a3ce363f84be4dfeeaa7f30f48da374581f4ac9509a2c7f47f080`  
		Last Modified: Tue, 27 Oct 2026 17:19:10 GMT  
		Size: 1.5 MB (1461281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7779dfa2a6ca3f3d547e9b3859c82fcc67a5e0931f9349e82573f0ac3959a07`  
		Last Modified: Tue, 27 Oct 2026 17:19:19 GMT  
		Size: 26.9 MB (26860835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62358044eb109a7c768ed403be87859721e111cd1d862cb04d57b052452ee292`  
		Last Modified: Tue, 27 Oct 2026 17:19:12 GMT  
		Size: 192.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90eaf03b303a33b4288f99a21c516fa614b14a3266d97ecbd0ae8f09fc69964f`  
		Last Modified: Tue, 27 Oct 2026 17:19:14 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ca77f5ca39e9e048869a8d66f33e19fcd9dafe5e51ddc2498897fe245f8875b`  
		Last Modified: Tue, 27 Oct 2026 17:19:15 GMT  
		Size: 622.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3700c7c29cae9e071920c6619d62f7b6014e258ef5fd7c7a093460e20fc5ebd8`  
		Last Modified: Tue, 27 Oct 2026 17:19:17 GMT  
		Size: 833.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:d1f84a9305af3cf3b3b0a7625e960d7e38e5ff71a58c8c934c1d6cc4faae0944
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7074638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20dc4f43874ab6cc50071a07a710973a48daf7765d245d419aa559a9bd0e4cc9`

```dockerfile
```

-	Layers:
	-	`sha256:838457918dd03aa2f5c5ec696af8d395397fe1edcaa32825727e4f87e1c64be0`  
		Last Modified: Tue, 27 Oct 2026 17:19:09 GMT  
		Size: 673.7 KB (673740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79c8562a7355748df69ac14f4981703284c2e61e0f24074f1f4a50692845423b`  
		Last Modified: Tue, 27 Oct 2026 17:19:10 GMT  
		Size: 3.2 MB (3247241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8572313b50bd88677652d9933e2683e92d0056bdc191482a8a523742a8c6a73f`  
		Last Modified: Tue, 27 Oct 2026 17:19:09 GMT  
		Size: 3.1 MB (3093294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:860b30360c569a9fb071aa2984f88a5f11a05a9793a5c14b43d88853969c8147`  
		Last Modified: Tue, 27 Oct 2026 17:19:08 GMT  
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
