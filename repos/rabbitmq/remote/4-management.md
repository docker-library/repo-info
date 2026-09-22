## `rabbitmq:4-management`

```console
$ docker pull rabbitmq@sha256:93b109fa4846ca2bd62499ffec9f01aa037db3f7fa474f7519dc560fd167d068
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

### `rabbitmq:4-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:81b8ade331d0360a514025e64fc61309106e6bf8ea449c377aa5d12d07682a28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.5 MB (118542872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aee870889741aa178d59fb60ba1c44359f6aec770b5d0fba8ae2253e3bd1b14`
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
# Tue, 22 Sep 2026 19:47:46 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Tue, 22 Sep 2026 19:47:56 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-gnu'; digest='31887e0dc96e7654a9dfa007182af1281ee2fd4045de011ca1af72b0b962df51' ;; 		'arm64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-gnu'; digest='cd97862b5a19688779717bbd920bbf299a960ad6cafcd9121bf764c01e4c66eb' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum --strict --check -; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Tue, 22 Sep 2026 19:47:56 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
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
	-	`sha256:931fdc7a73e78bc0ef026e786e21c799d929fb35f6244b21ced46ba9b3835e0c`  
		Last Modified: Tue, 22 Sep 2026 19:48:04 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e01d6c7c48ff237864e640819182e9a4e07f3ba13718f3ab59688d6f37a89b9c`  
		Last Modified: Tue, 22 Sep 2026 19:48:04 GMT  
		Size: 4.6 MB (4580238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:b233691466f7b0e20d0908e51c97f27695ec89b8644ea163bdd03e3bb850910d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2486861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aa0b45d25b50fee056bed06714b86d9d72610399b5b8b099e1003dafbbf403b`

```dockerfile
```

-	Layers:
	-	`sha256:f16623a7a5a2f0918a16c2dcca4f1bb5f5998306ae5c0ab5cf423a305870aceb`  
		Last Modified: Tue, 22 Sep 2026 19:48:04 GMT  
		Size: 2.5 MB (2470593 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8c0d8e6f94f02f47e46015705bb020045a1ffd25ff02fdef19ba2ecbd822b0a`  
		Last Modified: Tue, 22 Sep 2026 19:48:04 GMT  
		Size: 16.3 KB (16268 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:d35e441fc1b5599534e7f44dcc06efc4679f38d2213d47df7329d9680d773f32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.3 MB (96340442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a8eeae6919ff6c103e3d4d928463af5be9cb4d11c91005152d988b5b1752b86`
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
# Tue, 22 Sep 2026 19:10:02 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Tue, 22 Sep 2026 19:10:02 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-gnu'; digest='31887e0dc96e7654a9dfa007182af1281ee2fd4045de011ca1af72b0b962df51' ;; 		'arm64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-gnu'; digest='cd97862b5a19688779717bbd920bbf299a960ad6cafcd9121bf764c01e4c66eb' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum --strict --check -; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Tue, 22 Sep 2026 19:10:02 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
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
	-	`sha256:069516e9e38d1f1c5639d488c51195b7eb4808c818c8ede01897ae69d2baaaa8`  
		Last Modified: Tue, 22 Sep 2026 19:10:09 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:18457e21d718d864dd9a65b6626058010a2a442f8a38cf62d0912a1f31034295
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2487748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04ccddeca6ca729856997c781f43fc42f22d9f26ff0f49fe0c891f0d4980206b`

```dockerfile
```

-	Layers:
	-	`sha256:b0f72241661f64a4c1e1ac027f861e38d1ae1cb45a7bf058947253d6773d12ad`  
		Last Modified: Tue, 22 Sep 2026 19:10:09 GMT  
		Size: 2.5 MB (2471391 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d7d6e4e49561c81799225c438f9092e6d3f2bbc071026055e64034984b16bac`  
		Last Modified: Tue, 22 Sep 2026 19:10:09 GMT  
		Size: 16.4 KB (16357 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:014628501f71238b891c2ed5a4e72180269f1223cdcacf93b8cec85a1d1faad7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.2 MB (116222955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c6e4113ea4d102da8df18641b837cedd50b7a7981430369e044b0a870fdfc64`
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
# Wed, 16 Sep 2026 03:29:38 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Wed, 16 Sep 2026 03:29:38 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Wed, 16 Sep 2026 03:29:38 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Wed, 16 Sep 2026 03:29:38 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Wed, 16 Sep 2026 03:29:38 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:29:38 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Wed, 16 Sep 2026 03:29:39 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Wed, 16 Sep 2026 03:29:39 GMT
ENV RABBITMQ_VERSION=4.3.6
# Wed, 16 Sep 2026 03:29:39 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 16 Sep 2026 03:29:39 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 16 Sep 2026 03:29:39 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:30:00 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Wed, 16 Sep 2026 03:30:01 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Wed, 16 Sep 2026 03:30:01 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Wed, 16 Sep 2026 03:30:01 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 16 Sep 2026 03:30:01 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 16 Sep 2026 03:30:01 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:30:01 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Wed, 16 Sep 2026 03:30:01 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Wed, 16 Sep 2026 03:30:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:30:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 03:30:01 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Wed, 16 Sep 2026 03:30:01 GMT
CMD ["rabbitmq-server"]
# Wed, 16 Sep 2026 04:23:13 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Wed, 16 Sep 2026 04:23:26 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-gnu'; digest='31887e0dc96e7654a9dfa007182af1281ee2fd4045de011ca1af72b0b962df51' ;; 		'arm64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-gnu'; digest='cd97862b5a19688779717bbd920bbf299a960ad6cafcd9121bf764c01e4c66eb' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum --strict --check -; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Wed, 16 Sep 2026 04:23:26 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68cad6004318a4a0aa2832322ac1a7b332b44ac2fa23801aaf8afeb26dcfb449`  
		Last Modified: Wed, 16 Sep 2026 03:30:27 GMT  
		Size: 44.4 MB (44439816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0486c132473201a1f7c241bfcc92fbfb7614ed70ea0a911581934789cc56b20b`  
		Last Modified: Wed, 16 Sep 2026 03:30:25 GMT  
		Size: 9.7 MB (9729952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f37a92e509194cf16084bec1a043456bde59fdf63e7c3e380a32896ce4b122ac`  
		Last Modified: Wed, 16 Sep 2026 03:30:25 GMT  
		Size: 9.7 KB (9661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b587ea24c22d9b69d60c3b713d9395c3285e12bfd73fa6b63a978a6baa8fbe8`  
		Last Modified: Wed, 16 Sep 2026 03:30:26 GMT  
		Size: 28.7 MB (28719486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0578637f02a448facc1c109c92bf2559ff634272d18b44e13e9ad23b64fde02`  
		Last Modified: Wed, 16 Sep 2026 03:30:26 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:694b66d1a8b3de01b0d4aa15b1735a7cd09c51ae1eeeb8ede91d2a0e66865d84`  
		Last Modified: Wed, 16 Sep 2026 03:30:27 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68c8c435fc4cf5d6b4bb7a7fc5a449f45a42351a2edd0e5eeb9336e026b5b289`  
		Last Modified: Wed, 16 Sep 2026 03:30:27 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:331d33613b87a262046729d6bae2d0828ac5dc2ee714cf8f57d20fd3cce0b0d2`  
		Last Modified: Wed, 16 Sep 2026 03:30:27 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:339ce5b079b55efb7b8ce56308d808f6f8c0f7e5eb4445b25b7c5a8ed4bc8452`  
		Last Modified: Wed, 16 Sep 2026 04:23:34 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d9e7d8483e060cfcd3d0ef74f982e1b25089e32e56d6da7d323315a6d79df4b`  
		Last Modified: Wed, 16 Sep 2026 04:23:34 GMT  
		Size: 4.4 MB (4380443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:d74c4d4aeafc6994febf277dafd1b5388af403f4f4b3f50729224d25021c434b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2488041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e8fa46dc93f8f34212b7b7f0c75c953ff4bf6aa00ec37ed039dd1cc27695abf`

```dockerfile
```

-	Layers:
	-	`sha256:427a2aabb3c4ec4686eaa1507ecf2f48ce14d1386cbbb9a8ccb64e8b59a96b0b`  
		Last Modified: Wed, 16 Sep 2026 04:23:34 GMT  
		Size: 2.5 MB (2471653 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8bf0e10c6701d24611feb0fa808624082f6b4a72d76f35a62bf67ebdc4eef1b`  
		Last Modified: Wed, 16 Sep 2026 04:23:34 GMT  
		Size: 16.4 KB (16388 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:0cc126025d757a9e530ee6e66a6b5552a433f38c97d8ffc8e6768d8b19b0c04d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.4 MB (112354043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edd5044d293518df4082e985cde03caa826f41bee1139aa6060e255e7e8d8ca1`
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
# Wed, 16 Sep 2026 07:48:54 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Wed, 16 Sep 2026 07:48:54 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Wed, 16 Sep 2026 07:48:54 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Wed, 16 Sep 2026 07:48:55 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Wed, 16 Sep 2026 07:48:55 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 07:48:55 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Wed, 16 Sep 2026 07:48:57 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Wed, 16 Sep 2026 07:48:57 GMT
ENV RABBITMQ_VERSION=4.3.6
# Wed, 16 Sep 2026 07:48:57 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 16 Sep 2026 07:48:57 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 16 Sep 2026 07:48:57 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 07:49:54 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Wed, 16 Sep 2026 07:49:58 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Wed, 16 Sep 2026 07:50:01 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Wed, 16 Sep 2026 07:50:01 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 16 Sep 2026 07:50:01 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 16 Sep 2026 07:50:01 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 07:50:01 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Wed, 16 Sep 2026 07:50:02 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Wed, 16 Sep 2026 07:50:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 07:50:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 07:50:05 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Wed, 16 Sep 2026 07:50:05 GMT
CMD ["rabbitmq-server"]
# Wed, 16 Sep 2026 09:53:01 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Wed, 16 Sep 2026 09:53:08 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-gnu'; digest='31887e0dc96e7654a9dfa007182af1281ee2fd4045de011ca1af72b0b962df51' ;; 		'arm64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-gnu'; digest='cd97862b5a19688779717bbd920bbf299a960ad6cafcd9121bf764c01e4c66eb' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum --strict --check -; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Wed, 16 Sep 2026 09:53:08 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5309060c1f982868057b4ca9480459f27fafcb6dad334271b712295573bc6421`  
		Last Modified: Wed, 16 Sep 2026 07:51:13 GMT  
		Size: 39.6 MB (39579742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6c1c89d919d5cbfc897f446a9841151d7368e9f60c87f1065dc0e77da8f235c`  
		Last Modified: Wed, 16 Sep 2026 07:51:11 GMT  
		Size: 9.6 MB (9613932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a64ce483331e932c90e12445e93dc8edb42eda379718be89780cabfa9948c03`  
		Last Modified: Wed, 16 Sep 2026 07:51:10 GMT  
		Size: 9.7 KB (9673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:743a11de1617c3742e6296d7a364e28cb5fe26761f127a339921eac29881a6b2`  
		Last Modified: Wed, 16 Sep 2026 07:51:12 GMT  
		Size: 28.8 MB (28771674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:815a6224d09b876d9fd72f984b914650957480c3bd0b03b76dac64d727af3e7c`  
		Last Modified: Wed, 16 Sep 2026 07:51:12 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:122f26310887bf21620285a0969922930c0f8851067243979bebb3d955278f22`  
		Last Modified: Wed, 16 Sep 2026 07:51:13 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d80f1a58d2a0967fd89dd11a61bd99334d29c80993d92c96da7650972dabdca`  
		Last Modified: Wed, 16 Sep 2026 07:51:13 GMT  
		Size: 624.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46e8da81961982354b05876994b48f6324707ae203f8404ee62563fac85cec06`  
		Last Modified: Wed, 16 Sep 2026 07:51:14 GMT  
		Size: 831.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8551cfe6b8a6adaa909f1a8f1b9f6c9e5ba689b08b63aedcd9f79c497ecfca1d`  
		Last Modified: Wed, 16 Sep 2026 09:53:41 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:f6a3a0bda5cd836366b50df54f08e8086a25fb577cfdc80b3d8b3b6db670ead0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2491356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e0662ef7c70f2cf05f499f080b0d280541ac267bdde2a6eca0461f04a05cf04`

```dockerfile
```

-	Layers:
	-	`sha256:9dc085f2f4a2d94e5efeb20fbcc737dc4b06bd9cdabc731d2cc175c11d72116a`  
		Last Modified: Wed, 16 Sep 2026 09:53:41 GMT  
		Size: 2.5 MB (2475046 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f1fd13fcea623c9611da1e69c12605d89eb7c77099866980c2e38f13c40ab69`  
		Last Modified: Wed, 16 Sep 2026 09:53:40 GMT  
		Size: 16.3 KB (16310 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management` - linux; riscv64

```console
$ docker pull rabbitmq@sha256:deef910f937c602f486fae233454ac2e56ee7c98b651b23988a35438775146af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.8 MB (105793835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69a214ec8bf6a868f0cab14357cc2b707518d5ad6442f4863a809d6273e7d023`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 07 Sep 2026 07:43:12 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:43:13 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:43:13 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:44:03 GMT
ADD file:b9e2d6d291d1ed94a7f69f48c708e50bb181af64736f283e384c42c217fefce1 in / 
# Mon, 07 Sep 2026 07:44:07 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 04:07:52 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Wed, 09 Sep 2026 04:07:52 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Wed, 09 Sep 2026 04:07:52 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Wed, 09 Sep 2026 04:07:53 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Wed, 09 Sep 2026 04:07:53 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 04:07:53 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Wed, 09 Sep 2026 04:07:56 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Wed, 09 Sep 2026 04:07:56 GMT
ENV RABBITMQ_VERSION=4.3.5
# Wed, 09 Sep 2026 04:07:56 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 09 Sep 2026 04:07:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 09 Sep 2026 04:07:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 04:10:05 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Wed, 09 Sep 2026 04:10:14 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Wed, 09 Sep 2026 04:10:14 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Wed, 09 Sep 2026 04:10:14 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 09 Sep 2026 04:10:14 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 09 Sep 2026 04:10:14 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 04:10:14 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Wed, 09 Sep 2026 04:10:15 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Wed, 09 Sep 2026 04:10:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 09 Sep 2026 04:10:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Sep 2026 04:10:15 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Wed, 09 Sep 2026 04:10:15 GMT
CMD ["rabbitmq-server"]
# Wed, 09 Sep 2026 08:34:13 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Thu, 10 Sep 2026 05:45:08 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-gnu'; digest='31887e0dc96e7654a9dfa007182af1281ee2fd4045de011ca1af72b0b962df51' ;; 		'arm64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-gnu'; digest='cd97862b5a19688779717bbd920bbf299a960ad6cafcd9121bf764c01e4c66eb' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum --strict --check -; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Thu, 10 Sep 2026 05:45:08 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:43253cac98e0bd3027a1f91776c6624571e5e05e6df478c1452294560ee5ff91`  
		Last Modified: Mon, 07 Sep 2026 07:57:26 GMT  
		Size: 31.0 MB (31049202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c11b58e4430419ed5705cf7cff214eaa19c5b4d03d7df32ba4df92e4483282f3`  
		Last Modified: Wed, 09 Sep 2026 04:16:35 GMT  
		Size: 35.2 MB (35228253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:755a9ec13efc66307917dd99fb99a924f327adf54e58af508fb8f6777f9b295a`  
		Last Modified: Wed, 09 Sep 2026 04:16:28 GMT  
		Size: 10.9 MB (10853353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fdde48530b3542e0d76418e9ce967dad412b4291f598567ad4541c6d297a817`  
		Last Modified: Wed, 09 Sep 2026 04:16:22 GMT  
		Size: 9.7 KB (9675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2247f2170afe9240c20219f188a6b373bfdffe60d2ab4741e472cd2fdd27b797`  
		Last Modified: Wed, 09 Sep 2026 04:16:34 GMT  
		Size: 28.7 MB (28651294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09f3ec4d43a6790ca0bc0ae5556b25d2f00ac177a994f915b9c671d4956bd38f`  
		Last Modified: Wed, 09 Sep 2026 04:16:26 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f1f2c1e3370af83eadefcc43a754fc1942ce7c6f4777a093f9bebf85edf488e`  
		Last Modified: Wed, 09 Sep 2026 04:16:28 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b38049e80d33c3a9685c3e3262068e3174d90ae89d8a883d264645b5192246a`  
		Last Modified: Wed, 09 Sep 2026 04:16:30 GMT  
		Size: 624.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6e612d495479b5eaa69a59f27b7498f69d2f4ef89759a28ed146c62f090232b`  
		Last Modified: Wed, 09 Sep 2026 04:16:30 GMT  
		Size: 832.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c72aea3ffd2b0c883c4fc81cd9c12045fc4a939c748c660a0ba75dab6d9062fd`  
		Last Modified: Wed, 09 Sep 2026 08:35:31 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:a99e598054ae3959e3533630a55beadc95935b43c3309ebdb19c648e212bd79f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2479271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15be56bfc18cff62ef5d8393bf738e8db86ccedd40393cc8bd7a27386c1bf0e7`

```dockerfile
```

-	Layers:
	-	`sha256:d8de81e2919bf49cab68648d3a1e93d6721c8c9782e7c8c782e40a8a84c39fbe`  
		Last Modified: Thu, 10 Sep 2026 05:46:26 GMT  
		Size: 2.5 MB (2462958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49202e54444ad5da544d8c00b382bde9e8e283e69eccb070a6d52f8c39830988`  
		Last Modified: Thu, 10 Sep 2026 05:46:26 GMT  
		Size: 16.3 KB (16313 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:1a0700ae6067bf1896ccad41564609da968c5745f0398d6a903fac0d1487605c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.0 MB (106041926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d30d298795eb3e1aa288ddff85523e549cff1c3cd1d31bdca87b40863ce1c3d3`
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
# Fri, 18 Sep 2026 02:49:00 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Fri, 18 Sep 2026 02:49:01 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-gnu'; digest='31887e0dc96e7654a9dfa007182af1281ee2fd4045de011ca1af72b0b962df51' ;; 		'arm64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-gnu'; digest='cd97862b5a19688779717bbd920bbf299a960ad6cafcd9121bf764c01e4c66eb' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum --strict --check -; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Fri, 18 Sep 2026 02:49:01 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
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
	-	`sha256:9ab2100a73e81326a9fc241ec84925c5ac9b8aa1214b4234d2acbead18fb4682`  
		Last Modified: Fri, 18 Sep 2026 02:49:12 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:bc8a59d269faa39098f4287833523d4277ca078847b71c5fa7e585e49e296fd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2488965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7102cbcf47555aece578408f3e619f3e7e95d7215d77a85428a8bc51f637bb52`

```dockerfile
```

-	Layers:
	-	`sha256:94b9819e48c1ebf4ad7a441b553c6d583356da509c8ae2fd1006f5e2cd1e77e0`  
		Last Modified: Fri, 18 Sep 2026 02:49:12 GMT  
		Size: 2.5 MB (2472702 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:316a7db64498602f4b7fd30984d71a71d602dad070dab248739a4c29550854cc`  
		Last Modified: Fri, 18 Sep 2026 02:49:11 GMT  
		Size: 16.3 KB (16263 bytes)  
		MIME: application/vnd.in-toto+json
