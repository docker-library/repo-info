## `irssi:latest`

```console
$ docker pull irssi@sha256:c3b809b1a23784c5e021515ba76048135180b472cde128d81050bc1b7eca4e9f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `irssi:latest` - linux; amd64

```console
$ docker pull irssi@sha256:329c96ea803627c33838afe1d2d74ef12a841b088296329bea0bbbf4db44ac39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53942420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4168781da51bec696145d7187f55d8bd6a0cf28878ec26786e7ae72937ca89f`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:15:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:15:03 GMT
ENV HOME=/home/user
# Wed, 28 Oct 2026 01:15:03 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 28 Oct 2026 01:15:03 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:15:03 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 28 Oct 2026 01:15:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 28 Oct 2026 01:15:42 GMT
WORKDIR /home/user
# Wed, 28 Oct 2026 01:15:42 GMT
USER user
# Wed, 28 Oct 2026 01:15:42 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7a7e7ee57c2baf444b41b5d671ec939b372d387ea9b18c17e0d9a073a95324a`  
		Last Modified: Wed, 28 Oct 2026 01:15:52 GMT  
		Size: 19.2 MB (19214389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1157ff21f10953e332f6423c7b1ab8d84705a6ddaa5a0906974c4ee0b1403d03`  
		Last Modified: Wed, 28 Oct 2026 01:15:52 GMT  
		Size: 3.3 KB (3327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6715b32d295e451d66ed209cdfc21719671d5443e64c9a1d0d962c17be038a80`  
		Last Modified: Wed, 28 Oct 2026 01:15:52 GMT  
		Size: 4.9 MB (4869436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:a16d2b3734d2f3feee2a046c22687bb0db09ac43fd2c46b9b8480a03809400b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5611933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a611f4da9cf2ae150702b936406b5f5ebfa2de7a7b7ba102acbda00efd336eaf`

```dockerfile
```

-	Layers:
	-	`sha256:d204d455063c525ce9369db42cb92c9dc9374328d19d827bec8c95ac33b60b36`  
		Last Modified: Wed, 28 Oct 2026 01:15:52 GMT  
		Size: 5.6 MB (5593282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac055165694f8d13835c9f139259712eb9dea9625d1e4cda5114c52c376edb51`  
		Last Modified: Wed, 28 Oct 2026 01:15:52 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; arm variant v5

```console
$ docker pull irssi@sha256:efa55d9f62761acb9a996e6ba931c668935cc7be030e336a8a215c6b21ba26ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (51020401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29e0291fe508ac0ee8e4bb326582979b6826377fe71f5b6744a9c006f1f1eaea`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:15:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:15:02 GMT
ENV HOME=/home/user
# Wed, 28 Oct 2026 01:15:02 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 28 Oct 2026 01:15:02 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:15:02 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 28 Oct 2026 01:15:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 28 Oct 2026 01:15:52 GMT
WORKDIR /home/user
# Wed, 28 Oct 2026 01:15:52 GMT
USER user
# Wed, 28 Oct 2026 01:15:52 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:68d18f0cacf7c180fce3f62bf1d71d368c005491f0c66d89fb313a1d6b6b81ee`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.0 MB (28018667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28302c1997427924afbe4c58964e288b108c117da3f0a2d8d86221a49e8eb5e0`  
		Last Modified: Wed, 28 Oct 2026 01:16:03 GMT  
		Size: 18.3 MB (18287387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65097e4d40d26917b7d17be008df92aeb7e7395c7962dc02c58b764ec088e197`  
		Last Modified: Wed, 28 Oct 2026 01:16:02 GMT  
		Size: 3.3 KB (3330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f0b181ea8b0c3528f2b9d74d34d27e2f278003649b46c543e0a7204075e3896`  
		Last Modified: Wed, 28 Oct 2026 01:16:03 GMT  
		Size: 4.7 MB (4710985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:eca9db7e94707900232ef62feee9e2fe8987b475b4f6ab9daad5aec0623621f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5609620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae6eb450fbe0a83f93ca51caa7975db5bf9ad1779fa00452a2ea8cc3e5d273f3`

```dockerfile
```

-	Layers:
	-	`sha256:36fecb949e5a8dacce05461888b0307a3589af53421eda1bf90f09cef3193a09`  
		Last Modified: Wed, 28 Oct 2026 01:16:03 GMT  
		Size: 5.6 MB (5590831 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72925201d23a84380ceb2f4b25dddad5b28dc01663267f6f1e6e8aca558136b2`  
		Last Modified: Wed, 28 Oct 2026 01:16:02 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; arm variant v7

```console
$ docker pull irssi@sha256:076eacdbddc2d049b7e3654efeabd3da5953dc703221763a9e510dcfce6beecd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48752435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae7b34e469ef4cf7357b838907dbf49e5b3c64578847d06ed1e54d4ffdb623a7`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:16:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:16:56 GMT
ENV HOME=/home/user
# Wed, 28 Oct 2026 01:16:56 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 28 Oct 2026 01:16:56 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:16:56 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 28 Oct 2026 01:17:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 28 Oct 2026 01:17:38 GMT
WORKDIR /home/user
# Wed, 28 Oct 2026 01:17:38 GMT
USER user
# Wed, 28 Oct 2026 01:17:38 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1482bec137440413f2f32c3033c1bb1a1f01a0da9a8c574af53111a9d8a08979`  
		Last Modified: Wed, 28 Oct 2026 01:17:49 GMT  
		Size: 17.9 MB (17915586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d00c91c5e61726381f9106b34d4cf15b9894455a226157a3417d2ad31a63aed`  
		Last Modified: Wed, 28 Oct 2026 01:17:48 GMT  
		Size: 3.3 KB (3327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1f3158bae9e7ec6a5a2ac7bfa89bcabf62ccab8324aa24ad2e6e4a2f611bed2`  
		Last Modified: Wed, 28 Oct 2026 01:17:49 GMT  
		Size: 4.6 MB (4561322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:9bb9d39736c6731cde9d6b9d71b4ffe5593c23af67a5d4f727cf715534cc070f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5612642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d854f962b56210d6607215bb89d209c128f60f0da7313f219d30fa1d4cdea260`

```dockerfile
```

-	Layers:
	-	`sha256:6f86bf4daa8b52460b757b751cd6950b2e0c4ad8c01b060deb12c6d71a4ae803`  
		Last Modified: Wed, 28 Oct 2026 01:17:49 GMT  
		Size: 5.6 MB (5593853 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2105cdd221ec4eb2c9cb0eafee19493b0d82190582ac3c903c3021f06df912d0`  
		Last Modified: Wed, 28 Oct 2026 01:17:48 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:839a6aa1f294b3a9ed00c67002799ac3cfab9e666abc044349d62b20dd76486a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54052189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:854c0cd9d248d48127a2516432659cbb5acb4d16f86cf57d253ffc333347faa3`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:14:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:14:47 GMT
ENV HOME=/home/user
# Wed, 28 Oct 2026 01:14:47 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 28 Oct 2026 01:14:47 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:14:47 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 28 Oct 2026 01:15:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 28 Oct 2026 01:15:24 GMT
WORKDIR /home/user
# Wed, 28 Oct 2026 01:15:24 GMT
USER user
# Wed, 28 Oct 2026 01:15:24 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68dcf636fedb66dd3c4715f5d16271b504a6d4c696b7656d8e65617eb3714637`  
		Last Modified: Wed, 28 Oct 2026 01:15:35 GMT  
		Size: 19.1 MB (19053135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9185f33dcace7f7845543e19e790f158d8752ad126d7545d27eeb030482a1188`  
		Last Modified: Wed, 28 Oct 2026 01:15:34 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27795d8289417d2c4dab43c4b0439976392d339edc7f8e47c31bd168153187f0`  
		Last Modified: Wed, 28 Oct 2026 01:15:34 GMT  
		Size: 4.8 MB (4782194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:860166ba1bf6ca290c9103133b5697f80a26684a361f59f011e5714f12c3bbac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5618591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63ea07ec13c798e75104de713de6bcb1c3e7fb0e37e0c826051e199882ef46fb`

```dockerfile
```

-	Layers:
	-	`sha256:9eaeb1099f2e05823c8a207ffa8f2b4e18279915124ac814be9cb9803d4b6d16`  
		Last Modified: Wed, 28 Oct 2026 01:15:34 GMT  
		Size: 5.6 MB (5599758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df4495c1e63ad83cd0e0aeb11b4d96e8f245319438a0ad594fe4553b3bb65bf1`  
		Last Modified: Wed, 28 Oct 2026 01:15:34 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; 386

```console
$ docker pull irssi@sha256:cb41746ee6522707e71e972b0bcc980c98a6b9e965efdfa3504eb3124bc5c966
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54979210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9b16d4ecf243fee4984ad5679b2387cab1891794648de5d44e9e5c8ecb43224`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:13:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:13:51 GMT
ENV HOME=/home/user
# Wed, 28 Oct 2026 01:13:51 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 28 Oct 2026 01:13:51 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:13:51 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 28 Oct 2026 01:14:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 28 Oct 2026 01:14:34 GMT
WORKDIR /home/user
# Wed, 28 Oct 2026 01:14:34 GMT
USER user
# Wed, 28 Oct 2026 01:14:34 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8de786efd9f843bb6c3b38a5b42b133b1940ce9f9efbdcf2a555339daf02c662`  
		Last Modified: Wed, 28 Oct 2026 00:11:00 GMT  
		Size: 31.4 MB (31368586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c1c339ccb9eb61bd876f50455f8c5f42a693d0970707f6beaf13f8dce89c952`  
		Last Modified: Wed, 28 Oct 2026 01:14:44 GMT  
		Size: 18.7 MB (18737343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f20c3090b9bfb5842ef2c5c0d3cebf48ea17f8bc800b953d9fbbd61870917a9`  
		Last Modified: Wed, 28 Oct 2026 01:14:43 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c88bf1a416ff31490aa6e567aa818b09b584bd0e7a7c638f16bf1e61a2f6741`  
		Last Modified: Wed, 28 Oct 2026 01:14:44 GMT  
		Size: 4.9 MB (4869917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:b75e358897a0856ba46e9d8c4bc4e6ad769e1e47f2bbf24f11e611c8f41b3bbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb5426a04ef66d5ff8396e4214dd670eeb872beb83c6fcdf335628887e44a9ef`

```dockerfile
```

-	Layers:
	-	`sha256:e5626f945891075b27e9c7325f21fd1948bfbfd4883eda2e0163bbdc3ea09c95`  
		Last Modified: Wed, 28 Oct 2026 01:14:44 GMT  
		Size: 5.6 MB (5589405 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74e30919bd438ea1d460598776990bcccfcd83cda377d38902d5db8bd5d439ef`  
		Last Modified: Wed, 28 Oct 2026 01:14:43 GMT  
		Size: 18.6 KB (18595 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; ppc64le

```console
$ docker pull irssi@sha256:c550791652e7b92090bf18cd059ba3c855eb2b4e0000c7bcc00c8e6d34460927
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58317555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d98b6e16135fe5af5d4a144c000306bdb57b2e57735476b4fd8b00c1111cb57c`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:39:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:39:06 GMT
ENV HOME=/home/user
# Wed, 28 Oct 2026 01:39:06 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 28 Oct 2026 01:39:06 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:39:06 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 28 Oct 2026 01:40:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 28 Oct 2026 01:40:56 GMT
WORKDIR /home/user
# Wed, 28 Oct 2026 01:40:56 GMT
USER user
# Wed, 28 Oct 2026 01:40:56 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d688cb97f469de31767e9204492359da98e404e48d222f7211cfeb41105a657`  
		Last Modified: Wed, 28 Oct 2026 01:41:17 GMT  
		Size: 19.5 MB (19547772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c715a767ac323c2a63d3949601e3410ad75c8b212fc485350d5a702dbd1970cd`  
		Last Modified: Wed, 28 Oct 2026 01:41:16 GMT  
		Size: 3.3 KB (3330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63cd9e6371921cda4766bffde53894bf6a5aca7e7fb94a432fdc22d2c5939767`  
		Last Modified: Wed, 28 Oct 2026 01:41:16 GMT  
		Size: 5.1 MB (5100158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:c092066b1fcda7c22faa635a70391058f2ca14cc451200da229139e9f7f2fc97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5619036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2456f587289307536a7ba2a729d4463b7774729da432ca0825f6a5a1385d9df9`

```dockerfile
```

-	Layers:
	-	`sha256:1205a944b06bc888b5c6882100e3541b893815e91873a81f88531626b48ca0bc`  
		Last Modified: Wed, 28 Oct 2026 01:41:16 GMT  
		Size: 5.6 MB (5600313 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d68badcd81e191407c59385841880e0c4c1ba790d6157aef82b0a801863c0d89`  
		Last Modified: Wed, 28 Oct 2026 01:41:16 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; riscv64

```console
$ docker pull irssi@sha256:3c90579e0e7377c3f8088b3a2afe52dd27bcef27a7bef1531826c3cc17182d22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51749792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:706b06ebeba21c0cc0e9b9210855e7c1d5a5284cfc89099ca932d787333ea2fc`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 03:04:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 03:04:11 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 03:04:11 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 03:04:11 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 03:04:11 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 03:11:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 03:11:19 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 03:11:19 GMT
USER user
# Wed, 21 Oct 2026 03:11:19 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:c1206888a96a9a1d872c517f2fbe95ce8d2ebe30c523c27832270d8b73768b7c`  
		Last Modified: Tue, 20 Oct 2026 23:49:10 GMT  
		Size: 28.3 MB (28333871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bd10f35503022dcd1cc0cfc0c85789fe1916ccb8e6c7a7c2623b67f25ac97cf`  
		Last Modified: Wed, 21 Oct 2026 03:13:38 GMT  
		Size: 18.5 MB (18549940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3edcea4599dfb99662e86e29828309265fb588ab01697c5090f165766f90edb2`  
		Last Modified: Wed, 21 Oct 2026 03:13:28 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8864895fc55745e78a77532bd7280edf2a45ab25a9610082de2a277a50d58954`  
		Last Modified: Wed, 21 Oct 2026 03:13:34 GMT  
		Size: 4.9 MB (4862620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:23196bd0b8a4c1750b9d3675e1ea4be0dd0e6ae1f7a234869d2798ebf51e1632
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d51fbbae650e1c5cc64c647ddde7e53a4cd373ea18fc859b27555d07dc13081`

```dockerfile
```

-	Layers:
	-	`sha256:de60d94e9041fc64b871209cc4d6c198d10ac35247d9805b172208d6f7311a82`  
		Last Modified: Wed, 21 Oct 2026 03:13:34 GMT  
		Size: 5.6 MB (5584585 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49f96cc5802144c7a634f7e0038ef826a9ae3fc94a412e2f7ee510f997f5678e`  
		Last Modified: Wed, 21 Oct 2026 03:13:28 GMT  
		Size: 18.7 KB (18722 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; s390x

```console
$ docker pull irssi@sha256:dc2631f55b0e8523929da4467a9b405cb1d96e4b8a92b6f776591b54e3e602f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54603045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a752f8d63f2e3c2ecef33661d28c3f04bb637ed31a0c93476b5f9598a4cfc966`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:19:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:19:57 GMT
ENV HOME=/home/user
# Wed, 28 Oct 2026 01:19:57 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 28 Oct 2026 01:19:57 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:19:57 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 28 Oct 2026 01:20:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 28 Oct 2026 01:20:33 GMT
WORKDIR /home/user
# Wed, 28 Oct 2026 01:20:33 GMT
USER user
# Wed, 28 Oct 2026 01:20:33 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:339d5b2a6ed9e2a6924e3ae4ce0b1ebaaf03703c49884018433f3933a87895fc`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 29.9 MB (29922921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cc840d69e5dbcd4f134bea239ad75ff4c9cad604ef25ecb805f68ecb9229db2`  
		Last Modified: Wed, 28 Oct 2026 01:20:49 GMT  
		Size: 19.8 MB (19768210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:550c1875bd81ea969553014381d2c22d4caa52883280dfb07a17efb5321356be`  
		Last Modified: Wed, 28 Oct 2026 01:20:48 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5a1221f9dd2dc2ab7b02ad4473ee47de355fbca1b9f9a9bd97558fa261c3315`  
		Last Modified: Wed, 28 Oct 2026 01:20:48 GMT  
		Size: 4.9 MB (4908550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:1073838674cb58469a62f4ca9a13fcc90212819b12a4aa96adc0d2fb13a7d82b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5612838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78441211319e894ddd0a684fc219ceab477b4a34e9683e6b745b92a7be0eb9aa`

```dockerfile
```

-	Layers:
	-	`sha256:6c56fa8de0f68b31fbfe010e8d4430ff7dc3ce026e3434d40251bbc1ae956853`  
		Last Modified: Wed, 28 Oct 2026 01:20:49 GMT  
		Size: 5.6 MB (5594187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:651951667a72d2511a3cd34c3e5a296e5a6dcec8c3695fec7fa552475e7b1e53`  
		Last Modified: Wed, 28 Oct 2026 01:20:48 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json
