## `rabbitmq:4-management`

```console
$ docker pull rabbitmq@sha256:f069c27a00753383877a6b41431a1925924c5a1b723ef6ae74d4bbcbbc554d16
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
$ docker pull rabbitmq@sha256:6e83d26931219c9e088e6eefcc877bcca2adc3690c7603f24f4ece8968b13262
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.5 MB (118456566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d70a9c84c08ed643cd001960e752279ebfeb9cb7eb10cb9d3d3d502c9298feb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:38:17 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Wed, 09 Sep 2026 02:38:17 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Wed, 09 Sep 2026 02:38:17 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Wed, 09 Sep 2026 02:38:17 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Wed, 09 Sep 2026 02:38:17 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:38:17 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Wed, 09 Sep 2026 02:38:18 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Wed, 09 Sep 2026 02:38:18 GMT
ENV RABBITMQ_VERSION=4.3.5
# Wed, 09 Sep 2026 02:38:18 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 09 Sep 2026 02:38:18 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 09 Sep 2026 02:38:18 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:38:38 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Wed, 09 Sep 2026 02:38:39 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Wed, 09 Sep 2026 02:38:39 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Wed, 09 Sep 2026 02:38:39 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 09 Sep 2026 02:38:39 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 09 Sep 2026 02:38:39 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:38:39 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Wed, 09 Sep 2026 02:38:39 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Wed, 09 Sep 2026 02:38:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 09 Sep 2026 02:38:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Sep 2026 02:38:39 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Wed, 09 Sep 2026 02:38:39 GMT
CMD ["rabbitmq-server"]
# Wed, 09 Sep 2026 22:34:26 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Wed, 09 Sep 2026 22:34:36 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-gnu'; digest='31887e0dc96e7654a9dfa007182af1281ee2fd4045de011ca1af72b0b962df51' ;; 		'arm64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-gnu'; digest='cd97862b5a19688779717bbd920bbf299a960ad6cafcd9121bf764c01e4c66eb' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum --strict --check -; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Wed, 09 Sep 2026 22:34:36 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19cc45b0ba7184367f2a216c757661911b443af2c9a9e9f67a5da152d69c35a0`  
		Last Modified: Wed, 09 Sep 2026 02:40:23 GMT  
		Size: 46.4 MB (46356243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48c09baa7ea97455e3e899fcea76ef927f4730d87b218e48e5d4137b7009f7c3`  
		Last Modified: Wed, 09 Sep 2026 02:39:28 GMT  
		Size: 9.0 MB (9005195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c866f77405f88f1349804c4e8f095567a21588accbc1b25f28eb38ccd6578f85`  
		Last Modified: Wed, 09 Sep 2026 02:39:00 GMT  
		Size: 9.7 KB (9670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e52ebdb3865f1c25029b0119363b85708b984057d0b5d8cedc6fd452e25dffd`  
		Last Modified: Wed, 09 Sep 2026 02:40:18 GMT  
		Size: 28.7 MB (28740009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:573726fae51ba2491fba47f77c55c3cf20fd6ef4e62134677b9088608bff7e45`  
		Last Modified: Wed, 09 Sep 2026 02:39:20 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3354b0d4bab77a36f84b7553dc0cc494a25fa7eecb9a8f1ae81f816c8fcd3fd6`  
		Last Modified: Wed, 09 Sep 2026 02:39:43 GMT  
		Size: 108.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6373e2b6ce2cd018af3ee13064202df030f321456462c550e4eaa233ae831659`  
		Last Modified: Wed, 09 Sep 2026 02:40:01 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:299e70774d8a2b95ffb9da0fd816f03b2b5cc289ea73b59579a65dd7a4dbe630`  
		Last Modified: Wed, 09 Sep 2026 02:40:13 GMT  
		Size: 832.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ca4d58e95771a0aca58f9df6d6eb285929cec76c8ab840082a5f25998aa8713`  
		Last Modified: Wed, 09 Sep 2026 22:34:45 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb457b021380df88854e0d56af8d422090e6c7e738747f45750d4a07fec9da77`  
		Last Modified: Wed, 09 Sep 2026 22:34:45 GMT  
		Size: 4.6 MB (4580178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:03ece75dd32855fa380c2d66dae464af2e3f582c98ab5700e1f95ffb30d8dd91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2486862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba8f3d4ff1b0d030dac4439216e43b5626355146765e5a00c3bdb12a028dfb2c`

```dockerfile
```

-	Layers:
	-	`sha256:0b36be6cac909c3d064ed3142a79ff7931c49112882b1e0ede74ebadcabaeecc`  
		Last Modified: Wed, 09 Sep 2026 22:34:45 GMT  
		Size: 2.5 MB (2470593 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f8d5eb37b7b0315b4fb26cd970ed0650f44b6419b3a1c4645cdc1d8951e1d8e`  
		Last Modified: Wed, 09 Sep 2026 22:34:44 GMT  
		Size: 16.3 KB (16269 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:0cc142120a26d6939f4b1a62061e02cd5f056a2204d1d42d6b9071296c2f2b72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.3 MB (96253582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d31e448a1a53ccdfea8803b36d48cc0a1fc6e6f4920ef0eb5509ee230c0226e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:50 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:50 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:57:53 GMT
ADD file:7b24dc56d03ed9c6ddefab76dfb3e7b8bc4eafa9059d2a0ed52016ba82b6d110 in / 
# Mon, 07 Sep 2026 06:57:53 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:16:39 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Wed, 09 Sep 2026 02:16:39 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Wed, 09 Sep 2026 02:16:39 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Wed, 09 Sep 2026 02:16:39 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Wed, 09 Sep 2026 02:16:39 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:16:39 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Wed, 09 Sep 2026 02:16:41 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Wed, 09 Sep 2026 02:16:41 GMT
ENV RABBITMQ_VERSION=4.3.5
# Wed, 09 Sep 2026 02:16:41 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 09 Sep 2026 02:16:41 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 09 Sep 2026 02:16:41 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:17:05 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Wed, 09 Sep 2026 02:17:06 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Wed, 09 Sep 2026 02:17:06 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Wed, 09 Sep 2026 02:17:06 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 09 Sep 2026 02:17:06 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 09 Sep 2026 02:17:06 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:17:06 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Wed, 09 Sep 2026 02:17:06 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Wed, 09 Sep 2026 02:17:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 09 Sep 2026 02:17:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Sep 2026 02:17:06 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Wed, 09 Sep 2026 02:17:06 GMT
CMD ["rabbitmq-server"]
# Wed, 09 Sep 2026 22:34:48 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Wed, 09 Sep 2026 22:34:48 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-gnu'; digest='31887e0dc96e7654a9dfa007182af1281ee2fd4045de011ca1af72b0b962df51' ;; 		'arm64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-gnu'; digest='cd97862b5a19688779717bbd920bbf299a960ad6cafcd9121bf764c01e4c66eb' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum --strict --check -; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Wed, 09 Sep 2026 22:34:48 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:2c98e8ee99c3e9905d854eff5f5f0fff270d9f9afc085063b8bc98145a2f5f5f`  
		Last Modified: Mon, 07 Sep 2026 07:57:11 GMT  
		Size: 26.9 MB (26894017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a3b93224c6d884fe990d497b3fc1df948a4e99d93ead4a78c0d8aa49755b169`  
		Last Modified: Wed, 09 Sep 2026 02:17:30 GMT  
		Size: 33.4 MB (33382803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc2060bd21aaffa78a20b4d9683a0ee47591a4e60a0c947de83748bceaf6adad`  
		Last Modified: Wed, 09 Sep 2026 02:17:29 GMT  
		Size: 7.3 MB (7322263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfa9b2c24a6f5bae78aeeb33cc2391c579dcdc7bf289a89ec65e247c6e73df94`  
		Last Modified: Wed, 09 Sep 2026 02:17:29 GMT  
		Size: 9.8 KB (9762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7890fcccf44abb0ca4ae4e8951b4f7beea9b5bf8ee5cad2f3b335c9f067b06e6`  
		Last Modified: Wed, 09 Sep 2026 02:17:30 GMT  
		Size: 28.6 MB (28642689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93f80a37565b6e9ae0e109c16f8bb43d5ca624ca6c7a59c171c5b3c2b86542b`  
		Last Modified: Wed, 09 Sep 2026 02:17:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a8734c57b661e1c6f6d4c613fe982f3b75fc8dee8877249e9f0752d056f65f7`  
		Last Modified: Wed, 09 Sep 2026 02:17:31 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec58f0c9fea844f48897d50c22847648644f4be32b0115731c3cba73bfbc6594`  
		Last Modified: Wed, 09 Sep 2026 02:17:31 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672a8ecf627767b8acef05b0ba8f18e83e88923e18e0a908a3c0cce211517130`  
		Last Modified: Wed, 09 Sep 2026 02:17:32 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e3bb88c56581f19687904117f38a9f7d4e4c2cadf1fa39d453293b6cb846bf9`  
		Last Modified: Wed, 09 Sep 2026 22:34:55 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:011443da14bb5178304408bec5eb73d0ad9a90dfbe1ab5dc265937bad51f68db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2487748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f710f010a3982bd1dddd493ad3b7b48a102a3938ae16c6d11ba5abe1f92389f9`

```dockerfile
```

-	Layers:
	-	`sha256:d0a688e4da85cc07e0fd1d977474b24b43cc4d119f9b8f89b74ab21ce2fa66fb`  
		Last Modified: Wed, 09 Sep 2026 22:34:57 GMT  
		Size: 2.5 MB (2471391 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ed34eb1f53dae6fd59112cff7aa591d270a327575cde4b4be4cb2d93f19fa6b`  
		Last Modified: Wed, 09 Sep 2026 22:34:57 GMT  
		Size: 16.4 KB (16357 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:0077f3b9c0b2353ddd68f50fc9bb55551688a154c3e834ab821b81bf1cbac929
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.2 MB (116151425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03d95eace92b949b2fd9dc9fbd19c2d65cae25b600e2d6ff42456cce9f110c7c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:34:36 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Wed, 09 Sep 2026 02:34:36 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Wed, 09 Sep 2026 02:34:36 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Wed, 09 Sep 2026 02:34:36 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Wed, 09 Sep 2026 02:34:36 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:34:36 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Wed, 09 Sep 2026 02:34:38 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Wed, 09 Sep 2026 02:34:38 GMT
ENV RABBITMQ_VERSION=4.3.5
# Wed, 09 Sep 2026 02:34:38 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 09 Sep 2026 02:34:38 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 09 Sep 2026 02:34:38 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:34:57 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Wed, 09 Sep 2026 02:34:57 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Wed, 09 Sep 2026 02:34:57 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Wed, 09 Sep 2026 02:34:57 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 09 Sep 2026 02:34:57 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 09 Sep 2026 02:34:57 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 02:34:57 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Wed, 09 Sep 2026 02:34:58 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Wed, 09 Sep 2026 02:34:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 09 Sep 2026 02:34:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Sep 2026 02:34:58 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Wed, 09 Sep 2026 02:34:58 GMT
CMD ["rabbitmq-server"]
# Wed, 09 Sep 2026 22:34:07 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Wed, 09 Sep 2026 22:34:20 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-gnu'; digest='31887e0dc96e7654a9dfa007182af1281ee2fd4045de011ca1af72b0b962df51' ;; 		'arm64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-gnu'; digest='cd97862b5a19688779717bbd920bbf299a960ad6cafcd9121bf764c01e4c66eb' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum --strict --check -; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Wed, 09 Sep 2026 22:34:20 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1d3a88f86f7110b7c08ee2280e92186bdbd2648a0bb4bf8eb6715108be7d1eb`  
		Last Modified: Wed, 09 Sep 2026 02:35:24 GMT  
		Size: 44.4 MB (44440278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d05939402f0c117b690d5b982e079f85cd5804375ed7f1edcd767ac6c133dfda`  
		Last Modified: Wed, 09 Sep 2026 02:35:22 GMT  
		Size: 9.7 MB (9729951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:841bc54b3b619ba2ce5bab6063002d4f37faf543070e09a6b61e12ad97c1a3fc`  
		Last Modified: Wed, 09 Sep 2026 02:35:21 GMT  
		Size: 9.7 KB (9659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eefa3d7ef40091d2835302435e312a7e0e4fcc6f2d5e62702f0c5895b6c1dc2`  
		Last Modified: Wed, 09 Sep 2026 02:35:23 GMT  
		Size: 28.6 MB (28649034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a83b6683e34be6317b56b1acd27137610930814c52bea29a4996b82e15ed7ce8`  
		Last Modified: Wed, 09 Sep 2026 02:35:23 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6db976b9e01b70d5f6e80ef2a94bf0b45bd64e5cac107ef82c2fb1a320f0e6cc`  
		Last Modified: Wed, 09 Sep 2026 02:35:24 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f911d540102381a55f6949836516d2c88a5d26e5d2bd9d9c012f8d17846b57eb`  
		Last Modified: Wed, 09 Sep 2026 02:35:24 GMT  
		Size: 620.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:415e1410629681e639f05db686afc13a173cdfa8847f8afe7f6c78bae6d072c7`  
		Last Modified: Wed, 09 Sep 2026 02:35:25 GMT  
		Size: 831.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4783889308ee3dfea659d5421576a89a69277c156fff133e4b5cfa0348af54a`  
		Last Modified: Wed, 09 Sep 2026 22:34:28 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:480a0b5f3741a9c79cdd2c6d63225962e0af96285c1cecac989668a49e2f0caa`  
		Last Modified: Wed, 09 Sep 2026 22:34:30 GMT  
		Size: 4.4 MB (4380465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:927db64c79b21b6c97ceb36302577f228b9938095abd6c8c6a9519b261addee9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2488041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca4df8eb391401764444d0b9c260492e85eba5b9b567a94e88f97a39daa02a4f`

```dockerfile
```

-	Layers:
	-	`sha256:c9ae986e19a13d63248332b19b533b22dbff77d563a9e909862029df76dfbb54`  
		Last Modified: Wed, 09 Sep 2026 22:34:29 GMT  
		Size: 2.5 MB (2471653 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f31ab6ba983b8395900b5ba3876e09e349056ecfb011ca77227e3479e649f2a7`  
		Last Modified: Wed, 09 Sep 2026 22:34:29 GMT  
		Size: 16.4 KB (16388 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:6a207938593951932303576c9d37f9d4d70d8863d9442e7f2f7b17a4c618a3a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.3 MB (112280707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c5c87ce16b56b1d8ecc999c040a988613fd7b34991c945a137bc6efac7f1947`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 07 Sep 2026 07:38:39 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:38:39 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:38:43 GMT
ADD file:b613d8cbbfcdd39316d0cc2ab20f713e42c2ffc939072314f82208cec1f794df in / 
# Mon, 07 Sep 2026 07:38:44 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 03:22:28 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Wed, 09 Sep 2026 03:22:28 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Wed, 09 Sep 2026 03:22:28 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Wed, 09 Sep 2026 03:22:32 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Wed, 09 Sep 2026 03:22:32 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:22:32 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Wed, 09 Sep 2026 03:22:38 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Wed, 09 Sep 2026 03:22:38 GMT
ENV RABBITMQ_VERSION=4.3.5
# Wed, 09 Sep 2026 03:22:38 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 09 Sep 2026 03:22:38 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 09 Sep 2026 03:22:38 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:23:57 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Wed, 09 Sep 2026 03:24:00 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Wed, 09 Sep 2026 03:24:00 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Wed, 09 Sep 2026 03:24:00 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 09 Sep 2026 03:24:00 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 09 Sep 2026 03:24:00 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 03:24:00 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Wed, 09 Sep 2026 03:24:01 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Wed, 09 Sep 2026 03:24:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 09 Sep 2026 03:24:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Sep 2026 03:24:01 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Wed, 09 Sep 2026 03:24:01 GMT
CMD ["rabbitmq-server"]
# Wed, 09 Sep 2026 06:40:09 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Wed, 09 Sep 2026 22:33:08 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-gnu'; digest='31887e0dc96e7654a9dfa007182af1281ee2fd4045de011ca1af72b0b962df51' ;; 		'arm64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-gnu'; digest='cd97862b5a19688779717bbd920bbf299a960ad6cafcd9121bf764c01e4c66eb' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum --strict --check -; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Wed, 09 Sep 2026 22:33:08 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746a0770c256acebfa0004542cb633c1926e99de4e02948f6099c29d36813e15`  
		Last Modified: Wed, 09 Sep 2026 03:25:28 GMT  
		Size: 39.6 MB (39579600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb01f2132e1b14e9e0dd49fbe8cf9a83615f87034f795a2fb2d18dfaa684912e`  
		Last Modified: Wed, 09 Sep 2026 03:25:27 GMT  
		Size: 9.6 MB (9613909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:148f1555e234e521177a9dd44f587b08101fb620ea4d43b1d6c566fc27f6c2e7`  
		Last Modified: Wed, 09 Sep 2026 03:25:26 GMT  
		Size: 9.6 KB (9598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc41f0761cb442725505045442f12fa4c489689454a0e6788e3b34c99c0f68c`  
		Last Modified: Wed, 09 Sep 2026 03:25:28 GMT  
		Size: 28.7 MB (28698667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d853cd2ba7070e59bde3e94df5e8d4c2a444883c81fab50facd101a20c84ebbe`  
		Last Modified: Wed, 09 Sep 2026 03:25:28 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e6c04e8975146905e722f4e71f50a913524f0f989d5aea2a535e5a7919f98a7`  
		Last Modified: Wed, 09 Sep 2026 03:25:28 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f182b35ee20227de355deef334ec2707c8d631a69c65a627e5bf6087374280b`  
		Last Modified: Wed, 09 Sep 2026 03:25:29 GMT  
		Size: 623.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3635c378ff55cd18e86d6f780adabfa4cf313f93ad2b20d1132f72867dae447`  
		Last Modified: Wed, 09 Sep 2026 03:25:29 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34327ee01b32e4a28dc102f12f85dc4d2f88d606e83ddb1853cc0d9d35c54cbe`  
		Last Modified: Wed, 09 Sep 2026 06:40:38 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:e572ba207c75c654680759019461af5fa83b1a64d815f4740aa9456dae4c498b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2491356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ace9cccd5e5f394401fee32d96ddc43bf5da02bd73b8427da31112dfedf7032`

```dockerfile
```

-	Layers:
	-	`sha256:de38a82f7f6426b8943af6df0f66fb88e5a459d04fa5aa4bd58448160958816f`  
		Last Modified: Wed, 09 Sep 2026 22:33:28 GMT  
		Size: 2.5 MB (2475046 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f907714639ee371b8e844acac889b3a3fd3bec2b46a31bc687dff5d8e8a76e4`  
		Last Modified: Wed, 09 Sep 2026 22:33:28 GMT  
		Size: 16.3 KB (16310 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management` - linux; riscv64

```console
$ docker pull rabbitmq@sha256:d94d95aba99138e40dfaf04fd5dce78d00c770ba6029255fd0271d323cfd4a9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.8 MB (105793835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb23cac1c522ceee30e1005fc058bd5f533c146ee1cb8d4187e3428e39392efd`
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
# Wed, 09 Sep 2026 08:34:13 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.34.0/rabbitmqadmin-2.34.0-x86_64-unknown-linux-gnu'; digest='0d5d8d2613232e10eebac62d43754666d45b034f6ba1a42eded0480d67d60d0e' ;; 		'arm64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.34.0/rabbitmqadmin-2.34.0-aarch64-unknown-linux-gnu'; digest='995d2b2fa0060b9c2533bbbf118092c577770bf3b772e4952adbfef42c9e7ad6' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum --strict --check -; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Wed, 09 Sep 2026 08:34:13 GMT
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
$ docker pull rabbitmq@sha256:25b6bab9c553ece0d60f0aca147a9a1d5157437690f661847b109b3eceff4fa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2479271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddcde7ec297d2fcffa65fd8ec13f3ab6db22417238b78aa45338c3a9dc4f991f`

```dockerfile
```

-	Layers:
	-	`sha256:92b0c71e8621f38e1bd01c0b0b8ff781fcefdd37c5b2f52e7f95775437be956f`  
		Last Modified: Wed, 09 Sep 2026 08:35:31 GMT  
		Size: 2.5 MB (2462958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5dc84fc3b74289ec423fa32483210b2da0b77e62c99043ae45ccdb29d129fa53`  
		Last Modified: Wed, 09 Sep 2026 08:35:31 GMT  
		Size: 16.3 KB (16313 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:70aaef0f6a247cabb6061737147485f4c3b04e1b77f0dd15e9be119082463685
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.1 MB (108058799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de7fd6b590e632477da9a50e25f2aa57ed597ebc4509119e642bd438644ec116`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:10 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:10 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:12 GMT
ADD file:4483a9a8fede37e8d587c88a49ab036598c57a1cdc8558d50175c642d747d633 in / 
# Mon, 17 Aug 2026 13:37:12 GMT
CMD ["/bin/bash"]
# Tue, 01 Sep 2026 22:55:40 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 01 Sep 2026 22:55:40 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 01 Sep 2026 22:55:40 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 01 Sep 2026 22:55:40 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 01 Sep 2026 22:55:40 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 22:55:40 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 01 Sep 2026 22:55:42 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Tue, 01 Sep 2026 22:55:42 GMT
ENV RABBITMQ_VERSION=4.3.5
# Tue, 01 Sep 2026 22:55:42 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 01 Sep 2026 22:55:42 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 01 Sep 2026 22:55:42 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 22:55:56 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 01 Sep 2026 22:55:57 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 01 Sep 2026 22:55:57 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 01 Sep 2026 22:55:57 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 01 Sep 2026 22:55:57 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 01 Sep 2026 22:55:57 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 01 Sep 2026 22:55:57 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 01 Sep 2026 22:55:57 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 01 Sep 2026 22:55:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 01 Sep 2026 22:55:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Sep 2026 22:55:57 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 01 Sep 2026 22:55:57 GMT
CMD ["rabbitmq-server"]
# Tue, 01 Sep 2026 23:07:17 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Tue, 01 Sep 2026 23:07:17 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.34.0/rabbitmqadmin-2.34.0-x86_64-unknown-linux-gnu'; digest='0d5d8d2613232e10eebac62d43754666d45b034f6ba1a42eded0480d67d60d0e' ;; 		'arm64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.34.0/rabbitmqadmin-2.34.0-aarch64-unknown-linux-gnu'; digest='995d2b2fa0060b9c2533bbbf118092c577770bf3b772e4952adbfef42c9e7ad6' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum --strict --check -; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Tue, 01 Sep 2026 23:07:17 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:5d1d3f92cfa6f52fd8d52857915fa3c3464dbd12014bfc03e5e163fc72a4de1d`  
		Last Modified: Mon, 17 Aug 2026 14:27:57 GMT  
		Size: 29.9 MB (29935255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448bfb3c4ae46b19e0718fe6cdb4ac02bf5cd6f12dd7c1e2bd88f3baa5149b1e`  
		Last Modified: Tue, 01 Sep 2026 22:56:40 GMT  
		Size: 38.7 MB (38662098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:088b867f3f1691fd672c0547b7b7c55f4653eff3a8a6404afe8010e04f1d3de8`  
		Last Modified: Tue, 01 Sep 2026 22:56:39 GMT  
		Size: 8.6 MB (8630222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b24743bcd20cbb50d68de2011209dcb60b864f812405e00efe2908654736681`  
		Last Modified: Tue, 01 Sep 2026 22:56:38 GMT  
		Size: 9.8 KB (9809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa3b527459b5682cf93f501b1d59f53c1a19f3235312d086d1db539c3a6c1f65`  
		Last Modified: Tue, 01 Sep 2026 22:56:39 GMT  
		Size: 30.8 MB (30819363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cee483655fdbea212ea2dbaa4e230d1075e6b07a580ad282023cf77d8a351bf`  
		Last Modified: Tue, 01 Sep 2026 22:56:39 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd658789b5b66ccf304b94a7840d4cb3e8df42c04743570025c61bc3a41b007a`  
		Last Modified: Tue, 01 Sep 2026 22:56:40 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4ac6cd665a1c271ea4fafd11be1f27a750c68e7f284b46f642eb37d10cd9b51`  
		Last Modified: Tue, 01 Sep 2026 22:56:40 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ab87563aa02ffa2704f0ea7d572490829b8343a19a3215adb9969703984f7bf`  
		Last Modified: Tue, 01 Sep 2026 22:56:41 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33a15c86118dc08cabbc82523e8053f134f5203190d15a60505c856147d10e2`  
		Last Modified: Tue, 01 Sep 2026 23:07:29 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:a75b26a1e02669de5c7d2f7262071f1f0b7ffd08a222b660b4b2b399cb1b3d71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2488952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98b8bc98f9ae531a1570d7f0e2497e3c88e8111f3239b5feead7676775677059`

```dockerfile
```

-	Layers:
	-	`sha256:67cfc75333b050f683f7771ad0ae385fd6932513e87f74f036732351ffd6db8e`  
		Last Modified: Tue, 01 Sep 2026 23:07:29 GMT  
		Size: 2.5 MB (2472688 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e337f5401927145d2360a3bcb64f3f3b77ac5aeb57d24b9135f4aa51d4393d08`  
		Last Modified: Tue, 01 Sep 2026 23:07:29 GMT  
		Size: 16.3 KB (16264 bytes)  
		MIME: application/vnd.in-toto+json
