## `rabbitmq:4-management`

```console
$ docker pull rabbitmq@sha256:b575d00b4e309e1eacc68e772298af74fe0f5672fac5b46ba698ffef379f68f7
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
$ docker pull rabbitmq@sha256:508ce93e08d981c6377b84dbc99ba1278e8c8ffd8803178a0ab56d679935571b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (120961891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00a6596d6474eabadf63f46849465474c821dc25f449a9f1a76060acd3541cc7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 20:30:17 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Wed, 14 Oct 2026 20:30:17 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Wed, 14 Oct 2026 20:30:17 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Wed, 14 Oct 2026 20:30:17 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Wed, 14 Oct 2026 20:30:17 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 20:30:17 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Wed, 14 Oct 2026 20:30:18 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Wed, 14 Oct 2026 20:30:18 GMT
ENV RABBITMQ_VERSION=4.3.6
# Wed, 14 Oct 2026 20:30:18 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 14 Oct 2026 20:30:18 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 14 Oct 2026 20:30:18 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 20:30:39 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Wed, 14 Oct 2026 20:30:40 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Wed, 14 Oct 2026 20:30:40 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Wed, 14 Oct 2026 20:30:40 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 14 Oct 2026 20:30:40 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 14 Oct 2026 20:30:40 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 14 Oct 2026 20:30:40 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Wed, 14 Oct 2026 20:30:40 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Wed, 14 Oct 2026 20:30:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 14 Oct 2026 20:30:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Oct 2026 20:30:40 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Wed, 14 Oct 2026 20:30:40 GMT
CMD ["rabbitmq-server"]
# Wed, 14 Oct 2026 21:10:56 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Wed, 14 Oct 2026 21:11:07 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-gnu'; digest='31887e0dc96e7654a9dfa007182af1281ee2fd4045de011ca1af72b0b962df51' ;; 		'arm64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-gnu'; digest='cd97862b5a19688779717bbd920bbf299a960ad6cafcd9121bf764c01e4c66eb' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum --strict --check -; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Wed, 14 Oct 2026 21:11:07 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:691d8e8162b012e449f8f9bda779ee546d428952db3a1464b93c34082d9074e7`  
		Last Modified: Wed, 14 Oct 2026 20:31:06 GMT  
		Size: 46.4 MB (46367257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7029faa71e8160c4f09ba248a644257a056be0462fd9320a65d963f04254d657`  
		Last Modified: Wed, 14 Oct 2026 20:31:04 GMT  
		Size: 9.0 MB (9018236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc3a4e72e72cce558f6761f38f4d9b3c37dc1fda01a8667b0410abd97672bbc8`  
		Last Modified: Wed, 14 Oct 2026 20:31:04 GMT  
		Size: 9.7 KB (9705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c368ade17900e3860ac91cb09bc479564a0956963f6408b886c1b3078f5ac7e4`  
		Last Modified: Wed, 14 Oct 2026 20:31:05 GMT  
		Size: 31.2 MB (31219720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b814f67778282e7dced248767fd2dfb752f12271d4983a9c313ef1252b4bef7c`  
		Last Modified: Wed, 14 Oct 2026 20:31:05 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b52080aa09f8bb180db290151e89a43ce7f4dd3f3811749a8385c0ef580ce55c`  
		Last Modified: Wed, 14 Oct 2026 20:31:06 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:244245119c8db653529c3faa0660b7d385470732d74b212622013e7c0f7415f3`  
		Last Modified: Wed, 14 Oct 2026 20:31:06 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7338ba8327558e23a763d658fb50c2ae4045e3006b4093cc7b6bab8465696d39`  
		Last Modified: Wed, 14 Oct 2026 20:31:07 GMT  
		Size: 832.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd92bc26f0c928749ab727349ec997d913245bec769eb3d65200d8531c55d51a`  
		Last Modified: Wed, 14 Oct 2026 21:11:16 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3336f4282cb3e7c86b227f5433d189fd5d715ac4acb4c42ed0b44fb10cd95f7`  
		Last Modified: Wed, 14 Oct 2026 21:11:16 GMT  
		Size: 4.6 MB (4580528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:09e532b7a3eb2c301d32b7f21cdf62e33dad7de78ff1bfcc19611857eaaf02f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2486862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3d7d639883fbbad565073685b4ede96b5c39c4fc3d949fa4c9f5e97cc85bfba`

```dockerfile
```

-	Layers:
	-	`sha256:51799512ac48fa7d368b89e70a0fc4562838b07518400503cad980d3f965b5f0`  
		Last Modified: Wed, 14 Oct 2026 21:11:16 GMT  
		Size: 2.5 MB (2470593 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ef3c125ad87430a7be5178d4048efc6201f96923aaa40071ee01f57acc76b42`  
		Last Modified: Wed, 14 Oct 2026 21:11:15 GMT  
		Size: 16.3 KB (16269 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:c2923b175e85096e58e30c504fb0f2b851ca4ac265cc47293ab0b24a24e8b86e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.1 MB (98137182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b678c17fafb33667a0ae046da5ac1665d2b262dd74a91d667aa3b52ffeda608`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:04 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:04 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:07 GMT
ADD file:6a6fc23d8622292f593d77713efad1a8007c6c40500c31d016c65acd4c58e812 in / 
# Fri, 18 Sep 2026 21:23:07 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 20:32:43 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Wed, 14 Oct 2026 20:32:43 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Wed, 14 Oct 2026 20:32:43 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Wed, 14 Oct 2026 20:32:43 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Wed, 14 Oct 2026 20:32:43 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 20:32:43 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Wed, 14 Oct 2026 20:32:45 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Wed, 14 Oct 2026 20:32:45 GMT
ENV RABBITMQ_VERSION=4.3.6
# Wed, 14 Oct 2026 20:32:45 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 14 Oct 2026 20:32:45 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 14 Oct 2026 20:32:45 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 20:33:07 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Wed, 14 Oct 2026 20:33:08 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Wed, 14 Oct 2026 20:33:08 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Wed, 14 Oct 2026 20:33:08 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 14 Oct 2026 20:33:08 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 14 Oct 2026 20:33:08 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 14 Oct 2026 20:33:08 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Wed, 14 Oct 2026 20:33:08 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Wed, 14 Oct 2026 20:33:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 14 Oct 2026 20:33:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Oct 2026 20:33:08 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Wed, 14 Oct 2026 20:33:08 GMT
CMD ["rabbitmq-server"]
# Wed, 14 Oct 2026 21:11:09 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Wed, 14 Oct 2026 21:11:09 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-gnu'; digest='31887e0dc96e7654a9dfa007182af1281ee2fd4045de011ca1af72b0b962df51' ;; 		'arm64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-gnu'; digest='cd97862b5a19688779717bbd920bbf299a960ad6cafcd9121bf764c01e4c66eb' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum --strict --check -; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Wed, 14 Oct 2026 21:11:09 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:07637771fb245c4f2be7dab6c9c8a012b4b667b827aa566885f001a405a147d5`  
		Last Modified: Fri, 18 Sep 2026 22:30:04 GMT  
		Size: 26.9 MB (26895617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6bfe086e63cb71d113c585fbd43e8eb2034bd92ba1825cba9bd82cf4d7d2efa`  
		Last Modified: Wed, 14 Oct 2026 20:33:32 GMT  
		Size: 33.4 MB (33394584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a5d44faeb0199c46d8df2f9432f4355ed0de83cd315544cc10a124571cb2a64`  
		Last Modified: Wed, 14 Oct 2026 20:33:31 GMT  
		Size: 7.3 MB (7329357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae7d6e202a5fd65839b74c4ff00e7a8553f0bdd7b80296392d326cd10df3721d`  
		Last Modified: Wed, 14 Oct 2026 20:33:31 GMT  
		Size: 9.7 KB (9747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc23c7020ce62d827fb092a7e6c68b7590b2b17b457e89be15780ec4c82bfa26`  
		Last Modified: Wed, 14 Oct 2026 20:33:32 GMT  
		Size: 30.5 MB (30505825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b988318ab0647e2ec89a8c90e360c932dbe0db32604c436d115fbef221b2e145`  
		Last Modified: Wed, 14 Oct 2026 20:33:32 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e75b1781405b55fc75d2f3cfbcffc73c56b4449569f52bc3e7c829dcc2fab63b`  
		Last Modified: Wed, 14 Oct 2026 20:33:33 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa95f766bda7ee2668659e327f960554395193802ac3c3aad5c3a1d3e199f931`  
		Last Modified: Wed, 14 Oct 2026 20:33:33 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbd56ed17c5274d3bc3a5109c4baed8403d2f041d3c01181ad6d45d0d65e2e7e`  
		Last Modified: Wed, 14 Oct 2026 20:33:34 GMT  
		Size: 831.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60801c940e37bdb02e1a04be62d0898b4944a5bb1ea9c2e8e8467a06e32f7eb5`  
		Last Modified: Wed, 14 Oct 2026 21:11:16 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:cb20ee108e470daf53f1fdd8fbcb84cc71aa2d6bff6322718fa6032a723086ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2487747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c17bdd4c4ac33fbb3cef094145dec17e7bfcc478d3a320bbcd4dbbdc511c0420`

```dockerfile
```

-	Layers:
	-	`sha256:a0e1da81dc405eee73f757a2c34e0da3bce22ea2c1040b70247eadd50735362b`  
		Last Modified: Wed, 14 Oct 2026 21:11:16 GMT  
		Size: 2.5 MB (2471391 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:383fc4d89523fe6bfc903ee174a9c5294f1b942f580fe4e636019bcfb00ec830`  
		Last Modified: Wed, 14 Oct 2026 21:11:16 GMT  
		Size: 16.4 KB (16356 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:ab142d7664d978084bf9156d0cd80d5851510a420314001549ad6113b06070c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.5 MB (118524066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:627737a930f78b41cb0626043adf209b7b9b2baec4f6c49583348510240f2923`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 20:33:11 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Wed, 14 Oct 2026 20:33:11 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Wed, 14 Oct 2026 20:33:11 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Wed, 14 Oct 2026 20:33:11 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Wed, 14 Oct 2026 20:33:11 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 20:33:11 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Wed, 14 Oct 2026 20:33:13 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Wed, 14 Oct 2026 20:33:13 GMT
ENV RABBITMQ_VERSION=4.3.6
# Wed, 14 Oct 2026 20:33:13 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 14 Oct 2026 20:33:13 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 14 Oct 2026 20:33:13 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 20:33:34 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Wed, 14 Oct 2026 20:33:35 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Wed, 14 Oct 2026 20:33:35 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Wed, 14 Oct 2026 20:33:35 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 14 Oct 2026 20:33:35 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 14 Oct 2026 20:33:35 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 14 Oct 2026 20:33:35 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Wed, 14 Oct 2026 20:33:35 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Wed, 14 Oct 2026 20:33:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 14 Oct 2026 20:33:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Oct 2026 20:33:35 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Wed, 14 Oct 2026 20:33:35 GMT
CMD ["rabbitmq-server"]
# Wed, 14 Oct 2026 21:10:39 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Wed, 14 Oct 2026 21:10:52 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-gnu'; digest='31887e0dc96e7654a9dfa007182af1281ee2fd4045de011ca1af72b0b962df51' ;; 		'arm64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-gnu'; digest='cd97862b5a19688779717bbd920bbf299a960ad6cafcd9121bf764c01e4c66eb' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum --strict --check -; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Wed, 14 Oct 2026 21:10:52 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb4f4b8fd188888af91eae63a50adf81177bbe63d89a05f5db0461632fb91385`  
		Last Modified: Wed, 14 Oct 2026 20:34:01 GMT  
		Size: 44.5 MB (44461102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da3c81629ac2165821788b2b34688738fade2db0e1307d659223a17e63eec958`  
		Last Modified: Wed, 14 Oct 2026 20:34:00 GMT  
		Size: 9.7 MB (9742951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5fcf4144d0fc837f602e5f8ea7d17d2e6534c6e54e9285ed0d03c7b4a1a6fa8`  
		Last Modified: Wed, 14 Oct 2026 20:33:59 GMT  
		Size: 9.7 KB (9673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e36c16a50d7495127babe46e2ac5787e7bdd806b628977a7de030a70f95c5752`  
		Last Modified: Wed, 14 Oct 2026 20:34:01 GMT  
		Size: 31.0 MB (30987653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:327444e75af48e1e81173c9ff675834ec53a1cad9001dc6cbff3150a945c34dd`  
		Last Modified: Wed, 14 Oct 2026 20:34:01 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9579a51c8adaf5b9f895ad0edeac8c4043b3bd67ee721b917987fee12c7e7d8`  
		Last Modified: Wed, 14 Oct 2026 20:34:02 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e040932f8163d4b234dc10f848a72fbdd8ff585f0ee65ddf18cc5cb0c4f60b68`  
		Last Modified: Wed, 14 Oct 2026 20:34:02 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:522bf5151fedf07129a128a0abf22fd6e5e3634ae71dd9eb961c99ccf6e59259`  
		Last Modified: Wed, 14 Oct 2026 20:34:03 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc0f66e0536709dfb30edbbad185b5b9820ad28e6f921c67e6c411874f616d1a`  
		Last Modified: Wed, 14 Oct 2026 21:11:00 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f636212f52684bf5c408900be5fe5d1d66f64387bc879bb724f6d8f3f0c3ee7`  
		Last Modified: Wed, 14 Oct 2026 21:11:00 GMT  
		Size: 4.4 MB (4380581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:002c58da88c38f0a38c6d31a78cb39da9f3682d042842f4c6ffc65e927edb31c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2488041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dd71057664329f20aaf39181728cc676401219f96cbfacb3dd5c69474671e8e`

```dockerfile
```

-	Layers:
	-	`sha256:6eefc0b48df4de95612b93aa4bf54ce7d30bec703e4cf9571d78ba0da5f98399`  
		Last Modified: Wed, 14 Oct 2026 21:11:00 GMT  
		Size: 2.5 MB (2471653 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2872974f8182ad4cf9e7db35ea0c3723e47944402447d5f93cda2a088b7cf055`  
		Last Modified: Wed, 14 Oct 2026 21:11:00 GMT  
		Size: 16.4 KB (16388 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:dd3b03f9877188d31046f192866304ff75a643235fdfa9e8413f85f9f772b0da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115083996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5b73b1fbcc8c0359b62cd14a0b1396a86e39e49c8457cc424257d61c102bf25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:50 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:50 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:53 GMT
ADD file:65c699fd9797e3453b1d9214a3d29d981984167bbdef224150cdb4da169e2a77 in / 
# Fri, 18 Sep 2026 21:23:54 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 20:53:03 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Wed, 14 Oct 2026 20:53:03 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Wed, 14 Oct 2026 20:53:03 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Wed, 14 Oct 2026 20:53:06 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Wed, 14 Oct 2026 20:53:06 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 20:53:06 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Wed, 14 Oct 2026 20:53:10 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Wed, 14 Oct 2026 20:53:10 GMT
ENV RABBITMQ_VERSION=4.3.6
# Wed, 14 Oct 2026 20:53:10 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 14 Oct 2026 20:53:10 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 14 Oct 2026 20:53:10 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 20:53:56 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Wed, 14 Oct 2026 20:53:58 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Wed, 14 Oct 2026 20:53:59 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Wed, 14 Oct 2026 20:53:59 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 14 Oct 2026 20:53:59 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 14 Oct 2026 20:53:59 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 14 Oct 2026 20:53:59 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Wed, 14 Oct 2026 20:53:59 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Wed, 14 Oct 2026 20:53:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 14 Oct 2026 20:53:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Oct 2026 20:53:59 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Wed, 14 Oct 2026 20:53:59 GMT
CMD ["rabbitmq-server"]
# Wed, 14 Oct 2026 21:17:35 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Wed, 14 Oct 2026 21:17:39 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-gnu'; digest='31887e0dc96e7654a9dfa007182af1281ee2fd4045de011ca1af72b0b962df51' ;; 		'arm64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-gnu'; digest='cd97862b5a19688779717bbd920bbf299a960ad6cafcd9121bf764c01e4c66eb' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum --strict --check -; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Wed, 14 Oct 2026 21:17:39 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0775e926c044704444780d495a62956c535952405bfb2a39f2089ffb427b6a7`  
		Last Modified: Wed, 14 Oct 2026 20:55:01 GMT  
		Size: 39.6 MB (39606282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b14c37a56b589ee4d9073e3e5e8a4f07337312f3cd557a00bfd8637e66fe316`  
		Last Modified: Wed, 14 Oct 2026 20:54:59 GMT  
		Size: 9.6 MB (9631994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ad035d5f604c7924b50a66aa05dbb5af0eb1f0ffd4fe09137e7a5fb50d2ca80`  
		Last Modified: Wed, 14 Oct 2026 20:54:58 GMT  
		Size: 9.7 KB (9689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03126f7661f6f2f53c33f7ad4cb326b723ebd18107bc6fe368904f59064112df`  
		Last Modified: Wed, 14 Oct 2026 20:55:00 GMT  
		Size: 31.5 MB (31457466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b87ea28999f53782b623e2f30900190dd620c9180112413925ac08870538fdd1`  
		Last Modified: Wed, 14 Oct 2026 20:55:00 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d64246acd4d999eb2253af136da44812be7d077a25430524a7fabc83e3d0c581`  
		Last Modified: Wed, 14 Oct 2026 20:55:01 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e92a7f936e50656001606ac570491bc052bf7ba4a935c88099d727124009e353`  
		Last Modified: Wed, 14 Oct 2026 20:55:01 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb792ce0a2a599f12848dced1a321395d00fac4343ae38d1618ea73ee1a1362`  
		Last Modified: Wed, 14 Oct 2026 20:55:02 GMT  
		Size: 832.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a506159718c443211e7a213a8748fc8a9a0c1ed7f5c7ce5cb94cea9827289f7`  
		Last Modified: Wed, 14 Oct 2026 21:18:30 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:e14e3f0a738d135a3996ca58fb7c22498205be8eaeac0ea2ea612e092414770e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2491356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e7469f48bc79ad8e8483e84ab4dc10966b1b1365a8d20c23e61573805784587`

```dockerfile
```

-	Layers:
	-	`sha256:5b0ae6398a528c55d8f69b996628d6f1dbb3a0e11ac4e8fe2b0a002e2a296664`  
		Last Modified: Wed, 14 Oct 2026 21:18:30 GMT  
		Size: 2.5 MB (2475046 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4972b9a55e3c07d1ab23413cee6676dd84e7dae98a276533802388c00106207`  
		Last Modified: Wed, 14 Oct 2026 21:18:30 GMT  
		Size: 16.3 KB (16310 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management` - linux; riscv64

```console
$ docker pull rabbitmq@sha256:68107d893e815acedec91b37eae1a5d2da4204ec2d30df3523fb0108b6deeca1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.1 MB (108065141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fbde5d8d31f909ed62920cf5c5f73508e7fe080d661ab28b8e13f40427c7920`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 18 Sep 2026 22:20:53 GMT
ARG RELEASE
# Fri, 18 Sep 2026 22:20:54 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 22:20:54 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 22:21:41 GMT
ADD file:3a1916ce71708268db17b5ce7c5482fc86a6dce4c032062460878125231681f1 in / 
# Fri, 18 Sep 2026 22:21:45 GMT
CMD ["/bin/bash"]
# Thu, 15 Oct 2026 16:55:07 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Thu, 15 Oct 2026 16:55:07 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Thu, 15 Oct 2026 16:55:07 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Thu, 15 Oct 2026 16:55:08 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Thu, 15 Oct 2026 16:55:08 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Oct 2026 16:55:08 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 15 Oct 2026 16:55:11 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Thu, 15 Oct 2026 16:55:11 GMT
ENV RABBITMQ_VERSION=4.3.6
# Thu, 15 Oct 2026 16:55:11 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 15 Oct 2026 16:55:11 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 15 Oct 2026 16:55:11 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Oct 2026 16:57:29 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Thu, 15 Oct 2026 16:57:39 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Thu, 15 Oct 2026 16:57:39 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Thu, 15 Oct 2026 16:57:39 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 15 Oct 2026 16:57:39 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 15 Oct 2026 16:57:39 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 15 Oct 2026 16:57:39 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Thu, 15 Oct 2026 16:57:40 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Thu, 15 Oct 2026 16:57:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 15 Oct 2026 16:57:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Oct 2026 16:57:40 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Thu, 15 Oct 2026 16:57:40 GMT
CMD ["rabbitmq-server"]
# Fri, 16 Oct 2026 10:47:02 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Fri, 16 Oct 2026 10:47:02 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-gnu'; digest='31887e0dc96e7654a9dfa007182af1281ee2fd4045de011ca1af72b0b962df51' ;; 		'arm64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-gnu'; digest='cd97862b5a19688779717bbd920bbf299a960ad6cafcd9121bf764c01e4c66eb' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum --strict --check -; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Fri, 16 Oct 2026 10:47:02 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:f744af9afcd9f5fe3c98a1581df8785f8f3920cb60a4a7ba86497465ccf35413`  
		Last Modified: Fri, 18 Sep 2026 22:30:18 GMT  
		Size: 31.0 MB (31049980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4fbb9348d85a14a0465f56b06f7ee7b99f673f24d07d606ca9dcf7efcb1f5bc`  
		Last Modified: Thu, 15 Oct 2026 17:04:10 GMT  
		Size: 35.2 MB (35247061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d1fdca022ee7466864ff4dff2d632291f406a73f49d2dbcbb6544e424fcc977`  
		Last Modified: Thu, 15 Oct 2026 17:04:02 GMT  
		Size: 10.9 MB (10870558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a8d6a5ed5c18fc9206c4fb6f5dd2fb6e048313e81a0e73e46bce71b5e07aee0`  
		Last Modified: Thu, 15 Oct 2026 17:03:56 GMT  
		Size: 9.7 KB (9691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b92e1a0bbae1053afe51e6883d42f7b05d27db14d0e4e37577b97dbec1f7167`  
		Last Modified: Thu, 15 Oct 2026 17:04:09 GMT  
		Size: 30.9 MB (30885788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b82d925996b2f3aab9d6404ecb4369d5e960bfd550573f2d3cf1c458a5a39aff`  
		Last Modified: Thu, 15 Oct 2026 17:04:00 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2cfb2af1d97161bb8b5b295bd662893c1a3ca0bdb80e737a9a92312d095983e`  
		Last Modified: Thu, 15 Oct 2026 17:04:03 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b96e3f968412109f3e48d90e68005ace73b04da25f945d29c6725ed6f112c3e`  
		Last Modified: Thu, 15 Oct 2026 17:04:04 GMT  
		Size: 625.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bf34ada962b1750b6d351dbc000e8b6145137902a5413936bc44a016ea6abfe`  
		Last Modified: Thu, 15 Oct 2026 17:04:05 GMT  
		Size: 834.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:126613f0fdc34ee6b579ab9cb6c7d3d124b9f8554fcaa80150045133e9af482b`  
		Last Modified: Fri, 16 Oct 2026 10:48:24 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:91fe966a0ed856a4e9d47e8ceff8c6e9147af3f82f8da0feb0fd39371661be23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2479271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aebf0a1724418bf47d900ec9e993ab630d53f97c4cbba4823da6e6f98e8c175f`

```dockerfile
```

-	Layers:
	-	`sha256:2ec76fbe3c648afbe8058609c3dff54edf843a498da9396e2f976ef6c7f8fd45`  
		Last Modified: Fri, 16 Oct 2026 10:48:25 GMT  
		Size: 2.5 MB (2462958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8cc567a8d9392814bcda1c9e97ffdc092ee844524c6050e656e902d85db75737`  
		Last Modified: Fri, 16 Oct 2026 10:48:24 GMT  
		Size: 16.3 KB (16313 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:f8afb834aae6ed637bdfb9b4db2283c7e4641f4d3c80ce2b046bc2cc99785bb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108183282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63ba87efef15d8637c2c4ed466a80d9c1accad0c9e881f479a871e59c75a7415`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 18 Sep 2026 21:22:48 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:22:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:22:48 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:22:50 GMT
ADD file:dbe84e9fbddf57955eb8069675a3842837c04eb1416213c2d50049efd3dad787 in / 
# Fri, 18 Sep 2026 21:22:50 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 20:41:55 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Wed, 14 Oct 2026 20:41:55 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Wed, 14 Oct 2026 20:41:55 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Wed, 14 Oct 2026 20:41:55 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Wed, 14 Oct 2026 20:41:55 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 20:41:55 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Wed, 14 Oct 2026 20:41:57 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Wed, 14 Oct 2026 20:41:57 GMT
ENV RABBITMQ_VERSION=4.3.6
# Wed, 14 Oct 2026 20:41:57 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 14 Oct 2026 20:41:57 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 14 Oct 2026 20:41:57 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 20:43:09 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Wed, 14 Oct 2026 20:43:14 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Wed, 14 Oct 2026 20:43:16 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Wed, 14 Oct 2026 20:43:16 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 14 Oct 2026 20:43:16 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 14 Oct 2026 20:43:16 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 14 Oct 2026 20:43:16 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Wed, 14 Oct 2026 20:43:18 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Wed, 14 Oct 2026 20:43:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 14 Oct 2026 20:43:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Oct 2026 20:43:19 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Wed, 14 Oct 2026 20:43:19 GMT
CMD ["rabbitmq-server"]
# Wed, 14 Oct 2026 21:09:45 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Wed, 14 Oct 2026 21:09:46 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-x86_64-unknown-linux-gnu'; digest='31887e0dc96e7654a9dfa007182af1281ee2fd4045de011ca1af72b0b962df51' ;; 		'arm64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.35.0/rabbitmqadmin-2.35.0-aarch64-unknown-linux-gnu'; digest='cd97862b5a19688779717bbd920bbf299a960ad6cafcd9121bf764c01e4c66eb' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum --strict --check -; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Wed, 14 Oct 2026 21:09:46 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:108aebd72dd457ee7da6e519c157e975c9f75fedf3563478a69f28606232305c`  
		Last Modified: Fri, 18 Sep 2026 22:30:25 GMT  
		Size: 29.9 MB (29945320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1828e5f59d23466989269e61a257f468d2135f61108b0803f2eecc32bf29f5b`  
		Last Modified: Wed, 14 Oct 2026 20:44:06 GMT  
		Size: 38.7 MB (38689539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f999ff5450187f68df1e5262e7d1f9cf671ec63137e398f2f32e2f2f3dfec172`  
		Last Modified: Wed, 14 Oct 2026 20:44:05 GMT  
		Size: 8.6 MB (8647126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67bc8396ad5e27e11775fbd67d1a7eb4ea33fed4fb2e31e87b583dc0896867c2`  
		Last Modified: Wed, 14 Oct 2026 20:44:04 GMT  
		Size: 9.8 KB (9811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6e1ff6c1d95bcc1290773b13e1c0aa7c311a35c26d044457bac95a335a949ed`  
		Last Modified: Wed, 14 Oct 2026 20:44:05 GMT  
		Size: 30.9 MB (30889427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89fdbcfb9b148ba90f6345c43024fba89bb3843c2e8fffa4b8c042f277e9745c`  
		Last Modified: Wed, 14 Oct 2026 20:44:05 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c380bfc5820849e758da9d18c656f61714c7c818f82f872d895632b3e6ffc9ab`  
		Last Modified: Wed, 14 Oct 2026 20:44:06 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1be45d063282dfa57aef88146345ba23256fd7afdf81081b407b3b2908214329`  
		Last Modified: Wed, 14 Oct 2026 20:44:06 GMT  
		Size: 622.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf4ffd24fa3bf6927a226b446d0a433397997fb982a2a96a985cf18a685a7076`  
		Last Modified: Wed, 14 Oct 2026 20:44:07 GMT  
		Size: 832.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5889d2e10734357e5a24b1271101a578ba68e4fc9393606444904bda9bbcd61`  
		Last Modified: Wed, 14 Oct 2026 21:10:01 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:bbdc3c6428ec80246e75a343611e602ace1cda0edbfaf2beff14f54595fd36c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2488966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:427f636d68d862553e73865d412d5cbebaf707f95144ebebfd361ce5e21c77a0`

```dockerfile
```

-	Layers:
	-	`sha256:5798fe3d03960bc3f11164dd4c393fca08ded45c29853f8ca30e14736574308b`  
		Last Modified: Wed, 14 Oct 2026 21:10:01 GMT  
		Size: 2.5 MB (2472702 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e08eb7ca51f6b63675bfbe31d8421ebb1f4a7541c6d1a97bc96d2a74c8298249`  
		Last Modified: Wed, 14 Oct 2026 21:10:01 GMT  
		Size: 16.3 KB (16264 bytes)  
		MIME: application/vnd.in-toto+json
