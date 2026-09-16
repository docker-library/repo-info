## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:8ebfd3c2f8be9473f0dddc3bbf5cd6542459df2017c05b928a2b5096d1c1b5b8
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
$ docker pull rabbitmq@sha256:c9082afde5158ef862b2bf1f8ba96aadcd94d88cfc007547038d5db7bac54e88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.9 MB (113945971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf3275575f921583ae4bd9335e876a920ca7427addb8e5f82fc1b36429f844a9`
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
# Tue, 15 Sep 2026 22:46:24 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 15 Sep 2026 22:46:24 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 15 Sep 2026 22:46:24 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 15 Sep 2026 22:46:24 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 15 Sep 2026 22:46:24 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:46:24 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 15 Sep 2026 22:46:25 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Tue, 15 Sep 2026 22:46:25 GMT
ENV RABBITMQ_VERSION=4.3.6
# Tue, 15 Sep 2026 22:46:25 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 15 Sep 2026 22:46:25 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 15 Sep 2026 22:46:25 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:46:48 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 15 Sep 2026 22:46:48 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 15 Sep 2026 22:46:49 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 15 Sep 2026 22:46:49 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 15 Sep 2026 22:46:49 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 15 Sep 2026 22:46:49 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 15 Sep 2026 22:46:49 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 15 Sep 2026 22:46:49 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 15 Sep 2026 22:46:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:46:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:46:49 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 15 Sep 2026 22:46:49 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aa4237c7d800da2a7a41f90b8d1b40bc3cd36cd545be98d6a2f764192d9ea87`  
		Last Modified: Tue, 15 Sep 2026 22:47:14 GMT  
		Size: 46.4 MB (46356320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a70c02e4bd0423638b005da2239bed6ae1b564614bf4a061fda54e00975797e`  
		Last Modified: Tue, 15 Sep 2026 22:47:13 GMT  
		Size: 9.0 MB (9005206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b04252b8a7c6cc3719f9dbcad1232f42edde29526fd6b4bbacb9232774aadde5`  
		Last Modified: Tue, 15 Sep 2026 22:47:12 GMT  
		Size: 9.7 KB (9704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88f4a534f4df7033ff5943c17ac96247730834ce7bda33b58438307374f7b878`  
		Last Modified: Tue, 15 Sep 2026 22:47:13 GMT  
		Size: 28.8 MB (28809741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42645f94e9e1c9945f5196e4546c998f2c1ffb531c7028476eaac956eea9c25f`  
		Last Modified: Tue, 15 Sep 2026 22:47:13 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f386632216183ac0c30a2d10b36d49b35511325150970f67d2b10b0c48300cd3`  
		Last Modified: Tue, 15 Sep 2026 22:47:14 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:444f441fbdcf99fdc2937c567294a423413d3e015bc779bc2a1a3e5939783535`  
		Last Modified: Tue, 15 Sep 2026 22:47:14 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:403d7d7f2eea3fdea7e4efa071a6839c44786d21922a64c4f5e6c31d43dd630c`  
		Last Modified: Tue, 15 Sep 2026 22:47:15 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:latest` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:a08f5ca89c22f8f08b5fea0b26ed739979382063ffb9dd35419e91d3e93c4c19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18783236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8151baf3a01414de46d0e57fe8e07f14a088c2e2875f72680c2505dd2f10dee5`

```dockerfile
```

-	Layers:
	-	`sha256:479b8c19fe7ad0384d956f0ffcafde27f94fa183a47706a280b00614d1b57173`  
		Last Modified: Tue, 15 Sep 2026 22:47:12 GMT  
		Size: 2.5 MB (2470519 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:161f2920544fcbe18d72901bd553e819c7ac2bee40ae50b4467ae7877b8f459b`  
		Last Modified: Tue, 15 Sep 2026 22:47:12 GMT  
		Size: 5.4 MB (5364654 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f3feadc1e0064003b885e3a9c3b05b6bf793361a77512e044a19ec3681815d2`  
		Last Modified: Tue, 15 Sep 2026 22:47:12 GMT  
		Size: 5.5 MB (5521466 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0478f4a9daa545c4a91230131ab59198177e8beded3a719a778e10b76c70a8ec`  
		Last Modified: Tue, 15 Sep 2026 22:47:12 GMT  
		Size: 5.4 MB (5366396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1447d655737457fa0d43abd5a8d4c37f87582cafa1098c477a97637ff8cb1c71`  
		Last Modified: Tue, 15 Sep 2026 22:47:13 GMT  
		Size: 60.2 KB (60201 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:latest` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:fbcc09d083257298651aeb8ce4ef085a2f4d3b91d3e47890bee964307b053904
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.3 MB (96324950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19419d040123a8a66d7127daba936ff51002bdcc4eb1ce4572df2ddd5cd6e53e`
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
# Tue, 15 Sep 2026 23:19:39 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 15 Sep 2026 23:19:39 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 15 Sep 2026 23:19:39 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 15 Sep 2026 23:19:39 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 15 Sep 2026 23:19:39 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 23:19:39 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 15 Sep 2026 23:19:40 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Tue, 15 Sep 2026 23:19:40 GMT
ENV RABBITMQ_VERSION=4.3.6
# Tue, 15 Sep 2026 23:19:40 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 15 Sep 2026 23:19:40 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 15 Sep 2026 23:19:40 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 23:19:59 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 15 Sep 2026 23:20:00 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 15 Sep 2026 23:20:00 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 15 Sep 2026 23:20:00 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 15 Sep 2026 23:20:00 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 15 Sep 2026 23:20:00 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 15 Sep 2026 23:20:00 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 15 Sep 2026 23:20:00 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 15 Sep 2026 23:20:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:20:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 23:20:00 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 15 Sep 2026 23:20:00 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:2c98e8ee99c3e9905d854eff5f5f0fff270d9f9afc085063b8bc98145a2f5f5f`  
		Last Modified: Mon, 07 Sep 2026 07:57:11 GMT  
		Size: 26.9 MB (26894017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93c7b0e615b1f5d48f0926bdbee3dd3a4d6b64cfa1263b0bd03683327e30574a`  
		Last Modified: Tue, 15 Sep 2026 23:20:25 GMT  
		Size: 33.4 MB (33382882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a96deccab4615d07d64b60e9859548b17872d70be4e7a038762a85fe2eb8e4a`  
		Last Modified: Tue, 15 Sep 2026 23:20:24 GMT  
		Size: 7.3 MB (7322268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:518c7f6dbbf2c4edcaa18f62c4d9aced899429741d6654e90c1435ae47807280`  
		Last Modified: Tue, 15 Sep 2026 23:20:23 GMT  
		Size: 9.8 KB (9750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d57cd0e8b80489254c8a8cc1ac2359315dab409b53f06fce67be2df0b6786f8`  
		Last Modified: Tue, 15 Sep 2026 23:20:25 GMT  
		Size: 28.7 MB (28714285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adcb102ea8963bdb5b1f326943a7e6532d0e972566ec0c4d5091390124d95905`  
		Last Modified: Tue, 15 Sep 2026 23:20:24 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4fcc78d9c55bb8671676cd6b9c3c25a9a0f963de8cc99fec4090de9c551bb9`  
		Last Modified: Tue, 15 Sep 2026 23:20:25 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1977d8369a679ca14a2dc32fdb0c872b13bd738fa87d56ec3fd6aacc400994f`  
		Last Modified: Tue, 15 Sep 2026 23:20:26 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13ddeb72b177c0aaa0c6e6d0323a57e1f04210d6acbe66d09a04abe5ed1dafb6`  
		Last Modified: Tue, 15 Sep 2026 23:20:26 GMT  
		Size: 832.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:latest` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:bffc15781dda33dd44722fef742051e28a67a11ea069e6e31692d737f7e789db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.2 MB (18237946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa4524e414db4da41868d5679b98c1b5f6777e2df7d1674f64824cae889b9132`

```dockerfile
```

-	Layers:
	-	`sha256:704a4be0e48158cf92caf61590ca3ae20fe2fd1b2726bcd4d979e238cad981b3`  
		Last Modified: Tue, 15 Sep 2026 23:20:23 GMT  
		Size: 2.5 MB (2471317 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff5e07e52525137fafa3de15a0187b938f488af9a91fb90176c73fdf4af7a740`  
		Last Modified: Tue, 15 Sep 2026 23:20:24 GMT  
		Size: 5.2 MB (5183412 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a76988c8d2228b7c5ca2468f03e7cfd0f06884b2dd26cce13eec9bfeb24e4dbf`  
		Last Modified: Tue, 15 Sep 2026 23:20:24 GMT  
		Size: 5.3 MB (5337665 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efab0b3391fe0fe02b37ed6f0c0503a0ccdf068eae7aa9e7eb95220f75a48728`  
		Last Modified: Tue, 15 Sep 2026 23:20:24 GMT  
		Size: 5.2 MB (5185154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a48dc8f5ae18be0dd9ddcb3d7b14fb2c54d38278b17677bbd154d167d220f869`  
		Last Modified: Tue, 15 Sep 2026 23:20:24 GMT  
		Size: 60.4 KB (60398 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:latest` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:77c027e6e392663146840ae11bff02f2f52965730fb313795f8ff93c34572324
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.8 MB (111841738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35e412933dc8f1e4a22f8de0b9dea1560a743345b038363e3cb97613c9670d84`
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
# Tue, 15 Sep 2026 22:48:50 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 15 Sep 2026 22:48:50 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 15 Sep 2026 22:48:50 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 15 Sep 2026 22:48:50 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 15 Sep 2026 22:48:50 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:48:50 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 15 Sep 2026 22:48:52 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Tue, 15 Sep 2026 22:48:52 GMT
ENV RABBITMQ_VERSION=4.3.6
# Tue, 15 Sep 2026 22:48:52 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 15 Sep 2026 22:48:52 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 15 Sep 2026 22:48:52 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:49:15 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 15 Sep 2026 22:49:15 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 15 Sep 2026 22:49:15 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 15 Sep 2026 22:49:15 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 15 Sep 2026 22:49:15 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 15 Sep 2026 22:49:15 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 15 Sep 2026 22:49:15 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 15 Sep 2026 22:49:15 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 15 Sep 2026 22:49:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:49:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:49:16 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 15 Sep 2026 22:49:16 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76134f0f760f37f415cab6e61692cea5d2fb0f0d17968ac87cc15d9aa692fffa`  
		Last Modified: Tue, 15 Sep 2026 22:49:42 GMT  
		Size: 44.4 MB (44440794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b2e7eee2b0e9ba7f3829de44de46e4ca470fd9cc5168df49d2345ed5ce6a900`  
		Last Modified: Tue, 15 Sep 2026 22:49:41 GMT  
		Size: 9.7 MB (9730033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74778714f14d2249f0c0f385ced22e6c2c3a23e3d527a62eeaad43d1bdbfbf09`  
		Last Modified: Tue, 15 Sep 2026 22:49:40 GMT  
		Size: 9.6 KB (9646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:758f8f221119e8e81e4fad9030a1fbbe66a04cd774c591adb3e0025bd4434f7c`  
		Last Modified: Tue, 15 Sep 2026 22:49:42 GMT  
		Size: 28.7 MB (28719507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd2ec2db227705ba6a0b4da293be1c32bfc03d1347d941827a0987c695100b5`  
		Last Modified: Tue, 15 Sep 2026 22:49:42 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0343ccb1795d4276ed9952d38cd525689e90c1ef8513362e7b2a395aabaf76f8`  
		Last Modified: Tue, 15 Sep 2026 22:49:42 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f06de01d83455b0df5fe6c30d30069d86deb38f033f6bd776cfe0f7a7968190`  
		Last Modified: Tue, 15 Sep 2026 22:49:43 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a4342c4163dc0dc393361a71ec585b8fd36bfc7a29c8e7e59c80163c4f7633f`  
		Last Modified: Tue, 15 Sep 2026 22:49:43 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:latest` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:1b013a0dae9ab8e159e1dd54deca6d37abe66ee174d85a2164038fac7b012f82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18842204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fc55c34d6de134c73755b6be8b99e9fcee152350750aac7c1f69f8b8e3b0bd7`

```dockerfile
```

-	Layers:
	-	`sha256:faaeffdff72439665a048168f7c4d35b521a1961f4a08cca26d4c03c3b0c9a4e`  
		Last Modified: Tue, 15 Sep 2026 22:49:41 GMT  
		Size: 2.5 MB (2471579 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c90caefa6f6cbff2c5ac84a6acbf5f99aaf5ea8391e2516e82a6d02b9bf0c45`  
		Last Modified: Tue, 15 Sep 2026 22:49:41 GMT  
		Size: 5.4 MB (5383871 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:069da72cb9442beb49000d71d4738e8a92dde1ed4926511a0d660c4392e2bccf`  
		Last Modified: Tue, 15 Sep 2026 22:49:41 GMT  
		Size: 5.5 MB (5540701 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4005f05a0056c083ccd4c4487c09fe80ca99a32d4974939c7266dea9366c941c`  
		Last Modified: Tue, 15 Sep 2026 22:49:41 GMT  
		Size: 5.4 MB (5385613 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30633370dc03e57e4aae5f6186f358fa68f4df9384757cdc9bcde20ab1dff8a7`  
		Last Modified: Tue, 15 Sep 2026 22:49:42 GMT  
		Size: 60.4 KB (60440 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:latest` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:6d21e10e307bc0231731601568105776520dad2d0b9891671560d6c434faf37a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.3 MB (112280403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61ef6179aa503532c1a8aeee91378f1339ffae31c8833ca2ce51acd139d9015f`
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

### `rabbitmq:latest` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:76fe81c0e5614c6343e26e5d26ee78e31d6c25c5919c56859420d6020e754222
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18697589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ec774ab7142ce7e2b4eb8dc86508b2cf9d37c378d465cd5736440fd842338e`

```dockerfile
```

-	Layers:
	-	`sha256:c8829bf2567c9af5c07657061d75eab361b5c8e679397a86f2f600f61c811bc3`  
		Last Modified: Wed, 09 Sep 2026 03:25:26 GMT  
		Size: 2.5 MB (2474972 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:000c738b6f8a63243050862f41b4e69db0113b96af2409bccd878e7f7fffa40b`  
		Last Modified: Wed, 09 Sep 2026 03:25:26 GMT  
		Size: 5.3 MB (5334590 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5649de1396acc805635b2b35deb6f4a767b06a4449d358244f05ec57ec989dc`  
		Last Modified: Wed, 09 Sep 2026 03:25:26 GMT  
		Size: 5.5 MB (5491432 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3befbfc8ebeb1cc401e814eedeb1ecb1249fb5b1be929938821f8364384fb9a8`  
		Last Modified: Wed, 09 Sep 2026 03:25:26 GMT  
		Size: 5.3 MB (5336332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66cfef257e65cbbc08071dfdb072cb37e34764ae415353807b37f1700861ec2f`  
		Last Modified: Wed, 09 Sep 2026 03:25:28 GMT  
		Size: 60.3 KB (60263 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:latest` - linux; riscv64

```console
$ docker pull rabbitmq@sha256:41c9c56fc09eb7ccbb9ebdcd9f280f77742233dbed17c806eb20d173d5029859
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.8 MB (105793530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ea3af5ceeca445fd704c443b7a41d3a3ca1bf958f74be812a58170f1e05aedc`
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

### `rabbitmq:latest` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:e2d857bd816309ae1a34428abbbf3684b71a0952c6a0a7b5f57cb46bd20bf684
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18666180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90a30bfe87526aa6c381137be0235e874f2557d88cce0c6358aa7dd8aa56ffff`

```dockerfile
```

-	Layers:
	-	`sha256:7b19d9dae6ec63ce436b92a2bc89c3f01d9b47558d9c9c7457dd3f132490810e`  
		Last Modified: Wed, 09 Sep 2026 04:16:23 GMT  
		Size: 2.5 MB (2462884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45bb70bde33a2dd874543216f66e594ac20e028d3bdf44d9edaf1ef828531da7`  
		Last Modified: Wed, 09 Sep 2026 04:16:25 GMT  
		Size: 5.3 MB (5329011 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd0c4aa57bf0960ed702b23ad383de1bf7deda273af7a425742ee91844687c44`  
		Last Modified: Wed, 09 Sep 2026 04:16:26 GMT  
		Size: 5.5 MB (5483262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:086bb39e3cabe034412fe2b8a49a01e562ce1a90b223f83dcd1791635dc93b43`  
		Last Modified: Wed, 09 Sep 2026 04:16:25 GMT  
		Size: 5.3 MB (5330753 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ca1b3c19e5be758133285167fe94ccb524aea10479383cd875b6091659ba03e`  
		Last Modified: Wed, 09 Sep 2026 04:16:27 GMT  
		Size: 60.3 KB (60270 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:latest` - linux; s390x

```console
$ docker pull rabbitmq@sha256:2dd3d4c8cbdc5b5ff7f293c83c436bf093c2373743cbe81dd814f1ff1ce242dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.1 MB (108058495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:038cad0e6fbe4a8af5cae1f68600aeb80f68542050277500b4a6a04fce328e62`
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

### `rabbitmq:latest` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:396c226de814421dadb87ef27cc042c615f5265f62a2aae95b3cdf7068b7face
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18323281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d63157e7fdeaec5c92007a246b04ffc83ff7fb5551011258990839db143758a`

```dockerfile
```

-	Layers:
	-	`sha256:9eaf8017b484e7499af1a6fcb2105a49d83e45e89216ae5ed06b9bfb91b56843`  
		Last Modified: Tue, 01 Sep 2026 22:56:39 GMT  
		Size: 2.5 MB (2472614 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b4ef30ed9852fad85c47a6e0704d4a0cb1ae6da798e0d5b8f9e251d1b8c3c4c`  
		Last Modified: Tue, 01 Sep 2026 22:56:39 GMT  
		Size: 5.2 MB (5211073 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9fcffc3240e6ccc439e8be4c41666a77646ebf7783374c35486d37b08411653b`  
		Last Modified: Tue, 01 Sep 2026 22:56:39 GMT  
		Size: 5.4 MB (5366579 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b6aca0edb74a1303c1d8581dffcd177f573417b388c8119ed2646715cc1bd33`  
		Last Modified: Tue, 01 Sep 2026 22:56:39 GMT  
		Size: 5.2 MB (5212815 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb83192889c81b9e5908d07a0fefbb3c249ce1f414416bf6149a39015d15c052`  
		Last Modified: Tue, 01 Sep 2026 22:56:40 GMT  
		Size: 60.2 KB (60200 bytes)  
		MIME: application/vnd.in-toto+json
