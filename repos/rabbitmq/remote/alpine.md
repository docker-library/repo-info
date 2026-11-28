## `rabbitmq:alpine`

```console
$ docker pull rabbitmq@sha256:a6b49ed79df2bc842eb3df93bdf5250d1abed236350b3e4560932e805253946c
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
$ docker pull rabbitmq@sha256:3d0c32a14c641313aef673cbc6fa8b3fd88ba60936a807dbc21d2c328049c48c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.4 MB (90374880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41f449d86862719efc829fd4c9dac71f61f7b4b714e35193c493a03b2757d3ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Tue, 24 Nov 2026 21:23:32 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 24 Nov 2026 21:23:32 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 24 Nov 2026 21:23:32 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 24 Nov 2026 21:23:33 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 24 Nov 2026 21:23:33 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 21:23:33 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 24 Nov 2026 21:23:34 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Tue, 24 Nov 2026 21:23:34 GMT
ENV RABBITMQ_VERSION=4.4.1
# Tue, 24 Nov 2026 21:23:34 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 24 Nov 2026 21:23:34 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 24 Nov 2026 21:23:34 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 21:23:39 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 24 Nov 2026 21:23:40 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 24 Nov 2026 21:23:40 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 24 Nov 2026 21:23:40 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 24 Nov 2026 21:23:40 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 24 Nov 2026 21:23:40 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 24 Nov 2026 21:23:40 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 24 Nov 2026 21:23:40 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 24 Nov 2026 21:23:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 21:23:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 21:23:40 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 24 Nov 2026 21:23:40 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7879cfe57e9b2c347939b5bbf393fa16f6474040e145a2941ad64cd98ada3b7e`  
		Last Modified: Tue, 24 Nov 2026 21:23:58 GMT  
		Size: 47.8 MB (47798624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:187e0ff7189f149c472ef72a3abb68e3c943c577abc60663955fdbbaa389dc35`  
		Last Modified: Tue, 24 Nov 2026 21:23:56 GMT  
		Size: 9.2 MB (9231991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2118c866a2b2b89a55c00e4cab825d51f79c6ae6c2432fc985c174ca582c153`  
		Last Modified: Tue, 24 Nov 2026 21:23:56 GMT  
		Size: 2.5 MB (2479339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e76e36d466411e8b84ae90954a053bf31ab3f64071181c12f52ac898aeaad2d2`  
		Last Modified: Tue, 24 Nov 2026 21:23:57 GMT  
		Size: 27.0 MB (27009503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab45bbe1d8f79b209bc6c7041195e53841951eb1c69735ce04b98e0b02a5f7a3`  
		Last Modified: Tue, 24 Nov 2026 21:23:57 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae67c5799b2b57eea8a7ace1c7a934b530ee997d2ed9f7e094daaab7b2a2411f`  
		Last Modified: Tue, 24 Nov 2026 21:23:57 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c16233bb83a793c4db791108a16f7e5ac8d87c77455d4d51ae12b09ae285034a`  
		Last Modified: Tue, 24 Nov 2026 21:23:58 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56db137043a7933e9d311d08f1b17a10ba38b31debd692e2d2d80c7c797b57f7`  
		Last Modified: Tue, 24 Nov 2026 21:23:59 GMT  
		Size: 832.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:d88d0bcc6d1ae95ae7fe1e3a5da25e74fcce51fbd3740e81352ee44c9af3ccb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7019990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e4ef5d50ae9f0bda662d87e043072636712d992780027f1c3081dbda3423e34`

```dockerfile
```

-	Layers:
	-	`sha256:76951f7c53ca1ee34cf746050122894cb316f6662e8052c52030f1f763f616f3`  
		Last Modified: Tue, 24 Nov 2026 21:23:56 GMT  
		Size: 675.7 KB (675654 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4bfccb1704fe609491ece67b33886895a30120d49e786eec8fcf0b29dd972f7`  
		Last Modified: Tue, 24 Nov 2026 21:23:56 GMT  
		Size: 3.2 MB (3218346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e335f4c4223577b7432f5d8fb5778fc5575ec77fae498249662301c86369037`  
		Last Modified: Tue, 24 Nov 2026 21:23:56 GMT  
		Size: 3.1 MB (3065696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27a58303e4de3f1018c4995a78d11333fefd02146c3a4fe0a39037f3c82aab42`  
		Last Modified: Tue, 24 Nov 2026 21:23:56 GMT  
		Size: 60.3 KB (60294 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:605e980f175eab99c66813752516cff9043bee19e6ce8229f86c2455288b7d33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78376151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f8a99d10c37a5a3ad256089a9ea0f9c95c47549d5d0f8e734e6b66761bb0715`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Tue, 24 Nov 2026 21:28:24 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 24 Nov 2026 21:28:24 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 24 Nov 2026 21:28:24 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 24 Nov 2026 21:28:25 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 24 Nov 2026 21:28:25 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 21:28:25 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 24 Nov 2026 21:28:26 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Tue, 24 Nov 2026 21:28:26 GMT
ENV RABBITMQ_VERSION=4.4.1
# Tue, 24 Nov 2026 21:28:26 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 24 Nov 2026 21:28:26 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 24 Nov 2026 21:28:26 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 21:28:35 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 24 Nov 2026 21:28:37 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 24 Nov 2026 21:28:37 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 24 Nov 2026 21:28:37 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 24 Nov 2026 21:28:37 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 24 Nov 2026 21:28:37 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 24 Nov 2026 21:28:37 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 24 Nov 2026 21:28:37 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 24 Nov 2026 21:28:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 21:28:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 21:28:37 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 24 Nov 2026 21:28:37 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c97b02e328ad75b7c8560a47d4ca63c48821dd6238bf83d70755e63644dc624`  
		Last Modified: Tue, 24 Nov 2026 21:28:45 GMT  
		Size: 38.5 MB (38492080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e88bf326690858d49933f5e3ee43caf7047439a1867af13ba9fad753d3b416d`  
		Last Modified: Tue, 24 Nov 2026 21:28:43 GMT  
		Size: 7.9 MB (7877688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75777ae503d072dbc5eb30676a269d375156cd262acdcab14c1dda1676c07bc7`  
		Last Modified: Tue, 24 Nov 2026 21:28:43 GMT  
		Size: 1.4 MB (1436726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7f36d82cd0f96a136f05d10313bccd86daa2bccb6afd65ff2b4348198f8620a`  
		Last Modified: Tue, 24 Nov 2026 21:28:44 GMT  
		Size: 27.0 MB (27009511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc485fea89a50e03a02e81ab085a04dd0d808761bc83a488258b380cc30206ac`  
		Last Modified: Tue, 24 Nov 2026 21:28:45 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9260fadef7c049925abfdaa4125f2683a3fb9f01695ac356e91b7eff04cd2ec`  
		Last Modified: Tue, 24 Nov 2026 21:28:44 GMT  
		Size: 108.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45538e8a2b78e480e50280b5fcf152c587d2c6b1caf52d9dfeb6ebaf1031dd4e`  
		Last Modified: Tue, 24 Nov 2026 21:28:46 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e391d9ca478b510434430a12285bb1f01ed009ea22f2a5d32674ecfc3e0d1a3`  
		Last Modified: Tue, 24 Nov 2026 21:28:46 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:02c50d4a3f28bca787bd5cea9a918d57b518992cbafe912828512c92036de5fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.3 KB (60276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a98ab3b7538f950b2d6dd7e9aea542d7ce2b2388ace04f4a5519fbf892300ed`

```dockerfile
```

-	Layers:
	-	`sha256:d10e028adea96d392c05ff587282f1965b2942ce5f3ab8687495536c8cf4d0d2`  
		Last Modified: Tue, 24 Nov 2026 21:28:43 GMT  
		Size: 60.3 KB (60276 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:alpine` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:f3d879fc97429a004e91e9931f22c693a0b43ac319daec9dd53181a48db68aa3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.4 MB (77437993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca582043d3a335801dfdac5408c3fda7242c59dc7d3da6a94c9c3904c2dd7cf6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Tue, 24 Nov 2026 21:23:37 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 24 Nov 2026 21:23:37 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 24 Nov 2026 21:23:37 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 24 Nov 2026 21:23:37 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 24 Nov 2026 21:23:37 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 21:23:37 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 24 Nov 2026 21:23:38 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Tue, 24 Nov 2026 21:23:38 GMT
ENV RABBITMQ_VERSION=4.4.1
# Tue, 24 Nov 2026 21:23:38 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 24 Nov 2026 21:23:38 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 24 Nov 2026 21:23:38 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 21:23:45 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 24 Nov 2026 21:23:45 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 24 Nov 2026 21:23:45 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 24 Nov 2026 21:23:45 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 24 Nov 2026 21:23:45 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 24 Nov 2026 21:23:45 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 24 Nov 2026 21:23:45 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 24 Nov 2026 21:23:46 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 24 Nov 2026 21:23:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 21:23:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 21:23:46 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 24 Nov 2026 21:23:46 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1f5c5ba19f66e21b3432ed9ce42ae7d78e62dcacaf086e84330426d270df8dd`  
		Last Modified: Tue, 24 Nov 2026 21:24:02 GMT  
		Size: 38.4 MB (38366570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc655ce7185d4651ea559d2415dea41d8c540ded940295bc25f3f4a016c92602`  
		Last Modified: Tue, 24 Nov 2026 21:24:01 GMT  
		Size: 7.5 MB (7465531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2a524bfbe045e4f65c8944a3cf12183975a97666df161d02a0b46371eea1938`  
		Last Modified: Tue, 24 Nov 2026 21:24:01 GMT  
		Size: 1.3 MB (1327003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1be12002198acbd8c5c577442cbb42277d2063002dff0497582a4fc26841658b`  
		Last Modified: Tue, 24 Nov 2026 21:24:02 GMT  
		Size: 27.0 MB (27009406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f71236cef723b81a61bbb4d249ce7db047c8b3855144c3743d6ed11be52aa33`  
		Last Modified: Tue, 24 Nov 2026 21:24:02 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a87ff327e1af4039f9704e5c1f9ad36e767d0a2ba6371d14a5b1301c9ac9721`  
		Last Modified: Tue, 24 Nov 2026 21:24:02 GMT  
		Size: 108.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81387b66ca3f59f031b14c0e475db9bb22f3c03b689a5ac85f6178520ee58c4b`  
		Last Modified: Tue, 24 Nov 2026 21:24:03 GMT  
		Size: 623.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0df4b1a19b30b0b6dbcf4cffb2962ea49abfe2fff6a9243f1c858207f606d328`  
		Last Modified: Tue, 24 Nov 2026 21:24:03 GMT  
		Size: 831.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:5eb3703d79610fa0aa2ea045e252c78d358771477229c90de6051e7b9fec0631
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6749755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32b501d4f7f1b0e16311a4179083ab9e5e5b4259a1ff474ac8f07f4688599d8d`

```dockerfile
```

-	Layers:
	-	`sha256:41c5fd232379b85878f3e8a3295d0dc753894168e4c7f11849c6b117a0a1c9d4`  
		Last Modified: Tue, 24 Nov 2026 21:24:01 GMT  
		Size: 673.8 KB (673785 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d24ccff6d74d328fcc4714429692cec702b0a3c2ede4ffc355eb6de15b0fb399`  
		Last Modified: Tue, 24 Nov 2026 21:24:01 GMT  
		Size: 3.1 MB (3084727 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d51b2e1e29ebfa12883c70d22e824728af21391a2bbb166046ae9f69eacc39a0`  
		Last Modified: Tue, 24 Nov 2026 21:24:01 GMT  
		Size: 2.9 MB (2930752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a59a2b2174d73a239db51094920344b35c0a58fa7be8f7385a9d1d4e91f75a40`  
		Last Modified: Tue, 24 Nov 2026 21:24:01 GMT  
		Size: 60.5 KB (60491 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:c2e83ba9da1ac465258f1da0a8e74a335b6e33a31d6c1e94c78ac13f6008a545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.8 MB (89788562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4792344ecea55d6a0d71f9d2f53f4cbd7ecaa343d4305e2ca853fcf9f61acaae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Tue, 24 Nov 2026 21:22:33 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 24 Nov 2026 21:22:33 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 24 Nov 2026 21:22:33 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 24 Nov 2026 21:22:33 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 24 Nov 2026 21:22:33 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 21:22:33 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 24 Nov 2026 21:22:34 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Tue, 24 Nov 2026 21:22:34 GMT
ENV RABBITMQ_VERSION=4.4.1
# Tue, 24 Nov 2026 21:22:34 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 24 Nov 2026 21:22:34 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 24 Nov 2026 21:22:34 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 21:22:40 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 24 Nov 2026 21:22:41 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 24 Nov 2026 21:22:41 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 24 Nov 2026 21:22:41 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 24 Nov 2026 21:22:41 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 24 Nov 2026 21:22:41 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 24 Nov 2026 21:22:41 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 24 Nov 2026 21:22:41 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 24 Nov 2026 21:22:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 21:22:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 21:22:41 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 24 Nov 2026 21:22:41 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b50699b52befabf5050f9ce2985d59a62cf4835a8bf0de15ac0ca8b500ca6f25`  
		Last Modified: Tue, 24 Nov 2026 21:22:58 GMT  
		Size: 46.0 MB (46041430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8f6aa4ef5847885ebd8caaeba31b7195a25a01761e0d2aa260ff6ab6f9a5413`  
		Last Modified: Tue, 24 Nov 2026 21:22:57 GMT  
		Size: 10.0 MB (10020934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24c6e104fd53d786d4aab264b525550448f0bd1c9fb678074b7c468b5d432fb4`  
		Last Modified: Tue, 24 Nov 2026 21:22:56 GMT  
		Size: 2.5 MB (2524334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a619fecaf7329bf7808d90a28102868950fa101f3ea12900e8c328f86ab04bf8`  
		Last Modified: Tue, 24 Nov 2026 21:22:57 GMT  
		Size: 27.0 MB (27009519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed82d34ef66ab274ecc4e002db2a228c0316cea4a1324c27b526a07513cbc30c`  
		Last Modified: Tue, 24 Nov 2026 21:22:58 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c9acc078c855a43861fb361aac9603ccc0dc83bddc61f57e530c9c25b73a49`  
		Last Modified: Tue, 24 Nov 2026 21:22:58 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f06488ddc85477f804a3248b47288f9a56b2a8184a1dcde528a9038b030e5b49`  
		Last Modified: Tue, 24 Nov 2026 21:22:59 GMT  
		Size: 621.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5f90a1b75eea3fb867e93ed5997e1047ec5b72e3cd68252591383749366bc1b`  
		Last Modified: Tue, 24 Nov 2026 21:22:59 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:28134a2a6a8ae92683724365a12f2a042c4f697d75b349aa43efe2bbef33a6ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7092755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:603e10181a17ec8dc2da5399bfe5bdc72d293ab2d7dc0f80749ad0753c697da7`

```dockerfile
```

-	Layers:
	-	`sha256:c8d6e6d9b6170787eea711199dd7c376c428c0ee0b70e977dd9d4b3c09072b59`  
		Last Modified: Tue, 24 Nov 2026 21:22:56 GMT  
		Size: 675.8 KB (675795 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f654c45abb1d550f3acd324ba49bab6a410224387671bcaf82c473404f43690e`  
		Last Modified: Tue, 24 Nov 2026 21:22:56 GMT  
		Size: 3.3 MB (3255195 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a80b5cdf01a689ad4ea5330bdfb18e03271817428ecb1ac0c97781d1d2b982c8`  
		Last Modified: Tue, 24 Nov 2026 21:22:56 GMT  
		Size: 3.1 MB (3101226 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e307ca3a05618610c4de0ab22494b798bc80f93c5713e53986701a905e3bb38`  
		Last Modified: Tue, 24 Nov 2026 21:22:56 GMT  
		Size: 60.5 KB (60539 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:5c12e5c6116c49c1b4c42a58ae9225e3b5a767beb3c3463a83ee2ed9e4b4a072
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.9 MB (79937915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ffbd2f1dd5cf0eaf02fa13678027a1973edec359ec7a069db4d0586eb571c2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Tue, 24 Nov 2026 21:19:45 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 24 Nov 2026 21:19:45 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 24 Nov 2026 21:19:45 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 24 Nov 2026 21:19:46 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 24 Nov 2026 21:19:46 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 21:19:46 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 24 Nov 2026 21:19:47 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Tue, 24 Nov 2026 21:19:47 GMT
ENV RABBITMQ_VERSION=4.4.1
# Tue, 24 Nov 2026 21:19:47 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 24 Nov 2026 21:19:47 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 24 Nov 2026 21:19:47 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 21:19:53 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 24 Nov 2026 21:19:53 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 24 Nov 2026 21:19:54 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 24 Nov 2026 21:19:54 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 24 Nov 2026 21:19:54 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 24 Nov 2026 21:19:54 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 24 Nov 2026 21:19:54 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 24 Nov 2026 21:19:54 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 24 Nov 2026 21:19:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 21:19:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 21:19:54 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 24 Nov 2026 21:19:54 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c864332883269471d4e16ed8a13090f78317e818607d5ae808b1b2bdfc7874ee`  
		Last Modified: Tue, 24 Nov 2026 21:20:09 GMT  
		Size: 38.6 MB (38594959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3fac6c891bf94311ebce03c62353f18abbc20d4fb448ae8b4a37a52affdb415`  
		Last Modified: Tue, 24 Nov 2026 21:20:07 GMT  
		Size: 9.2 MB (9226054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:024d81fa3b38d9a80e66d7ab5d84e880f1b53b670a422085f81675f03e399083`  
		Last Modified: Tue, 24 Nov 2026 21:20:07 GMT  
		Size: 1.4 MB (1425601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:652474b4ecf7d6b3fb9d3707a8b3a4101d442d5b3c14028b896e0648f343eeca`  
		Last Modified: Tue, 24 Nov 2026 21:20:08 GMT  
		Size: 27.0 MB (27009192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db0bb24246a4b25b8d3b88b75bbf910bb6a16836e1c68c59e61b5da465ef549b`  
		Last Modified: Tue, 24 Nov 2026 21:20:08 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60a58eea419fa37d4c6c6131c6fe115fd015b98a5afa17995bd453bf301622f1`  
		Last Modified: Tue, 24 Nov 2026 21:20:09 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029d0e44d900f0ff908875e5199e17ca86d1fa4470261b1702059adb04afe1f7`  
		Last Modified: Tue, 24 Nov 2026 21:20:09 GMT  
		Size: 622.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e8b8022de090eb140ba5db770b45bf60d620d6220d63a604961a760e1d9bf3a`  
		Last Modified: Tue, 24 Nov 2026 21:20:10 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:8abb0946705d5d1d39f57351bb70b99c01e90d07a1a280adb9ca6e9373b30fa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6971445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b392fabac91ee2d5c90d8f3778fd4f0ef0d886b5985403a16c98242f5294a37f`

```dockerfile
```

-	Layers:
	-	`sha256:c38322f50943cf1380b8f0043231507e05e718a88e798adbfd8c7faa761ceadc`  
		Last Modified: Tue, 24 Nov 2026 21:20:07 GMT  
		Size: 670.6 KB (670649 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56c31f8b0baca45334492149691fa84dbae3283fdb95808a9293c2341c86e77b`  
		Last Modified: Tue, 24 Nov 2026 21:20:07 GMT  
		Size: 3.2 MB (3196599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:208ef785c610192e8aeb7fa8b25158f4fd56ab3190176cb3cc8a6e8113e99b05`  
		Last Modified: Tue, 24 Nov 2026 21:20:07 GMT  
		Size: 3.0 MB (3043953 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90b682c3c9b2d4c3c73376f0e531b9840fa7855f15b40a565339184fbafbd3a0`  
		Last Modified: Tue, 24 Nov 2026 21:20:07 GMT  
		Size: 60.2 KB (60244 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:782239c9306a57910d9b6fdf85d1c957a4fa88f54b52c56bea6de113416a167e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.5 MB (81533597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c2cdb1f4074a5bdafc2c6af62995b135c2434154fdd8b4568d842896765a94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Tue, 24 Nov 2026 23:50:30 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 24 Nov 2026 23:50:30 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 24 Nov 2026 23:50:30 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 24 Nov 2026 23:50:31 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 24 Nov 2026 23:50:31 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 23:50:31 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 24 Nov 2026 23:50:33 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Tue, 24 Nov 2026 23:50:33 GMT
ENV RABBITMQ_VERSION=4.4.1
# Tue, 24 Nov 2026 23:50:33 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 24 Nov 2026 23:50:33 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 24 Nov 2026 23:50:33 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 23:50:43 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 24 Nov 2026 23:50:45 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 24 Nov 2026 23:50:45 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 24 Nov 2026 23:50:45 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 24 Nov 2026 23:50:45 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 24 Nov 2026 23:50:45 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 24 Nov 2026 23:50:45 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 24 Nov 2026 23:50:46 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 24 Nov 2026 23:50:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 23:50:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 23:50:46 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 24 Nov 2026 23:50:46 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8942d9f9c8cde510a51032615f3dc6b879c8df15f1e3c8da805bb11397d8de3`  
		Last Modified: Tue, 24 Nov 2026 23:51:22 GMT  
		Size: 39.1 MB (39148124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9cc3a59242d4406d5c49fb8e96cddeef27190788dccb343643ac8042b3e0e2`  
		Last Modified: Tue, 24 Nov 2026 23:51:21 GMT  
		Size: 10.0 MB (9997368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b92e7213bb445509b638835c80275b8813c507217044b394d5b74025fbc0795`  
		Last Modified: Tue, 24 Nov 2026 23:51:20 GMT  
		Size: 1.6 MB (1555297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dc9d2dea9fe0fc6bf79a551879699f205b6dc36380dd30ca00df933df11b92b`  
		Last Modified: Tue, 24 Nov 2026 23:51:22 GMT  
		Size: 27.0 MB (27009137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb6f3edea20088df1c919d489db5d668fedbbff0ad200e2961c1c8bd10150d3f`  
		Last Modified: Tue, 24 Nov 2026 23:51:22 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dda23449977ad2221f180f96656b7e045ebc32ed7b756a5968bbf92010fff9a5`  
		Last Modified: Tue, 24 Nov 2026 23:51:22 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6f2456765ebcbabfede4fb15be531b78692c6692005757aa9c3736d938014e8`  
		Last Modified: Tue, 24 Nov 2026 23:51:23 GMT  
		Size: 620.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2efa054437620c54e3b84e01b3f03406549d9f2904df5f9b9947748228bf1ad8`  
		Last Modified: Tue, 24 Nov 2026 23:51:23 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:bd279b03dac18c3277e91797401d3f3e92fd9011b59b84d54b534d53b6cd8df5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6995471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8fae2657d2b4460f0791f3f6c574e861ad01dde07661d1d1eedea90ff5c4e88`

```dockerfile
```

-	Layers:
	-	`sha256:7ac75a6b79a10b56e762989961074a1f88f259ab7619487ba8af74d1281f782a`  
		Last Modified: Tue, 24 Nov 2026 23:51:20 GMT  
		Size: 670.8 KB (670792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2684dd76d365e84ff84fcfd0a2c39be4c2eb1133268a44711faff3e2808ecf4a`  
		Last Modified: Tue, 24 Nov 2026 23:51:21 GMT  
		Size: 3.2 MB (3209152 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:399ace1f006794c733dc0dc35e08249f6d37ca96c18e6673ed336b64dc8c4ba3`  
		Last Modified: Tue, 24 Nov 2026 23:51:20 GMT  
		Size: 3.1 MB (3055171 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d454b31f639a2ddab256827dec93e65562cf3aee2d6035f45f30227da32e2b4`  
		Last Modified: Tue, 24 Nov 2026 23:51:20 GMT  
		Size: 60.4 KB (60356 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:alpine` - linux; riscv64

```console
$ docker pull rabbitmq@sha256:55229ee709b0f1e92937936e3278e4fb7237d205aa1f9ae0cbcfaa0e479b86c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.9 MB (85888702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75c7dcc676d6cebc808a15a1cce74c542bef11e49d3f030fed085491cbcf5985`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Sun, 08 Nov 2026 12:33:46 GMT
ADD alpine-minirootfs-3.24.4-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:33:46 GMT
CMD ["/bin/sh"]
# Sat, 28 Nov 2026 04:01:29 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Sat, 28 Nov 2026 04:01:29 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Sat, 28 Nov 2026 04:01:29 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Sat, 28 Nov 2026 04:01:29 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Sat, 28 Nov 2026 04:01:29 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Nov 2026 04:01:29 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Sat, 28 Nov 2026 04:01:40 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Sat, 28 Nov 2026 04:01:40 GMT
ENV RABBITMQ_VERSION=4.4.1
# Sat, 28 Nov 2026 04:01:40 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 28 Nov 2026 04:01:40 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sat, 28 Nov 2026 04:01:40 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Nov 2026 04:02:20 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Sat, 28 Nov 2026 04:02:30 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Sat, 28 Nov 2026 04:02:30 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Sat, 28 Nov 2026 04:02:30 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 28 Nov 2026 04:02:30 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 28 Nov 2026 04:02:30 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Sat, 28 Nov 2026 04:02:30 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Sat, 28 Nov 2026 04:02:31 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Sat, 28 Nov 2026 04:02:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 28 Nov 2026 04:02:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Nov 2026 04:02:31 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Sat, 28 Nov 2026 04:02:31 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:248497acdc975d47d1d576f068cfa311688b2fc870a859b6631b3538b043c70e`  
		Last Modified: Sun, 08 Nov 2026 12:34:20 GMT  
		Size: 3.6 MB (3580610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:283c766c2d284a2a9fa9a5ffb54a34cb007e96e191dc591cac4a66e1d0020757`  
		Last Modified: Sat, 28 Nov 2026 04:08:47 GMT  
		Size: 43.0 MB (43009535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b7d2fb92bd7b880478202037faab96e9362fdcfca52dfb074cd1b0f2895fcc8`  
		Last Modified: Sat, 28 Nov 2026 04:08:39 GMT  
		Size: 10.8 MB (10826145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b3fbb64375c1bc12bc6e42a2f2ae075f1c72eb7d0ffb146d75bda682d17135a`  
		Last Modified: Sat, 28 Nov 2026 04:08:34 GMT  
		Size: 1.5 MB (1461266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5498cff6704903ff08fad0596dea5d903d199b3529f466364df92b0bea5cd5a`  
		Last Modified: Sat, 28 Nov 2026 04:08:45 GMT  
		Size: 27.0 MB (27009392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9da5e057cfc35c395c1251b767d6b7e44ffaba2ac584bc47eac812247a45a8ec`  
		Last Modified: Sat, 28 Nov 2026 04:08:38 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8613f659e0b85b6e642dd06be37cd4a6bafe37d6dc384b86124540e4592e47e6`  
		Last Modified: Sat, 28 Nov 2026 04:08:39 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944886d505c87bc015ed918078b473a3adbb985fec8ab8bc284a58fbb02a103d`  
		Last Modified: Sat, 28 Nov 2026 04:08:40 GMT  
		Size: 623.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f26f406d80a90a24bbb902dee2b622c38fd0804aa77a0b5e4904d912df3704e`  
		Last Modified: Sat, 28 Nov 2026 04:08:41 GMT  
		Size: 831.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:15b567bbd71da9f229583d697a92f004b6826dbcadacadc4ac7b2551ea461c97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7074688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2440100d6b30f3071701aff066dbaa2a882c40c1461d971ac139d199775b22b9`

```dockerfile
```

-	Layers:
	-	`sha256:1f23562aaed867c6730f54ec71e7df8429798aa48da7e4848adda3a7f8dad98a`  
		Last Modified: Sat, 28 Nov 2026 04:08:34 GMT  
		Size: 673.8 KB (673761 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e47494cf4bbb3c191572e82108db36c9a16979a37975493f82f7f41be3a6f5e6`  
		Last Modified: Sat, 28 Nov 2026 04:08:36 GMT  
		Size: 3.2 MB (3247267 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:089f8addce4ecf30b234fec1114891e9da6956b527bf7252aca8c090aee64ba6`  
		Last Modified: Sat, 28 Nov 2026 04:08:35 GMT  
		Size: 3.1 MB (3093298 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3747a8fdd01a558b85c7474d5fca540d7921b44b63eb810b7eb0576fbe8cde3b`  
		Last Modified: Sat, 28 Nov 2026 04:08:34 GMT  
		Size: 60.4 KB (60362 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:a38683ec4ab19257772e72fe58750562e52277e1c18fe47939df58e14829ca9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.7 MB (79738098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78db1bd5c4a533c158405776243f0fccec32a27fb311b42f84be3e50a1a88477`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Tue, 24 Nov 2026 21:22:30 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 24 Nov 2026 21:22:30 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 24 Nov 2026 21:22:30 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 24 Nov 2026 21:22:30 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 24 Nov 2026 21:22:30 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 21:22:30 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 24 Nov 2026 21:22:32 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive $ERLANG_INSTALL_PATH_PREFIX $OPENSSL_INSTALL_PATH_PREFIX 			| tr ',' '\n' 			| sort -u 			| grep -v '^$\|lib\(crypto\|ssl\)' 			| awk 'system("test -e /usr/local/lib/" $1) == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 		sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie; 		apk add --no-cache 		'su-exec>=0.2' 		bash 		procps 		tzdata # buildkit
# Tue, 24 Nov 2026 21:22:32 GMT
ENV RABBITMQ_VERSION=4.4.1
# Tue, 24 Nov 2026 21:22:32 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 24 Nov 2026 21:22:32 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 24 Nov 2026 21:22:32 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 21:22:38 GMT
RUN set -eux; 	mkdir -p /usr/local/src; 		apk add --no-cache --virtual .build-deps 		gnupg 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del --no-network .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 24 Nov 2026 21:22:38 GMT
RUN su-exec rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 24 Nov 2026 21:22:38 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 24 Nov 2026 21:22:38 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 24 Nov 2026 21:22:38 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 24 Nov 2026 21:22:38 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 24 Nov 2026 21:22:38 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 24 Nov 2026 21:22:38 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 24 Nov 2026 21:22:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 21:22:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 21:22:39 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 24 Nov 2026 21:22:39 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484547f0d56260eb3547096c84588476fe9f916e452e4de6144d7b372fd5ac74`  
		Last Modified: Tue, 24 Nov 2026 21:23:02 GMT  
		Size: 39.1 MB (39108398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eedd9dc966fe07e760e80cb34e98490857f5fc9b6454b67ecf0e447d66184a07`  
		Last Modified: Tue, 24 Nov 2026 21:23:01 GMT  
		Size: 8.4 MB (8370624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf66e39023b62a149bc7a9749b2929ec12255832c56ea072addf14691a4a13cb`  
		Last Modified: Tue, 24 Nov 2026 21:23:01 GMT  
		Size: 1.5 MB (1527639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c31b35f28626f3bcc96f5ce7959c35a3463aefb26c0bbbd69c506dd8db4d3301`  
		Last Modified: Tue, 24 Nov 2026 21:23:02 GMT  
		Size: 27.0 MB (27009023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4657373ba973f432e911b6e9bb2b28a0b4455ccb61b09a39d1589b4e69ff2314`  
		Last Modified: Tue, 24 Nov 2026 21:23:02 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eeadf98391a8c2680481b3641828d48ac381f778e6a7d0f25b75140b796935d`  
		Last Modified: Tue, 24 Nov 2026 21:23:02 GMT  
		Size: 108.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:035a039753cf06ed8e8dc115ffed69cc43b20b839450b73be0c3c415b1426ac3`  
		Last Modified: Tue, 24 Nov 2026 21:23:03 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9366a9757023647e87b1ff94825ff754bb44f3b2fd9921e0e61735a99df26e1c`  
		Last Modified: Tue, 24 Nov 2026 21:23:03 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:alpine` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:1be8de36b3896ddb3d0c35f4c199b472f6b65e9d083ec7b3dd166ef220c2a80e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6768733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fe1879a2de8994af43237275cbca800587a2534dbf7a879f00d5efa493fe727`

```dockerfile
```

-	Layers:
	-	`sha256:94d4c92fcfa55e86d7e4f3e11818374784acb022103009d106b5f4d039581d50`  
		Last Modified: Tue, 24 Nov 2026 21:23:01 GMT  
		Size: 670.8 KB (670758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7fd2c9eb8834209e909e417dd8182fdc1575ed38a008cf72fc5e49169e11290`  
		Last Modified: Tue, 24 Nov 2026 21:23:01 GMT  
		Size: 3.1 MB (3095816 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a3c73f63a76ff003f0f81e14cab48ba0023c65ebb25af7dab71669e858dcc74`  
		Last Modified: Tue, 24 Nov 2026 21:23:01 GMT  
		Size: 2.9 MB (2941865 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0ccbf7c1d1473ec63e209d56b9d1046565f5c0fbc84a6515c81c2ef9914688f`  
		Last Modified: Tue, 24 Nov 2026 21:23:01 GMT  
		Size: 60.3 KB (60294 bytes)  
		MIME: application/vnd.in-toto+json
