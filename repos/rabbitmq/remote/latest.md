## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:bfdd5d1e94e94ff70198cae065affef5ffdfb50394e57848732ce964e0a78e2c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `rabbitmq:latest` - linux; amd64

```console
$ docker pull rabbitmq@sha256:1482ccadf4b65bb32372c80554ad080e57f7446feb27b4d2da24bbe243cbd470
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.2 MB (116220818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de879a88391dab362503568e3852382e0df3e6f09ae15a3980b7e40046d96d87`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 17:06:08 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 18 Aug 2026 17:06:08 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 18 Aug 2026 17:06:08 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 18 Aug 2026 17:06:08 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 18 Aug 2026 17:06:08 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 17:06:08 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 18 Aug 2026 17:06:09 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Tue, 18 Aug 2026 17:06:09 GMT
ENV RABBITMQ_VERSION=4.3.5
# Tue, 18 Aug 2026 17:06:09 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 18 Aug 2026 17:06:09 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 18 Aug 2026 17:06:09 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 17:06:24 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 18 Aug 2026 17:06:25 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 18 Aug 2026 17:06:25 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 18 Aug 2026 17:06:25 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 18 Aug 2026 17:06:25 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 18 Aug 2026 17:06:25 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 17:06:25 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 18 Aug 2026 17:06:25 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 18 Aug 2026 17:06:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 17:06:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Aug 2026 17:06:26 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 18 Aug 2026 17:06:26 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02d57789f781cdc1a1ea2913bfb933c8fae8ab89cfe8762e5d669b82615c4202`  
		Last Modified: Tue, 18 Aug 2026 17:06:50 GMT  
		Size: 46.3 MB (46317154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3ea051628d80d4efdfe21ee9729df821701dd7559b87a52dae8af4591006650`  
		Last Modified: Tue, 18 Aug 2026 17:06:49 GMT  
		Size: 9.0 MB (8994456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f75ee44ef51d1095a4a6f9327812023afd2ec7e05e405d52c7171bdfbcb13f5d`  
		Last Modified: Tue, 18 Aug 2026 17:06:48 GMT  
		Size: 9.7 KB (9686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecef9574a02941310aed4002e0703f7b41498c141336e8a0f129a38065c5a665`  
		Last Modified: Tue, 18 Aug 2026 17:06:50 GMT  
		Size: 31.1 MB (31146670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fce7183c26860558e56d04d5df6a434e6bd17e141c4f1553917835c7506f9ec`  
		Last Modified: Tue, 18 Aug 2026 17:06:49 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:947684ec86dd915e99b29ea6f47cc87592cb0dd62e51a07d7728055a12281fa3`  
		Last Modified: Tue, 18 Aug 2026 17:06:50 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:516052501d152cdcf179d6bc7b0d63b5f103247d9957950727b899a8fc46cf7b`  
		Last Modified: Tue, 18 Aug 2026 17:06:50 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e63d352fa176b82e04d27395889375ef6e9931bc85d61977dcf054bcde3eb8af`  
		Last Modified: Tue, 18 Aug 2026 17:06:51 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:latest` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:f32ce43151d81d4069947d1f27830416e95536d646bccd56b15704d9118a007a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18783164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cf426a6431a7baabd82829bb2f8198fd883eecdab0de4dfabc5fbe6669777cf`

```dockerfile
```

-	Layers:
	-	`sha256:9375c0b3ca392e088af46cae301fc078624391553ca13ccf2571fda344156de5`  
		Last Modified: Tue, 18 Aug 2026 17:06:48 GMT  
		Size: 2.5 MB (2470499 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f3798175175109dff3970c5b061a4b891268a8094856dcdb65cef742e498019`  
		Last Modified: Tue, 18 Aug 2026 17:06:49 GMT  
		Size: 5.4 MB (5364640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:274b7cf31adef3d6ab9bb537a97b976431be2fb5167090b1624acbd78eb564c9`  
		Last Modified: Tue, 18 Aug 2026 17:06:49 GMT  
		Size: 5.5 MB (5521442 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:666e807fdad0d85d30603080184a4329bcf5cefc9a591b0c45cabcb736c64ea6`  
		Last Modified: Tue, 18 Aug 2026 17:06:49 GMT  
		Size: 5.4 MB (5366382 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:835d110a76c357cde0d605a01729a157a4563f96c193ba5aee14492b72260371`  
		Last Modified: Tue, 18 Aug 2026 17:06:50 GMT  
		Size: 60.2 KB (60201 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:latest` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:dbfd3de7c7e5e6642d770e291eb4283c86f35730f0a4252e22fa4babe210a5cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.2 MB (96187550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0efad5eeae3d7c091aa3d98a0f519bc3a0d5c6f6782e03e3e8c471cd019902f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:36 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:36 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:36 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:39 GMT
ADD file:a14f36e5118167aeb083ee3ba0aabf6fcdf633fe1c3297963fe456c1a0cb252a in / 
# Fri, 31 Jul 2026 20:45:40 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 17:05:19 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 18 Aug 2026 17:05:19 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 18 Aug 2026 17:05:19 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 18 Aug 2026 17:05:19 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 18 Aug 2026 17:05:19 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 17:05:19 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 18 Aug 2026 17:05:21 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Tue, 18 Aug 2026 17:05:21 GMT
ENV RABBITMQ_VERSION=4.3.5
# Tue, 18 Aug 2026 17:05:21 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 18 Aug 2026 17:05:21 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 18 Aug 2026 17:05:21 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 17:05:39 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 18 Aug 2026 17:05:40 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 18 Aug 2026 17:05:40 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 18 Aug 2026 17:05:40 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 18 Aug 2026 17:05:40 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 18 Aug 2026 17:05:40 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 17:05:40 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 18 Aug 2026 17:05:40 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 18 Aug 2026 17:05:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 17:05:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Aug 2026 17:05:40 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 18 Aug 2026 17:05:40 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:c55214abec85c375f31bae91edc8d5ede87ebb1a3979fe7ba996b347fc559989`  
		Last Modified: Fri, 31 Jul 2026 22:22:35 GMT  
		Size: 26.9 MB (26872495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe9756a03f610a42e3a9667128e7e4308d69cf78733155eaa14f8e06de1eaf14`  
		Last Modified: Tue, 18 Aug 2026 17:06:04 GMT  
		Size: 33.3 MB (33346031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:757c623c58b0e5d402f3fb83a6d603fb68a14051d1a20df09c87258cf84cd83a`  
		Last Modified: Tue, 18 Aug 2026 17:06:03 GMT  
		Size: 7.3 MB (7314951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb241a57cc7232460dfc2f476d7084de07be20a9be9b9ee53ca3f947bb7bd9c9`  
		Last Modified: Tue, 18 Aug 2026 17:06:02 GMT  
		Size: 9.7 KB (9721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:457e79694fe89e160f2b8116aae75bdf6c5f7dc80f079e3411887c36c3e53573`  
		Last Modified: Tue, 18 Aug 2026 17:06:04 GMT  
		Size: 28.6 MB (28642604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80d945fef8de9eb8ce7bfd2da1622d0fa449e7e30b17321db96338e4fcdbe5bf`  
		Last Modified: Tue, 18 Aug 2026 17:06:04 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:765a6006bde7083d9f608bbee53e7c4eca49b2653833d55a65093962cca04c37`  
		Last Modified: Tue, 18 Aug 2026 17:06:05 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa3c08c6234aa04ee6f9a579463d052e22d36327b4bd5bf0411a02d78fb13359`  
		Last Modified: Tue, 18 Aug 2026 17:06:05 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beb88a376f7d2286bc5f49a49c37a5a4b5239a0feba8e768f41f390b7126807a`  
		Last Modified: Tue, 18 Aug 2026 17:06:06 GMT  
		Size: 831.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:latest` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:7fcc462d9bef97523b1cc402a04adc33265d28a6c04edbef6519877acd62bae0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.2 MB (18237874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0a259c4a82a626a1b7bfb37cc655293e4c75182d12d23fb69718e6785da21c5`

```dockerfile
```

-	Layers:
	-	`sha256:46f96993614526ef244ae4154100560f9ce609cb6eb80205a9a4d6d637644e50`  
		Last Modified: Tue, 18 Aug 2026 17:06:03 GMT  
		Size: 2.5 MB (2471297 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:485a675f00ce1bde0796486966af4d8de2ad68477961cfb91655ffe663485071`  
		Last Modified: Tue, 18 Aug 2026 17:06:03 GMT  
		Size: 5.2 MB (5183398 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bf07d7057edcc997adf24287b3719d725eb21d91108d03eaa1af58e4a72cb64`  
		Last Modified: Tue, 18 Aug 2026 17:06:03 GMT  
		Size: 5.3 MB (5337641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a0d7cde403ec90d8a61dd95a3f87a914e26065baf964f1dfba5f988c595c9dc`  
		Last Modified: Tue, 18 Aug 2026 17:06:03 GMT  
		Size: 5.2 MB (5185140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a43b41c93dc166616af1e56ea9347d7b758921dbd6296d2b3218f0d341d43c16`  
		Last Modified: Tue, 18 Aug 2026 17:06:04 GMT  
		Size: 60.4 KB (60398 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:latest` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:1f84e739063786750d4e670286f95cd7bc4c0508ced82119dc96c3871b0b1a4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.7 MB (111670654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d64996b7534e146071520cada6cc2b0ae7fff98b555e80b580b9defc21b11efa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 17:06:37 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 18 Aug 2026 17:06:37 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 18 Aug 2026 17:06:37 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 18 Aug 2026 17:06:37 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 18 Aug 2026 17:06:37 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 17:06:37 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 18 Aug 2026 17:06:38 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Tue, 18 Aug 2026 17:06:38 GMT
ENV RABBITMQ_VERSION=4.3.5
# Tue, 18 Aug 2026 17:06:38 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 18 Aug 2026 17:06:38 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 18 Aug 2026 17:06:38 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 17:06:53 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 18 Aug 2026 17:06:54 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 18 Aug 2026 17:06:54 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 18 Aug 2026 17:06:54 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 18 Aug 2026 17:06:54 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 18 Aug 2026 17:06:54 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 18 Aug 2026 17:06:54 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 18 Aug 2026 17:06:54 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 18 Aug 2026 17:06:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 17:06:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Aug 2026 17:06:55 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 18 Aug 2026 17:06:55 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914aaf1ea6b559d5689ee07c792c6e257acd991778704a38097876acc4a51b50`  
		Last Modified: Tue, 18 Aug 2026 17:07:21 GMT  
		Size: 44.4 MB (44400558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f408d1f3b9aba4eafc5b9dd534597549918df3d9bdc4a6b33536a54970a47561`  
		Last Modified: Tue, 18 Aug 2026 17:07:20 GMT  
		Size: 9.7 MB (9722831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dc994b8fec338ca356b984a30cafbf39be90a2404be5adbad25004e6169a695`  
		Last Modified: Tue, 18 Aug 2026 17:07:19 GMT  
		Size: 9.7 KB (9656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd501e6f2886d4de941d4ba8536b4369a9052d27b449ed90e876d0693d611b4`  
		Last Modified: Tue, 18 Aug 2026 17:07:20 GMT  
		Size: 28.6 MB (28649043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fd3c8589250fce328f7e73c7c65ee7cbd8223852143e167af7f90667bbe8a5b`  
		Last Modified: Tue, 18 Aug 2026 17:07:20 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb1f8dbfce923020b92b69baacdda08dffcf433af65eaf23310a67de7b389932`  
		Last Modified: Tue, 18 Aug 2026 17:07:21 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:925296d9c240c433033b1365946c9300ffb336c6f1909b906ec6b59b38e8c2b0`  
		Last Modified: Tue, 18 Aug 2026 17:07:21 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084fcf2933bc0f6bafa94018b2f06f2bf16c38814c3a761dbaa962f914043874`  
		Last Modified: Tue, 18 Aug 2026 17:07:22 GMT  
		Size: 832.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:latest` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:72f94f73a3304fa2c0753ff1fd7570d9852a3d1e1a8c79a3a8380b580cb00397
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18842131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:026a0f5c980125e10b48ec732ef1ade5f1ce1ad63860d2ea5e7cb4a32d33fcd6`

```dockerfile
```

-	Layers:
	-	`sha256:33b13a06e0c83eadc711e618a78de6b89879bf29a3238ea8925a3e238ab91b70`  
		Last Modified: Tue, 18 Aug 2026 17:07:19 GMT  
		Size: 2.5 MB (2471559 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ec59d129d453144eaa0d2a54226f3714ed02375ebff4b2714df9f6a2891db1c`  
		Last Modified: Tue, 18 Aug 2026 17:07:19 GMT  
		Size: 5.4 MB (5383857 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c7e3d41bcf4fcfdb32251476600ded42566d724edc68dae6a194aa6682b0431`  
		Last Modified: Tue, 18 Aug 2026 17:07:19 GMT  
		Size: 5.5 MB (5540677 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f861e459e8c41241dff94289bc931a5c2a358c7a6de45af7c30312cf210919ed`  
		Last Modified: Tue, 18 Aug 2026 17:07:19 GMT  
		Size: 5.4 MB (5385599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99e70d34359ce7e888c8f3e0e02ef7f53a3fe769c76a91ae81b9be5e447d0f65`  
		Last Modified: Tue, 18 Aug 2026 17:07:20 GMT  
		Size: 60.4 KB (60439 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:latest` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:807817beb401413f2a77d51938c49f378c344d26e4ff83748e2b284de9ca7e79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114726459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8594df86537eaa4700d5bdd94f6a724d1f628ab74ea12381118ebd185dca66c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 31 Jul 2026 20:44:29 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:44:29 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:44:29 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:44:32 GMT
ADD file:de84028a58b37b343ef7acd8f4c9a3bfde61683d6c522e683a978115b04d031b in / 
# Fri, 31 Jul 2026 20:44:33 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 22:42:22 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 04 Aug 2026 22:42:22 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 04 Aug 2026 22:42:22 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 04 Aug 2026 22:42:23 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 04 Aug 2026 22:42:23 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 22:42:23 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 04 Aug 2026 22:42:26 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Tue, 04 Aug 2026 22:42:26 GMT
ENV RABBITMQ_VERSION=4.3.4
# Tue, 04 Aug 2026 22:42:26 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 04 Aug 2026 22:42:26 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 04 Aug 2026 22:42:26 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 22:43:09 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 04 Aug 2026 22:43:11 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 04 Aug 2026 22:43:11 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 04 Aug 2026 22:43:11 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 04 Aug 2026 22:43:11 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 04 Aug 2026 22:43:11 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 22:43:11 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 04 Aug 2026 22:43:12 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 04 Aug 2026 22:43:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 22:43:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 22:43:12 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 04 Aug 2026 22:43:12 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:9d1bffbd46bb5cede430c07896855e38e8bfe397bbc67fe1808f03623a4aad12`  
		Last Modified: Fri, 31 Jul 2026 22:22:43 GMT  
		Size: 34.3 MB (34310673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c8610cf5ff3d8e0487b31c2f6c55a20a51e2e412a9eaf5fd13f5412337ab048`  
		Last Modified: Tue, 04 Aug 2026 22:44:12 GMT  
		Size: 39.5 MB (39546910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1f0ef4f759912420896c6d6754df2b303ae604bb334a68dfb4e3fc20432243c`  
		Last Modified: Tue, 04 Aug 2026 22:44:10 GMT  
		Size: 9.6 MB (9606008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2965e27a5d68e371e3e1987a11a89296670673aeb4be95869a9e27c3a5e0232c`  
		Last Modified: Tue, 04 Aug 2026 22:44:10 GMT  
		Size: 9.7 KB (9657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91fb3ae6c97a032c68fbe4d128994b93266901eafcdd5b69c51a4e254ef09642`  
		Last Modified: Tue, 04 Aug 2026 22:44:12 GMT  
		Size: 31.3 MB (31251458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceda9a9d81cbff9d065846cd96f3da740fa27d6042f24e8b7889e882c2ed621f`  
		Last Modified: Tue, 04 Aug 2026 22:44:11 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e3c7228c320c334bf0067a6d1a74ef1c3828b26eb586a61f59fb9c6fe5d76e`  
		Last Modified: Tue, 04 Aug 2026 22:44:12 GMT  
		Size: 107.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3c0420dfeb3f4e8bca61816fbc80cc014b3431fae374e24097a1fa1881780e`  
		Last Modified: Tue, 04 Aug 2026 22:44:13 GMT  
		Size: 625.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:033d8e500a8cc008af823c5d496a7d6504ecfb63a754fbe7160ff64dd763d867`  
		Last Modified: Tue, 04 Aug 2026 22:44:13 GMT  
		Size: 831.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:latest` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:42d98487d1ff96172eea48633281862081cbefd65673855afe3692a1963c1275
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18697514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4effce4e3ea96ebcc07a1d6e7f4d0cf38fc41d91b363dcd872388afdb5c93a52`

```dockerfile
```

-	Layers:
	-	`sha256:f38504c6ac8b7264402a63f20eb90e8eccffbfe127feb5ab92e7215cd819b5af`  
		Last Modified: Tue, 04 Aug 2026 22:44:10 GMT  
		Size: 2.5 MB (2474949 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ae6136e982043dd96ca95d3953ddc8c113e98fc473b4bacc9e1ae29dcd8607a`  
		Last Modified: Tue, 04 Aug 2026 22:44:10 GMT  
		Size: 5.3 MB (5334576 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92b3e926ca66ba353790a7863ada91b554bdbb72861ccdd2264b984ca04ceed9`  
		Last Modified: Tue, 04 Aug 2026 22:44:10 GMT  
		Size: 5.5 MB (5491408 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc3fe23626cf92c8ad884dd2a159ed1f767490a625d59d8a4adfa48db49f07f8`  
		Last Modified: Tue, 04 Aug 2026 22:44:10 GMT  
		Size: 5.3 MB (5336318 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2922ab21217c8d8dfb906f746846939745abe5eb40c912d470ddd4e4fff3eb5a`  
		Last Modified: Tue, 04 Aug 2026 22:44:11 GMT  
		Size: 60.3 KB (60263 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:latest` - linux; riscv64

```console
$ docker pull rabbitmq@sha256:1fd92f93915494cb7036286aaa902ff1f0374409297c1f7e178743b80db15277
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.6 MB (105617277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb5fe9daad299c1c6a85dd7fdb80e78c455e220d426ff9a4f31687e2814ba017`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 31 Jul 2026 22:05:08 GMT
ARG RELEASE
# Fri, 31 Jul 2026 22:05:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 22:05:09 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 22:06:18 GMT
ADD file:92a48184ab69ab31b698d333efd875f6fa0f69b8c6b66fb9364e2c45ad98a3e9 in / 
# Fri, 31 Jul 2026 22:06:24 GMT
CMD ["/bin/bash"]
# Wed, 05 Aug 2026 02:07:17 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Wed, 05 Aug 2026 02:07:17 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Wed, 05 Aug 2026 02:07:17 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Wed, 05 Aug 2026 02:07:18 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Wed, 05 Aug 2026 02:07:18 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 02:07:18 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Wed, 05 Aug 2026 02:07:21 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Wed, 05 Aug 2026 02:07:21 GMT
ENV RABBITMQ_VERSION=4.3.4
# Wed, 05 Aug 2026 02:07:21 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 05 Aug 2026 02:07:21 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 05 Aug 2026 02:07:21 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 02:09:35 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Wed, 05 Aug 2026 02:09:44 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Wed, 05 Aug 2026 02:09:44 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Wed, 05 Aug 2026 02:09:44 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 05 Aug 2026 02:09:44 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 05 Aug 2026 02:09:44 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 05 Aug 2026 02:09:44 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Wed, 05 Aug 2026 02:09:44 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Wed, 05 Aug 2026 02:09:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 02:09:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 02:09:45 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Wed, 05 Aug 2026 02:09:45 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:762baa88da0248ffd5b4e64693b9d04fc144101bcdbcc6dcc7d9a6be2a8b7953`  
		Last Modified: Fri, 31 Jul 2026 22:22:50 GMT  
		Size: 31.0 MB (30982563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:808f434144f42466b8ceefb7f2e799a00ad4b77bf14e309c5b9c2db79bbd2b69`  
		Last Modified: Wed, 05 Aug 2026 02:16:22 GMT  
		Size: 35.2 MB (35200717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da09762b15242b608b716bf77104da88519ab96c22b5bcf10590d8171b2b58f`  
		Last Modified: Wed, 05 Aug 2026 02:16:15 GMT  
		Size: 10.8 MB (10842300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eff36c3d2cd5ba97a5a1c1e557fefa1dce96944e194ef3e285878c37c3011f24`  
		Last Modified: Wed, 05 Aug 2026 02:16:09 GMT  
		Size: 9.7 KB (9701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75fdbda064537b5187fc710a4ea6066eed5542b6e5163da7185d01d53d7b4046`  
		Last Modified: Wed, 05 Aug 2026 02:16:21 GMT  
		Size: 28.6 MB (28580246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f71c8f0f5807bff6508c6f0e4d71a9dd0ef26161526873a3bc4c840d346a32d`  
		Last Modified: Wed, 05 Aug 2026 02:16:13 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc2d3a372b6c5cffb73f55019e3a188841645f53bb9f2de3277197fea230857`  
		Last Modified: Wed, 05 Aug 2026 02:16:15 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1cf788379e8ac0e8975457efee3a5756ca7598629202fda2c713d3fb3d75d47`  
		Last Modified: Wed, 05 Aug 2026 02:16:16 GMT  
		Size: 621.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3583fe5857fcc1b377233d2af31272463d2564fd55fde2a0671bc498e42dbbc8`  
		Last Modified: Wed, 05 Aug 2026 02:16:17 GMT  
		Size: 831.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:latest` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:c42e5c7863bdebb2312e287e2fa99a0d3c4cb47fd5c32cef4bca5a11730a6622
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18666104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7066553eda7bba2a9e9c4fe5bf0604553648eb78a650c590c8d92744e05c697f`

```dockerfile
```

-	Layers:
	-	`sha256:f6f1f6357a7381d8795a99ec568efa2f2cea1b64f94db542b547231ce09dcf87`  
		Last Modified: Wed, 05 Aug 2026 02:16:10 GMT  
		Size: 2.5 MB (2462861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bfd9cc3b37bf89b76ae9aa1e4aa001f2adfa94c1fdadb0c7dfaaa00f9f66bd8`  
		Last Modified: Wed, 05 Aug 2026 02:16:12 GMT  
		Size: 5.3 MB (5328997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e81cdb6199bfbf616b0c1de08d6edd055b9a7abc84eb08f3235aa90f45ec2e99`  
		Last Modified: Wed, 05 Aug 2026 02:16:13 GMT  
		Size: 5.5 MB (5483238 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:babba48de31bd51174ed44722bd2f2f3b730a97c554a85de808826a966db3771`  
		Last Modified: Wed, 05 Aug 2026 02:16:13 GMT  
		Size: 5.3 MB (5330739 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a9464064e9aed5c7e1cd9d8ed3f2a55822e4ed052881bb8d5fdcbcf3dae3855`  
		Last Modified: Wed, 05 Aug 2026 02:16:13 GMT  
		Size: 60.3 KB (60269 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:latest` - linux; s390x

```console
$ docker pull rabbitmq@sha256:bb5390b8590974793a996e1cc395d03d53cbd8c6550cd055b21ccddab8a49c5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.9 MB (105864075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d93c18ff4c5b584110e752ae37eeb473575f3ce0a6b199a811c178dfc06c0506`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 31 Jul 2026 20:38:37 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:38:37 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:38:37 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:38:39 GMT
ADD file:6086e70240c95f713e06ab2c1f53baed9645134bf0319a771ee83e6caa6fe818 in / 
# Fri, 31 Jul 2026 20:38:39 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 22:09:26 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 04 Aug 2026 22:09:26 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 04 Aug 2026 22:09:26 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 04 Aug 2026 22:09:28 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 04 Aug 2026 22:09:28 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 22:09:28 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 04 Aug 2026 22:09:36 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Tue, 04 Aug 2026 22:09:36 GMT
ENV RABBITMQ_VERSION=4.3.4
# Tue, 04 Aug 2026 22:09:36 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 04 Aug 2026 22:09:36 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 04 Aug 2026 22:09:36 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 22:11:41 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 04 Aug 2026 22:11:57 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 04 Aug 2026 22:11:59 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 04 Aug 2026 22:11:59 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 04 Aug 2026 22:11:59 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 04 Aug 2026 22:11:59 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 22:11:59 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 04 Aug 2026 22:12:02 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 04 Aug 2026 22:12:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 22:12:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 22:12:04 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 04 Aug 2026 22:12:04 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:6bb1e92e6c04f8404c596df473b847d14a4cc2ca1d4734e5353b4b54d37b3338`  
		Last Modified: Fri, 31 Jul 2026 22:22:57 GMT  
		Size: 29.9 MB (29935711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f008c35629dc330cb5add33af25946d66aa78e029f50a6f1af36ad7944598a0a`  
		Last Modified: Tue, 04 Aug 2026 22:13:54 GMT  
		Size: 38.6 MB (38641363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd56a7ca3bf14b5b075d6700f430b69141d5365c9b9d09dc6c354f5f95b1b8c`  
		Last Modified: Tue, 04 Aug 2026 22:13:52 GMT  
		Size: 8.6 MB (8623436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78fcc108e67ab2051371f9958130acf8da12816f5c8e82c99fcc60d36030a8a6`  
		Last Modified: Tue, 04 Aug 2026 22:13:48 GMT  
		Size: 9.8 KB (9830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9a4c18bfb9093d6d76634b6875d52a205a77a22358b252d0b35337ab3829f51`  
		Last Modified: Tue, 04 Aug 2026 22:13:54 GMT  
		Size: 28.7 MB (28651980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a90d9c00fe26b75bcd37ddace3a55fb036e70d5f189c59ccf558f95994493b8`  
		Last Modified: Tue, 04 Aug 2026 22:13:52 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95b3f851f8b5e2142d58ebcd2b195f361550b2c439a9bcbdfbe6abdf22914f07`  
		Last Modified: Tue, 04 Aug 2026 22:13:54 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f13cabf2be414874cd6dc7aa7ef16736123c6427e091157acb01a34655f230e5`  
		Last Modified: Tue, 04 Aug 2026 22:13:54 GMT  
		Size: 625.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39d0feebdac499cb83c2d210c2319c735daf8b82b8ae143ee6206dcdbe0d70bd`  
		Last Modified: Tue, 04 Aug 2026 22:13:55 GMT  
		Size: 831.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:latest` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:5a86e602a8573fbce3b0132ff2dcc3e8f0d33532c9767bb586555e086fd257f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18323250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6434ef54bd8018643a80fe28d268d55ed39e31c14e762dca7492dfcfa8057026`

```dockerfile
```

-	Layers:
	-	`sha256:217dfea93f8d5b527af0f828741b92d03b1a482f4cf201ae2b85fb3f69e5711a`  
		Last Modified: Tue, 04 Aug 2026 22:13:50 GMT  
		Size: 2.5 MB (2472605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0aa5ad73488d20b7edb52517fed361ee1d5430fe9dea62e89bd60b0a04df06b`  
		Last Modified: Tue, 04 Aug 2026 22:13:51 GMT  
		Size: 5.2 MB (5211069 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e968ebd84800024bc696803d193e54382b25904d7b4367687d7d47418ff70c4`  
		Last Modified: Tue, 04 Aug 2026 22:13:51 GMT  
		Size: 5.4 MB (5366565 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a190e55c6d75a23a656e6658b0e8772ec3b5a8f87d4cdabfa0499582b26f784`  
		Last Modified: Tue, 04 Aug 2026 22:13:48 GMT  
		Size: 5.2 MB (5212811 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23baf1673ea84bc4305315b305436efae8b53191c1d9aa390dbe7a269bc7981d`  
		Last Modified: Tue, 04 Aug 2026 22:13:52 GMT  
		Size: 60.2 KB (60200 bytes)  
		MIME: application/vnd.in-toto+json
