## `rabbitmq:4-management`

```console
$ docker pull rabbitmq@sha256:9198ac7c95048263b52f75cb55ef9acdffa5c440279e75cb667e3959b980cf9c
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
$ docker pull rabbitmq@sha256:ea48b3625533b057ea8054d97406f0de67b6dff74fccd0c857f8bce9a7979561
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118327094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4951762458630d9bebdd6dc5e7000da00cdc991e0a694ccefe6082748cd6b1f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:12:29 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Mon, 27 Jul 2026 22:12:29 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Mon, 27 Jul 2026 22:12:29 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Mon, 27 Jul 2026 22:12:29 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Mon, 27 Jul 2026 22:12:29 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:12:29 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Mon, 27 Jul 2026 22:12:31 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Mon, 27 Jul 2026 22:12:31 GMT
ENV RABBITMQ_VERSION=4.3.4
# Mon, 27 Jul 2026 22:12:31 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 27 Jul 2026 22:12:31 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 27 Jul 2026 22:12:31 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:12:48 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Mon, 27 Jul 2026 22:12:49 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Mon, 27 Jul 2026 22:12:49 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Mon, 27 Jul 2026 22:12:49 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 27 Jul 2026 22:12:49 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 27 Jul 2026 22:12:49 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 27 Jul 2026 22:12:49 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Mon, 27 Jul 2026 22:12:49 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Mon, 27 Jul 2026 22:12:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:12:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:12:49 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Mon, 27 Jul 2026 22:12:49 GMT
CMD ["rabbitmq-server"]
# Mon, 27 Jul 2026 23:10:11 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Mon, 27 Jul 2026 23:10:20 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-x86_64-unknown-linux-gnu'; digest='32d5914481725a6707d164e42298a70906a289fdc5afeca92066106d32a68aee' ;; 		'arm64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-aarch64-unknown-linux-gnu'; digest='bffb785e3b5f19169a872192aae066b5c8266b3eaf616e6644d2130ee4e972f7' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum --strict --check -; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Mon, 27 Jul 2026 23:10:20 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1409e5e22279c5c24d78dc9e5a5c16063b333c91916a3ced2dec3e8f612355d8`  
		Last Modified: Mon, 27 Jul 2026 22:13:12 GMT  
		Size: 46.3 MB (46316615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51e1a6f82da63a03386bbf9467112e9695a921a22f98035e788323bb2666269b`  
		Last Modified: Mon, 27 Jul 2026 22:13:10 GMT  
		Size: 9.0 MB (8994461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0844d8fb06fde4c9e911acc3a82ae17d3260e1fc910a49a28dcc787fb36f432f`  
		Last Modified: Mon, 27 Jul 2026 22:13:10 GMT  
		Size: 9.7 KB (9661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a721ab8f1b0f850a47e30f7242842d8ad37b445255fccbaf165ad75bcadadc9`  
		Last Modified: Mon, 27 Jul 2026 22:13:12 GMT  
		Size: 28.7 MB (28671099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b791822b84a44371827c252545b79ee702b543c2437af5ccf680f949a0480cf`  
		Last Modified: Mon, 27 Jul 2026 22:13:11 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57347feb7ac81f5aafc6f26f4b0183caff023041bda80e15740fab79bf14c2ef`  
		Last Modified: Mon, 27 Jul 2026 22:13:12 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77842b7821f9db67b3fe9f1743f1aaa0485820422ff4f77e42fa5e1bacd48805`  
		Last Modified: Mon, 27 Jul 2026 22:13:13 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53d9bc1621a1efacdabf49f1ed7f6c9fa4aa65ced6add813f4bd018ff20450ca`  
		Last Modified: Mon, 27 Jul 2026 22:13:13 GMT  
		Size: 832.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e0101db7aea8d6ae31f096d2b8f6da26c2b394b42e95a7b906c24503f293183`  
		Last Modified: Mon, 27 Jul 2026 23:10:28 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44d9a70bd1096471c2cace6e1c3384039aab53a58dbc629a66c3469dca6f537e`  
		Last Modified: Mon, 27 Jul 2026 23:10:28 GMT  
		Size: 4.6 MB (4597635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:33b1244dc876be7d3021a21cbfa1559d22425205d991c7856650ea19b93e143a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2486813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7803e0cabf4c18e1ed25af428dc8b4d5074c09719c699f96dacc1b9fc243126`

```dockerfile
```

-	Layers:
	-	`sha256:41dfd17ab44465cedb8fc448608934eecd2360fb42881d14a7d5e2c39495eb9f`  
		Last Modified: Mon, 27 Jul 2026 23:10:28 GMT  
		Size: 2.5 MB (2470544 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d90ab408ea09f999998e5fdcbbb236c10d88463eba9371390d3696fce4559f6f`  
		Last Modified: Mon, 27 Jul 2026 23:10:28 GMT  
		Size: 16.3 KB (16269 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:8ed304434200603b5837083d9ac695916ff96124c0d4964f370249f1446bc48e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96108533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a63c8aef2281ff2c00983d194dccf89d795fe8dfad2ec1b710a5a66988d2edbe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:08 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:08 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:08 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:13 GMT
ADD file:6ca8a72a8c816a3a81eb9f721933f3d02719fa75abc81d4a66486cd6efa33e3f in / 
# Mon, 22 Jun 2026 21:25:13 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:10:40 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Mon, 27 Jul 2026 22:10:40 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Mon, 27 Jul 2026 22:10:40 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Mon, 27 Jul 2026 22:10:40 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Mon, 27 Jul 2026 22:10:40 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:10:40 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Mon, 27 Jul 2026 22:10:42 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Mon, 27 Jul 2026 22:10:42 GMT
ENV RABBITMQ_VERSION=4.3.4
# Mon, 27 Jul 2026 22:10:42 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 27 Jul 2026 22:10:42 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 27 Jul 2026 22:10:42 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:11:02 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Mon, 27 Jul 2026 22:11:03 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Mon, 27 Jul 2026 22:11:03 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Mon, 27 Jul 2026 22:11:03 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 27 Jul 2026 22:11:03 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 27 Jul 2026 22:11:03 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 27 Jul 2026 22:11:03 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Mon, 27 Jul 2026 22:11:03 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Mon, 27 Jul 2026 22:11:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:11:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:11:03 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Mon, 27 Jul 2026 22:11:03 GMT
CMD ["rabbitmq-server"]
# Mon, 27 Jul 2026 23:09:57 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Mon, 27 Jul 2026 23:09:57 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-x86_64-unknown-linux-gnu'; digest='32d5914481725a6707d164e42298a70906a289fdc5afeca92066106d32a68aee' ;; 		'arm64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-aarch64-unknown-linux-gnu'; digest='bffb785e3b5f19169a872192aae066b5c8266b3eaf616e6644d2130ee4e972f7' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum --strict --check -; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Mon, 27 Jul 2026 23:09:57 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:67abbeb92f85087f969de6f6864f7b5cc172fa05098a68931182f6e5b4d2d8c6`  
		Last Modified: Tue, 23 Jun 2026 01:34:19 GMT  
		Size: 26.9 MB (26862593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:867ec689fd237168a46d34dd29852fe8e78451e8e93c15df56397c75e1728711`  
		Last Modified: Mon, 27 Jul 2026 22:11:28 GMT  
		Size: 33.3 MB (33345830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28ddefe4421834f249a04b13e576be38735ada237a2c18287cbb0d6364308b8a`  
		Last Modified: Mon, 27 Jul 2026 22:11:27 GMT  
		Size: 7.3 MB (7314976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38bced7dba2f637969859208d88fc35330b6aa769dacd6a9b70267dcf255398e`  
		Last Modified: Mon, 27 Jul 2026 22:11:26 GMT  
		Size: 9.8 KB (9750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca0ee2a1ac232b3448aa6061e6b0fb1ac3d60af026534fbb4bf8741d70d1bf59`  
		Last Modified: Mon, 27 Jul 2026 22:11:28 GMT  
		Size: 28.6 MB (28573330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ce0303a876691535a243c10c8deab640317f59dd6ecb5c37441bad0b073855`  
		Last Modified: Mon, 27 Jul 2026 22:11:28 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a18d822e6a90ea7f1ab1f0eb5db0966e779a8f102ae3422559b14a6b1030d1c`  
		Last Modified: Mon, 27 Jul 2026 22:11:28 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d4863253c34fdf5781860df54ea818724f692ab7198efa351b8721841e978b`  
		Last Modified: Mon, 27 Jul 2026 22:11:29 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b33a0d4edd239e96161b545776641c0c677ad9374d3f86c2607a1f8c262080d`  
		Last Modified: Mon, 27 Jul 2026 22:11:30 GMT  
		Size: 832.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab4df36f41d1b09c40bda9c8a6835563fad300ace98c108aeb491e305140ca87`  
		Last Modified: Mon, 27 Jul 2026 23:10:04 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:c2f0a1e93833244170d763c83d9acca29ee447d367e0f810234ce582423cd951
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2487699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec1114a7ac64a678e0731de017456e238673d32c23acfb8648e1b5c0c4d74de4`

```dockerfile
```

-	Layers:
	-	`sha256:6bd6cdd368aa1db779fb9e2e329f4c57bfd43a37194b94d908fd527b19af9071`  
		Last Modified: Mon, 27 Jul 2026 23:10:04 GMT  
		Size: 2.5 MB (2471342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:641b8d045bd2e954c890e21247b52fa3ca7e5afba19b159f0d54472b5d053614`  
		Last Modified: Mon, 27 Jul 2026 23:10:04 GMT  
		Size: 16.4 KB (16357 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:5e4a6926007217472a64e66983d78f69eeb6a25c1e4ea34b499b21178981d077
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (115979028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:649753cb22473cf9da640e48a86558959ed01b947f30fd0f7e11a8f6befbada5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:12:49 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Mon, 27 Jul 2026 22:12:49 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Mon, 27 Jul 2026 22:12:49 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Mon, 27 Jul 2026 22:12:49 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Mon, 27 Jul 2026 22:12:49 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:12:49 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Mon, 27 Jul 2026 22:12:50 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Mon, 27 Jul 2026 22:12:50 GMT
ENV RABBITMQ_VERSION=4.3.4
# Mon, 27 Jul 2026 22:12:50 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 27 Jul 2026 22:12:50 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 27 Jul 2026 22:12:50 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:13:10 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Mon, 27 Jul 2026 22:13:11 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Mon, 27 Jul 2026 22:13:11 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Mon, 27 Jul 2026 22:13:11 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 27 Jul 2026 22:13:11 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 27 Jul 2026 22:13:11 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 27 Jul 2026 22:13:11 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Mon, 27 Jul 2026 22:13:11 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Mon, 27 Jul 2026 22:13:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:13:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:13:11 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Mon, 27 Jul 2026 22:13:11 GMT
CMD ["rabbitmq-server"]
# Mon, 27 Jul 2026 23:10:10 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Mon, 27 Jul 2026 23:10:22 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-x86_64-unknown-linux-gnu'; digest='32d5914481725a6707d164e42298a70906a289fdc5afeca92066106d32a68aee' ;; 		'arm64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-aarch64-unknown-linux-gnu'; digest='bffb785e3b5f19169a872192aae066b5c8266b3eaf616e6644d2130ee4e972f7' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum --strict --check -; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Mon, 27 Jul 2026 23:10:22 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370f7c239632d11007281178161b1efd33f075e09ee63e4f85ece9642edbd089`  
		Last Modified: Mon, 27 Jul 2026 22:13:38 GMT  
		Size: 44.4 MB (44400160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89f9c910cd832215d64490ec05e7c37133b3d2f5090cb4a00ec8c5728b8eb37`  
		Last Modified: Mon, 27 Jul 2026 22:13:36 GMT  
		Size: 9.7 MB (9722833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fb44aadb0b3019ea075bcd3ed1f868eb3d57499b13ad53249a039b8cc1f2489`  
		Last Modified: Mon, 27 Jul 2026 22:13:35 GMT  
		Size: 9.7 KB (9663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1d5014dd4d5605de8db20b676fb8f675d5c8d70d549b99e4c043ccdb0610a6a`  
		Last Modified: Mon, 27 Jul 2026 22:13:37 GMT  
		Size: 28.6 MB (28581007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f1b21e9e6a41820c222b804692dff40a5a2f30351c2193003e9e1fba3a41a60`  
		Last Modified: Mon, 27 Jul 2026 22:13:37 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94d2e83f4d01d162b4b3179af41f276ada02be0acaf08eaa9c9fb0f109876cfc`  
		Last Modified: Mon, 27 Jul 2026 22:13:38 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ba73d540a8b31b6f940745085f496865d56d6f8d3e47a61efd1690c326e841`  
		Last Modified: Mon, 27 Jul 2026 22:13:38 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21374e84d3bfd80cdf67e342f5c90c306840f354a80a4b9f372816b381078f0f`  
		Last Modified: Mon, 27 Jul 2026 22:13:39 GMT  
		Size: 831.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a2654451e749027c9af8ee9b26332f7da7b17019530bf6b3c75e2bf49866748`  
		Last Modified: Mon, 27 Jul 2026 23:10:30 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e91d945d5208e1f20f204b1023d9b90aeb8ffb7050d20fd1d4d267b173a9d4ae`  
		Last Modified: Mon, 27 Jul 2026 23:10:31 GMT  
		Size: 4.4 MB (4379162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:b4371e2fdca6cda4353825720d4df8a18301117312cf25a0ba3cb9bab95264ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2487992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:779f9e8d544d39cac8612ac2feb58e503af26394b0cac5f07f100a97aaa81257`

```dockerfile
```

-	Layers:
	-	`sha256:590c400361c801060148e34748dffce548f973cb129fccab88d9d218b4300911`  
		Last Modified: Mon, 27 Jul 2026 23:10:30 GMT  
		Size: 2.5 MB (2471604 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a2ad414a2a1fa1fe343a91137d3067cdfb53111a7c550c1181304f16811ef0b`  
		Last Modified: Mon, 27 Jul 2026 23:10:30 GMT  
		Size: 16.4 KB (16388 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:77cfd8d71ab3c1583219397d5b580cf7b6b10caed3de644b4b74c6a2a56a5d86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.1 MB (112106528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebdfd8dab4b7ea67995efc118b439a5ebd18b1d48ba08aa467b4a59c185a9f4c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:57 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:00 GMT
ADD file:80a608ac5245946ff88c571e9d9b1259a58a3a309e569fbe7ed52f07c2ed3b39 in / 
# Mon, 22 Jun 2026 21:25:01 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:19:54 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Mon, 27 Jul 2026 22:19:54 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Mon, 27 Jul 2026 22:19:54 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Mon, 27 Jul 2026 22:19:54 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Mon, 27 Jul 2026 22:19:54 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:19:54 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Mon, 27 Jul 2026 22:19:56 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Mon, 27 Jul 2026 22:19:56 GMT
ENV RABBITMQ_VERSION=4.3.4
# Mon, 27 Jul 2026 22:19:56 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 27 Jul 2026 22:19:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 27 Jul 2026 22:19:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:20:31 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Mon, 27 Jul 2026 22:20:32 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Mon, 27 Jul 2026 22:20:33 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Mon, 27 Jul 2026 22:20:33 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 27 Jul 2026 22:20:33 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 27 Jul 2026 22:20:33 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 27 Jul 2026 22:20:33 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Mon, 27 Jul 2026 22:20:35 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Mon, 27 Jul 2026 22:20:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:20:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:20:36 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Mon, 27 Jul 2026 22:20:36 GMT
CMD ["rabbitmq-server"]
# Mon, 27 Jul 2026 23:09:00 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Mon, 27 Jul 2026 23:09:00 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-x86_64-unknown-linux-gnu'; digest='32d5914481725a6707d164e42298a70906a289fdc5afeca92066106d32a68aee' ;; 		'arm64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-aarch64-unknown-linux-gnu'; digest='bffb785e3b5f19169a872192aae066b5c8266b3eaf616e6644d2130ee4e972f7' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum --strict --check -; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Mon, 27 Jul 2026 23:09:00 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d70429f14cb9cc460cddba96d7892de842c1ba8a5fc7dfc8dc721640f49be10`  
		Last Modified: Mon, 27 Jul 2026 22:21:32 GMT  
		Size: 39.5 MB (39547366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f0ead378d2639186b0121dca8f7e69d01cde52e19f7e0437246f31d329f2485`  
		Last Modified: Mon, 27 Jul 2026 22:21:31 GMT  
		Size: 9.6 MB (9606009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65d848bc9a39890f866820609206aeb6c332acf5a2d05cd4da0d984294fa6bf8`  
		Last Modified: Mon, 27 Jul 2026 22:21:30 GMT  
		Size: 9.6 KB (9618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f52a893b4bfa50b431aef1f65216a0371dc446bf58dffa23b526cf58eeb0395d`  
		Last Modified: Mon, 27 Jul 2026 22:21:32 GMT  
		Size: 28.6 MB (28628004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed30c26a18e56aedc515701b8f5bd6ee450f54b09f83cb1db32c54ecb67073b`  
		Last Modified: Mon, 27 Jul 2026 22:21:31 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d81e814379960e756cdfdf0655000f3f819aed32406ef31f385224e2d1421d9`  
		Last Modified: Mon, 27 Jul 2026 22:21:32 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6af9f8eef72a8468968d27b5c4a3c302615c49fc0be8bb09e0d80203511014f9`  
		Last Modified: Mon, 27 Jul 2026 22:21:33 GMT  
		Size: 620.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63c881092bc30ac0f4b8cc67c68ba7f50ef6a00e1ccdbc30f5b2a8951b2d7b30`  
		Last Modified: Mon, 27 Jul 2026 22:21:33 GMT  
		Size: 831.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b7d858bf91acc37a646c1f2c36b7f28e310667426b751a72d71312519cc4ffe`  
		Last Modified: Mon, 27 Jul 2026 23:09:30 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:361ad678d0dc98b6cc704cb0a2ffc49a7df14ddb229d2ca21760a9d5575371fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2491307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50900d5df5d53f32940bb402e830655c40b08860437e627355baac5e07010331`

```dockerfile
```

-	Layers:
	-	`sha256:561ffecbafcc5b974c12d4549bd2d82d09d3b0fb617a00ae2ef001ffeecfbb23`  
		Last Modified: Mon, 27 Jul 2026 23:09:30 GMT  
		Size: 2.5 MB (2474997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:924a0d5b8223fb8b7ce56499cef02d97fae9d4fa452c43ac7087a98b42049948`  
		Last Modified: Mon, 27 Jul 2026 23:09:30 GMT  
		Size: 16.3 KB (16310 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management` - linux; riscv64

```console
$ docker pull rabbitmq@sha256:c2cc4fe0a8ce76c7408d8870f4e316fbe36e4a2347ac3ca26aa20f309eb65cbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.6 MB (105600599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:305527f2bebe4c27b6ce1769cc9d3b12e59e7bb1de9971175fe9d2955bc1808f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 23 Jun 2026 01:25:37 GMT
ARG RELEASE
# Tue, 23 Jun 2026 01:25:37 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 23 Jun 2026 01:25:38 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 23 Jun 2026 01:26:18 GMT
ADD file:7170cf1f50457fa19167130bbb168bf8fb601a52574716867b67758ab43d5dbb in / 
# Tue, 23 Jun 2026 01:26:22 GMT
CMD ["/bin/bash"]
# Tue, 07 Jul 2026 06:39:42 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 07 Jul 2026 06:39:42 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 07 Jul 2026 06:39:42 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 07 Jul 2026 06:39:43 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 07 Jul 2026 06:39:43 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 06:39:43 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 07 Jul 2026 06:39:47 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Tue, 07 Jul 2026 06:39:47 GMT
ENV RABBITMQ_VERSION=4.3.4
# Tue, 07 Jul 2026 06:39:47 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 07 Jul 2026 06:39:47 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 07 Jul 2026 06:39:47 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 09:58:47 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Fri, 24 Jul 2026 09:58:56 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Fri, 24 Jul 2026 09:58:57 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Fri, 24 Jul 2026 09:58:57 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 24 Jul 2026 09:58:57 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 24 Jul 2026 09:58:57 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Fri, 24 Jul 2026 09:58:57 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Fri, 24 Jul 2026 09:58:57 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Fri, 24 Jul 2026 09:58:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 24 Jul 2026 09:58:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 24 Jul 2026 09:58:57 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Fri, 24 Jul 2026 09:58:57 GMT
CMD ["rabbitmq-server"]
# Fri, 24 Jul 2026 12:47:36 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Fri, 24 Jul 2026 12:47:37 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-x86_64-unknown-linux-gnu'; digest='32d5914481725a6707d164e42298a70906a289fdc5afeca92066106d32a68aee' ;; 		'arm64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-aarch64-unknown-linux-gnu'; digest='bffb785e3b5f19169a872192aae066b5c8266b3eaf616e6644d2130ee4e972f7' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum --strict --check -; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Fri, 24 Jul 2026 12:47:37 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:d36d9a4ee5b21337a0038d06f00582b458b412ffa7aa3be4086c8692dfab4687`  
		Last Modified: Tue, 23 Jun 2026 01:35:00 GMT  
		Size: 31.0 MB (30971606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a32194baf9eb34f7961233c291a5aac8a0ce2fb879b3b11c97718996b5f15faa`  
		Last Modified: Tue, 07 Jul 2026 06:48:32 GMT  
		Size: 35.2 MB (35193526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7a90c2e755feafc9c84e48f0ebdd1fe3c9db4c3c9dc08838bcc5151f93071e3`  
		Last Modified: Tue, 07 Jul 2026 06:48:26 GMT  
		Size: 10.8 MB (10842309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9ac5e6977c4a7fa85c0d67ca54e2205a5b43b4c0d47e8cbdbf0f839f9eac872`  
		Last Modified: Tue, 07 Jul 2026 06:48:20 GMT  
		Size: 9.7 KB (9694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:108edd7f39e597037b16454f22abbb3e309410db4ee9bfcd9bc026eb523973cb`  
		Last Modified: Fri, 24 Jul 2026 10:28:46 GMT  
		Size: 28.6 MB (28581413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3341f7a3e3ad033a24398db752e9d220172152dd210080a17275d999d598cfcc`  
		Last Modified: Fri, 24 Jul 2026 10:28:40 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95b7f4a9165014036b71a36fed6862a6593801dc663e91d1054206163b9fc953`  
		Last Modified: Fri, 24 Jul 2026 10:28:41 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2656aefd6979e764f50f4a95dd766aee04a2cdf8a1112b8e7dc01b582c98b357`  
		Last Modified: Fri, 24 Jul 2026 10:28:41 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da86cc255b316bf4060f69e86ae27181f25c1daed722ed9c228b056b24c057a`  
		Last Modified: Fri, 24 Jul 2026 10:28:43 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:290299b88874c2d6d123ce40c6f85304ff75f555a763e73babdc3521110a2a8c`  
		Last Modified: Fri, 24 Jul 2026 12:48:54 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:cf9faaf4db9e65cbd798f7b143d1ada671b9d772dc2c044f7c016b4eb14f3cc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2479221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86c4a4f438b127ef2e0255ecc4f2f9d8df3f7f03bb3c81eca003491a125da0f1`

```dockerfile
```

-	Layers:
	-	`sha256:cfb36b148052c40aa66b7992033b28ca3a41b392b50207c83da4fd57f58c53d5`  
		Last Modified: Fri, 24 Jul 2026 12:48:55 GMT  
		Size: 2.5 MB (2462909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b37b9a85e7ab5ede3482489cd0ff97b0cc710c3f1cb04dcb98182d4ea3b027b5`  
		Last Modified: Fri, 24 Jul 2026 12:48:54 GMT  
		Size: 16.3 KB (16312 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:bbf25bd78ebe50293cff2c8dd923b429d5da240bafd6019149c20994657ca06d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.9 MB (105869171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1cc24e8bbda0c532e95e393b97610a0acf09636daf93b8183aab6e3552a9c26`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:04 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:04 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:05 GMT
ADD file:2e6c463b4adb9218af4efdc52eb0c653c0b81b2e15486825eeeee9fbbf21b4c7 in / 
# Mon, 22 Jun 2026 21:24:05 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:11:16 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Mon, 27 Jul 2026 22:11:16 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Mon, 27 Jul 2026 22:11:16 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Mon, 27 Jul 2026 22:11:16 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Mon, 27 Jul 2026 22:11:16 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:11:16 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Mon, 27 Jul 2026 22:11:18 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Mon, 27 Jul 2026 22:11:18 GMT
ENV RABBITMQ_VERSION=4.3.4
# Mon, 27 Jul 2026 22:11:18 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 27 Jul 2026 22:11:18 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 27 Jul 2026 22:11:18 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:11:33 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Mon, 27 Jul 2026 22:11:34 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Mon, 27 Jul 2026 22:11:34 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Mon, 27 Jul 2026 22:11:34 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 27 Jul 2026 22:11:34 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 27 Jul 2026 22:11:34 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 27 Jul 2026 22:11:34 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Mon, 27 Jul 2026 22:11:34 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Mon, 27 Jul 2026 22:11:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:11:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:11:34 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Mon, 27 Jul 2026 22:11:34 GMT
CMD ["rabbitmq-server"]
# Mon, 27 Jul 2026 23:08:48 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Mon, 27 Jul 2026 23:08:48 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-x86_64-unknown-linux-gnu'; digest='32d5914481725a6707d164e42298a70906a289fdc5afeca92066106d32a68aee' ;; 		'arm64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.32.0/rabbitmqadmin-2.32.0-aarch64-unknown-linux-gnu'; digest='bffb785e3b5f19169a872192aae066b5c8266b3eaf616e6644d2130ee4e972f7' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum --strict --check -; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Mon, 27 Jul 2026 23:08:48 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:017bf1549f7106f258688738600d68c2eebf2c29476ebfe929e2762f93f82609`  
		Last Modified: Tue, 23 Jun 2026 01:35:07 GMT  
		Size: 29.9 MB (29941314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:455034e3cce9b3a9024865e920a3ef27e8b2c62d5001994b9479a5205de6130b`  
		Last Modified: Mon, 27 Jul 2026 22:12:13 GMT  
		Size: 38.6 MB (38639986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:671936d0a30d1c638e0dbaf7ac9b1c276dd2499cebe2720d5acf65bbff51d028`  
		Last Modified: Mon, 27 Jul 2026 22:12:12 GMT  
		Size: 8.6 MB (8623479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c44171748e77c8ea326f73abb2580cb5966825f69dc1a1c9e4be91bec7b33a48`  
		Last Modified: Mon, 27 Jul 2026 22:12:10 GMT  
		Size: 9.8 KB (9827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7884a1110054ec8c8565c3900b24e35bc31cc742401abcb2cfed356665c4e2`  
		Last Modified: Mon, 27 Jul 2026 22:12:12 GMT  
		Size: 28.7 MB (28652510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dd474066b5ae01bb83db737348fc75016c9e5b93c769772747c780827b8cf51`  
		Last Modified: Mon, 27 Jul 2026 22:12:12 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a69d5e5c5dfaab8fbc253f83c39268622068460ce82fa6d45d3a9aa937d0cc`  
		Last Modified: Mon, 27 Jul 2026 22:11:50 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b39a93ad4dba60f4a794da59359cc9e1f43e0a287a5b959226e68a3bba0206f`  
		Last Modified: Mon, 27 Jul 2026 22:12:13 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92907f6f501a7aa47f83b05e54bbe1c6d45cc2fd21e8fb07c46899df99ca85bc`  
		Last Modified: Mon, 27 Jul 2026 22:12:13 GMT  
		Size: 831.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00241e1eb9a4d242319d5fb62099f2d315fde19350440de3f961543c3ff8911e`  
		Last Modified: Mon, 27 Jul 2026 23:08:59 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:e352d9678266680788313e5726030609ba25b2aa9f53ab39b6da991e1e05df24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2488917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ec59c0e51d9344cebfca396eaeb9e95d3535ef4e68fca357eaa6e4d0eacca13`

```dockerfile
```

-	Layers:
	-	`sha256:447c76361576b4d3fe2b7098830164e34a5036e46790608f468c56eb56c453dd`  
		Last Modified: Mon, 27 Jul 2026 23:08:59 GMT  
		Size: 2.5 MB (2472653 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28713f1e04a1738afb2824f4029c8eb3689172dac1026f987b1224fc0cefe7e4`  
		Last Modified: Mon, 27 Jul 2026 23:08:59 GMT  
		Size: 16.3 KB (16264 bytes)  
		MIME: application/vnd.in-toto+json
