## `rabbitmq:4-management`

```console
$ docker pull rabbitmq@sha256:ffd1b50c522ad20172ffd6716a2f41db375c7269560c8f3fb9a694e210ef0852
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
$ docker pull rabbitmq@sha256:17e61a9b064066c87368f33cf80b0b05749cbacebf204ed0b674a4a7bcd05c38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.9 MB (120853496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bea2c559ff0d8d2810629dee914ed7344dd569461601408b9148dcbac2232cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 01 Sep 2026 22:49:36 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 01 Sep 2026 22:49:36 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 01 Sep 2026 22:49:36 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 01 Sep 2026 22:49:36 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 01 Sep 2026 22:49:36 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 22:49:36 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 01 Sep 2026 22:49:38 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Tue, 01 Sep 2026 22:49:38 GMT
ENV RABBITMQ_VERSION=4.3.5
# Tue, 01 Sep 2026 22:49:38 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 01 Sep 2026 22:49:38 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 01 Sep 2026 22:49:38 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 22:49:59 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 01 Sep 2026 22:50:00 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 01 Sep 2026 22:50:00 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 01 Sep 2026 22:50:00 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 01 Sep 2026 22:50:00 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 01 Sep 2026 22:50:00 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 01 Sep 2026 22:50:00 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 01 Sep 2026 22:50:00 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 01 Sep 2026 22:50:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 01 Sep 2026 22:50:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Sep 2026 22:50:00 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 01 Sep 2026 22:50:00 GMT
CMD ["rabbitmq-server"]
# Tue, 01 Sep 2026 23:05:38 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Tue, 01 Sep 2026 23:05:47 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.34.0/rabbitmqadmin-2.34.0-x86_64-unknown-linux-gnu'; digest='0d5d8d2613232e10eebac62d43754666d45b034f6ba1a42eded0480d67d60d0e' ;; 		'arm64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.34.0/rabbitmqadmin-2.34.0-aarch64-unknown-linux-gnu'; digest='995d2b2fa0060b9c2533bbbf118092c577770bf3b772e4952adbfef42c9e7ad6' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum --strict --check -; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Tue, 01 Sep 2026 23:05:47 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72df6274266b076566314d9b086d8789c158131bdef3e05e40bce1d92c7f3107`  
		Last Modified: Tue, 01 Sep 2026 22:50:25 GMT  
		Size: 46.4 MB (46356439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5b662d3c8e4d4cbdf0663a0f577989f44977a51138e0f681a5c51f18bb404cc`  
		Last Modified: Tue, 01 Sep 2026 22:50:23 GMT  
		Size: 9.0 MB (9005194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a9108793f2f9b84250db0f0f2291221060085f4051f8758ca0a9fac19b9d8ba`  
		Last Modified: Tue, 01 Sep 2026 22:50:23 GMT  
		Size: 9.7 KB (9691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea0a03e5a5056d9a4b3762725e67c60069de26db1002492adf581554b265e7fc`  
		Last Modified: Tue, 01 Sep 2026 22:50:24 GMT  
		Size: 31.1 MB (31149396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:440596bc141bd12c5d4ac62e44d2879646b93a80dcc3af3183777686cac466dc`  
		Last Modified: Tue, 01 Sep 2026 22:50:24 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58b4b706fa97663cb32c2888a86db6c4bc3a82a2a9b02fe26a06f7ed9c323759`  
		Last Modified: Tue, 01 Sep 2026 22:50:25 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd68c5b538653df6c9f95f3dd8d1b4d8f060a050d635def9b1a37e07379463a4`  
		Last Modified: Tue, 01 Sep 2026 22:50:25 GMT  
		Size: 620.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dbca14e0a94bdbb3013627dafb61df00ddd72f7af6136a9715e501b6f801958`  
		Last Modified: Tue, 01 Sep 2026 22:50:26 GMT  
		Size: 833.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5bc7c9bc45d41aafdf61b81d91d20dc99df9c0761cebd66b81aab98b8e31806`  
		Last Modified: Tue, 01 Sep 2026 23:05:55 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35a61f2ed68f7d9997daeff4276c35e0f2265a9fd5c952befc50224ed73a4d02`  
		Last Modified: Tue, 01 Sep 2026 23:05:55 GMT  
		Size: 4.6 MB (4577946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:dade87a2a7991e1a2f79493e9cc8f0594b716918f197ba4d676f6b3232fe9d81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2486848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a81e1b01e386f747ed6b7960b66fe8f8dab326b4ac5410e709d0e842a246ceac`

```dockerfile
```

-	Layers:
	-	`sha256:ec9af05d4f593aa7e076833f2db33adbbf2e9093896ad90dd5f57016bf2d5b53`  
		Last Modified: Tue, 01 Sep 2026 23:05:55 GMT  
		Size: 2.5 MB (2470579 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:167b76d0d5b874c4e8ed99669cf228e8c97558a611157d5280753422dfb7acf0`  
		Last Modified: Tue, 01 Sep 2026 23:05:55 GMT  
		Size: 16.3 KB (16269 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:172a7d4b27be94ccab48b3420153f7e7ece8ef890157650ef4664ef447e87fcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.0 MB (98022101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e20f0ebb25fcc668316020aed9b89679f3ae4459ef531ffc782c008f1d2e9ed7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 17 Aug 2026 13:17:18 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:17:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:17:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:17:21 GMT
ADD file:2164aa16295913265eec9e47409ded367df44d23b10145b85e6b3cb27d1e239c in / 
# Mon, 17 Aug 2026 13:17:21 GMT
CMD ["/bin/bash"]
# Tue, 01 Sep 2026 22:53:46 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 01 Sep 2026 22:53:46 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 01 Sep 2026 22:53:46 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 01 Sep 2026 22:53:46 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 01 Sep 2026 22:53:46 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 22:53:46 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 01 Sep 2026 22:53:47 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Tue, 01 Sep 2026 22:53:47 GMT
ENV RABBITMQ_VERSION=4.3.5
# Tue, 01 Sep 2026 22:53:47 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 01 Sep 2026 22:53:47 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 01 Sep 2026 22:53:47 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 22:54:10 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 01 Sep 2026 22:54:11 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 01 Sep 2026 22:54:11 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 01 Sep 2026 22:54:11 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 01 Sep 2026 22:54:11 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 01 Sep 2026 22:54:11 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 01 Sep 2026 22:54:11 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 01 Sep 2026 22:54:11 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 01 Sep 2026 22:54:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 01 Sep 2026 22:54:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Sep 2026 22:54:11 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 01 Sep 2026 22:54:11 GMT
CMD ["rabbitmq-server"]
# Tue, 01 Sep 2026 23:19:28 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Tue, 01 Sep 2026 23:19:28 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.34.0/rabbitmqadmin-2.34.0-x86_64-unknown-linux-gnu'; digest='0d5d8d2613232e10eebac62d43754666d45b034f6ba1a42eded0480d67d60d0e' ;; 		'arm64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.34.0/rabbitmqadmin-2.34.0-aarch64-unknown-linux-gnu'; digest='995d2b2fa0060b9c2533bbbf118092c577770bf3b772e4952adbfef42c9e7ad6' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum --strict --check -; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Tue, 01 Sep 2026 23:19:28 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:66f3e1c55273a462a0982068d442942c00c78585376028748a23901efa512546`  
		Last Modified: Mon, 17 Aug 2026 14:27:34 GMT  
		Size: 26.9 MB (26872780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:996b62d7348e1bdae8b8b9482ec18b04f51a17376679941ee46aaa8aba03e4a7`  
		Last Modified: Tue, 01 Sep 2026 22:54:36 GMT  
		Size: 33.4 MB (33382908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ec7584d3862cb80b91587b2c68637cbcc1e3c9605b55692a484bfcb1869173a`  
		Last Modified: Tue, 01 Sep 2026 22:54:35 GMT  
		Size: 7.3 MB (7322268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9381c92e1eab2042257715b3ae53b7bd5654283b7c6a883f17aaa71712f2169`  
		Last Modified: Tue, 01 Sep 2026 22:54:34 GMT  
		Size: 9.7 KB (9743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ec0c8dc080df1059aa8ef136349f3bb4507722d38813d2afa0ad156d6476b5d`  
		Last Modified: Tue, 01 Sep 2026 22:54:36 GMT  
		Size: 30.4 MB (30432348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df9e49088a395179cc59619ad517fdd4240fb863406e6b4e27e26b1e15a3a8b1`  
		Last Modified: Tue, 01 Sep 2026 22:54:35 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab57c9b40a7cb384d51d36175347426c7b87f1dc94e2dceadbed1a4d41e596bf`  
		Last Modified: Tue, 01 Sep 2026 22:54:36 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:310562c08febda02c0dd08065178a0842d1dcbcadb0a5141fbb1211250add005`  
		Last Modified: Tue, 01 Sep 2026 22:54:36 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28d864a313d3f2efd3b87c1450d2a1b2ff5e86864474d7e828b774bed91e95d5`  
		Last Modified: Tue, 01 Sep 2026 22:54:37 GMT  
		Size: 832.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8cc840f7e0c944a40b131ba0c38766c7e88a2920374d63e8c45c57794483829`  
		Last Modified: Tue, 01 Sep 2026 23:19:36 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:042e218583303b9ddef92b98777f9c2e4f0ca6d7410c5d8b5d77052f7f0da0ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2487734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9e35f4af64072f11f2ba5be88953a3192568dbd1c72ccdb985eea73e365cf48`

```dockerfile
```

-	Layers:
	-	`sha256:66d1c9316a0c04ddcd3ab35d6b272219b74b1471cff2637acc2e8c2568c8b604`  
		Last Modified: Tue, 01 Sep 2026 23:19:36 GMT  
		Size: 2.5 MB (2471377 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d17538791f1ef239aefd2e1e19a20252600c067bb3e45d5601655e4615b3f08`  
		Last Modified: Tue, 01 Sep 2026 23:19:35 GMT  
		Size: 16.4 KB (16357 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:6296765dc977c9f10b0b8d0b9b782d7e2e72c654f993cb807426cc56cb6efc85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118360110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04b31aeb57bc2b70a6b725e5348c03043f83d95ad5bd023894922307d3f95d30`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 01 Sep 2026 22:48:54 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 01 Sep 2026 22:48:54 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 01 Sep 2026 22:48:54 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 01 Sep 2026 22:48:54 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 01 Sep 2026 22:48:54 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 22:48:54 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 01 Sep 2026 22:48:55 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Tue, 01 Sep 2026 22:48:55 GMT
ENV RABBITMQ_VERSION=4.3.5
# Tue, 01 Sep 2026 22:48:55 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 01 Sep 2026 22:48:55 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 01 Sep 2026 22:48:55 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 22:49:16 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 01 Sep 2026 22:49:17 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 01 Sep 2026 22:49:17 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 01 Sep 2026 22:49:17 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 01 Sep 2026 22:49:17 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 01 Sep 2026 22:49:17 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 01 Sep 2026 22:49:17 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 01 Sep 2026 22:49:17 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 01 Sep 2026 22:49:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 01 Sep 2026 22:49:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Sep 2026 22:49:17 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 01 Sep 2026 22:49:17 GMT
CMD ["rabbitmq-server"]
# Tue, 01 Sep 2026 23:06:54 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Tue, 01 Sep 2026 23:07:06 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.34.0/rabbitmqadmin-2.34.0-x86_64-unknown-linux-gnu'; digest='0d5d8d2613232e10eebac62d43754666d45b034f6ba1a42eded0480d67d60d0e' ;; 		'arm64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.34.0/rabbitmqadmin-2.34.0-aarch64-unknown-linux-gnu'; digest='995d2b2fa0060b9c2533bbbf118092c577770bf3b772e4952adbfef42c9e7ad6' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum --strict --check -; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Tue, 01 Sep 2026 23:07:06 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ef2a2279e1b667589e8bce156dd875221889592cd3c8caf4dfc9645e32031c3`  
		Last Modified: Tue, 01 Sep 2026 22:49:43 GMT  
		Size: 44.4 MB (44439885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bbdacafc5e74d2fe40b62acfcf9b5f53ceb03ed26094e5a855d71e604fa98d5`  
		Last Modified: Tue, 01 Sep 2026 22:49:42 GMT  
		Size: 9.7 MB (9729967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2de809a9f10f5e88a1c0a73761f8a121b3147cf704d6f0183a79f2fcb31241d`  
		Last Modified: Tue, 01 Sep 2026 22:49:41 GMT  
		Size: 9.6 KB (9632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c662c0b891053286beb55cb2ad50527d2a4c391f84bda6880984c6280bab5a5f`  
		Last Modified: Tue, 01 Sep 2026 22:49:43 GMT  
		Size: 30.9 MB (30915298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf5115ead185165a7085caa545c8053d7b5b64e6197b382b87f68a8c3cce5623`  
		Last Modified: Tue, 01 Sep 2026 22:49:42 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aed8da479b3fa4f79827496ee9e21b4e10f62633559a4357b32ef1dfff41975b`  
		Last Modified: Tue, 01 Sep 2026 22:49:35 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc400e48944f4d0c963cac6b8f61b018f3f0986e90dc0188711da0ae50ff722`  
		Last Modified: Tue, 01 Sep 2026 22:49:43 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53df222f6784497c32daf76bead49281596da8208c0b6a02881debed0705f2ee`  
		Last Modified: Tue, 01 Sep 2026 22:49:43 GMT  
		Size: 833.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:623957e643d069129a715f6b1cd9eb1581ecaadbcd6bc908501d9a12325fe0d5`  
		Last Modified: Tue, 01 Sep 2026 23:07:13 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0270a93494b53704641437b9db29c7928540897c204b0de15fd11e88ef79caf`  
		Last Modified: Tue, 01 Sep 2026 23:07:13 GMT  
		Size: 4.4 MB (4376073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:88a54f9d18184aed09bf03b00f0fc2bd4ca804123c26b7eadf0ce38834a5d875
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2488027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb1e7406b08b5032b03ffc8ee0a348ecc9d9d1a5a1f1c19b1157064eb660dbb3`

```dockerfile
```

-	Layers:
	-	`sha256:22abafff1403f27621370ca7dfb1003d1cb82a23d147e0bcc33b25f541a77f5f`  
		Last Modified: Tue, 01 Sep 2026 23:07:13 GMT  
		Size: 2.5 MB (2471639 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea8a52b4e12aa271c5ed41409cac7f5339696f729b2874ea7f4c21e817afd58c`  
		Last Modified: Tue, 01 Sep 2026 23:07:13 GMT  
		Size: 16.4 KB (16388 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:36046be7462a453078e4ad982eefd364e02e952b5ba3eda599c77fc9c33ea026
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114901732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3160d139bd80e53687b59af1f21c882b1be4376aad649cc49a720ef8501001a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:16 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:16 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:16 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:19 GMT
ADD file:2c1f3ca3b8968d5c5bcce4fb1290d9ca7224bbde9578f0051bf2d5493b3b6481 in / 
# Mon, 17 Aug 2026 13:37:20 GMT
CMD ["/bin/bash"]
# Tue, 01 Sep 2026 23:57:34 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Tue, 01 Sep 2026 23:57:34 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Tue, 01 Sep 2026 23:57:34 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Tue, 01 Sep 2026 23:57:34 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Tue, 01 Sep 2026 23:57:34 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:57:34 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Tue, 01 Sep 2026 23:57:36 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Tue, 01 Sep 2026 23:57:36 GMT
ENV RABBITMQ_VERSION=4.3.5
# Tue, 01 Sep 2026 23:57:36 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 01 Sep 2026 23:57:36 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 01 Sep 2026 23:57:36 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:58:10 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Tue, 01 Sep 2026 23:58:13 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Tue, 01 Sep 2026 23:58:14 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Tue, 01 Sep 2026 23:58:14 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 01 Sep 2026 23:58:14 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 01 Sep 2026 23:58:14 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 01 Sep 2026 23:58:14 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Tue, 01 Sep 2026 23:58:14 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Tue, 01 Sep 2026 23:58:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 01 Sep 2026 23:58:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Sep 2026 23:58:14 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Tue, 01 Sep 2026 23:58:14 GMT
CMD ["rabbitmq-server"]
# Wed, 02 Sep 2026 00:38:45 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Wed, 02 Sep 2026 00:38:45 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.34.0/rabbitmqadmin-2.34.0-x86_64-unknown-linux-gnu'; digest='0d5d8d2613232e10eebac62d43754666d45b034f6ba1a42eded0480d67d60d0e' ;; 		'arm64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.34.0/rabbitmqadmin-2.34.0-aarch64-unknown-linux-gnu'; digest='995d2b2fa0060b9c2533bbbf118092c577770bf3b772e4952adbfef42c9e7ad6' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum --strict --check -; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Wed, 02 Sep 2026 00:38:45 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0b5faff35c6be4c3baa10c6ea8ec4c050e76b2be7980b2ef199ca68f2c2857f`  
		Last Modified: Tue, 01 Sep 2026 23:59:12 GMT  
		Size: 39.6 MB (39579658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2acc5934426b6fd3fd6bec1d5ba41a0948ba75b1ade41862c27ae601b1a128be`  
		Last Modified: Tue, 01 Sep 2026 23:59:11 GMT  
		Size: 9.6 MB (9613922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddb9d73df82c1a8f318380eb744dbde77b0c99c8aeb5b4fede7a5879ae3afa75`  
		Last Modified: Tue, 01 Sep 2026 23:59:10 GMT  
		Size: 9.6 KB (9642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8865858e992a135c52828446bf9c29f54a507e52bdb6ad03fc471144534cc939`  
		Last Modified: Tue, 01 Sep 2026 23:59:12 GMT  
		Size: 31.4 MB (31385259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c477ef16a2d955974db21a543a1a40fa7be84746b03a9ea2ea95604f9add3053`  
		Last Modified: Tue, 01 Sep 2026 23:59:11 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e26e837cafc55da065ba24cd1a8d861e9567b3e2f969008da8519faa3db5d38e`  
		Last Modified: Tue, 01 Sep 2026 23:59:12 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f690c2486841b1c5514c43b5a3b735748d1c3e8ef98d841e45ddbdb361c522f7`  
		Last Modified: Tue, 01 Sep 2026 23:59:12 GMT  
		Size: 623.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2e43488d15277adac003481fdd3a29d4931984ecd316524b97c02ad80b0e17e`  
		Last Modified: Tue, 01 Sep 2026 23:59:13 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cb4f5bd4d9f78d78226d742f4377dca375fd71c585d26c6dc417b21d4f46a20`  
		Last Modified: Wed, 02 Sep 2026 00:38:57 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:d56b70fb5376b593799cf3a033e19edcc7ef4110e8268b3212e9cbcc611dd486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2491342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec69a81ec19b3c57c03e9f8fd2e5a2f4c0a04f81b7d2e553ce0c875ec91d26b7`

```dockerfile
```

-	Layers:
	-	`sha256:5a92823deb75aa2aa0ab7223a95d3767ba703e1eab0b8af8122d376492c3d15c`  
		Last Modified: Wed, 02 Sep 2026 00:38:57 GMT  
		Size: 2.5 MB (2475032 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63c199d0dab8d75eb58dba7abbdb15cb22f84d43d83701061d46612a5b877e86`  
		Last Modified: Wed, 02 Sep 2026 00:38:57 GMT  
		Size: 16.3 KB (16310 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:4-management` - linux; riscv64

```console
$ docker pull rabbitmq@sha256:0f0a3c668794d6fd3c183628430481c7a7e8c096023dcee6fb02ab3e585ec138
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.9 MB (107893099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5231e66529e44a90f4fd6e79d7a014c577062e67344cced98622ccf4566a763`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 17 Aug 2026 14:15:49 GMT
ARG RELEASE
# Mon, 17 Aug 2026 14:15:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 14:15:51 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 14:17:04 GMT
ADD file:337a123e95e711614eff11fd53aa4a84d1e090961d0511f1605a70ac7c33d46a in / 
# Mon, 17 Aug 2026 14:17:10 GMT
CMD ["/bin/bash"]
# Thu, 03 Sep 2026 01:52:32 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Thu, 03 Sep 2026 01:52:32 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Thu, 03 Sep 2026 01:52:32 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Thu, 03 Sep 2026 01:52:32 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Thu, 03 Sep 2026 01:52:32 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 03 Sep 2026 01:52:32 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 03 Sep 2026 01:52:36 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Thu, 03 Sep 2026 01:52:36 GMT
ENV RABBITMQ_VERSION=4.3.5
# Thu, 03 Sep 2026 01:52:36 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 03 Sep 2026 01:52:36 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 03 Sep 2026 01:52:36 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 03 Sep 2026 01:54:52 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Thu, 03 Sep 2026 01:55:01 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Thu, 03 Sep 2026 01:55:01 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Thu, 03 Sep 2026 01:55:01 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 03 Sep 2026 01:55:01 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 03 Sep 2026 01:55:01 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 03 Sep 2026 01:55:01 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Thu, 03 Sep 2026 01:55:02 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Thu, 03 Sep 2026 01:55:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 03 Sep 2026 01:55:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 03 Sep 2026 01:55:02 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Thu, 03 Sep 2026 01:55:02 GMT
CMD ["rabbitmq-server"]
# Thu, 03 Sep 2026 16:30:26 GMT
RUN set -eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf # buildkit
# Thu, 03 Sep 2026 16:30:26 GMT
RUN set -eux; 	arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.34.0/rabbitmqadmin-2.34.0-x86_64-unknown-linux-gnu'; digest='0d5d8d2613232e10eebac62d43754666d45b034f6ba1a42eded0480d67d60d0e' ;; 		'arm64') url='https://github.com/rabbitmq/rabbitmqadmin-ng/releases/download/v2.34.0/rabbitmqadmin-2.34.0-aarch64-unknown-linux-gnu'; digest='995d2b2fa0060b9c2533bbbf118092c577770bf3b772e4952adbfef42c9e7ad6' ;; 		*) echo "[INFO] rabbitmqadmin is not available on $arch (yet?)"; exit 0 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O /usr/local/bin/rabbitmqadmin "$url"; 	echo "$digest */usr/local/bin/rabbitmqadmin" | sha256sum --strict --check -; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		chmod +x /usr/local/bin/rabbitmqadmin; 	rabbitmqadmin --help # buildkit
# Thu, 03 Sep 2026 16:30:26 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:d85e724d9e83fe5958acde2418944fdb2b9077a9c6b5963f99e62d6feb11fb31`  
		Last Modified: Mon, 17 Aug 2026 14:27:49 GMT  
		Size: 31.0 MB (30983072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c43c62784b13bc5bad6ed51400b1b5cea78c465bb202be34a2f26f80c355757`  
		Last Modified: Thu, 03 Sep 2026 02:01:21 GMT  
		Size: 35.2 MB (35228207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:424303f2435c1cd276672dc0dceebd1da82b2f483e7891cf1c0f91b6e31a777b`  
		Last Modified: Thu, 03 Sep 2026 02:01:14 GMT  
		Size: 10.9 MB (10853374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee3a60366dafb772fbedc4b6bee6122e5e22f364b2a32e651aa59e7b63eb771b`  
		Last Modified: Thu, 03 Sep 2026 02:01:07 GMT  
		Size: 9.7 KB (9679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b729df06c32076c652c932287b3b11d8cf5f5d4f207b5f05ec1382403f6c936b`  
		Last Modified: Thu, 03 Sep 2026 02:01:21 GMT  
		Size: 30.8 MB (30816704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38233a1aa7475297fa2d0157a5711cdc8f7590b5719693fed349201aaa9af82f`  
		Last Modified: Thu, 03 Sep 2026 02:01:12 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448b2e58bd5dd1587e96a801fb5d5d5a4f7e24af881a212f4931ccdd2b58af49`  
		Last Modified: Thu, 03 Sep 2026 02:01:14 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d062ecb0b28396596149962dec80abb5cbde411a0ae867ea3a4a329677122ee`  
		Last Modified: Thu, 03 Sep 2026 02:01:16 GMT  
		Size: 622.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45036a0a427768dd20b96defe15f6752657e7568a2e0828fa0e83372188e484f`  
		Last Modified: Thu, 03 Sep 2026 02:01:16 GMT  
		Size: 834.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e71f042f10660cd579d84f3cfc8fcbf53cbf1865d4c5909c614ed2bd1e15ed6d`  
		Last Modified: Thu, 03 Sep 2026 16:31:43 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:4-management` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:016f746d2db9e2e742cf0ed487f7f228255572fc7b15bb264877a8b031b25c9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2479257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92538fb429b61e46295bb90ba008e3db690b0a0843f6f027d869cc7fd71cc40a`

```dockerfile
```

-	Layers:
	-	`sha256:2d2b5bf804f0e569875b6c2a205cf8ec4d736d99dde8a923d3c84ec688108175`  
		Last Modified: Thu, 03 Sep 2026 16:31:43 GMT  
		Size: 2.5 MB (2462944 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:798284281b558ec7d5f07e7181c259c26b8e9734df5d837dac5b653007f5aac3`  
		Last Modified: Thu, 03 Sep 2026 16:31:43 GMT  
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
