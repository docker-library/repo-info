## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:ca65b83876716973b5a354372346c1e9ac0dba40708d8ff53612b42d840141ad
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
$ docker pull rabbitmq@sha256:8c46ed47edde7a8a2aba2791b244aa88019b0538a588b7611d0f8c720964168c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.9 MB (113947085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42eaaa8737022152989f2815775e231f80dc7146a519e9e553a921d5cb33c4de`
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
# Wed, 16 Sep 2026 03:29:59 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Wed, 16 Sep 2026 03:29:59 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Wed, 16 Sep 2026 03:29:59 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Wed, 16 Sep 2026 03:29:59 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Wed, 16 Sep 2026 03:29:59 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:29:59 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Wed, 16 Sep 2026 03:30:00 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Wed, 16 Sep 2026 03:30:00 GMT
ENV RABBITMQ_VERSION=4.3.6
# Wed, 16 Sep 2026 03:30:00 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 16 Sep 2026 03:30:00 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 16 Sep 2026 03:30:00 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:30:17 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Wed, 16 Sep 2026 03:30:18 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Wed, 16 Sep 2026 03:30:18 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Wed, 16 Sep 2026 03:30:18 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 16 Sep 2026 03:30:18 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 16 Sep 2026 03:30:18 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:30:18 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Wed, 16 Sep 2026 03:30:18 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Wed, 16 Sep 2026 03:30:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:30:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 03:30:18 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Wed, 16 Sep 2026 03:30:18 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a70b1efdd8c39d69830fc24865d527ea623d33abbc35314395b7b75c8c29685`  
		Last Modified: Wed, 16 Sep 2026 03:30:41 GMT  
		Size: 46.4 MB (46356408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a14692aa0d83ab7646074ad9de1b6e58611531977fa66e0e84e5ebde2debce1e`  
		Last Modified: Wed, 16 Sep 2026 03:30:39 GMT  
		Size: 9.0 MB (9005236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96c2e7c3896da61300f370a5bc1c4dd40e77dd126d716d201e6971013e948ba4`  
		Last Modified: Wed, 16 Sep 2026 03:30:38 GMT  
		Size: 9.7 KB (9714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a0fd64b19eceb51b228612ca57afd48036e17ea5bc90e23621a52a07967683f`  
		Last Modified: Wed, 16 Sep 2026 03:30:40 GMT  
		Size: 28.8 MB (28809864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47d1361f018e4cc95f1cbba7c8d8d838f2953ebf46e87c60a7fb7c5bdc6c3c5b`  
		Last Modified: Wed, 16 Sep 2026 03:30:40 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7203e1fe2c47885b88ce9745dc01011dbb2d49cd1cb40e305e95a3e208c9ee2`  
		Last Modified: Wed, 16 Sep 2026 03:30:41 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a1623d562ad3d76f3a22bc0c39d172dd19fdf4edc488453711fce99ae52f0bd`  
		Last Modified: Wed, 16 Sep 2026 03:30:41 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1100216e1d237b55a857541ae492d6bb4597eddad3592d9b4080c34ed1d80042`  
		Last Modified: Wed, 16 Sep 2026 03:30:42 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:latest` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:0b04224222c2168cd41aafa7751e76454418a040f344495993f78c2525a0b8b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18783236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f6700159103e2d6fdaca4a992ba24e06eb8932896b9b46e959132233bdd6021`

```dockerfile
```

-	Layers:
	-	`sha256:741f530176e40ce73efc2d4fbfd6bbbdd87ad949a68ab40522c171aa87fa5095`  
		Last Modified: Wed, 16 Sep 2026 03:30:39 GMT  
		Size: 2.5 MB (2470519 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85be35362c033398084abe0336f50041c41a72555e2e19e829667ebd21f8452c`  
		Last Modified: Wed, 16 Sep 2026 03:30:39 GMT  
		Size: 5.4 MB (5364654 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64bb152ae093ddac6b7689544ed7110e6ac62b5b135b4bbe897e929090073ced`  
		Last Modified: Wed, 16 Sep 2026 03:30:39 GMT  
		Size: 5.5 MB (5521466 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88394d6099ed953c57ecda92a9655ae2ebd8d64e56b7139ae3fec6e091b1ecd7`  
		Last Modified: Wed, 16 Sep 2026 03:30:39 GMT  
		Size: 5.4 MB (5366396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:476a1839b24361f0989d6d9017ae311036791c76a8d39e2c9459d37f9f07c632`  
		Last Modified: Wed, 16 Sep 2026 03:30:40 GMT  
		Size: 60.2 KB (60201 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:latest` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:1f03947e1fd8b626e3892c48aa3e3c07305d651b6401feb70ef5f98abe81518e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.3 MB (96325848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59ebbf01669dd8c295fd1ddfc3156271f821d22856cbabe86105f3914ce5471e`
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
# Wed, 16 Sep 2026 03:15:32 GMT
ENV ERLANG_INSTALL_PATH_PREFIX=/opt/erlang
# Wed, 16 Sep 2026 03:15:32 GMT
ENV OPENSSL_INSTALL_PATH_PREFIX=/opt/openssl
# Wed, 16 Sep 2026 03:15:32 GMT
COPY /opt/erlang /opt/erlang # buildkit
# Wed, 16 Sep 2026 03:15:32 GMT
COPY /opt/openssl /opt/openssl # buildkit
# Wed, 16 Sep 2026 03:15:32 GMT
ENV PATH=/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:15:32 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Wed, 16 Sep 2026 03:15:34 GMT
RUN set -eux; 	ln -vsf /etc/ssl/certs /etc/ssl/private "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl"; 		ldconfig; 	sed -i.ORIG -e "/\.include.*fips/ s!.*!.include $OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf!" 		-e '/# fips =/s/.*/fips = fips_sect/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/openssl.cnf"; 	sed -i.ORIG -e '/^activate/s/^/#/' "$OPENSSL_INSTALL_PATH_PREFIX/etc/ssl/fipsmodule.cnf"; 	[ "$(command -v openssl)" = "$OPENSSL_INSTALL_PATH_PREFIX/bin/openssl" ]; 	openssl version; 	openssl version -d; 		erl -noshell -eval 'ok = crypto:start(), ok = io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'; 		groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 1777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /etc/rabbitmq/conf.d /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie # buildkit
# Wed, 16 Sep 2026 03:15:34 GMT
ENV RABBITMQ_VERSION=4.3.6
# Wed, 16 Sep 2026 03:15:34 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 16 Sep 2026 03:15:34 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 16 Sep 2026 03:15:34 GMT
ENV PATH=/opt/rabbitmq/sbin:/opt/erlang/bin:/opt/openssl/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:15:56 GMT
RUN set -eux; 	export DEBIAN_FRONTEND=noninteractive; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gosu 		tzdata 	; 	gosu nobody true; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get install --yes --no-install-recommends 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-latest-toolchain-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie" # buildkit
# Wed, 16 Sep 2026 03:15:56 GMT
RUN gosu rabbitmq rabbitmq-plugins enable --offline rabbitmq_prometheus # buildkit
# Wed, 16 Sep 2026 03:15:57 GMT
RUN ln -sf /opt/rabbitmq/plugins /plugins # buildkit
# Wed, 16 Sep 2026 03:15:57 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 16 Sep 2026 03:15:57 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 16 Sep 2026 03:15:57 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 16 Sep 2026 03:15:57 GMT
ENV RUNNING_UNDER_SYSTEMD=true
# Wed, 16 Sep 2026 03:15:57 GMT
COPY --chown=rabbitmq:rabbitmq 10-defaults.conf 20-management_agent.disable_metrics_collector.conf /etc/rabbitmq/conf.d/ # buildkit
# Wed, 16 Sep 2026 03:15:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:15:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 03:15:57 GMT
EXPOSE map[15691/tcp:{} 15692/tcp:{} 25672/tcp:{} 4369/tcp:{} 5671/tcp:{} 5672/tcp:{}]
# Wed, 16 Sep 2026 03:15:57 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:f98fce276933dc8d40e338c8a5447d14e10d972c731f074e9fcd9f9bb629aa50`  
		Last Modified: Fri, 11 Sep 2026 13:38:53 GMT  
		Size: 26.9 MB (26894925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c31a6fc5a8f85778f75d7e25d2064d099bac6178981454beb7df692e2f42a398`  
		Last Modified: Wed, 16 Sep 2026 03:16:21 GMT  
		Size: 33.4 MB (33382882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f85c77aad9d9e1c621eb5e909fda31a1b3f1306f5c2695f22a521c44011acb54`  
		Last Modified: Wed, 16 Sep 2026 03:16:20 GMT  
		Size: 7.3 MB (7322268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efe92ec23a13bb0c4c19fbb6856bde1d6226f13222f9a01c5f54ddc0c7e5011f`  
		Last Modified: Wed, 16 Sep 2026 03:16:19 GMT  
		Size: 9.7 KB (9746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c5806496994fa023d3f2f08b473b8e7ad32d667f93a76b594c78f7adab34c18`  
		Last Modified: Wed, 16 Sep 2026 03:16:21 GMT  
		Size: 28.7 MB (28714285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60e72e77a5febf1c639287b91c80c119ca409028596ba56c9a930f241bab9683`  
		Last Modified: Wed, 16 Sep 2026 03:16:21 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d53001982d04080905c0f6e7ac831ca0a82c6ecac318100015b5e543e21b15a`  
		Last Modified: Wed, 16 Sep 2026 03:16:21 GMT  
		Size: 109.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084284c1a8a6e03ef4293ba605d56de9b91f62dbd80b0334ffa221f6f293b655`  
		Last Modified: Wed, 16 Sep 2026 03:16:22 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:724546d77461d014489daad583d556b66621b6a12281276387ab294f85b62c15`  
		Last Modified: Wed, 16 Sep 2026 03:16:22 GMT  
		Size: 826.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rabbitmq:latest` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:4e9090ae2654b532848f3303dbb6983cae7ac60e08a633b44a63f1f9250d3bd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.2 MB (18237946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31d79c536c8d91e9e6bf92468f9116fa25952f0d5f1d6f523130627a473e9bb8`

```dockerfile
```

-	Layers:
	-	`sha256:dbd30f58f37c1e52c6ef2c5c138def7f38b7d774b2c7a2df8ad547d39e166b60`  
		Last Modified: Wed, 16 Sep 2026 03:16:20 GMT  
		Size: 2.5 MB (2471317 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:683f37183f134b75431d68cb6df9db3d01d0d5f4d759c0570263ba4901d8c66c`  
		Last Modified: Wed, 16 Sep 2026 03:16:20 GMT  
		Size: 5.2 MB (5183412 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73833fe621cc9fa8a58d81a8441862b36dc06d1cb53bab96d08a34cc5fcc5197`  
		Last Modified: Wed, 16 Sep 2026 03:16:20 GMT  
		Size: 5.3 MB (5337665 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10d1f157fd074cd6316c44a961d6cbe12ed1761883b5accdbd29e4ccf3ced0a2`  
		Last Modified: Wed, 16 Sep 2026 03:16:20 GMT  
		Size: 5.2 MB (5185154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f802fde045fecebad2db5f3ebc21a79a59ca00332286a0e96f952b1f4cd803c`  
		Last Modified: Wed, 16 Sep 2026 03:16:21 GMT  
		Size: 60.4 KB (60398 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:latest` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:c4bc4915ccf73cb10dbad605ae3a5a932ac4fedecbde77d3be6f3c5f123e0a32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.8 MB (111842239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f50cf35f81623c848982a0caec4673bd56f7af1f1bf61569f1a17ea51df4a1c0`
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

### `rabbitmq:latest` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:30c9daa4bc0d27fe0c3d427953366de700dc0052a4e011afd33d897002d0c3a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18842204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d113c817e8927f6835b27bd98d02d1cedfcbfaf1c34335223ee469f15109cce4`

```dockerfile
```

-	Layers:
	-	`sha256:ee9dc083265fb1007eb761d69ed6b159004c301c2dc6e58b2806fc292973f3a4`  
		Last Modified: Wed, 16 Sep 2026 03:30:25 GMT  
		Size: 2.5 MB (2471579 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:663273e952dd5080eefb2e144ab29129bcadf958239f17b1008043549cade2ff`  
		Last Modified: Wed, 16 Sep 2026 03:30:25 GMT  
		Size: 5.4 MB (5383871 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e08bc79a07fc4b894f532aa64a08adea09a5c6d8c27fee94a03b3a27e8b5576`  
		Last Modified: Wed, 16 Sep 2026 03:30:25 GMT  
		Size: 5.5 MB (5540701 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:300bbb13e22d3cdcb706a05f9da7bfa0494cdf8d31457015d1509aefdd1b5c6b`  
		Last Modified: Wed, 16 Sep 2026 03:30:25 GMT  
		Size: 5.4 MB (5385613 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88e01a0b2b497b58c07d0db2e1a026926a6731ae33c63e5db23f25fc30d784ee`  
		Last Modified: Wed, 16 Sep 2026 03:30:26 GMT  
		Size: 60.4 KB (60440 bytes)  
		MIME: application/vnd.in-toto+json

### `rabbitmq:latest` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:723a105a1808af9d49ff7387d3537b7acadc6161306510999d294b06bacf1675
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.4 MB (112353733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af41d7584ef287f65e5a7a15d62ace53efe03daaed89d7da3ed77264c0c36622`
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

### `rabbitmq:latest` - unknown; unknown

```console
$ docker pull rabbitmq@sha256:a7a1455b33b4eaa6b6c01dcb390ff4379878b5b837692fed4ae0692ff62224de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18697589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa818b0b80c358a10fb849d786845de8ef80f25bb9a19b597b2c9fafc0f5a0d2`

```dockerfile
```

-	Layers:
	-	`sha256:dda4ab6adc6fdfc8b94260174944d99b54a5a29ec02fc8938dfeae92daae3817`  
		Last Modified: Wed, 16 Sep 2026 07:51:11 GMT  
		Size: 2.5 MB (2474972 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22dde2261ec4215300f4a87e14e096ecee1244f57faa5619a2dcfc1e44761b30`  
		Last Modified: Wed, 16 Sep 2026 07:51:11 GMT  
		Size: 5.3 MB (5334590 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da71a617f37ff4c6c83e553e1f051e882f9c2867c3c4acd71981ed0dfc72fad1`  
		Last Modified: Wed, 16 Sep 2026 07:51:11 GMT  
		Size: 5.5 MB (5491432 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6f5a73c13851ae9d39b7afdcebf4f73d71e2cb67bcc5b826f8644bbc91aa997`  
		Last Modified: Wed, 16 Sep 2026 07:51:11 GMT  
		Size: 5.3 MB (5336332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4da74c1459d5803f5bf62a7b573121f3ef63561cac3d478b0586e2add9e40dad`  
		Last Modified: Wed, 16 Sep 2026 07:51:12 GMT  
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
