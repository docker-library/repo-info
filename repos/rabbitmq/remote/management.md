## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:c8f3d8efed804fb1b93d046ef9bc65f124eda1517f3047fbe813dd9512e1682e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 6
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; riscv64
	-	linux; s390x

### `rabbitmq:management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:57118b08486b5b86d402ce056af7922d840b715333946590053547ac3ed169a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.5 MB (111491433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e30985fbcf6270c1c8e360abf4c21db668904d3ae8623e80c1344b8c3ecef94f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:21 GMT
ADD file:9d282119af0c42bc823c95b4192a3350cf2cad670622017356dd2e637762e425 in / 
# Fri, 09 Dec 2022 01:20:21 GMT
CMD ["bash"]
# Thu, 15 Dec 2022 01:40:56 GMT
COPY /usr/local/bin/ /usr/local/bin/ # buildkit
# Thu, 15 Dec 2022 01:40:56 GMT
COPY /usr/local/etc/ssl/ /usr/local/etc/ssl/ # buildkit
# Wed, 18 Jan 2023 22:23:15 GMT
COPY /usr/local/lib/ /usr/local/lib/ # buildkit
# Wed, 18 Jan 2023 22:23:17 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Wed, 18 Jan 2023 22:23:17 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private /usr/local/etc/ssl; 		ldconfig; 	openssl version; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Wed, 18 Jan 2023 22:23:17 GMT
ENV RABBITMQ_VERSION=3.11.7
# Wed, 18 Jan 2023 22:23:17 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 18 Jan 2023 22:23:17 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 18 Jan 2023 22:23:17 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2023 22:23:40 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Wed, 18 Jan 2023 22:23:41 GMT
RUN set -eux; 	gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus; 	echo 'management_agent.disable_metrics_collector = true' > /etc/rabbitmq/conf.d/management_agent.disable_metrics_collector.conf; 	chown rabbitmq:rabbitmq /etc/rabbitmq/conf.d/management_agent.disable_metrics_collector.conf # buildkit
# Wed, 18 Jan 2023 22:23:41 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Wed, 18 Jan 2023 22:23:41 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 18 Jan 2023 22:23:41 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 18 Jan 2023 22:23:41 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 18 Jan 2023 22:23:41 GMT
COPY 10-defaults.conf /etc/rabbitmq/conf.d/ # buildkit
# Wed, 18 Jan 2023 22:23:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 18 Jan 2023 22:23:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Jan 2023 22:23:41 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Wed, 18 Jan 2023 22:23:41 GMT
CMD ["rabbitmq-server"]
# Wed, 18 Jan 2023 22:24:10 GMT
RUN set eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/management_agent.disable_metrics_collector.conf; 	cp /plugins/rabbitmq_management-*/priv/www/cli/rabbitmqadmin /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python3; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version # buildkit
# Wed, 18 Jan 2023 22:24:10 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:846c0b181fff0c667d9444f8378e8fcfa13116da8d308bf21673f7e4bea8d580`  
		Last Modified: Thu, 08 Dec 2022 13:18:11 GMT  
		Size: 28.6 MB (28576882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03dea6b5e70e630bb5bf621528463788e46cf2571f98f3f591e10633f1b650d9`  
		Last Modified: Thu, 15 Dec 2022 01:47:28 GMT  
		Size: 334.5 KB (334487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae1c228689d2f294439828746d67d06536e5cf331393d0529e18ce4c8f222f8`  
		Last Modified: Thu, 15 Dec 2022 01:47:27 GMT  
		Size: 8.9 KB (8919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ae534024dd0d21e9fcc587e8a6cc896df1fab98aaee48a9846793c3487bed0`  
		Last Modified: Wed, 18 Jan 2023 22:30:23 GMT  
		Size: 51.1 MB (51108459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d584f6f36be2fe7bb69f562d8252d2f7af5cf8257a2857bcb90e148d7fb14310`  
		Last Modified: Wed, 18 Jan 2023 22:30:16 GMT  
		Size: 5.2 KB (5202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4256e5f04fdc8fe683f004ab32aa376d6c24c37e5d80aff17629c66e74650968`  
		Last Modified: Wed, 18 Jan 2023 22:30:17 GMT  
		Size: 21.6 MB (21554789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc0d562ad9f52813d2e91a9eaba5b8eb36b9abca4f202ef8c0fe7c23577b862`  
		Last Modified: Wed, 18 Jan 2023 22:30:15 GMT  
		Size: 273.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:644d357259390348560d34fa4cf5ca8e7f42f398100a9ca8e8979c9d806f5a47`  
		Last Modified: Wed, 18 Jan 2023 22:30:15 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:128705f3a1367f453e0016dfc99479ddff9a968446e1506f2d1a9183a3638409`  
		Last Modified: Wed, 18 Jan 2023 22:30:15 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78982783d77fdd7e67c9fad506b1cbc640b55a3e5df3f240e0ba581385fad4e0`  
		Last Modified: Wed, 18 Jan 2023 22:30:15 GMT  
		Size: 834.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aeaf6c21a257d345eb50dc14970715806d76b45b581cfa5c4f85aadde2579c6`  
		Last Modified: Wed, 18 Jan 2023 22:30:37 GMT  
		Size: 9.9 MB (9900982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:c02eefa8bea4ef57b2cee2f6c7881381c68af5ae5a2d9181b1a12663a67babec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.0 MB (95974132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:922708856448d62cc3fa63d96873e648115dfaa8833ea65dd15b8d58363a668f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 09 Dec 2022 01:36:16 GMT
ADD file:b21aa237ba47147762a1b92947251163795189df45212a32e07ea3438a186e03 in / 
# Fri, 09 Dec 2022 01:36:17 GMT
CMD ["bash"]
# Thu, 15 Dec 2022 01:46:15 GMT
COPY /usr/local/bin/ /usr/local/bin/ # buildkit
# Thu, 15 Dec 2022 01:46:15 GMT
COPY /usr/local/etc/ssl/ /usr/local/etc/ssl/ # buildkit
# Wed, 18 Jan 2023 23:01:17 GMT
COPY /usr/local/lib/ /usr/local/lib/ # buildkit
# Wed, 18 Jan 2023 23:01:18 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Wed, 18 Jan 2023 23:01:18 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private /usr/local/etc/ssl; 		ldconfig; 	openssl version; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Wed, 18 Jan 2023 23:01:18 GMT
ENV RABBITMQ_VERSION=3.11.7
# Wed, 18 Jan 2023 23:01:18 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 18 Jan 2023 23:01:18 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 18 Jan 2023 23:01:18 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2023 23:01:38 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Wed, 18 Jan 2023 23:01:39 GMT
RUN set -eux; 	gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus; 	echo 'management_agent.disable_metrics_collector = true' > /etc/rabbitmq/conf.d/management_agent.disable_metrics_collector.conf; 	chown rabbitmq:rabbitmq /etc/rabbitmq/conf.d/management_agent.disable_metrics_collector.conf # buildkit
# Wed, 18 Jan 2023 23:01:40 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Wed, 18 Jan 2023 23:01:40 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 18 Jan 2023 23:01:40 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 18 Jan 2023 23:01:40 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 18 Jan 2023 23:01:40 GMT
COPY 10-defaults.conf /etc/rabbitmq/conf.d/ # buildkit
# Wed, 18 Jan 2023 23:01:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 18 Jan 2023 23:01:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Jan 2023 23:01:40 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Wed, 18 Jan 2023 23:01:40 GMT
CMD ["rabbitmq-server"]
# Wed, 18 Jan 2023 23:02:11 GMT
RUN set eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/management_agent.disable_metrics_collector.conf; 	cp /plugins/rabbitmq_management-*/priv/www/cli/rabbitmqadmin /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python3; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version # buildkit
# Wed, 18 Jan 2023 23:02:11 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:cfbc8b467b3eb89e7c394402566b2965c83f3103dafb141203e0020a8acd3774`  
		Last Modified: Fri, 09 Dec 2022 01:38:40 GMT  
		Size: 24.6 MB (24589003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5108d8dbd5bda660a4d2c9616714aaf46e46b38bdb6a7959e67e03daf1b5b7`  
		Last Modified: Thu, 15 Dec 2022 01:54:51 GMT  
		Size: 304.5 KB (304499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94b75eed8fbf4ab5a7c1725b6c77b2dc5db3fab5ccb0ca4b4113af0c7c59bb5`  
		Last Modified: Thu, 15 Dec 2022 01:54:51 GMT  
		Size: 8.9 KB (8896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d13758cfb262b6b337dbff4cb5dc7b65bc848fdf3327528057c263562fad6dee`  
		Last Modified: Wed, 18 Jan 2023 23:09:49 GMT  
		Size: 40.8 MB (40796019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da80372feecde4de823ad7d091b6912f69b8ed69f1edfca8819a8e19f8d62d9d`  
		Last Modified: Wed, 18 Jan 2023 23:09:43 GMT  
		Size: 5.1 KB (5120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a654af08dc22886f7c894201bcacb53ec7d21ad5d19d01b00842658d79c49724`  
		Last Modified: Wed, 18 Jan 2023 23:09:44 GMT  
		Size: 21.1 MB (21134411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a4ec157117d250d15b73f1b10f0cc3ad1284c7dff8c60569f803c1eeaee6f9`  
		Last Modified: Wed, 18 Jan 2023 23:09:41 GMT  
		Size: 274.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f6c208f4639224c4ecc2d7f338c362f40df6f827f5bf89ae2b4349df198cfa`  
		Last Modified: Wed, 18 Jan 2023 23:09:41 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d449c24dc16f064996eb31aca12b2bb8069271bc37fa7fbd0fee505251916f3b`  
		Last Modified: Wed, 18 Jan 2023 23:09:41 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41084eead902bede85e71dec07028e128ecbd3917601e130ce52b3f06feff410`  
		Last Modified: Wed, 18 Jan 2023 23:09:41 GMT  
		Size: 835.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cbaba8cabcec37e4562bb2289cd4ebca464d7654aa78a3a00c1b21911055a83`  
		Last Modified: Wed, 18 Jan 2023 23:10:10 GMT  
		Size: 9.1 MB (9134468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:af06b0c8dd03ff79867291b973df19b98ae735ee5eaeff22f18385b97b5f56a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.1 MB (108111202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b8dc97d3a3d31ec8b1e0c43d5b8c11c60d9c36e593e9b9dd763e4fd49a637a3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 09 Dec 2022 01:46:50 GMT
ADD file:8cba976cb6ea226de769a768ee274e7679d34f923c93392f340680dc6696232e in / 
# Fri, 09 Dec 2022 01:46:50 GMT
CMD ["bash"]
# Thu, 15 Dec 2022 00:49:39 GMT
COPY /usr/local/bin/ /usr/local/bin/ # buildkit
# Thu, 15 Dec 2022 00:49:39 GMT
COPY /usr/local/etc/ssl/ /usr/local/etc/ssl/ # buildkit
# Wed, 18 Jan 2023 22:49:27 GMT
COPY /usr/local/lib/ /usr/local/lib/ # buildkit
# Wed, 18 Jan 2023 22:49:28 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Wed, 18 Jan 2023 22:49:28 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private /usr/local/etc/ssl; 		ldconfig; 	openssl version; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Wed, 18 Jan 2023 22:49:28 GMT
ENV RABBITMQ_VERSION=3.11.7
# Wed, 18 Jan 2023 22:49:28 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 18 Jan 2023 22:49:28 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 18 Jan 2023 22:49:28 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2023 22:49:45 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Wed, 18 Jan 2023 22:49:46 GMT
RUN set -eux; 	gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus; 	echo 'management_agent.disable_metrics_collector = true' > /etc/rabbitmq/conf.d/management_agent.disable_metrics_collector.conf; 	chown rabbitmq:rabbitmq /etc/rabbitmq/conf.d/management_agent.disable_metrics_collector.conf # buildkit
# Wed, 18 Jan 2023 22:49:46 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Wed, 18 Jan 2023 22:49:46 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 18 Jan 2023 22:49:46 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 18 Jan 2023 22:49:46 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 18 Jan 2023 22:49:46 GMT
COPY 10-defaults.conf /etc/rabbitmq/conf.d/ # buildkit
# Wed, 18 Jan 2023 22:49:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 18 Jan 2023 22:49:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Jan 2023 22:49:46 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Wed, 18 Jan 2023 22:49:46 GMT
CMD ["rabbitmq-server"]
# Wed, 18 Jan 2023 22:50:09 GMT
RUN set eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/management_agent.disable_metrics_collector.conf; 	cp /plugins/rabbitmq_management-*/priv/www/cli/rabbitmqadmin /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python3; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version # buildkit
# Wed, 18 Jan 2023 22:50:09 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:f04b4bbe15805316c8fda79beedd3b77e6b1ffcd0acf81226c3089e63f6bffeb`  
		Last Modified: Thu, 08 Dec 2022 15:28:02 GMT  
		Size: 27.2 MB (27193168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e1d3908a4d8db89c8e5b3a40a7e124528b26044e788f2f78ce6d83ed2befe39`  
		Last Modified: Thu, 15 Dec 2022 00:55:03 GMT  
		Size: 324.5 KB (324487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb11fe054472c647f1e263e236c691308a2b25ff50737252bba6375da38112ea`  
		Last Modified: Thu, 15 Dec 2022 00:55:02 GMT  
		Size: 8.9 KB (8918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd835eebc0f350689b4a3dacdeae22bdd3dd9e4a5e20cefff27d61b87e6cb30`  
		Last Modified: Wed, 18 Jan 2023 22:55:01 GMT  
		Size: 49.2 MB (49203831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caadb228cbd26e9ce5dfb80de872d12129465e870214487a77121a4074981882`  
		Last Modified: Wed, 18 Jan 2023 22:54:55 GMT  
		Size: 5.2 KB (5201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c52d48ba387e03cb7eadd67130a264822a2cbe3c379c93ff98d06701353ad9`  
		Last Modified: Wed, 18 Jan 2023 22:54:56 GMT  
		Size: 21.4 MB (21377133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46408b1f0021136582f511eee5242301f6804153573ab1c9aeea4f3d48da175d`  
		Last Modified: Wed, 18 Jan 2023 22:54:54 GMT  
		Size: 273.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ff87d1b9594f4e398f4cd9b7217844af038fc00bf290cb6d60e19739cdad00`  
		Last Modified: Wed, 18 Jan 2023 22:54:54 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaef221c1b808b2ce1400b89ebb6d23f559519cc298662a3b636a170e94d6229`  
		Last Modified: Wed, 18 Jan 2023 22:54:54 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:294bf55b5a3e22616646a96516a688978d675a1c6b482de3244347972a377451`  
		Last Modified: Wed, 18 Jan 2023 22:54:54 GMT  
		Size: 834.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f572d6347060c09608ec768867d53cd47ae5a3320f27b9666d1751a689ebd92`  
		Last Modified: Wed, 18 Jan 2023 22:55:16 GMT  
		Size: 10.0 MB (9996753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:c27c5eee975b2b4f18fa88c194bcd39e0f793b750c6854bf842c1a3fec815ea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109306560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e26bd4bba4c859a85092ed599073318eaba831fbb57a639ee391ac1742db3a04`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 09 Dec 2022 01:27:36 GMT
ADD file:ca32a106475146fa5bd0f3e4920ea64671b1054f57a1f33d4681fe170deda313 in / 
# Fri, 09 Dec 2022 01:27:37 GMT
CMD ["bash"]
# Thu, 15 Dec 2022 01:53:24 GMT
COPY /usr/local/bin/ /usr/local/bin/ # buildkit
# Thu, 15 Dec 2022 01:53:24 GMT
COPY /usr/local/etc/ssl/ /usr/local/etc/ssl/ # buildkit
# Wed, 18 Jan 2023 23:21:08 GMT
COPY /usr/local/lib/ /usr/local/lib/ # buildkit
# Wed, 18 Jan 2023 23:21:10 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Wed, 18 Jan 2023 23:21:10 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private /usr/local/etc/ssl; 		ldconfig; 	openssl version; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Wed, 18 Jan 2023 23:21:10 GMT
ENV RABBITMQ_VERSION=3.11.7
# Wed, 18 Jan 2023 23:21:10 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 18 Jan 2023 23:21:10 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 18 Jan 2023 23:21:10 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2023 23:21:49 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Wed, 18 Jan 2023 23:21:51 GMT
RUN set -eux; 	gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus; 	echo 'management_agent.disable_metrics_collector = true' > /etc/rabbitmq/conf.d/management_agent.disable_metrics_collector.conf; 	chown rabbitmq:rabbitmq /etc/rabbitmq/conf.d/management_agent.disable_metrics_collector.conf # buildkit
# Wed, 18 Jan 2023 23:21:52 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Wed, 18 Jan 2023 23:21:52 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 18 Jan 2023 23:21:52 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 18 Jan 2023 23:21:52 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 18 Jan 2023 23:21:52 GMT
COPY 10-defaults.conf /etc/rabbitmq/conf.d/ # buildkit
# Wed, 18 Jan 2023 23:21:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 18 Jan 2023 23:21:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Jan 2023 23:21:52 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Wed, 18 Jan 2023 23:21:52 GMT
CMD ["rabbitmq-server"]
# Wed, 18 Jan 2023 23:22:22 GMT
RUN set eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/management_agent.disable_metrics_collector.conf; 	cp /plugins/rabbitmq_management-*/priv/www/cli/rabbitmqadmin /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python3; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version # buildkit
# Wed, 18 Jan 2023 23:22:22 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:d198f08d15a240101119086908bf4c5035dc657d52bfe206ddeede273c6b84f3`  
		Last Modified: Fri, 09 Dec 2022 01:30:09 GMT  
		Size: 33.3 MB (33299473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f7aba749720c8d26ce56d5d4943541588f52a73dad782e2b4c9f724a2a488ed`  
		Last Modified: Thu, 15 Dec 2022 02:04:44 GMT  
		Size: 357.0 KB (357044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342d9fa36507825661d84e2a797042a70dbbf142de18138a57ce494c1c73ab93`  
		Last Modified: Thu, 15 Dec 2022 02:04:44 GMT  
		Size: 8.9 KB (8920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd93d0fccb34302d81fa1249d360fdf9e8517a94c242b5390ed4adcabc28e11`  
		Last Modified: Wed, 18 Jan 2023 23:31:51 GMT  
		Size: 43.3 MB (43256809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b9b3c84ee5d11d48e3afd7be6adc208457fc36e2b313fa4535f7ecb38835a9`  
		Last Modified: Wed, 18 Jan 2023 23:31:42 GMT  
		Size: 5.2 KB (5160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41f6e93572b543fea04f10a60330897e1836c5f94575e77978b8e864457437d7`  
		Last Modified: Wed, 18 Jan 2023 23:31:44 GMT  
		Size: 21.7 MB (21698875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0211fc5a0d7c0b55a9c24fa71ae06d9b907b64543c4cefb9d64f79bd2b49847c`  
		Last Modified: Wed, 18 Jan 2023 23:31:40 GMT  
		Size: 274.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af038677e78fe3bdb48e7ed87655885b47d568bad35c999b3ef41d0f166cb636`  
		Last Modified: Wed, 18 Jan 2023 23:31:40 GMT  
		Size: 105.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d9a1fcabaaa158f8a3eb96a1a96b5ef356eaaac5c399d2f09ebc8b938459da`  
		Last Modified: Wed, 18 Jan 2023 23:31:40 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8198e7ba7e7806308ca9c6b24009335bdc1d53f09a663ae59dcd67813981405f`  
		Last Modified: Wed, 18 Jan 2023 23:31:40 GMT  
		Size: 836.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59082c8173f4512f07f7aa851ae95b9f13cd5adb8fe3c535e0fa39949e82dbb7`  
		Last Modified: Wed, 18 Jan 2023 23:32:12 GMT  
		Size: 10.7 MB (10678564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; riscv64

```console
$ docker pull rabbitmq@sha256:9cb7569d80cf05428838dada3515cf88e4ce13b6f1aee8a6d4508a5b7ea0416c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96587377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4adbfa9d5d3dbce8b7639d21e407f5a95c022aa9efcf42e15e32c1747864b718`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 09 Dec 2022 01:10:28 GMT
ADD file:50c1d21a50d57d99470bd427f2ee427504ad0602a5046dbc6a04680574d27f39 in / 
# Fri, 09 Dec 2022 01:10:29 GMT
CMD ["bash"]
# Thu, 22 Dec 2022 08:09:15 GMT
COPY /usr/local/bin/ /usr/local/bin/ # buildkit
# Thu, 22 Dec 2022 08:09:15 GMT
COPY /usr/local/etc/ssl/ /usr/local/etc/ssl/ # buildkit
# Wed, 18 Jan 2023 23:34:27 GMT
COPY /usr/local/lib/ /usr/local/lib/ # buildkit
# Wed, 18 Jan 2023 23:34:31 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Wed, 18 Jan 2023 23:34:31 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private /usr/local/etc/ssl; 		ldconfig; 	openssl version; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Wed, 18 Jan 2023 23:34:31 GMT
ENV RABBITMQ_VERSION=3.11.7
# Wed, 18 Jan 2023 23:34:31 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 18 Jan 2023 23:34:31 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 18 Jan 2023 23:34:31 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2023 23:36:24 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Wed, 18 Jan 2023 23:36:32 GMT
RUN set -eux; 	gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus; 	echo 'management_agent.disable_metrics_collector = true' > /etc/rabbitmq/conf.d/management_agent.disable_metrics_collector.conf; 	chown rabbitmq:rabbitmq /etc/rabbitmq/conf.d/management_agent.disable_metrics_collector.conf # buildkit
# Wed, 18 Jan 2023 23:36:33 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Wed, 18 Jan 2023 23:36:33 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 18 Jan 2023 23:36:33 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 18 Jan 2023 23:36:33 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 18 Jan 2023 23:36:33 GMT
COPY 10-defaults.conf /etc/rabbitmq/conf.d/ # buildkit
# Wed, 18 Jan 2023 23:36:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 18 Jan 2023 23:36:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Jan 2023 23:36:33 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Wed, 18 Jan 2023 23:36:33 GMT
CMD ["rabbitmq-server"]
# Wed, 18 Jan 2023 23:38:09 GMT
RUN set eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/management_agent.disable_metrics_collector.conf; 	cp /plugins/rabbitmq_management-*/priv/www/cli/rabbitmqadmin /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python3; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version # buildkit
# Wed, 18 Jan 2023 23:38:09 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:1bf57572b326faac5012873a6b3ea48eee0fe2649c47d425e34e149459c96c29`  
		Last Modified: Fri, 09 Dec 2022 01:32:24 GMT  
		Size: 24.2 MB (24245212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56afbc2ed5ac23b93e6a2008b4f0dafa0b39ed9884603fc2788ababf4caf3f66`  
		Last Modified: Thu, 22 Dec 2022 08:21:01 GMT  
		Size: 294.7 KB (294716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f71f7beea575a8ba2d9afc2603d7e4be54a9133e2a090c214eb0d101239d563f`  
		Last Modified: Thu, 22 Dec 2022 08:21:00 GMT  
		Size: 8.9 KB (8893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4d7b6d0755bb5e0b9f8a7f1b34bbbf1462bcf408c5a334b4047f72a97e255c`  
		Last Modified: Wed, 18 Jan 2023 23:46:51 GMT  
		Size: 42.0 MB (41979956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f1db64e0212f0c02c56824a12e739fc634ddfb0d65c308b388428fafa06a94`  
		Last Modified: Wed, 18 Jan 2023 23:46:06 GMT  
		Size: 5.1 KB (5104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a963cd3718f99cb6baacbb9aa924547397ea826b5a96cfdd8089b0632b2c60b7`  
		Last Modified: Wed, 18 Jan 2023 23:46:23 GMT  
		Size: 21.1 MB (21104077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e4dacccd121a7c9c7efd21ba4e0493bf252dddc9cc47cadc183c544dfaff010`  
		Last Modified: Wed, 18 Jan 2023 23:46:04 GMT  
		Size: 274.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:401f295b8fbfb6c6b2590cd93ea02405d14b9c92b92db5bde4403c314e2745db`  
		Last Modified: Wed, 18 Jan 2023 23:46:04 GMT  
		Size: 105.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cdaecd640bbaa37ddfd1a684525c72cec2de01e119227863da0ca5e76481af5`  
		Last Modified: Wed, 18 Jan 2023 23:46:04 GMT  
		Size: 503.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba59ff57a6571fef033ab1966e1b2742c5650c21a3221ba03a37f4febc510fb`  
		Last Modified: Wed, 18 Jan 2023 23:46:04 GMT  
		Size: 838.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca949c8301621a222fdd516a4c6bb0f1b4815e710c34c5ddf6ca663b138d39d`  
		Last Modified: Wed, 18 Jan 2023 23:47:18 GMT  
		Size: 8.9 MB (8947699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:c55a603582daa7b146503341ba8dbd61b90dd1c1fa02f4ce7599a60d52b962d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.7 MB (99709938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6997d2713a34b3b736aa4e8b882c9e4a03eb5dd95d9584b3919f8a806e0122d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 09 Dec 2022 01:52:40 GMT
ADD file:3d26982d2188d52ed2423587d3d2597c1f8ff614c19408d892cadc91d3743deb in / 
# Fri, 09 Dec 2022 01:52:43 GMT
CMD ["bash"]
# Thu, 15 Dec 2022 00:48:27 GMT
COPY /usr/local/bin/ /usr/local/bin/ # buildkit
# Thu, 15 Dec 2022 00:48:27 GMT
COPY /usr/local/etc/ssl/ /usr/local/etc/ssl/ # buildkit
# Wed, 18 Jan 2023 22:45:30 GMT
COPY /usr/local/lib/ /usr/local/lib/ # buildkit
# Wed, 18 Jan 2023 22:45:32 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Wed, 18 Jan 2023 22:45:32 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private /usr/local/etc/ssl; 		ldconfig; 	openssl version; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Wed, 18 Jan 2023 22:45:32 GMT
ENV RABBITMQ_VERSION=3.11.7
# Wed, 18 Jan 2023 22:45:32 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 18 Jan 2023 22:45:32 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 18 Jan 2023 22:45:32 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2023 22:45:49 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Wed, 18 Jan 2023 22:45:50 GMT
RUN set -eux; 	gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus; 	echo 'management_agent.disable_metrics_collector = true' > /etc/rabbitmq/conf.d/management_agent.disable_metrics_collector.conf; 	chown rabbitmq:rabbitmq /etc/rabbitmq/conf.d/management_agent.disable_metrics_collector.conf # buildkit
# Wed, 18 Jan 2023 22:45:50 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Wed, 18 Jan 2023 22:45:50 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 18 Jan 2023 22:45:50 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 18 Jan 2023 22:45:50 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 18 Jan 2023 22:45:50 GMT
COPY 10-defaults.conf /etc/rabbitmq/conf.d/ # buildkit
# Wed, 18 Jan 2023 22:45:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 18 Jan 2023 22:45:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Jan 2023 22:45:50 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Wed, 18 Jan 2023 22:45:50 GMT
CMD ["rabbitmq-server"]
# Wed, 18 Jan 2023 22:46:29 GMT
RUN set eux; 	rabbitmq-plugins enable --offline rabbitmq_management; 	rm -f /etc/rabbitmq/conf.d/management_agent.disable_metrics_collector.conf; 	cp /plugins/rabbitmq_management-*/priv/www/cli/rabbitmqadmin /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python3; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version # buildkit
# Wed, 18 Jan 2023 22:46:29 GMT
EXPOSE map[15671/tcp:{} 15672/tcp:{}]
```

-	Layers:
	-	`sha256:5d330d9ae4f68425a719ebb93a3911994ee56b1328cf256fc3c44a4050de22ec`  
		Last Modified: Fri, 09 Dec 2022 01:54:57 GMT  
		Size: 27.0 MB (27016083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71a529f1fbb4239c1804b3d39df9c5d1d872d7107f732c98c998abb750c41cd7`  
		Last Modified: Thu, 15 Dec 2022 01:04:41 GMT  
		Size: 337.4 KB (337377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4cafd6a5f553fa7a2813fa7ad6527d38d8a14be41c722d434df353d3cd14185`  
		Last Modified: Thu, 15 Dec 2022 01:04:40 GMT  
		Size: 8.9 KB (8928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4ec8d72da5e14faf500bae2e7297b4d9e99f46a2c70973574daae2d3ac58f44`  
		Last Modified: Wed, 18 Jan 2023 22:53:15 GMT  
		Size: 41.3 MB (41282265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d597fb169a26e98e1ee37f6960d492e958b285f3697b7f057118038b9614e28e`  
		Last Modified: Wed, 18 Jan 2023 22:53:11 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a3d9ddf17c0760a08d13fa4d51cf5af9c6d71ae4d253e7314b263e3164ae7da`  
		Last Modified: Wed, 18 Jan 2023 22:53:11 GMT  
		Size: 21.2 MB (21249649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:639333b1c131a259ab844228f9f20cfa9987b09effdf0a1b931391cdaaea2a19`  
		Last Modified: Wed, 18 Jan 2023 22:53:10 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e722b17835a6b637be0f5ab82c408e42c97cd161d7b602bf42500761f1302d1`  
		Last Modified: Wed, 18 Jan 2023 22:53:09 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfbab19830afc6063f1c76abb2bef73321f1aa1fd755276fb9f6347d894a5770`  
		Last Modified: Wed, 18 Jan 2023 22:53:09 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7b304b302eb48d38fc9008abaf636b6929c75421197d82a36d1bc377825b8d`  
		Last Modified: Wed, 18 Jan 2023 22:53:09 GMT  
		Size: 836.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c8e5140f361880aa93e4b58aaff9d8a7569801106bdc078efda77e9a9ca168`  
		Last Modified: Wed, 18 Jan 2023 22:53:27 GMT  
		Size: 9.8 MB (9808690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
