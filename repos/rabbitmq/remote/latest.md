## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:ea0dd7a0233aea17d36eff421ea09060026d9350d276598a8b4640c69971c94e
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
$ docker pull rabbitmq@sha256:34fc91a9de04d612a340507b8e7e19c0ee1ec9839e09dc5fc98f54991633ce91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.0 MB (113962363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e82332c48dd5c5fe3299ab7ed6550d860801cf9a0330d262d57cadee1ac7899`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 19:16:57 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 22 Sep 2026 19:16:57 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 22 Sep 2026 19:16:57 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 22 Sep 2026 19:16:57 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 22 Sep 2026 19:16:57 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 19:16:57 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 22 Sep 2026 19:16:59 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Tue, 22 Sep 2026 19:16:59 GMT
ENV RABBITMQ_VERSION=4.3.6
# Tue, 22 Sep 2026 19:16:59 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 22 Sep 2026 19:16:59 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 22 Sep 2026 19:16:59 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 19:17:22 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 22 Sep 2026 19:17:23 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 22 Sep 2026 19:17:23 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 22 Sep 2026 19:17:23 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 22 Sep 2026 19:17:23 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 22 Sep 2026 19:17:23 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 22 Sep 2026 19:17:23 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 22 Sep 2026 19:17:23 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 22 Sep 2026 19:17:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 22 Sep 2026 19:17:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 22 Sep 2026 19:17:23 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 22 Sep 2026 19:17:23 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba97b8c989cff13271def254e93b4b1829746de8558c00589c3652bb886a457`  
		Last Modified: Tue, 22 Sep 2026 19:17:48 GMT  
		Size: 46.4 MB (46371813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:808c70c9f0a9f84af8ff0cc9198395cf937206e4a6fdc06885b4941526b5618c`  
		Last Modified: Tue, 22 Sep 2026 19:17:47 GMT  
		Size: 9.0 MB (9005225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ca49f67134614975b0714ec638daa95fbe920d6c156222cba84ca1a06f688b3`  
		Last Modified: Tue, 22 Sep 2026 19:17:46 GMT  
		Size: 9.7 KB (9674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cb68c253c82b4f705308d875606985307fd889aa1e17abde68611889c5e5d16`  
		Last Modified: Tue, 22 Sep 2026 19:17:48 GMT  
		Size: 28.8 MB (28809791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22120705176215359a2c81e6de518167df3233a99d764afdf51c6ed7a64fc72a`  
		Last Modified: Tue, 22 Sep 2026 19:17:47 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3d751e8adafcb178a50afa33808d98324b869fdc3799c96195e4e0f4c7a2d09`  
		Last Modified: Tue, 22 Sep 2026 19:17:48 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad3b9d47c332d28fd080dc119a2e8a2117ae0d5d7a5ef6bd36f19f89acfd1054`  
		Last Modified: Tue, 22 Sep 2026 19:17:48 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f696889df801c4958c9d8f7060ef9e6ec61bbfbdf224c81dbfa3167ca6ac2637`  
		Last Modified: Tue, 22 Sep 2026 19:17:49 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:latest` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:4477e50a845287af5765049496123726b700a472d16d2ed05aed540b07f99efa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18783236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7a6afd0dae262268957ec651a065962df3066b29730909c3789f9893a9e9b4e`

```dockerfile
```

-	Layers:
	-	`sha256:3d91444ff84ca642f9cc620ee53eab2270bda07d5cc7ea301f69115fcacb7ec6`  
		Last Modified: Tue, 22 Sep 2026 19:17:46 GMT  
		Size: 2.5 MB (2470519 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44e84df93c610534590494b176744b4b0ff798ea7c6e6230cb7ee344454491cc`  
		Last Modified: Tue, 22 Sep 2026 19:17:47 GMT  
		Size: 5.4 MB (5364654 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1793fbd40740822c66bdfb0bf9883776f8f867cfa9dc36d41d4bb51ca6fc75c0`  
		Last Modified: Tue, 22 Sep 2026 19:17:46 GMT  
		Size: 5.5 MB (5521466 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6fa88223f2e44d3ed4d976e9f8d2bf4b11bec3c54ccb8729356f7c8e2a8c7a53`  
		Last Modified: Tue, 22 Sep 2026 19:17:47 GMT  
		Size: 5.4 MB (5366396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bde961c6b154f853d08564ed0e7399185510013c0957e325db4f27d21e8f26b6`  
		Last Modified: Tue, 22 Sep 2026 19:17:47 GMT  
		Size: 60.2 KB (60201 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:latest` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:6d5b30f089ef0f0f6234ebd1de927078f135ee3aca25af4f8c46c8fb822d5466
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.3 MB (96340137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96d6f3076e20e5bd2cb4e011e30acac38416cba65de3fb51ff107a3a4e342198`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:45:45 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:45:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:45:45 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:45:48 GMT
ADD file:683b4c146da2addbd0ae70d2240b8e3a57dd2f7582c952d416231fdd6496720f in / 
# Fri, 11 Sep 2026 11:45:48 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 19:03:54 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 22 Sep 2026 19:03:54 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 22 Sep 2026 19:03:54 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 22 Sep 2026 19:03:54 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 22 Sep 2026 19:03:54 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 19:03:54 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 22 Sep 2026 19:03:55 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Tue, 22 Sep 2026 19:03:55 GMT
ENV RABBITMQ_VERSION=4.3.6
# Tue, 22 Sep 2026 19:03:55 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 22 Sep 2026 19:03:55 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 22 Sep 2026 19:03:55 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 19:04:13 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 22 Sep 2026 19:04:14 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 22 Sep 2026 19:04:14 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 22 Sep 2026 19:04:14 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 22 Sep 2026 19:04:14 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 22 Sep 2026 19:04:14 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 22 Sep 2026 19:04:14 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 22 Sep 2026 19:04:15 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 22 Sep 2026 19:04:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 22 Sep 2026 19:04:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 22 Sep 2026 19:04:15 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 22 Sep 2026 19:04:15 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:f98fce276933dc8d40e338c8a5447d14e10d972c731f074e9fcd9f9bb629aa50`  
		Last Modified: Fri, 11 Sep 2026 13:38:53 GMT  
		Size: 26.9 MB (26894925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dba84b005d748f9f789ccdd0e02944304fc8a10cd9626cd6746a358eb07a0692`  
		Last Modified: Tue, 22 Sep 2026 19:04:39 GMT  
		Size: 33.4 MB (33397058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6188bb0b126cfe0eefe3fc437b0730b5bb147fcf042e0f724c20fedfcb1136df`  
		Last Modified: Tue, 22 Sep 2026 19:04:38 GMT  
		Size: 7.3 MB (7322270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d035c4c393d94dfefc58c6093490d277a425088a589b5db89363a5e775b79f0`  
		Last Modified: Tue, 22 Sep 2026 19:04:37 GMT  
		Size: 9.7 KB (9735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c161c678102b5a8c3d6a7094d9874302247a58a1186b59404c74c89f6e254bf`  
		Last Modified: Tue, 22 Sep 2026 19:04:39 GMT  
		Size: 28.7 MB (28714405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d558d5f58b863d2c1dc15f9f6488ad063de74d82c5ea020fb202b8537ecb4e8a`  
		Last Modified: Tue, 22 Sep 2026 19:04:39 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:779e7ccf8aa3383cf6624e0bbcb445d04169a375f1f5acacd3aea8a00e76dffc`  
		Last Modified: Tue, 22 Sep 2026 19:04:39 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d029d96cdab671ba96fc7c8c92f3716d8bc9dbc806f0be9d7874a2f078247ee`  
		Last Modified: Tue, 22 Sep 2026 19:04:40 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de4d293cedf8a482a0b9fa06198a27728e494480ee76cfe5e3779878d0c4e6ee`  
		Last Modified: Tue, 22 Sep 2026 19:04:40 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:latest` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:269ff657fc590ed92d00e0f57172371caa2f36513915b35a87ff1e46d4f1ce24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.2 MB (18237946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e82a5f2c2c9ab4b72b1200b0529b6f4b3f1207917abbdec9f05f0ee62be8cc`

```dockerfile
```

-	Layers:
	-	`sha256:222fe28fe81f6dc95c78a536a63b0ada3466fe11012ac313011f02cc55e5aa73`  
		Last Modified: Tue, 22 Sep 2026 19:04:38 GMT  
		Size: 2.5 MB (2471317 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:236f950fea25f934f2b0cadabec05102ff72b159a976c81333f2c7b4e504f3fb`  
		Last Modified: Tue, 22 Sep 2026 19:04:38 GMT  
		Size: 5.2 MB (5183412 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97d55bcf0896998de44bf022b97344139faea5a455e7d6fe2b79806d776f4a53`  
		Last Modified: Tue, 22 Sep 2026 19:04:38 GMT  
		Size: 5.3 MB (5337665 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0484650ee44395b6c3f476550081ea6102dc3fb5aa36094cbb10c3efb2b68b4f`  
		Last Modified: Tue, 22 Sep 2026 19:04:38 GMT  
		Size: 5.2 MB (5185154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb34e4895bac81813a3cb0291be682f506dd41a66054ab1dd3991f2b636101db`  
		Last Modified: Tue, 22 Sep 2026 19:04:39 GMT  
		Size: 60.4 KB (60398 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:latest` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:1a4b64d98915c38f496d1047f427baecdf0f5f73a773c8f2f7a515ce9763b5f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111865469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e238401be3118348652a61090bf4c8d4cdc7ac93f817340b713270ebf8dda2a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 19:57:50 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 22 Sep 2026 19:57:50 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 22 Sep 2026 19:57:50 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 22 Sep 2026 19:57:50 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 22 Sep 2026 19:57:50 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 19:57:50 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 22 Sep 2026 19:57:52 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Tue, 22 Sep 2026 19:57:52 GMT
ENV RABBITMQ_VERSION=4.3.6
# Tue, 22 Sep 2026 19:57:52 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 22 Sep 2026 19:57:52 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 22 Sep 2026 19:57:52 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 19:58:13 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 22 Sep 2026 19:58:14 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 22 Sep 2026 19:58:14 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 22 Sep 2026 19:58:14 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 22 Sep 2026 19:58:14 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 22 Sep 2026 19:58:14 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 22 Sep 2026 19:58:14 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 22 Sep 2026 19:58:14 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 22 Sep 2026 19:58:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 22 Sep 2026 19:58:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 22 Sep 2026 19:58:14 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 22 Sep 2026 19:58:14 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff867c232cab81705efebe26c7aa71c9b6d1a0ab8a0183a7ddf45149c39d94bb`  
		Last Modified: Tue, 22 Sep 2026 19:58:41 GMT  
		Size: 44.5 MB (44462917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4925a438b5e85a51db06eef9825bd58633c5577ebc58ac5e1d093e911eb2a8e3`  
		Last Modified: Tue, 22 Sep 2026 19:58:39 GMT  
		Size: 9.7 MB (9729963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab1178a967a95665c52dcb69134dfc4ad874ebacfd5321988b1392c628eb3891`  
		Last Modified: Tue, 22 Sep 2026 19:58:38 GMT  
		Size: 9.7 KB (9661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a045fcb07bceb3e2e1da24c44543d1b494d6249764d269677d74e9209cdf4487`  
		Last Modified: Tue, 22 Sep 2026 19:58:40 GMT  
		Size: 28.7 MB (28719600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2291820ca3808192e4a021cdaa12e2c3ce766a3bb5c688e531492c46da4d58ef`  
		Last Modified: Tue, 22 Sep 2026 19:58:40 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c22d8e10ac989a91a1b5902a84ab260c018200fc6dc3762024e8b46e951790c1`  
		Last Modified: Tue, 22 Sep 2026 19:58:41 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95bc1cdded37592df3140ab6738440c994f3342026849acfd5b36ba64e30dfa3`  
		Last Modified: Tue, 22 Sep 2026 19:58:41 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3554f7077fc1526e2a735f395d0f22b5afe14bb7c33316e5a52e1146043002ca`  
		Last Modified: Tue, 22 Sep 2026 19:58:42 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:latest` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:ec50bba4d4f5fa896ce2301be825426ad4b54ae76583620e5e0ab07573530c90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18842204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff410c3e9fea2716fced36f5d985fadfc0127346c08aeee520f84d36d807be23`

```dockerfile
```

-	Layers:
	-	`sha256:6876eaff71ffd90b7c8ee61de2227c69995d882a5358f6617da31389806121ea`  
		Last Modified: Tue, 22 Sep 2026 19:58:39 GMT  
		Size: 2.5 MB (2471579 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5645a033166c1498b361ddd08af52323bb057f7fdd2488dfdd6fc7dd7dec82bf`  
		Last Modified: Tue, 22 Sep 2026 19:58:39 GMT  
		Size: 5.4 MB (5383871 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d86022d923df1726ccd9b83b1e074b513c619bcbf290cfe493feb02b237b6eb`  
		Last Modified: Tue, 22 Sep 2026 19:58:39 GMT  
		Size: 5.5 MB (5540701 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1cc265440755c8346ac2a8fd5184c734589a6c853a9f14b6b15e589be8ebcd8`  
		Last Modified: Tue, 22 Sep 2026 19:58:39 GMT  
		Size: 5.4 MB (5385613 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7d58b214ca29a81749ab2eda2dcd5e3d35853c42d39b925816a07a853889336`  
		Last Modified: Tue, 22 Sep 2026 19:58:40 GMT  
		Size: 60.4 KB (60440 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:latest` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:f474fccfe6adf490a45d400188fccc66197e892942480cd748c258722b9fa13a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.4 MB (112380282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb500dcb7872b35b02bff92bf9dd99577db23757eb7f3973afe05ee6cc090303`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:54:01 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:54:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:54:01 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:54:04 GMT
ADD file:23a54200dc45d2e165b80cd813d76a8863b2e15710bb20b738f813328f74d05b in / 
# Fri, 11 Sep 2026 11:54:05 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 20:04:26 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 22 Sep 2026 20:04:26 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 22 Sep 2026 20:04:26 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 22 Sep 2026 20:04:27 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 22 Sep 2026 20:04:27 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 20:04:27 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 22 Sep 2026 20:04:29 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Tue, 22 Sep 2026 20:04:29 GMT
ENV RABBITMQ_VERSION=4.3.6
# Tue, 22 Sep 2026 20:04:29 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 22 Sep 2026 20:04:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 22 Sep 2026 20:04:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 20:04:59 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 22 Sep 2026 20:05:01 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 22 Sep 2026 20:05:02 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 22 Sep 2026 20:05:02 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 22 Sep 2026 20:05:02 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 22 Sep 2026 20:05:02 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 22 Sep 2026 20:05:02 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 22 Sep 2026 20:05:02 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 22 Sep 2026 20:05:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 22 Sep 2026 20:05:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 22 Sep 2026 20:05:03 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 22 Sep 2026 20:05:03 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:479c9135ef3ff7948fa33db75718e4d70c5746025a7a1d8d143ccf32bef0e7d8`  
		Last Modified: Tue, 22 Sep 2026 20:05:51 GMT  
		Size: 39.6 MB (39606239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:888a5778ab699775d6f81014bb4505fe6e2865330b0eeec3223cbcdcf2fb9877`  
		Last Modified: Tue, 22 Sep 2026 20:05:50 GMT  
		Size: 9.6 MB (9613912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:008ce6e4c1d3622c509ef94fc659efc29f7ff4f11061dfb465df2bcd5c29e5b5`  
		Last Modified: Tue, 22 Sep 2026 20:05:50 GMT  
		Size: 9.7 KB (9685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e44097c167eb72e6c53294343438a939feee7e639ccf55e9ca1d5c15bac8ab8a`  
		Last Modified: Tue, 22 Sep 2026 20:05:51 GMT  
		Size: 28.8 MB (28771737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d7c0a9b66bebc18406ca6aea23e8e9f16ce8426514de3961e0fc1744ab3b9b8`  
		Last Modified: Tue, 22 Sep 2026 20:05:52 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91dc7637da998619f8378ff8dcd9604d976f965d0aa37273f373e34347556c86`  
		Last Modified: Tue, 22 Sep 2026 20:05:54 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a946b412674b0f9976e62624e61388cca1243f10b6d3abe2fd0548107391a406`  
		Last Modified: Tue, 22 Sep 2026 20:05:53 GMT  
		Size: 623.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f64ceb294057fe28a44712d997737c64fa6f43d4989ed916d76a6812cd48a843`  
		Last Modified: Tue, 22 Sep 2026 20:05:53 GMT  
		Size: 832.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:latest` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:98c7b05b3498b9322820ab640e5fda4fe4e06b1f81fda6620911f5ac10d7015b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18697588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1705caabadce82dd942411d8d97bf5df438e3adfab5de2d9e87ca55033c6c43`

```dockerfile
```

-	Layers:
	-	`sha256:fbe76bf2fde11d55c914fb877eab83152ddbced113bec3292435af39064cfb45`  
		Last Modified: Tue, 22 Sep 2026 20:05:50 GMT  
		Size: 2.5 MB (2474972 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:401da25a78fd1226093df16e45a55718904166962ade9215f756714947ea64fc`  
		Last Modified: Tue, 22 Sep 2026 20:05:50 GMT  
		Size: 5.3 MB (5334590 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:779c5601bee4df901bec908c906339174d4a4f84000b007bbd8c2558ffdfed1e`  
		Last Modified: Tue, 22 Sep 2026 20:05:50 GMT  
		Size: 5.5 MB (5491432 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:188c2443a46169bb2efa2d950299dd87643620f00d9980a3a6948cd2612bc8fe`  
		Last Modified: Tue, 22 Sep 2026 20:05:50 GMT  
		Size: 5.3 MB (5336332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2815270b66f6363d450c0af08483aadc9d9ab472990d4c5506b0c908e04ceb2f`  
		Last Modified: Tue, 22 Sep 2026 20:05:52 GMT  
		Size: 60.3 KB (60262 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:latest` - linux; riscv64

```console
$ docker pull rabbitmq@sha256:adc635d28cf9ef36ac66a9dd70ad75c0030ed140214a1b2a96d4c5117ccd54de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.9 MB (105870709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10dc945f5d03591bac08a73da994e74fd47bd731c7ac34fa655f1cfce9a4448c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 11 Sep 2026 13:13:20 GMT
ARG RELEASE
# Fri, 11 Sep 2026 13:13:21 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 13:13:21 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 13:14:28 GMT
ADD file:0347a49c8424872a16c193cce85674e478b1e7045067852c419ceffbe1e8faa0 in / 
# Fri, 11 Sep 2026 13:14:33 GMT
CMD ["/bin/bash"]
# Sat, 19 Sep 2026 01:26:03 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Sat, 19 Sep 2026 01:26:03 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Sat, 19 Sep 2026 01:26:03 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Sat, 19 Sep 2026 01:26:04 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Sat, 19 Sep 2026 01:26:04 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:26:04 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Sat, 19 Sep 2026 01:26:08 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Sat, 19 Sep 2026 01:26:08 GMT
ENV RABBITMQ_VERSION=4.3.6
# Sat, 19 Sep 2026 01:26:08 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 19 Sep 2026 01:26:08 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sat, 19 Sep 2026 01:26:08 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:28:24 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Sat, 19 Sep 2026 01:28:34 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Sat, 19 Sep 2026 01:28:35 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Sat, 19 Sep 2026 01:28:35 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 19 Sep 2026 01:28:35 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 19 Sep 2026 01:28:35 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Sat, 19 Sep 2026 01:28:35 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Sat, 19 Sep 2026 01:28:35 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Sat, 19 Sep 2026 01:28:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:28:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:28:35 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Sat, 19 Sep 2026 01:28:35 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:aaab2a0ba2a1e3d3ddb5fa18f45aeabd3d5ea39840a67f33c3ef011e15f84e42`  
		Last Modified: Fri, 11 Sep 2026 13:39:11 GMT  
		Size: 31.1 MB (31052602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a56c59406b8a13e510ecf5a891703bc4eb0f7000e4ac5de5fe9b6d38bf13e324`  
		Last Modified: Sat, 19 Sep 2026 01:35:06 GMT  
		Size: 35.2 MB (35228252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef0c707a46b12192f34bd194479de302ff07036e181912c897b85e341d0782b5`  
		Last Modified: Sat, 19 Sep 2026 01:34:59 GMT  
		Size: 10.9 MB (10853384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8fe4b4ba4c8172c4e2ef531849837f0c13464508dd62e91b5ed6b586813c3dc`  
		Last Modified: Sat, 19 Sep 2026 01:34:52 GMT  
		Size: 9.7 KB (9686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e1cdafa8559a3124f9f81b5a384e5bb358fbd1d844625376af0b08d73b3f654`  
		Last Modified: Sat, 19 Sep 2026 01:35:05 GMT  
		Size: 28.7 MB (28725029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad92a7196cb514f81f371c9889adc2e76e404834729884f56c672636ccce367b`  
		Last Modified: Sat, 19 Sep 2026 01:34:57 GMT  
		Size: 192.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859baef026a8edeaf5ad51b36f3e3ad789198b521799d1f90b0f969534684fe4`  
		Last Modified: Sat, 19 Sep 2026 01:34:59 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b87405ee59f6cdb63663059f3ba64785da327986a81f347c2b407b0ae54e8bd`  
		Last Modified: Sat, 19 Sep 2026 01:35:01 GMT  
		Size: 623.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3da82c66accc64d1467a64e91ad4a0e0864c8b674027912628124e1cf2077fd`  
		Last Modified: Sat, 19 Sep 2026 01:35:01 GMT  
		Size: 832.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:latest` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:cf5259900b40ab5e83a847aea51e128a7a2c16bfe19d1adf67c42a26fd19c5be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18666180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7aece13f0ce1c4e75f7467f4fb4de5e6b8a0a9e03f8b3f1e949b6503807852e`

```dockerfile
```

-	Layers:
	-	`sha256:1ff4f54c0c72f601b961fccf2fd4f9740e57ca03b25eea23318a0e1621393a1b`  
		Last Modified: Sat, 19 Sep 2026 01:34:54 GMT  
		Size: 2.5 MB (2462884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b6f2146863863b70ffc160b5e59d489c583c0b6e5b1b1965115c2b840f98ce3`  
		Last Modified: Sat, 19 Sep 2026 01:34:57 GMT  
		Size: 5.3 MB (5329011 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3601369dac4daa4523ca80314e50b51ab4d56d560bfa777b745343c9f183a9b`  
		Last Modified: Sat, 19 Sep 2026 01:34:57 GMT  
		Size: 5.5 MB (5483262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:555b97dc72f2e2ed4a7fa10cc9af8a80ea203a83ce51f938fc115317a2264fad`  
		Last Modified: Sat, 19 Sep 2026 01:34:57 GMT  
		Size: 5.3 MB (5330753 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:532fe96d1e645669a18b01200df6fa4bff4c7a860adfa18b4bd612ee853abeb3`  
		Last Modified: Sat, 19 Sep 2026 01:34:58 GMT  
		Size: 60.3 KB (60270 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:latest` - linux; s390x

```console
$ docker pull rabbitmq@sha256:92427f29d3fe73f8841cdad2b1033e08ce1dbd9def0cceb6724b9933970840b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.0 MB (106041620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec4ef7bd35f93bf8192f72cf868ae3fda95d1cee59a7fc885eab2cb73f4dfa57`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:08 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:08 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:08 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:09 GMT
ADD file:62feb922e0e5d063c128e1d59ecbc5c2274c804b45055ac83d490a0a0c953700 in / 
# Fri, 11 Sep 2026 11:53:09 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 01:37:44 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Fri, 18 Sep 2026 01:37:44 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Fri, 18 Sep 2026 01:37:44 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Fri, 18 Sep 2026 01:37:44 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Fri, 18 Sep 2026 01:37:44 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 18 Sep 2026 01:37:44 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Fri, 18 Sep 2026 01:37:45 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Fri, 18 Sep 2026 01:37:45 GMT
ENV RABBITMQ_VERSION=4.3.6
# Fri, 18 Sep 2026 01:37:45 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 18 Sep 2026 01:37:45 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 18 Sep 2026 01:37:45 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 18 Sep 2026 01:37:56 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Fri, 18 Sep 2026 01:37:57 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Fri, 18 Sep 2026 01:37:57 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Fri, 18 Sep 2026 01:37:57 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 18 Sep 2026 01:37:57 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 18 Sep 2026 01:37:57 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Fri, 18 Sep 2026 01:37:57 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Fri, 18 Sep 2026 01:37:57 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Fri, 18 Sep 2026 01:37:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 18 Sep 2026 01:37:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Sep 2026 01:37:57 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Fri, 18 Sep 2026 01:37:57 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:2d1aac92a29a4eacd140d431dc526f6da099043772d537d221717429ee877b2a`  
		Last Modified: Fri, 11 Sep 2026 13:39:18 GMT  
		Size: 29.9 MB (29945392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e21ab4538627440bb4d4668006d9f22de610bb3c4d7bd449e35315f8fc4c0b1`  
		Last Modified: Fri, 18 Sep 2026 01:38:28 GMT  
		Size: 38.7 MB (38661745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:159e877c5701e15bdf336f40dd51603e9cc8ab64d0a3419929593dca77752099`  
		Last Modified: Fri, 18 Sep 2026 01:38:28 GMT  
		Size: 8.6 MB (8630203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b67a6a8b1b94c0d16592c3b544052ba28749b08459f732e5e8f4b904a5236b9f`  
		Last Modified: Fri, 18 Sep 2026 01:38:27 GMT  
		Size: 9.8 KB (9821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c38cd0f9ed140d9199fdc5a599b179ab899a78bf0a9ce4710f4bbd24cc6cc9`  
		Last Modified: Fri, 18 Sep 2026 01:38:30 GMT  
		Size: 28.8 MB (28792709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b159f099eee1a66fd9a41ae9df2dce4625b49b3a095186f51dfb9981fa48af7e`  
		Last Modified: Fri, 18 Sep 2026 01:38:29 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2065a4d7945dd1900a7672c0e0905653991a30394b17c260639bc81aa6b88732`  
		Last Modified: Fri, 18 Sep 2026 01:38:29 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb9b4b6f1eeadad9a12d79fe6e0b87e4d4ef6ad8a07e3d21615b2f1b0f0527eb`  
		Last Modified: Fri, 18 Sep 2026 01:38:30 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9d53443eeedec828223f103c76552022d947bb40cc03f2202ebd40df0d7baee`  
		Last Modified: Fri, 18 Sep 2026 01:38:30 GMT  
		Size: 831.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:latest` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:8cfca68692be6685ec99c29fb651b4454e0022daeb8b0fc0964ee7abea761c89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18323326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f922b559f1fc737edd6e409eaff68359e0c7262f726ea7442e48a24e19f346c`

```dockerfile
```

-	Layers:
	-	`sha256:7bd8a0b45af6ec09d6df9cc799aa1b1c1d39071a1e3bce4ea2fca467620b369c`  
		Last Modified: Fri, 18 Sep 2026 01:38:29 GMT  
		Size: 2.5 MB (2472628 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dbb1e02767b04a126714bde15c6e9c4fc1b8a8c63e200d72f914e1e99d48781e`  
		Last Modified: Fri, 18 Sep 2026 01:38:29 GMT  
		Size: 5.2 MB (5211083 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99408f79966ef9f5128e307d20d8d635a45828610edf8d5e532fdfed3f863cb6`  
		Last Modified: Fri, 18 Sep 2026 01:38:29 GMT  
		Size: 5.4 MB (5366589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9cd7c9e157527b80127e9035932ee263fc8600b5b8cab7e595d24c2c924b9ef`  
		Last Modified: Fri, 18 Sep 2026 01:38:29 GMT  
		Size: 5.2 MB (5212825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:717c1be43a659909fc670a3c1a09c5515f9dd78b11a076375766fe9a17909a31`  
		Last Modified: Fri, 18 Sep 2026 01:38:30 GMT  
		Size: 60.2 KB (60201 bytes)  
		MIME: application/vnd.in-toto+json
