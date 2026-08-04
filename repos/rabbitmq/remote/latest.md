## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:a81becbfd5ca570a6af1e26574066a8510c6112035983d5155bcb7b5e1dfd871
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
$ docker pull rabbitmq@sha256:2cc7e392d7b5ed4ca24a074a452a95e9bb2e4bacda65d68658279bf9083bcdb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.1 MB (116148926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98b38b652e1f391cebaade76d11756c6e792b3735e16994db4a4666a10646641`
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
# Tue, 04 Aug 2026 01:46:38 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 04 Aug 2026 01:46:38 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 04 Aug 2026 01:46:38 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 04 Aug 2026 01:46:38 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 04 Aug 2026 01:46:38 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:46:38 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 04 Aug 2026 01:46:40 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Tue, 04 Aug 2026 01:46:40 GMT
ENV RABBITMQ_VERSION=4.3.4
# Tue, 04 Aug 2026 01:46:40 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 04 Aug 2026 01:46:40 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 04 Aug 2026 01:46:40 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:47:01 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 04 Aug 2026 01:47:02 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 04 Aug 2026 01:47:02 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 04 Aug 2026 01:47:02 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 04 Aug 2026 01:47:02 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 04 Aug 2026 01:47:02 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:47:02 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 04 Aug 2026 01:47:02 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 04 Aug 2026 01:47:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:47:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:47:02 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 04 Aug 2026 01:47:02 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c150e77bfaebeed539452fc019d0794d4bd79a4e1537c226593a29f47b84603e`  
		Last Modified: Tue, 04 Aug 2026 01:47:26 GMT  
		Size: 46.3 MB (46316517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c3fa436276e71e3cbd8e0a34a6dfe6e539297201ddc23e63b20daa04bcd2718`  
		Last Modified: Tue, 04 Aug 2026 01:47:25 GMT  
		Size: 9.0 MB (8994469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43c7a997176063c265e13897de89066cf2bdb614ccfc3fea95890a52e83d4fb0`  
		Last Modified: Tue, 04 Aug 2026 01:47:24 GMT  
		Size: 9.7 KB (9693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:347e3f39286bb87e8e3d6a405fa58814680acd9e14244dd7a023d1556c99d0ee`  
		Last Modified: Tue, 04 Aug 2026 01:47:26 GMT  
		Size: 31.1 MB (31075391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eed0524647b4cb031f29edffecf4690f1dcb7e2c5a337c7c1a7d89d9dd14255`  
		Last Modified: Tue, 04 Aug 2026 01:47:25 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4ba00e53235763da9f72bc695e22ff9219c1e1397e813d220ab0cfe9aa5afab`  
		Last Modified: Tue, 04 Aug 2026 01:47:26 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c562f9187b2d08d2a96e7ad063e0a7a4ce9cd1bc2a96de33195ce3f0bcf3d3d3`  
		Last Modified: Tue, 04 Aug 2026 01:47:27 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90467a0efa3c8abcc52256e4575cf27778555f4f96c64d66eab3f32eb3ee70af`  
		Last Modified: Tue, 04 Aug 2026 01:47:27 GMT  
		Size: 831.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:latest` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:2450fcc8ad6a53b8498b14cd9038a0476ecfd8c3cc51259b602665943d104651
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18783161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74d3fd27c94398d08f75f91777e7839474f72680ff3520886885f247b59dac21`

```dockerfile
```

-	Layers:
	-	`sha256:acbe91e75fadd48f1d4619989b3aea8470d13888bc92f91218cefb5435187075`  
		Last Modified: Tue, 04 Aug 2026 01:47:24 GMT  
		Size: 2.5 MB (2470496 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9111b25b5184aaec7efde880deaabd03ba633ab69d8aab8fc302b3a7235e4655`  
		Last Modified: Tue, 04 Aug 2026 01:47:25 GMT  
		Size: 5.4 MB (5364640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:05ebc66f2fcd59ad3b6dea869458996f9974b7a444c28fa8113d97f154eead70`  
		Last Modified: Tue, 04 Aug 2026 01:47:25 GMT  
		Size: 5.5 MB (5521442 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98895f18216fae30f71f383a6b1fadbe6e884705bc7983b8a9341692dfa60152`  
		Last Modified: Tue, 04 Aug 2026 01:47:25 GMT  
		Size: 5.4 MB (5366382 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94f2574e20d31d80133794ad20680bedde9ee1399d418c9bae9939b2e92ac418`  
		Last Modified: Tue, 04 Aug 2026 01:47:26 GMT  
		Size: 60.2 KB (60201 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:latest` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:3719c25a2c1f544b2affdf3c4cb29b8532ae7901213192efc7297fddbebedb0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96116477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c92a217c05248f5131de3e36b9485cca79529ec7df9abf673542faf5db0c3082`
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
# Tue, 04 Aug 2026 01:19:38 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 04 Aug 2026 01:19:38 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 04 Aug 2026 01:19:38 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 04 Aug 2026 01:19:38 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 04 Aug 2026 01:19:38 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:19:38 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 04 Aug 2026 01:19:39 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Tue, 04 Aug 2026 01:19:39 GMT
ENV RABBITMQ_VERSION=4.3.4
# Tue, 04 Aug 2026 01:19:39 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 04 Aug 2026 01:19:39 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 04 Aug 2026 01:19:39 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:20:03 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 04 Aug 2026 01:20:04 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 04 Aug 2026 01:20:04 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 04 Aug 2026 01:20:04 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 04 Aug 2026 01:20:04 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 04 Aug 2026 01:20:04 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:20:04 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 04 Aug 2026 01:20:04 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 04 Aug 2026 01:20:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:20:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:20:04 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 04 Aug 2026 01:20:04 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:c55214abec85c375f31bae91edc8d5ede87ebb1a3979fe7ba996b347fc559989`  
		Last Modified: Fri, 31 Jul 2026 22:22:35 GMT  
		Size: 26.9 MB (26872495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bd62be568653a4282c184506892956b68a0e5f52ba4783c064d606c6b18c580`  
		Last Modified: Tue, 04 Aug 2026 01:20:28 GMT  
		Size: 33.3 MB (33345308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:506a35129de05b46a887ad7dbb37a94a483fafa144f72ef58454c3a260d21a9d`  
		Last Modified: Tue, 04 Aug 2026 01:20:27 GMT  
		Size: 7.3 MB (7314998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff151c4aa59188d9592b6209db7d122f2db8ad41065dbc200556d25e745dccb5`  
		Last Modified: Tue, 04 Aug 2026 01:20:26 GMT  
		Size: 9.7 KB (9734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4feb7142dfa9668bcb55538be10f5223286290e0b72e821e3715327588a8abe7`  
		Last Modified: Tue, 04 Aug 2026 01:20:28 GMT  
		Size: 28.6 MB (28572197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73b7b07ea503e651f4c4b20b66fc9c3312caaed8b16454aa436878aecb5271d0`  
		Last Modified: Tue, 04 Aug 2026 01:20:27 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb02336925c367fca2e857d7fd42b7477ad284037788773ffbf8d0c0abbdc4c8`  
		Last Modified: Tue, 04 Aug 2026 01:20:28 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35560980bd3a7405de417dabf5e741263d7bc4bf2db95ed22d361412494cbeca`  
		Last Modified: Tue, 04 Aug 2026 01:20:29 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f85dea9634d3507dee3e60743c2c9cfca3fe1bbbd6de1d336da3a0ca7461d47`  
		Last Modified: Tue, 04 Aug 2026 01:20:29 GMT  
		Size: 831.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:latest` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:242116a7e8f4ecd4ff5008456d2a05201f8b2f68dabe4e498f5c66ac13bae994
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.2 MB (18237870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ef95ae95e0677f79742677d486950c87404ee9195ccc713e48d0dd72c5f053b`

```dockerfile
```

-	Layers:
	-	`sha256:93dc65cb6e52d4ef0819a440584f22194230103244b0c2abd3d7d0b4c02a05e3`  
		Last Modified: Tue, 04 Aug 2026 01:20:27 GMT  
		Size: 2.5 MB (2471294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1cac469176e42e9c52567265f76671dc2253ed90b9924e850f5db250e4270a35`  
		Last Modified: Tue, 04 Aug 2026 01:20:27 GMT  
		Size: 5.2 MB (5183398 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5dd3d09651856a1d077e21829808d9904576340dfe8d59aadc9f4f2f757d9515`  
		Last Modified: Tue, 04 Aug 2026 01:20:27 GMT  
		Size: 5.3 MB (5337641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acae09a6b5787d91983be07b20fa561c20553bcb2ca60a62272cf7d12355acba`  
		Last Modified: Tue, 04 Aug 2026 01:20:27 GMT  
		Size: 5.2 MB (5185140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6240a2aea9dcc74fc82870cc0ad9f765cdb29ff85e1b10788c8da55b16c7b4c4`  
		Last Modified: Tue, 04 Aug 2026 01:20:28 GMT  
		Size: 60.4 KB (60397 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:latest` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:8dc99ed503e2721f44d98e0cecbf8a7fb3adab47d52f7f37fb346ea1408d4620
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.6 MB (111601644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db63d0419b5e82e5b1e84dfdd6d25ccfd646586d168c34e7fd459145d56a22c1`
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
# Tue, 04 Aug 2026 01:46:45 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 04 Aug 2026 01:46:45 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 04 Aug 2026 01:46:45 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 04 Aug 2026 01:46:46 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 04 Aug 2026 01:46:46 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:46:46 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 04 Aug 2026 01:46:47 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Tue, 04 Aug 2026 01:46:47 GMT
ENV RABBITMQ_VERSION=4.3.4
# Tue, 04 Aug 2026 01:46:47 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 04 Aug 2026 01:46:47 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 04 Aug 2026 01:46:47 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:47:08 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 04 Aug 2026 01:47:09 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 04 Aug 2026 01:47:09 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 04 Aug 2026 01:47:09 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 04 Aug 2026 01:47:09 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 04 Aug 2026 01:47:09 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:47:09 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 04 Aug 2026 01:47:09 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 04 Aug 2026 01:47:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:47:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:47:09 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 04 Aug 2026 01:47:09 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da344a35134c51c4c9be43c10edc2e21cf7b2da200e3619a2f1952b837f39947`  
		Last Modified: Tue, 04 Aug 2026 01:47:35 GMT  
		Size: 44.4 MB (44400418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6208eb27a5827b1a87a62ed65f8f12e7d1a0cf9b67add1a43c2cbfc890ee3f45`  
		Last Modified: Tue, 04 Aug 2026 01:47:33 GMT  
		Size: 9.7 MB (9722826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5a51066ba45249642fb0c904cfd171a19cc46ca7fcb880dafb027bdc62f61fe`  
		Last Modified: Tue, 04 Aug 2026 01:47:33 GMT  
		Size: 9.6 KB (9632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10423db5afabcaa1d04095c7477bd703aada79574db381f4b6ec8b9850436c71`  
		Last Modified: Tue, 04 Aug 2026 01:47:34 GMT  
		Size: 28.6 MB (28580202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc55ced27feb85e4d9ff39b62bc7cc1d5b2d6e208b1196d5849e497bfcf3dda8`  
		Last Modified: Tue, 04 Aug 2026 01:47:34 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c10c35417afe28124a70665a50d9b4b1668582dd2c9c87e1323bce264ce4e87b`  
		Last Modified: Tue, 04 Aug 2026 01:47:35 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:830c7d4515ba3517437a8e8efadff653913fe46cd9e561bb51b1defee89da0b8`  
		Last Modified: Tue, 04 Aug 2026 01:47:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae7bf652f9c4a9c3bb6a1d240809b2b7a6abc458f1db00371c2e29f72878c16d`  
		Last Modified: Tue, 04 Aug 2026 01:47:36 GMT  
		Size: 832.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:latest` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:93d8b3ccc4221ddf2391c7a6c497bd84f1103f3ede110dc19db2116c70cb30d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18842129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3976ea02a33da83176b278f060f003ba179adb123d88310633d1cc78754d2d51`

```dockerfile
```

-	Layers:
	-	`sha256:1220b5a0cf4e376eee370eb3e063cb0945a4cbae3ab6428e8e5f779413ed83fa`  
		Last Modified: Tue, 04 Aug 2026 01:47:33 GMT  
		Size: 2.5 MB (2471556 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b68f7ccd62e5b95a9ee2b5dcf6ddee3698108ded6a73097c448e6e3c1cecf52d`  
		Last Modified: Tue, 04 Aug 2026 01:47:33 GMT  
		Size: 5.4 MB (5383857 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da0909712330ef42b45b1e36b237ef14feeb617d1533944f8d118b9a97869760`  
		Last Modified: Tue, 04 Aug 2026 01:47:33 GMT  
		Size: 5.5 MB (5540677 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:268acc2dc985e714fee918beba21836d38a7cc6dd2615a18f7ef69636073af75`  
		Last Modified: Tue, 04 Aug 2026 01:47:33 GMT  
		Size: 5.4 MB (5385599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4024d6e0f0a8244e6b6d1581ecad869330ee41ede5fb689b5e7571d478c3d15f`  
		Last Modified: Tue, 04 Aug 2026 01:47:34 GMT  
		Size: 60.4 KB (60440 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:latest` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:bde6f3186ee8d3bc6f02a98c5799eed8a524c0cb29b3f449c2ddf4f1eec17894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114726836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf891e61a85c195e506b4fe74ec8fcd39d17f99306fd0e557c67fb36842c98c7`
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
# Tue, 04 Aug 2026 02:29:56 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 04 Aug 2026 02:29:56 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 04 Aug 2026 02:29:56 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 04 Aug 2026 02:29:57 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 04 Aug 2026 02:29:57 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:29:57 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 04 Aug 2026 02:29:59 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Tue, 04 Aug 2026 02:29:59 GMT
ENV RABBITMQ_VERSION=4.3.4
# Tue, 04 Aug 2026 02:29:59 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 04 Aug 2026 02:29:59 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 04 Aug 2026 02:29:59 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:30:32 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 04 Aug 2026 02:30:34 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 04 Aug 2026 02:30:34 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 04 Aug 2026 02:30:34 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 04 Aug 2026 02:30:34 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 04 Aug 2026 02:30:34 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 02:30:34 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 04 Aug 2026 02:30:34 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 04 Aug 2026 02:30:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:30:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:30:35 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 04 Aug 2026 02:30:35 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:9d1bffbd46bb5cede430c07896855e38e8bfe397bbc67fe1808f03623a4aad12`  
		Last Modified: Fri, 31 Jul 2026 22:22:43 GMT  
		Size: 34.3 MB (34310673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bb187857bbcd34f60be5f7ff544344653f0aa6dd658141a2ad0820c530e6a39`  
		Last Modified: Tue, 04 Aug 2026 02:31:30 GMT  
		Size: 39.5 MB (39547308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6143e5e974d1e79b4bdce158b72cd37ed833532f1c7dd1d6f6d17fad60865456`  
		Last Modified: Tue, 04 Aug 2026 02:31:28 GMT  
		Size: 9.6 MB (9606010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9866989b518e3055bb43c036b15c9a5ebc5c4ff9330b95c345e6b2c3dae8a1f`  
		Last Modified: Tue, 04 Aug 2026 02:31:27 GMT  
		Size: 9.7 KB (9660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8bf3a37a2851274350716b6ea45eeb2d375cb4aa95a47a8a000de84a180734d`  
		Last Modified: Tue, 04 Aug 2026 02:31:29 GMT  
		Size: 31.3 MB (31251435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1edf8ac8969fc1174f8af400266fa0977aaeb9e0a9a75b7819a4ef452313862d`  
		Last Modified: Tue, 04 Aug 2026 02:31:29 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:644c59b5d844964525feb615672edb35639bc6b6e75595d887d308cb24ff7390`  
		Last Modified: Tue, 04 Aug 2026 02:31:30 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef2dd23a64f2a6f7e585e12e3c59e118541931a4020391ad8b48f7f399db1006`  
		Last Modified: Tue, 04 Aug 2026 02:31:30 GMT  
		Size: 620.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4845f462e51cb80b572097f9771e40563b5cfec62baf102fefa9448442ffb35`  
		Last Modified: Tue, 04 Aug 2026 02:31:31 GMT  
		Size: 831.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:latest` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:f5f494e417f0a07f33443bdd4942493eda711278c65973870f7fd84b716330a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18697513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0602baad85451a272dc860d8e12b4faf1b252acb65d9142bd4d877a4e5b9d2e8`

```dockerfile
```

-	Layers:
	-	`sha256:3fbb8714cd10c59b845e564eb2ce5157be300ede4a3fc967340ffbbbbb90ebbf`  
		Last Modified: Tue, 04 Aug 2026 02:31:28 GMT  
		Size: 2.5 MB (2474949 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b77713b18ae5a3a964f1e26db8b84c4d4603a10b0a5d849483764c4f0715c374`  
		Last Modified: Tue, 04 Aug 2026 02:31:28 GMT  
		Size: 5.3 MB (5334576 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66dbbce256a4d6717b31c0b5994bc3abf65ff98fbb5897f1cc9ce1840af45c05`  
		Last Modified: Tue, 04 Aug 2026 02:31:28 GMT  
		Size: 5.5 MB (5491408 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f4a5d8d5f6d5e0dddd4cc6967566ffc1e3d9dca60682abf28defbc325a5b676`  
		Last Modified: Tue, 04 Aug 2026 02:31:28 GMT  
		Size: 5.3 MB (5336318 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d3340a0dab7e14ae2a32ddc212f31f2c4a0999408b7be1dca14bf8b22654988`  
		Last Modified: Tue, 04 Aug 2026 02:31:29 GMT  
		Size: 60.3 KB (60262 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:latest` - linux; riscv64

```console
$ docker pull rabbitmq@sha256:23108236b5116ab3b7038c950dabd944de04fa53159c8773f1065ed716ae504f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.6 MB (105618046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6450e2210d15dcee05b0a5b6e69267edd1f21e2ed8773fed2d2b54a44f32d715`
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
# Tue, 04 Aug 2026 03:10:59 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 04 Aug 2026 03:10:59 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 04 Aug 2026 03:10:59 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 04 Aug 2026 03:10:59 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 04 Aug 2026 03:10:59 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:10:59 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 04 Aug 2026 03:11:03 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Tue, 04 Aug 2026 03:11:03 GMT
ENV RABBITMQ_VERSION=4.3.4
# Tue, 04 Aug 2026 03:11:03 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 04 Aug 2026 03:11:03 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 04 Aug 2026 03:11:03 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:13:15 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 04 Aug 2026 03:13:24 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 04 Aug 2026 03:13:25 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 04 Aug 2026 03:13:25 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 04 Aug 2026 03:13:25 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 04 Aug 2026 03:13:25 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 03:13:25 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 04 Aug 2026 03:13:25 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 04 Aug 2026 03:13:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 03:13:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 03:13:25 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 04 Aug 2026 03:13:25 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:762baa88da0248ffd5b4e64693b9d04fc144101bcdbcc6dcc7d9a6be2a8b7953`  
		Last Modified: Fri, 31 Jul 2026 22:22:50 GMT  
		Size: 31.0 MB (30982563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:762cd82a5fa6ff3e6047dce94c5b016ea6e33292de4a7775a64d82593e1e1947`  
		Last Modified: Tue, 04 Aug 2026 03:19:48 GMT  
		Size: 35.2 MB (35201514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e1085da3cd9538404ef3aa804593c3f2855cdb545755fbcbee0ace20f50080`  
		Last Modified: Tue, 04 Aug 2026 03:19:41 GMT  
		Size: 10.8 MB (10842309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc35cc7bc4c9ce10a1feb1eb98ac4de6baee66eb4385e63e45163839d2329bb`  
		Last Modified: Tue, 04 Aug 2026 03:19:36 GMT  
		Size: 9.7 KB (9695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:360f9bae89efed0131db9617eaa9aae1658938705ff74c1ff9df71c0803ab65a`  
		Last Modified: Tue, 04 Aug 2026 03:19:47 GMT  
		Size: 28.6 MB (28580209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf4c5be1c74f2d9b368c6a2908992efa80720889bead3ed1424df6528b233b3`  
		Last Modified: Tue, 04 Aug 2026 03:19:40 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:085885b44d33f08f57d160726e2b8ce4c3e4e64cb4af3705d8f38e24795bb840`  
		Last Modified: Tue, 04 Aug 2026 03:19:42 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e09001ec9958cfbdd0d9fc9b8734b5459c9dad10ad145dee0c1527b91c1d36e8`  
		Last Modified: Tue, 04 Aug 2026 03:19:44 GMT  
		Size: 624.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33da1186005783c00f0316880c0566e2f4b7a33e5bdb3ab7e70a905f539e82b4`  
		Last Modified: Tue, 04 Aug 2026 03:19:44 GMT  
		Size: 832.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:latest` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:10f43af7e3626d67d1edea9c301a9fc3173dee49a96727c44e7f533479fb731d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18666105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed6d68d4c597667e903950062042ac98ad074744325aa48a3829ef70dd47b144`

```dockerfile
```

-	Layers:
	-	`sha256:3dec363d76026b28dc631ba6c015986b686ab03c48925f4437a814bf457e74f7`  
		Last Modified: Tue, 04 Aug 2026 03:19:36 GMT  
		Size: 2.5 MB (2462861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8849756f30e2eb70abe06f61f6121a444488dc1340336b6c377f6cddb245df15`  
		Last Modified: Tue, 04 Aug 2026 03:19:40 GMT  
		Size: 5.3 MB (5328997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e292fa0b45ad14a8c485cd917c0c8c9af25c12834b274d09c47f8c375e801f7b`  
		Last Modified: Tue, 04 Aug 2026 03:19:39 GMT  
		Size: 5.5 MB (5483238 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29319ff452b8f2062ff133718693e0a79750b4f84a22cca196d51c8fce0fb796`  
		Last Modified: Tue, 04 Aug 2026 03:19:39 GMT  
		Size: 5.3 MB (5330739 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49df9c6e6b8562b82b38fccc00163ce3219d2c833508c199075fb464664ee170`  
		Last Modified: Tue, 04 Aug 2026 03:19:40 GMT  
		Size: 60.3 KB (60270 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:latest` - linux; s390x

```console
$ docker pull rabbitmq@sha256:b8ef8ef35a61cfb58005a4b212ba18d0ed5ac9a23dc35e09c35128b63542bb13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.9 MB (105862354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ab55c27022cf11584ed552263ef1b334af1a5758d80463907dde1579ed3c111`
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
# Tue, 04 Aug 2026 01:36:40 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 04 Aug 2026 01:36:40 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 04 Aug 2026 01:36:40 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 04 Aug 2026 01:36:40 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 04 Aug 2026 01:36:40 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:36:40 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 04 Aug 2026 01:36:42 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Tue, 04 Aug 2026 01:36:42 GMT
ENV RABBITMQ_VERSION=4.3.4
# Tue, 04 Aug 2026 01:36:42 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 04 Aug 2026 01:36:42 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 04 Aug 2026 01:36:42 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:36:57 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 04 Aug 2026 01:36:58 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 04 Aug 2026 01:36:58 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 04 Aug 2026 01:36:58 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 04 Aug 2026 01:36:58 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 04 Aug 2026 01:36:58 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 04 Aug 2026 01:36:58 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 04 Aug 2026 01:36:58 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 04 Aug 2026 01:36:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:36:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:36:58 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 04 Aug 2026 01:36:58 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:6bb1e92e6c04f8404c596df473b847d14a4cc2ca1d4734e5353b4b54d37b3338`  
		Last Modified: Fri, 31 Jul 2026 22:22:57 GMT  
		Size: 29.9 MB (29935711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb6279150aa2a5df2dfe0fa175ec197dd7b03a9f2efa3a52f037b6d5bff91679`  
		Last Modified: Tue, 04 Aug 2026 01:37:40 GMT  
		Size: 38.6 MB (38640030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4f24e5d9f7c1d8fc29bafc7b4b60a973188139d450a37f9a7175d5d19c977eb`  
		Last Modified: Tue, 04 Aug 2026 01:37:39 GMT  
		Size: 8.6 MB (8623463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa79466ceca6157258018485cd50799dafbf398ee6d0a4405bbc95957c02272d`  
		Last Modified: Tue, 04 Aug 2026 01:37:39 GMT  
		Size: 9.8 KB (9812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05c185410376385196bbaa91e89b3781bf7bb31cae4a0bcf104706d9d72c6f49`  
		Last Modified: Tue, 04 Aug 2026 01:37:41 GMT  
		Size: 28.7 MB (28651587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b018e529511b6681c462b89b496089e3ebb6e94d95dca377841ca6fc8ac2398`  
		Last Modified: Tue, 04 Aug 2026 01:37:41 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fffcf2866136e1a21402223d17808d2c77eed035e89089e3b80d824ac2409aa`  
		Last Modified: Tue, 04 Aug 2026 01:37:41 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54fd626c162467669411769594a24a463bd71940ce1ec1ac1078d38ec1b16f65`  
		Last Modified: Tue, 04 Aug 2026 01:37:42 GMT  
		Size: 620.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51ce02fbd91473dc1e3dbc571b752967912b0a728cca8c7c075b7249d83a84df`  
		Last Modified: Tue, 04 Aug 2026 01:37:42 GMT  
		Size: 832.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:latest` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:fb3c048f6d914d2098cbfa5c7ed16c377abcd286f74928a4bee7d28c49a9ff4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18323251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418efc8cf6584cc64635df364a48c53914dc76fa45008af9cdc44bc93491db87`

```dockerfile
```

-	Layers:
	-	`sha256:70c73c1876e8ff1e117968241db0f46cc108974d3e6ae6a8ec6bc046bc2aa627`  
		Last Modified: Tue, 04 Aug 2026 01:37:40 GMT  
		Size: 2.5 MB (2472605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b1fb045de9ebf3033f7f56c5e956d42f07b6c0f15dcc6f92b9abd9c81372a54`  
		Last Modified: Tue, 04 Aug 2026 01:37:40 GMT  
		Size: 5.2 MB (5211069 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:800609b3bba4b8052bc5f63e7f9fd2fc4e1060abc61b8d26fbb753c147130632`  
		Last Modified: Tue, 04 Aug 2026 01:37:40 GMT  
		Size: 5.4 MB (5366565 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6547dc6b2f25e3a56a66723304977d9176264820f9a0893d7217c7a74a7261d8`  
		Last Modified: Tue, 04 Aug 2026 01:37:40 GMT  
		Size: 5.2 MB (5212811 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbde73c593c911c5d03d9ca22b39956253a3a3b69323c8afb7682b7fc90ab610`  
		Last Modified: Tue, 04 Aug 2026 01:37:42 GMT  
		Size: 60.2 KB (60201 bytes)  
		MIME: application/vnd.in-toto+json
