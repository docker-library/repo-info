<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `irssi`

-	[`irssi:1`](#irssi1)
-	[`irssi:1-alpine`](#irssi1-alpine)
-	[`irssi:1-alpine3.23`](#irssi1-alpine323)
-	[`irssi:1-trixie`](#irssi1-trixie)
-	[`irssi:1.4`](#irssi14)
-	[`irssi:1.4-alpine`](#irssi14-alpine)
-	[`irssi:1.4-alpine3.23`](#irssi14-alpine323)
-	[`irssi:1.4-trixie`](#irssi14-trixie)
-	[`irssi:1.4.5`](#irssi145)
-	[`irssi:1.4.5-alpine`](#irssi145-alpine)
-	[`irssi:1.4.5-alpine3.23`](#irssi145-alpine323)
-	[`irssi:1.4.5-trixie`](#irssi145-trixie)
-	[`irssi:alpine`](#irssialpine)
-	[`irssi:alpine3.23`](#irssialpine323)
-	[`irssi:latest`](#irssilatest)
-	[`irssi:trixie`](#irssitrixie)

## `irssi:1`

```console
$ docker pull irssi@sha256:5da20d308820d2278b9bcbc031ccc0ef87d7e8e603869bf6bfab02090a2c8ec8
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

### `irssi:1` - linux; amd64

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

### `irssi:1` - unknown; unknown

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

### `irssi:1` - linux; arm variant v5

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

### `irssi:1` - unknown; unknown

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

### `irssi:1` - linux; arm variant v7

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

### `irssi:1` - unknown; unknown

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

### `irssi:1` - linux; arm64 variant v8

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

### `irssi:1` - unknown; unknown

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

### `irssi:1` - linux; 386

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

### `irssi:1` - unknown; unknown

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

### `irssi:1` - linux; ppc64le

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

### `irssi:1` - unknown; unknown

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

### `irssi:1` - linux; riscv64

```console
$ docker pull irssi@sha256:b9398996fc42e4f92081bac09225c3ee819b6673da696a48f8899328749d2e56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51761683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:404f3e9b0283462c4d3182ed40faa6cbdcae6da4eca8c208def9a5095987c0d3`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793059200'
# Fri, 30 Oct 2026 11:48:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 30 Oct 2026 11:48:22 GMT
ENV HOME=/home/user
# Fri, 30 Oct 2026 11:48:22 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Fri, 30 Oct 2026 11:48:22 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 11:48:22 GMT
ENV IRSSI_VERSION=1.4.5
# Fri, 30 Oct 2026 11:55:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Fri, 30 Oct 2026 11:55:29 GMT
WORKDIR /home/user
# Fri, 30 Oct 2026 11:55:29 GMT
USER user
# Fri, 30 Oct 2026 11:55:29 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:a81ae23cfcc12d03cee9e3704fa559c027af15fefe8c60924add8fd17e4c98c1`  
		Last Modified: Wed, 28 Oct 2026 18:39:27 GMT  
		Size: 28.3 MB (28345669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e42dd22c6cb9e91f2dc25e9c1cbad2fb6f0c45a0543e1ae49f1d672c70eb01`  
		Last Modified: Fri, 30 Oct 2026 11:57:28 GMT  
		Size: 18.6 MB (18550034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741c5ebf96c5a39beaebb03a85b041bf1efd3999e67aaceaa9ba02351e8aa380`  
		Last Modified: Fri, 30 Oct 2026 11:57:23 GMT  
		Size: 3.3 KB (3331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c216878c55e948019ea55d4f8c499508910071a51dc0a7515965373f8bebf03`  
		Last Modified: Fri, 30 Oct 2026 11:57:26 GMT  
		Size: 4.9 MB (4862617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:8bdece1818ddc31ad42e1e18910b79d4599ed86b87f3997801ebbd2ee4c45e57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43807d34411cece97f375585cc0cd0e35ceb8c2812fab71b9e5f1e8f86fc4ea8`

```dockerfile
```

-	Layers:
	-	`sha256:a382050068f123cad7982883f5e9b90cd49d306becb521c9603ae44a46f5e139`  
		Last Modified: Fri, 30 Oct 2026 11:57:26 GMT  
		Size: 5.6 MB (5584585 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c7f2dd4dc616c8b6ea5a3b3f464d3aa825af379c7e4f472e9cf2fa6e8c23d2f`  
		Last Modified: Fri, 30 Oct 2026 11:57:24 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; s390x

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

### `irssi:1` - unknown; unknown

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

## `irssi:1-alpine`

```console
$ docker pull irssi@sha256:540ea0780dd51d49d786d5380269b3eba5daa3ac72e183377b2ceafc65ea9219
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
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

### `irssi:1-alpine` - linux; amd64

```console
$ docker pull irssi@sha256:75ec2a007387a4bc7ea016e6d282a6db656c8cfa195af2900f8b9968ac391028
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20736652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c77dd691416c8d0fd2307fe866fb33f4cb0f0b8a245276add87c6e8d2745d3b8`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:40 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:06:40 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:06:40 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:06:40 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:06:40 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:06:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:06:52 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:06:52 GMT
USER user
# Wed, 21 Oct 2026 21:06:52 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5ce58680647bf65513cf4f290fe83c54c34ad214292120f247b90adf6de9bb8`  
		Last Modified: Wed, 21 Oct 2026 21:06:59 GMT  
		Size: 10.8 MB (10815509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5fc373befc2948622c8ec67db20d0f99a02d2145fdc665477a0c7da582c34f9`  
		Last Modified: Wed, 21 Oct 2026 21:06:59 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7e1caae42dd792911f8a422a56230836ee5f16bdadd52707b4758036bf7b2fc`  
		Last Modified: Wed, 21 Oct 2026 21:06:59 GMT  
		Size: 6.1 MB (6067931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:b70151b67f1c37c7127aa71184f86db02979fdecda0c3ad1655fcc68b0df3306
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba5b2e08c934247a0eea31980301bd651ed215bf879acf3b297dc33bf1075ff5`

```dockerfile
```

-	Layers:
	-	`sha256:5c31e6150855b1339db285380cdea4fdce7d1c262bd5bde1cf4dff3039014f61`  
		Last Modified: Wed, 21 Oct 2026 21:06:59 GMT  
		Size: 1.3 MB (1289248 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f06eeedbf7874717de2baebf573d4eb8a95ac4ff0a63ae25e84ea52ba288b861`  
		Last Modified: Wed, 21 Oct 2026 21:06:58 GMT  
		Size: 17.5 KB (17499 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine` - linux; arm variant v6

```console
$ docker pull irssi@sha256:4af9032bcd859968cdbfd686dd20e0c1f99e11a066473caba658e9470ddaa0ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19480253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef6fb9719d9d85f56d917c98ec988f04d4258e88b50aae34359e5554024c18ad`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:11:04 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:11:04 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:11:04 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:11:04 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:11:04 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:11:19 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:11:19 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:11:19 GMT
USER user
# Wed, 21 Oct 2026 21:11:19 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab8a51e657fc7a2da56592ea150fd9e06158f212092b94a395b00556eb1ef60b`  
		Last Modified: Wed, 21 Oct 2026 21:11:25 GMT  
		Size: 10.0 MB (10025777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6772ba687ee640673314fba9cf8646b45d6718b7401a276f18e39f932085fb0`  
		Last Modified: Wed, 21 Oct 2026 21:11:24 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82475fb4972c472f57c12fd6fae022524f7156b94bb53416dd59610c290608b5`  
		Last Modified: Wed, 21 Oct 2026 21:11:25 GMT  
		Size: 5.9 MB (5895305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:10e3b308151bc45fc8b1592938735d34bc970dab4a9f7e98d8d1c4ef6142febd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 KB (17423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1153e7d4ea55381b1a1f424e38ef6ee1681ab7eb07d75e16ae95006926d72b7c`

```dockerfile
```

-	Layers:
	-	`sha256:9caf8f1bf53a769f370eefb214a142864e37613d04b1a8479aa8765e35c7ede9`  
		Last Modified: Wed, 21 Oct 2026 21:11:24 GMT  
		Size: 17.4 KB (17423 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine` - linux; arm variant v7

```console
$ docker pull irssi@sha256:620e1fe3789d2154cc7a436b1661ff6a8601b11f696e3d660dc562f78e6e8e93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18770911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7448f678b2ab0a661b217be66d20880e3558af119dcece7c526aea0301780202`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:09:09 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:09:10 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:09:10 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:09:10 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:09:10 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:09:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:09:24 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:09:24 GMT
USER user
# Wed, 21 Oct 2026 21:09:24 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:349d2cc0aaca902a17627cb405a52203d446de0f45c98714141e9c96bf30b94f`  
		Last Modified: Wed, 21 Oct 2026 20:46:48 GMT  
		Size: 3.3 MB (3267040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6edaddb04ceb3355866dce9d94deb6d223e937b91a41615a8cca91f0a16fc9e5`  
		Last Modified: Wed, 21 Oct 2026 21:09:32 GMT  
		Size: 9.9 MB (9859334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95529e4712d45975677cf819b7e48a05142e036184e08fe9ca7902beebe20ee9`  
		Last Modified: Wed, 21 Oct 2026 21:09:31 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e8adef0f0579ecf7e9cbcdd43ffc5a8494847a431784f9a15b0f24a447c0383`  
		Last Modified: Wed, 21 Oct 2026 21:09:31 GMT  
		Size: 5.6 MB (5643556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:a06cc8dc95c09fba6f9bd758e52bdebd764b8bdde21cd0823c4ce7cb7d79fe00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1309290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66ecc6ba564f75aa0866d3787234c5728b5d643b1892ffa2db7c164ec7589dac`

```dockerfile
```

-	Layers:
	-	`sha256:19d92ca93975fdf799df0c9f0656b88620845fdd846a02022cd16ec60ee02c75`  
		Last Modified: Wed, 21 Oct 2026 21:09:31 GMT  
		Size: 1.3 MB (1291656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b7aaee04542b02e51708f05f3766bdbc161fe084dca3fb1c6ed806d7268608c`  
		Last Modified: Wed, 21 Oct 2026 21:09:31 GMT  
		Size: 17.6 KB (17634 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:8d7470356c61c7c0e89e8ba82a575065c0c5269132ca9a98e728e05a786e69d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20879093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb17b262e8d9802d3ee63b0634b3bc6a34e41a1d14b051a47378b85f7bd7046a`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:04 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:06:04 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:06:04 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:06:04 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:06:04 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:06:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:06:17 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:06:17 GMT
USER user
# Wed, 21 Oct 2026 21:06:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:666b3d421220ae797ac61b65bfafe13ff140f4e9d178771429a66014975506a8`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 10.7 MB (10749808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741e6da6b2b634d61d158f7e767bda28ea78e6f18354373d3cb321140fdb0175`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6324dbb26db17d055921cff930a6561b91ea7b90099a3574da782d6efe36ff2`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 5.9 MB (5938807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:2ced7d03760dfd54b37bc1443fe89b2d17c5284a3c07db9a63275c8e400f359d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1460fe62a3b558d8d1a4dbcc4bc8de75e65f3089a51918ed8650036720f99971`

```dockerfile
```

-	Layers:
	-	`sha256:173411df67a988867ac09f442392b175cfde959424420aed78bcfd2f80e31b8d`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 1.3 MB (1288702 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:177284c09f250cbf0e68c1c33be96dfdefbcd8754574f651942f705c7b0a8e6c`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 17.7 KB (17682 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine` - linux; 386

```console
$ docker pull irssi@sha256:6020ba1bafa72fe73eb0e0c32dd890a0bf16e67349e69af06e89a916d705e2f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20172701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8c87a2a44dcae3aab8b7f000d1dbc0b26703ce825ac46ceba04018f6ae8506f`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:21 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:06:21 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:06:21 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:06:21 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:06:21 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:06:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:06:41 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:06:41 GMT
USER user
# Wed, 21 Oct 2026 21:06:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f39465ce84becf679a147dc059c54da328e647c257f9f8a48263965e5aa67818`  
		Last Modified: Wed, 21 Oct 2026 21:06:48 GMT  
		Size: 10.3 MB (10349339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ce6b69877c78f76e55d53aeb3ea1e4f4d5f72e48bc2e300a89a0a7fda16876a`  
		Last Modified: Wed, 21 Oct 2026 21:06:48 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df7e51b6a77ced4800a3caa90e53ca8f55f0498f84e14228b44df373877f949`  
		Last Modified: Wed, 21 Oct 2026 21:06:48 GMT  
		Size: 6.1 MB (6145073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:6dd60d1a55717a7ce1c2d59f01bcaffc13257c3ac8107a17012ab3e1bbfbce8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d30cec18abb5953cdcc8d2826d19c284068a4c79a6fb5f9e4a91a6c715e909c8`

```dockerfile
```

-	Layers:
	-	`sha256:36faca5d1bde2857ca03d8afa17d01133a4f870d28a95a422ac4e2c5cbb88780`  
		Last Modified: Wed, 21 Oct 2026 21:06:48 GMT  
		Size: 1.3 MB (1289203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac46588aeeb2f96a65b18bc8e8632783d4893e0e7bddf297f3edba7cb895b8a8`  
		Last Modified: Wed, 21 Oct 2026 21:06:47 GMT  
		Size: 17.4 KB (17444 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine` - linux; ppc64le

```console
$ docker pull irssi@sha256:01451d7594170904828a6c54b6ac39c88f05d5d354fd26b927e18cc3b6db5620
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21222819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9f3a631f83b94485c1bbfbfb7cec6054c9033ec0fa1f4720934fead0c6a2e0`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:32:42 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 22 Oct 2026 10:32:42 GMT
ENV HOME=/home/user
# Thu, 22 Oct 2026 10:32:42 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 22 Oct 2026 10:32:42 GMT
ENV LANG=C.UTF-8
# Thu, 22 Oct 2026 10:32:42 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 22 Oct 2026 10:33:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 22 Oct 2026 10:33:07 GMT
WORKDIR /home/user
# Thu, 22 Oct 2026 10:33:07 GMT
USER user
# Thu, 22 Oct 2026 10:33:07 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3919971710de78afadd31f0d3899ea71d96ef55f5849386a7b811bcc3cd9f6a0`  
		Last Modified: Thu, 22 Oct 2026 10:33:22 GMT  
		Size: 11.0 MB (11039485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5199fd69215c5c6e933f7649eff0673e7240f332a9cc24ed9c9fdf65aeae502e`  
		Last Modified: Thu, 22 Oct 2026 10:33:21 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab8dbc08914d252096c11ae9fec5ce3b6589f3b64a1ada57a5159f154638141b`  
		Last Modified: Thu, 22 Oct 2026 10:33:22 GMT  
		Size: 6.4 MB (6363970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:850c8b7dd3bd6b8c8ede81d85d252e57badd5cc32f08c0bd87263c416b8bed11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff8f44784d1130dac63b52027e654fe4edda3a1c6916a6be537c231750c1110`

```dockerfile
```

-	Layers:
	-	`sha256:acf7d10cd0d792752ad67bd05aacbee92c3a2e103fa1d2ad39b9660075a3df2d`  
		Last Modified: Thu, 22 Oct 2026 10:33:21 GMT  
		Size: 1.3 MB (1288655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d85b7e407978067efb2b05383b6b80333eaf04cf6db7ff8113244326e5533687`  
		Last Modified: Thu, 22 Oct 2026 10:33:21 GMT  
		Size: 17.6 KB (17571 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine` - linux; riscv64

```console
$ docker pull irssi@sha256:c24c25d5d5a242e8f9edf9c6788b0cd213ce8bccd91bef8dd1edaa316c19d1e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19894521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e151e95afa7a0cb35c839f8fb02feebea11ed3d5df06c49125a713112bc3dee`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 23 Oct 2026 04:55:52 GMT
ADD alpine-minirootfs-3.23.7-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:55:52 GMT
CMD ["/bin/sh"]
# Sat, 24 Oct 2026 16:02:35 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Sat, 24 Oct 2026 16:02:36 GMT
ENV HOME=/home/user
# Sat, 24 Oct 2026 16:02:36 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 24 Oct 2026 16:02:36 GMT
ENV LANG=C.UTF-8
# Sat, 24 Oct 2026 16:02:36 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 24 Oct 2026 16:06:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Sat, 24 Oct 2026 16:06:37 GMT
WORKDIR /home/user
# Sat, 24 Oct 2026 16:06:37 GMT
USER user
# Sat, 24 Oct 2026 16:06:37 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d03de878707a9da693ddc1eddbe1328c578f016182f72385d87f3b4b40158d37`  
		Last Modified: Fri, 23 Oct 2026 04:56:27 GMT  
		Size: 3.6 MB (3579612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7d69c25cc87bbc8892fc547be1d0629808c7da8bd8bb3e74680bf39866add6`  
		Last Modified: Sat, 24 Oct 2026 16:07:43 GMT  
		Size: 10.2 MB (10247990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50807fcfd5cb73bc16c92a39208b82f2bab60a55ad7fe838d260c7d60d7895d3`  
		Last Modified: Sat, 24 Oct 2026 16:07:41 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7724e34420f5f9833cddd0d5f39fa315be1dc9eb49fe8506acdfbc2c3863ef0`  
		Last Modified: Sat, 24 Oct 2026 16:07:43 GMT  
		Size: 6.1 MB (6065935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:a1fe8ae31046a44a7de54e51eeef536f71c6244702dbdc21952b98a9f43df755
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:969ab3c4f6593f35bd6eaaa6d614bbaca1c35390efbbdc18924cdc26550ea366`

```dockerfile
```

-	Layers:
	-	`sha256:75c6988d47b29d1965a595dfc5416429889921bd68f8ae136122bb6fff497ee5`  
		Last Modified: Sat, 24 Oct 2026 16:07:42 GMT  
		Size: 1.3 MB (1288651 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21081e308e0e0d517290ce8f2d953baaff734ba1a69ff4b94d0a75e15a48a59f`  
		Last Modified: Sat, 24 Oct 2026 16:07:41 GMT  
		Size: 17.6 KB (17572 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine` - linux; s390x

```console
$ docker pull irssi@sha256:e092dfa0266df5c5266bb07832b94161c17d1663fc55d6a9b9d126f946a1413b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21287999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0e787fb3ba9b02571c8392210b63de56e987d72fedc7cb1280d8cdd210d7c23`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:39 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:06:39 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:06:39 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:06:39 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:06:39 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:06:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:06:53 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:06:53 GMT
USER user
# Wed, 21 Oct 2026 21:06:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:861c7277ad85e322353d03af79af3474ed1b63a4011b8d8ff078a16695cad4c3`  
		Last Modified: Wed, 21 Oct 2026 21:07:05 GMT  
		Size: 11.4 MB (11364981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58a482c646378d6aed326a9963787f742ef1d9be7fd4c617903067a733251935`  
		Last Modified: Wed, 21 Oct 2026 21:07:05 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce43c640fc8236f646730fb605db7fe501dfd98b1f8159030c347d6f75c17323`  
		Last Modified: Wed, 21 Oct 2026 21:07:05 GMT  
		Size: 6.2 MB (6204916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:f2ae176e9a3c47913ac6f5db8e10d15a82242eaf95c5281ba04b49a9856b595d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb9c63ee45081298c96f5d4972c7d20a168f58ace588561b18fbe01ce65e1ad2`

```dockerfile
```

-	Layers:
	-	`sha256:34ff2f2b8efca5a491cad41420a38640ca1c084e2702db244488c3c6c48877f7`  
		Last Modified: Wed, 21 Oct 2026 21:07:04 GMT  
		Size: 1.3 MB (1288597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cdc60272eb3b6b873bf2499068dbfdb2b77c0fcf5da80f87d95580c64d89249`  
		Last Modified: Wed, 21 Oct 2026 21:07:04 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1-alpine3.23`

```console
$ docker pull irssi@sha256:540ea0780dd51d49d786d5380269b3eba5daa3ac72e183377b2ceafc65ea9219
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
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

### `irssi:1-alpine3.23` - linux; amd64

```console
$ docker pull irssi@sha256:75ec2a007387a4bc7ea016e6d282a6db656c8cfa195af2900f8b9968ac391028
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20736652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c77dd691416c8d0fd2307fe866fb33f4cb0f0b8a245276add87c6e8d2745d3b8`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:40 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:06:40 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:06:40 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:06:40 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:06:40 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:06:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:06:52 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:06:52 GMT
USER user
# Wed, 21 Oct 2026 21:06:52 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5ce58680647bf65513cf4f290fe83c54c34ad214292120f247b90adf6de9bb8`  
		Last Modified: Wed, 21 Oct 2026 21:06:59 GMT  
		Size: 10.8 MB (10815509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5fc373befc2948622c8ec67db20d0f99a02d2145fdc665477a0c7da582c34f9`  
		Last Modified: Wed, 21 Oct 2026 21:06:59 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7e1caae42dd792911f8a422a56230836ee5f16bdadd52707b4758036bf7b2fc`  
		Last Modified: Wed, 21 Oct 2026 21:06:59 GMT  
		Size: 6.1 MB (6067931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:b70151b67f1c37c7127aa71184f86db02979fdecda0c3ad1655fcc68b0df3306
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba5b2e08c934247a0eea31980301bd651ed215bf879acf3b297dc33bf1075ff5`

```dockerfile
```

-	Layers:
	-	`sha256:5c31e6150855b1339db285380cdea4fdce7d1c262bd5bde1cf4dff3039014f61`  
		Last Modified: Wed, 21 Oct 2026 21:06:59 GMT  
		Size: 1.3 MB (1289248 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f06eeedbf7874717de2baebf573d4eb8a95ac4ff0a63ae25e84ea52ba288b861`  
		Last Modified: Wed, 21 Oct 2026 21:06:58 GMT  
		Size: 17.5 KB (17499 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine3.23` - linux; arm variant v6

```console
$ docker pull irssi@sha256:4af9032bcd859968cdbfd686dd20e0c1f99e11a066473caba658e9470ddaa0ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19480253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef6fb9719d9d85f56d917c98ec988f04d4258e88b50aae34359e5554024c18ad`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:11:04 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:11:04 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:11:04 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:11:04 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:11:04 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:11:19 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:11:19 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:11:19 GMT
USER user
# Wed, 21 Oct 2026 21:11:19 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab8a51e657fc7a2da56592ea150fd9e06158f212092b94a395b00556eb1ef60b`  
		Last Modified: Wed, 21 Oct 2026 21:11:25 GMT  
		Size: 10.0 MB (10025777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6772ba687ee640673314fba9cf8646b45d6718b7401a276f18e39f932085fb0`  
		Last Modified: Wed, 21 Oct 2026 21:11:24 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82475fb4972c472f57c12fd6fae022524f7156b94bb53416dd59610c290608b5`  
		Last Modified: Wed, 21 Oct 2026 21:11:25 GMT  
		Size: 5.9 MB (5895305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:10e3b308151bc45fc8b1592938735d34bc970dab4a9f7e98d8d1c4ef6142febd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 KB (17423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1153e7d4ea55381b1a1f424e38ef6ee1681ab7eb07d75e16ae95006926d72b7c`

```dockerfile
```

-	Layers:
	-	`sha256:9caf8f1bf53a769f370eefb214a142864e37613d04b1a8479aa8765e35c7ede9`  
		Last Modified: Wed, 21 Oct 2026 21:11:24 GMT  
		Size: 17.4 KB (17423 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine3.23` - linux; arm variant v7

```console
$ docker pull irssi@sha256:620e1fe3789d2154cc7a436b1661ff6a8601b11f696e3d660dc562f78e6e8e93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18770911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7448f678b2ab0a661b217be66d20880e3558af119dcece7c526aea0301780202`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:09:09 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:09:10 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:09:10 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:09:10 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:09:10 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:09:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:09:24 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:09:24 GMT
USER user
# Wed, 21 Oct 2026 21:09:24 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:349d2cc0aaca902a17627cb405a52203d446de0f45c98714141e9c96bf30b94f`  
		Last Modified: Wed, 21 Oct 2026 20:46:48 GMT  
		Size: 3.3 MB (3267040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6edaddb04ceb3355866dce9d94deb6d223e937b91a41615a8cca91f0a16fc9e5`  
		Last Modified: Wed, 21 Oct 2026 21:09:32 GMT  
		Size: 9.9 MB (9859334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95529e4712d45975677cf819b7e48a05142e036184e08fe9ca7902beebe20ee9`  
		Last Modified: Wed, 21 Oct 2026 21:09:31 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e8adef0f0579ecf7e9cbcdd43ffc5a8494847a431784f9a15b0f24a447c0383`  
		Last Modified: Wed, 21 Oct 2026 21:09:31 GMT  
		Size: 5.6 MB (5643556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:a06cc8dc95c09fba6f9bd758e52bdebd764b8bdde21cd0823c4ce7cb7d79fe00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1309290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66ecc6ba564f75aa0866d3787234c5728b5d643b1892ffa2db7c164ec7589dac`

```dockerfile
```

-	Layers:
	-	`sha256:19d92ca93975fdf799df0c9f0656b88620845fdd846a02022cd16ec60ee02c75`  
		Last Modified: Wed, 21 Oct 2026 21:09:31 GMT  
		Size: 1.3 MB (1291656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b7aaee04542b02e51708f05f3766bdbc161fe084dca3fb1c6ed806d7268608c`  
		Last Modified: Wed, 21 Oct 2026 21:09:31 GMT  
		Size: 17.6 KB (17634 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:8d7470356c61c7c0e89e8ba82a575065c0c5269132ca9a98e728e05a786e69d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20879093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb17b262e8d9802d3ee63b0634b3bc6a34e41a1d14b051a47378b85f7bd7046a`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:04 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:06:04 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:06:04 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:06:04 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:06:04 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:06:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:06:17 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:06:17 GMT
USER user
# Wed, 21 Oct 2026 21:06:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:666b3d421220ae797ac61b65bfafe13ff140f4e9d178771429a66014975506a8`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 10.7 MB (10749808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741e6da6b2b634d61d158f7e767bda28ea78e6f18354373d3cb321140fdb0175`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6324dbb26db17d055921cff930a6561b91ea7b90099a3574da782d6efe36ff2`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 5.9 MB (5938807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:2ced7d03760dfd54b37bc1443fe89b2d17c5284a3c07db9a63275c8e400f359d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1460fe62a3b558d8d1a4dbcc4bc8de75e65f3089a51918ed8650036720f99971`

```dockerfile
```

-	Layers:
	-	`sha256:173411df67a988867ac09f442392b175cfde959424420aed78bcfd2f80e31b8d`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 1.3 MB (1288702 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:177284c09f250cbf0e68c1c33be96dfdefbcd8754574f651942f705c7b0a8e6c`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 17.7 KB (17682 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine3.23` - linux; 386

```console
$ docker pull irssi@sha256:6020ba1bafa72fe73eb0e0c32dd890a0bf16e67349e69af06e89a916d705e2f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20172701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8c87a2a44dcae3aab8b7f000d1dbc0b26703ce825ac46ceba04018f6ae8506f`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:21 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:06:21 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:06:21 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:06:21 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:06:21 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:06:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:06:41 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:06:41 GMT
USER user
# Wed, 21 Oct 2026 21:06:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f39465ce84becf679a147dc059c54da328e647c257f9f8a48263965e5aa67818`  
		Last Modified: Wed, 21 Oct 2026 21:06:48 GMT  
		Size: 10.3 MB (10349339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ce6b69877c78f76e55d53aeb3ea1e4f4d5f72e48bc2e300a89a0a7fda16876a`  
		Last Modified: Wed, 21 Oct 2026 21:06:48 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df7e51b6a77ced4800a3caa90e53ca8f55f0498f84e14228b44df373877f949`  
		Last Modified: Wed, 21 Oct 2026 21:06:48 GMT  
		Size: 6.1 MB (6145073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:6dd60d1a55717a7ce1c2d59f01bcaffc13257c3ac8107a17012ab3e1bbfbce8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d30cec18abb5953cdcc8d2826d19c284068a4c79a6fb5f9e4a91a6c715e909c8`

```dockerfile
```

-	Layers:
	-	`sha256:36faca5d1bde2857ca03d8afa17d01133a4f870d28a95a422ac4e2c5cbb88780`  
		Last Modified: Wed, 21 Oct 2026 21:06:48 GMT  
		Size: 1.3 MB (1289203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac46588aeeb2f96a65b18bc8e8632783d4893e0e7bddf297f3edba7cb895b8a8`  
		Last Modified: Wed, 21 Oct 2026 21:06:47 GMT  
		Size: 17.4 KB (17444 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine3.23` - linux; ppc64le

```console
$ docker pull irssi@sha256:01451d7594170904828a6c54b6ac39c88f05d5d354fd26b927e18cc3b6db5620
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21222819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9f3a631f83b94485c1bbfbfb7cec6054c9033ec0fa1f4720934fead0c6a2e0`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:32:42 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 22 Oct 2026 10:32:42 GMT
ENV HOME=/home/user
# Thu, 22 Oct 2026 10:32:42 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 22 Oct 2026 10:32:42 GMT
ENV LANG=C.UTF-8
# Thu, 22 Oct 2026 10:32:42 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 22 Oct 2026 10:33:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 22 Oct 2026 10:33:07 GMT
WORKDIR /home/user
# Thu, 22 Oct 2026 10:33:07 GMT
USER user
# Thu, 22 Oct 2026 10:33:07 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3919971710de78afadd31f0d3899ea71d96ef55f5849386a7b811bcc3cd9f6a0`  
		Last Modified: Thu, 22 Oct 2026 10:33:22 GMT  
		Size: 11.0 MB (11039485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5199fd69215c5c6e933f7649eff0673e7240f332a9cc24ed9c9fdf65aeae502e`  
		Last Modified: Thu, 22 Oct 2026 10:33:21 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab8dbc08914d252096c11ae9fec5ce3b6589f3b64a1ada57a5159f154638141b`  
		Last Modified: Thu, 22 Oct 2026 10:33:22 GMT  
		Size: 6.4 MB (6363970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:850c8b7dd3bd6b8c8ede81d85d252e57badd5cc32f08c0bd87263c416b8bed11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff8f44784d1130dac63b52027e654fe4edda3a1c6916a6be537c231750c1110`

```dockerfile
```

-	Layers:
	-	`sha256:acf7d10cd0d792752ad67bd05aacbee92c3a2e103fa1d2ad39b9660075a3df2d`  
		Last Modified: Thu, 22 Oct 2026 10:33:21 GMT  
		Size: 1.3 MB (1288655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d85b7e407978067efb2b05383b6b80333eaf04cf6db7ff8113244326e5533687`  
		Last Modified: Thu, 22 Oct 2026 10:33:21 GMT  
		Size: 17.6 KB (17571 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine3.23` - linux; riscv64

```console
$ docker pull irssi@sha256:c24c25d5d5a242e8f9edf9c6788b0cd213ce8bccd91bef8dd1edaa316c19d1e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19894521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e151e95afa7a0cb35c839f8fb02feebea11ed3d5df06c49125a713112bc3dee`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 23 Oct 2026 04:55:52 GMT
ADD alpine-minirootfs-3.23.7-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:55:52 GMT
CMD ["/bin/sh"]
# Sat, 24 Oct 2026 16:02:35 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Sat, 24 Oct 2026 16:02:36 GMT
ENV HOME=/home/user
# Sat, 24 Oct 2026 16:02:36 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 24 Oct 2026 16:02:36 GMT
ENV LANG=C.UTF-8
# Sat, 24 Oct 2026 16:02:36 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 24 Oct 2026 16:06:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Sat, 24 Oct 2026 16:06:37 GMT
WORKDIR /home/user
# Sat, 24 Oct 2026 16:06:37 GMT
USER user
# Sat, 24 Oct 2026 16:06:37 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d03de878707a9da693ddc1eddbe1328c578f016182f72385d87f3b4b40158d37`  
		Last Modified: Fri, 23 Oct 2026 04:56:27 GMT  
		Size: 3.6 MB (3579612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7d69c25cc87bbc8892fc547be1d0629808c7da8bd8bb3e74680bf39866add6`  
		Last Modified: Sat, 24 Oct 2026 16:07:43 GMT  
		Size: 10.2 MB (10247990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50807fcfd5cb73bc16c92a39208b82f2bab60a55ad7fe838d260c7d60d7895d3`  
		Last Modified: Sat, 24 Oct 2026 16:07:41 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7724e34420f5f9833cddd0d5f39fa315be1dc9eb49fe8506acdfbc2c3863ef0`  
		Last Modified: Sat, 24 Oct 2026 16:07:43 GMT  
		Size: 6.1 MB (6065935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:a1fe8ae31046a44a7de54e51eeef536f71c6244702dbdc21952b98a9f43df755
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:969ab3c4f6593f35bd6eaaa6d614bbaca1c35390efbbdc18924cdc26550ea366`

```dockerfile
```

-	Layers:
	-	`sha256:75c6988d47b29d1965a595dfc5416429889921bd68f8ae136122bb6fff497ee5`  
		Last Modified: Sat, 24 Oct 2026 16:07:42 GMT  
		Size: 1.3 MB (1288651 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21081e308e0e0d517290ce8f2d953baaff734ba1a69ff4b94d0a75e15a48a59f`  
		Last Modified: Sat, 24 Oct 2026 16:07:41 GMT  
		Size: 17.6 KB (17572 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine3.23` - linux; s390x

```console
$ docker pull irssi@sha256:e092dfa0266df5c5266bb07832b94161c17d1663fc55d6a9b9d126f946a1413b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21287999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0e787fb3ba9b02571c8392210b63de56e987d72fedc7cb1280d8cdd210d7c23`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:39 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:06:39 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:06:39 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:06:39 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:06:39 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:06:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:06:53 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:06:53 GMT
USER user
# Wed, 21 Oct 2026 21:06:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:861c7277ad85e322353d03af79af3474ed1b63a4011b8d8ff078a16695cad4c3`  
		Last Modified: Wed, 21 Oct 2026 21:07:05 GMT  
		Size: 11.4 MB (11364981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58a482c646378d6aed326a9963787f742ef1d9be7fd4c617903067a733251935`  
		Last Modified: Wed, 21 Oct 2026 21:07:05 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce43c640fc8236f646730fb605db7fe501dfd98b1f8159030c347d6f75c17323`  
		Last Modified: Wed, 21 Oct 2026 21:07:05 GMT  
		Size: 6.2 MB (6204916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:f2ae176e9a3c47913ac6f5db8e10d15a82242eaf95c5281ba04b49a9856b595d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb9c63ee45081298c96f5d4972c7d20a168f58ace588561b18fbe01ce65e1ad2`

```dockerfile
```

-	Layers:
	-	`sha256:34ff2f2b8efca5a491cad41420a38640ca1c084e2702db244488c3c6c48877f7`  
		Last Modified: Wed, 21 Oct 2026 21:07:04 GMT  
		Size: 1.3 MB (1288597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cdc60272eb3b6b873bf2499068dbfdb2b77c0fcf5da80f87d95580c64d89249`  
		Last Modified: Wed, 21 Oct 2026 21:07:04 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1-trixie`

```console
$ docker pull irssi@sha256:5da20d308820d2278b9bcbc031ccc0ef87d7e8e603869bf6bfab02090a2c8ec8
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

### `irssi:1-trixie` - linux; amd64

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

### `irssi:1-trixie` - unknown; unknown

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

### `irssi:1-trixie` - linux; arm variant v5

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

### `irssi:1-trixie` - unknown; unknown

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

### `irssi:1-trixie` - linux; arm variant v7

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

### `irssi:1-trixie` - unknown; unknown

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

### `irssi:1-trixie` - linux; arm64 variant v8

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

### `irssi:1-trixie` - unknown; unknown

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

### `irssi:1-trixie` - linux; 386

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

### `irssi:1-trixie` - unknown; unknown

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

### `irssi:1-trixie` - linux; ppc64le

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

### `irssi:1-trixie` - unknown; unknown

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

### `irssi:1-trixie` - linux; riscv64

```console
$ docker pull irssi@sha256:b9398996fc42e4f92081bac09225c3ee819b6673da696a48f8899328749d2e56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51761683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:404f3e9b0283462c4d3182ed40faa6cbdcae6da4eca8c208def9a5095987c0d3`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793059200'
# Fri, 30 Oct 2026 11:48:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 30 Oct 2026 11:48:22 GMT
ENV HOME=/home/user
# Fri, 30 Oct 2026 11:48:22 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Fri, 30 Oct 2026 11:48:22 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 11:48:22 GMT
ENV IRSSI_VERSION=1.4.5
# Fri, 30 Oct 2026 11:55:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Fri, 30 Oct 2026 11:55:29 GMT
WORKDIR /home/user
# Fri, 30 Oct 2026 11:55:29 GMT
USER user
# Fri, 30 Oct 2026 11:55:29 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:a81ae23cfcc12d03cee9e3704fa559c027af15fefe8c60924add8fd17e4c98c1`  
		Last Modified: Wed, 28 Oct 2026 18:39:27 GMT  
		Size: 28.3 MB (28345669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e42dd22c6cb9e91f2dc25e9c1cbad2fb6f0c45a0543e1ae49f1d672c70eb01`  
		Last Modified: Fri, 30 Oct 2026 11:57:28 GMT  
		Size: 18.6 MB (18550034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741c5ebf96c5a39beaebb03a85b041bf1efd3999e67aaceaa9ba02351e8aa380`  
		Last Modified: Fri, 30 Oct 2026 11:57:23 GMT  
		Size: 3.3 KB (3331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c216878c55e948019ea55d4f8c499508910071a51dc0a7515965373f8bebf03`  
		Last Modified: Fri, 30 Oct 2026 11:57:26 GMT  
		Size: 4.9 MB (4862617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:8bdece1818ddc31ad42e1e18910b79d4599ed86b87f3997801ebbd2ee4c45e57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43807d34411cece97f375585cc0cd0e35ceb8c2812fab71b9e5f1e8f86fc4ea8`

```dockerfile
```

-	Layers:
	-	`sha256:a382050068f123cad7982883f5e9b90cd49d306becb521c9603ae44a46f5e139`  
		Last Modified: Fri, 30 Oct 2026 11:57:26 GMT  
		Size: 5.6 MB (5584585 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c7f2dd4dc616c8b6ea5a3b3f464d3aa825af379c7e4f472e9cf2fa6e8c23d2f`  
		Last Modified: Fri, 30 Oct 2026 11:57:24 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; s390x

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

### `irssi:1-trixie` - unknown; unknown

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

## `irssi:1.4`

```console
$ docker pull irssi@sha256:5da20d308820d2278b9bcbc031ccc0ef87d7e8e603869bf6bfab02090a2c8ec8
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

### `irssi:1.4` - linux; amd64

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

### `irssi:1.4` - unknown; unknown

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

### `irssi:1.4` - linux; arm variant v5

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

### `irssi:1.4` - unknown; unknown

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

### `irssi:1.4` - linux; arm variant v7

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

### `irssi:1.4` - unknown; unknown

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

### `irssi:1.4` - linux; arm64 variant v8

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

### `irssi:1.4` - unknown; unknown

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

### `irssi:1.4` - linux; 386

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

### `irssi:1.4` - unknown; unknown

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

### `irssi:1.4` - linux; ppc64le

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

### `irssi:1.4` - unknown; unknown

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

### `irssi:1.4` - linux; riscv64

```console
$ docker pull irssi@sha256:b9398996fc42e4f92081bac09225c3ee819b6673da696a48f8899328749d2e56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51761683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:404f3e9b0283462c4d3182ed40faa6cbdcae6da4eca8c208def9a5095987c0d3`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793059200'
# Fri, 30 Oct 2026 11:48:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 30 Oct 2026 11:48:22 GMT
ENV HOME=/home/user
# Fri, 30 Oct 2026 11:48:22 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Fri, 30 Oct 2026 11:48:22 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 11:48:22 GMT
ENV IRSSI_VERSION=1.4.5
# Fri, 30 Oct 2026 11:55:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Fri, 30 Oct 2026 11:55:29 GMT
WORKDIR /home/user
# Fri, 30 Oct 2026 11:55:29 GMT
USER user
# Fri, 30 Oct 2026 11:55:29 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:a81ae23cfcc12d03cee9e3704fa559c027af15fefe8c60924add8fd17e4c98c1`  
		Last Modified: Wed, 28 Oct 2026 18:39:27 GMT  
		Size: 28.3 MB (28345669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e42dd22c6cb9e91f2dc25e9c1cbad2fb6f0c45a0543e1ae49f1d672c70eb01`  
		Last Modified: Fri, 30 Oct 2026 11:57:28 GMT  
		Size: 18.6 MB (18550034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741c5ebf96c5a39beaebb03a85b041bf1efd3999e67aaceaa9ba02351e8aa380`  
		Last Modified: Fri, 30 Oct 2026 11:57:23 GMT  
		Size: 3.3 KB (3331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c216878c55e948019ea55d4f8c499508910071a51dc0a7515965373f8bebf03`  
		Last Modified: Fri, 30 Oct 2026 11:57:26 GMT  
		Size: 4.9 MB (4862617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:8bdece1818ddc31ad42e1e18910b79d4599ed86b87f3997801ebbd2ee4c45e57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43807d34411cece97f375585cc0cd0e35ceb8c2812fab71b9e5f1e8f86fc4ea8`

```dockerfile
```

-	Layers:
	-	`sha256:a382050068f123cad7982883f5e9b90cd49d306becb521c9603ae44a46f5e139`  
		Last Modified: Fri, 30 Oct 2026 11:57:26 GMT  
		Size: 5.6 MB (5584585 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c7f2dd4dc616c8b6ea5a3b3f464d3aa825af379c7e4f472e9cf2fa6e8c23d2f`  
		Last Modified: Fri, 30 Oct 2026 11:57:24 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; s390x

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

### `irssi:1.4` - unknown; unknown

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

## `irssi:1.4-alpine`

```console
$ docker pull irssi@sha256:540ea0780dd51d49d786d5380269b3eba5daa3ac72e183377b2ceafc65ea9219
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
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

### `irssi:1.4-alpine` - linux; amd64

```console
$ docker pull irssi@sha256:75ec2a007387a4bc7ea016e6d282a6db656c8cfa195af2900f8b9968ac391028
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20736652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c77dd691416c8d0fd2307fe866fb33f4cb0f0b8a245276add87c6e8d2745d3b8`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:40 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:06:40 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:06:40 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:06:40 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:06:40 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:06:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:06:52 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:06:52 GMT
USER user
# Wed, 21 Oct 2026 21:06:52 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5ce58680647bf65513cf4f290fe83c54c34ad214292120f247b90adf6de9bb8`  
		Last Modified: Wed, 21 Oct 2026 21:06:59 GMT  
		Size: 10.8 MB (10815509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5fc373befc2948622c8ec67db20d0f99a02d2145fdc665477a0c7da582c34f9`  
		Last Modified: Wed, 21 Oct 2026 21:06:59 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7e1caae42dd792911f8a422a56230836ee5f16bdadd52707b4758036bf7b2fc`  
		Last Modified: Wed, 21 Oct 2026 21:06:59 GMT  
		Size: 6.1 MB (6067931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:b70151b67f1c37c7127aa71184f86db02979fdecda0c3ad1655fcc68b0df3306
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba5b2e08c934247a0eea31980301bd651ed215bf879acf3b297dc33bf1075ff5`

```dockerfile
```

-	Layers:
	-	`sha256:5c31e6150855b1339db285380cdea4fdce7d1c262bd5bde1cf4dff3039014f61`  
		Last Modified: Wed, 21 Oct 2026 21:06:59 GMT  
		Size: 1.3 MB (1289248 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f06eeedbf7874717de2baebf573d4eb8a95ac4ff0a63ae25e84ea52ba288b861`  
		Last Modified: Wed, 21 Oct 2026 21:06:58 GMT  
		Size: 17.5 KB (17499 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine` - linux; arm variant v6

```console
$ docker pull irssi@sha256:4af9032bcd859968cdbfd686dd20e0c1f99e11a066473caba658e9470ddaa0ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19480253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef6fb9719d9d85f56d917c98ec988f04d4258e88b50aae34359e5554024c18ad`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:11:04 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:11:04 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:11:04 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:11:04 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:11:04 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:11:19 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:11:19 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:11:19 GMT
USER user
# Wed, 21 Oct 2026 21:11:19 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab8a51e657fc7a2da56592ea150fd9e06158f212092b94a395b00556eb1ef60b`  
		Last Modified: Wed, 21 Oct 2026 21:11:25 GMT  
		Size: 10.0 MB (10025777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6772ba687ee640673314fba9cf8646b45d6718b7401a276f18e39f932085fb0`  
		Last Modified: Wed, 21 Oct 2026 21:11:24 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82475fb4972c472f57c12fd6fae022524f7156b94bb53416dd59610c290608b5`  
		Last Modified: Wed, 21 Oct 2026 21:11:25 GMT  
		Size: 5.9 MB (5895305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:10e3b308151bc45fc8b1592938735d34bc970dab4a9f7e98d8d1c4ef6142febd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 KB (17423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1153e7d4ea55381b1a1f424e38ef6ee1681ab7eb07d75e16ae95006926d72b7c`

```dockerfile
```

-	Layers:
	-	`sha256:9caf8f1bf53a769f370eefb214a142864e37613d04b1a8479aa8765e35c7ede9`  
		Last Modified: Wed, 21 Oct 2026 21:11:24 GMT  
		Size: 17.4 KB (17423 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine` - linux; arm variant v7

```console
$ docker pull irssi@sha256:620e1fe3789d2154cc7a436b1661ff6a8601b11f696e3d660dc562f78e6e8e93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18770911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7448f678b2ab0a661b217be66d20880e3558af119dcece7c526aea0301780202`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:09:09 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:09:10 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:09:10 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:09:10 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:09:10 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:09:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:09:24 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:09:24 GMT
USER user
# Wed, 21 Oct 2026 21:09:24 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:349d2cc0aaca902a17627cb405a52203d446de0f45c98714141e9c96bf30b94f`  
		Last Modified: Wed, 21 Oct 2026 20:46:48 GMT  
		Size: 3.3 MB (3267040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6edaddb04ceb3355866dce9d94deb6d223e937b91a41615a8cca91f0a16fc9e5`  
		Last Modified: Wed, 21 Oct 2026 21:09:32 GMT  
		Size: 9.9 MB (9859334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95529e4712d45975677cf819b7e48a05142e036184e08fe9ca7902beebe20ee9`  
		Last Modified: Wed, 21 Oct 2026 21:09:31 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e8adef0f0579ecf7e9cbcdd43ffc5a8494847a431784f9a15b0f24a447c0383`  
		Last Modified: Wed, 21 Oct 2026 21:09:31 GMT  
		Size: 5.6 MB (5643556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:a06cc8dc95c09fba6f9bd758e52bdebd764b8bdde21cd0823c4ce7cb7d79fe00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1309290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66ecc6ba564f75aa0866d3787234c5728b5d643b1892ffa2db7c164ec7589dac`

```dockerfile
```

-	Layers:
	-	`sha256:19d92ca93975fdf799df0c9f0656b88620845fdd846a02022cd16ec60ee02c75`  
		Last Modified: Wed, 21 Oct 2026 21:09:31 GMT  
		Size: 1.3 MB (1291656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b7aaee04542b02e51708f05f3766bdbc161fe084dca3fb1c6ed806d7268608c`  
		Last Modified: Wed, 21 Oct 2026 21:09:31 GMT  
		Size: 17.6 KB (17634 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:8d7470356c61c7c0e89e8ba82a575065c0c5269132ca9a98e728e05a786e69d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20879093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb17b262e8d9802d3ee63b0634b3bc6a34e41a1d14b051a47378b85f7bd7046a`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:04 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:06:04 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:06:04 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:06:04 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:06:04 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:06:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:06:17 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:06:17 GMT
USER user
# Wed, 21 Oct 2026 21:06:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:666b3d421220ae797ac61b65bfafe13ff140f4e9d178771429a66014975506a8`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 10.7 MB (10749808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741e6da6b2b634d61d158f7e767bda28ea78e6f18354373d3cb321140fdb0175`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6324dbb26db17d055921cff930a6561b91ea7b90099a3574da782d6efe36ff2`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 5.9 MB (5938807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:2ced7d03760dfd54b37bc1443fe89b2d17c5284a3c07db9a63275c8e400f359d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1460fe62a3b558d8d1a4dbcc4bc8de75e65f3089a51918ed8650036720f99971`

```dockerfile
```

-	Layers:
	-	`sha256:173411df67a988867ac09f442392b175cfde959424420aed78bcfd2f80e31b8d`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 1.3 MB (1288702 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:177284c09f250cbf0e68c1c33be96dfdefbcd8754574f651942f705c7b0a8e6c`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 17.7 KB (17682 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine` - linux; 386

```console
$ docker pull irssi@sha256:6020ba1bafa72fe73eb0e0c32dd890a0bf16e67349e69af06e89a916d705e2f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20172701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8c87a2a44dcae3aab8b7f000d1dbc0b26703ce825ac46ceba04018f6ae8506f`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:21 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:06:21 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:06:21 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:06:21 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:06:21 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:06:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:06:41 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:06:41 GMT
USER user
# Wed, 21 Oct 2026 21:06:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f39465ce84becf679a147dc059c54da328e647c257f9f8a48263965e5aa67818`  
		Last Modified: Wed, 21 Oct 2026 21:06:48 GMT  
		Size: 10.3 MB (10349339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ce6b69877c78f76e55d53aeb3ea1e4f4d5f72e48bc2e300a89a0a7fda16876a`  
		Last Modified: Wed, 21 Oct 2026 21:06:48 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df7e51b6a77ced4800a3caa90e53ca8f55f0498f84e14228b44df373877f949`  
		Last Modified: Wed, 21 Oct 2026 21:06:48 GMT  
		Size: 6.1 MB (6145073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:6dd60d1a55717a7ce1c2d59f01bcaffc13257c3ac8107a17012ab3e1bbfbce8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d30cec18abb5953cdcc8d2826d19c284068a4c79a6fb5f9e4a91a6c715e909c8`

```dockerfile
```

-	Layers:
	-	`sha256:36faca5d1bde2857ca03d8afa17d01133a4f870d28a95a422ac4e2c5cbb88780`  
		Last Modified: Wed, 21 Oct 2026 21:06:48 GMT  
		Size: 1.3 MB (1289203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac46588aeeb2f96a65b18bc8e8632783d4893e0e7bddf297f3edba7cb895b8a8`  
		Last Modified: Wed, 21 Oct 2026 21:06:47 GMT  
		Size: 17.4 KB (17444 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine` - linux; ppc64le

```console
$ docker pull irssi@sha256:01451d7594170904828a6c54b6ac39c88f05d5d354fd26b927e18cc3b6db5620
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21222819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9f3a631f83b94485c1bbfbfb7cec6054c9033ec0fa1f4720934fead0c6a2e0`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:32:42 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 22 Oct 2026 10:32:42 GMT
ENV HOME=/home/user
# Thu, 22 Oct 2026 10:32:42 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 22 Oct 2026 10:32:42 GMT
ENV LANG=C.UTF-8
# Thu, 22 Oct 2026 10:32:42 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 22 Oct 2026 10:33:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 22 Oct 2026 10:33:07 GMT
WORKDIR /home/user
# Thu, 22 Oct 2026 10:33:07 GMT
USER user
# Thu, 22 Oct 2026 10:33:07 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3919971710de78afadd31f0d3899ea71d96ef55f5849386a7b811bcc3cd9f6a0`  
		Last Modified: Thu, 22 Oct 2026 10:33:22 GMT  
		Size: 11.0 MB (11039485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5199fd69215c5c6e933f7649eff0673e7240f332a9cc24ed9c9fdf65aeae502e`  
		Last Modified: Thu, 22 Oct 2026 10:33:21 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab8dbc08914d252096c11ae9fec5ce3b6589f3b64a1ada57a5159f154638141b`  
		Last Modified: Thu, 22 Oct 2026 10:33:22 GMT  
		Size: 6.4 MB (6363970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:850c8b7dd3bd6b8c8ede81d85d252e57badd5cc32f08c0bd87263c416b8bed11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff8f44784d1130dac63b52027e654fe4edda3a1c6916a6be537c231750c1110`

```dockerfile
```

-	Layers:
	-	`sha256:acf7d10cd0d792752ad67bd05aacbee92c3a2e103fa1d2ad39b9660075a3df2d`  
		Last Modified: Thu, 22 Oct 2026 10:33:21 GMT  
		Size: 1.3 MB (1288655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d85b7e407978067efb2b05383b6b80333eaf04cf6db7ff8113244326e5533687`  
		Last Modified: Thu, 22 Oct 2026 10:33:21 GMT  
		Size: 17.6 KB (17571 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine` - linux; riscv64

```console
$ docker pull irssi@sha256:c24c25d5d5a242e8f9edf9c6788b0cd213ce8bccd91bef8dd1edaa316c19d1e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19894521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e151e95afa7a0cb35c839f8fb02feebea11ed3d5df06c49125a713112bc3dee`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 23 Oct 2026 04:55:52 GMT
ADD alpine-minirootfs-3.23.7-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:55:52 GMT
CMD ["/bin/sh"]
# Sat, 24 Oct 2026 16:02:35 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Sat, 24 Oct 2026 16:02:36 GMT
ENV HOME=/home/user
# Sat, 24 Oct 2026 16:02:36 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 24 Oct 2026 16:02:36 GMT
ENV LANG=C.UTF-8
# Sat, 24 Oct 2026 16:02:36 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 24 Oct 2026 16:06:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Sat, 24 Oct 2026 16:06:37 GMT
WORKDIR /home/user
# Sat, 24 Oct 2026 16:06:37 GMT
USER user
# Sat, 24 Oct 2026 16:06:37 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d03de878707a9da693ddc1eddbe1328c578f016182f72385d87f3b4b40158d37`  
		Last Modified: Fri, 23 Oct 2026 04:56:27 GMT  
		Size: 3.6 MB (3579612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7d69c25cc87bbc8892fc547be1d0629808c7da8bd8bb3e74680bf39866add6`  
		Last Modified: Sat, 24 Oct 2026 16:07:43 GMT  
		Size: 10.2 MB (10247990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50807fcfd5cb73bc16c92a39208b82f2bab60a55ad7fe838d260c7d60d7895d3`  
		Last Modified: Sat, 24 Oct 2026 16:07:41 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7724e34420f5f9833cddd0d5f39fa315be1dc9eb49fe8506acdfbc2c3863ef0`  
		Last Modified: Sat, 24 Oct 2026 16:07:43 GMT  
		Size: 6.1 MB (6065935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:a1fe8ae31046a44a7de54e51eeef536f71c6244702dbdc21952b98a9f43df755
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:969ab3c4f6593f35bd6eaaa6d614bbaca1c35390efbbdc18924cdc26550ea366`

```dockerfile
```

-	Layers:
	-	`sha256:75c6988d47b29d1965a595dfc5416429889921bd68f8ae136122bb6fff497ee5`  
		Last Modified: Sat, 24 Oct 2026 16:07:42 GMT  
		Size: 1.3 MB (1288651 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21081e308e0e0d517290ce8f2d953baaff734ba1a69ff4b94d0a75e15a48a59f`  
		Last Modified: Sat, 24 Oct 2026 16:07:41 GMT  
		Size: 17.6 KB (17572 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine` - linux; s390x

```console
$ docker pull irssi@sha256:e092dfa0266df5c5266bb07832b94161c17d1663fc55d6a9b9d126f946a1413b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21287999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0e787fb3ba9b02571c8392210b63de56e987d72fedc7cb1280d8cdd210d7c23`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:39 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:06:39 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:06:39 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:06:39 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:06:39 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:06:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:06:53 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:06:53 GMT
USER user
# Wed, 21 Oct 2026 21:06:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:861c7277ad85e322353d03af79af3474ed1b63a4011b8d8ff078a16695cad4c3`  
		Last Modified: Wed, 21 Oct 2026 21:07:05 GMT  
		Size: 11.4 MB (11364981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58a482c646378d6aed326a9963787f742ef1d9be7fd4c617903067a733251935`  
		Last Modified: Wed, 21 Oct 2026 21:07:05 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce43c640fc8236f646730fb605db7fe501dfd98b1f8159030c347d6f75c17323`  
		Last Modified: Wed, 21 Oct 2026 21:07:05 GMT  
		Size: 6.2 MB (6204916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:f2ae176e9a3c47913ac6f5db8e10d15a82242eaf95c5281ba04b49a9856b595d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb9c63ee45081298c96f5d4972c7d20a168f58ace588561b18fbe01ce65e1ad2`

```dockerfile
```

-	Layers:
	-	`sha256:34ff2f2b8efca5a491cad41420a38640ca1c084e2702db244488c3c6c48877f7`  
		Last Modified: Wed, 21 Oct 2026 21:07:04 GMT  
		Size: 1.3 MB (1288597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cdc60272eb3b6b873bf2499068dbfdb2b77c0fcf5da80f87d95580c64d89249`  
		Last Modified: Wed, 21 Oct 2026 21:07:04 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1.4-alpine3.23`

```console
$ docker pull irssi@sha256:540ea0780dd51d49d786d5380269b3eba5daa3ac72e183377b2ceafc65ea9219
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
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

### `irssi:1.4-alpine3.23` - linux; amd64

```console
$ docker pull irssi@sha256:75ec2a007387a4bc7ea016e6d282a6db656c8cfa195af2900f8b9968ac391028
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20736652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c77dd691416c8d0fd2307fe866fb33f4cb0f0b8a245276add87c6e8d2745d3b8`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:40 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:06:40 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:06:40 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:06:40 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:06:40 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:06:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:06:52 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:06:52 GMT
USER user
# Wed, 21 Oct 2026 21:06:52 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5ce58680647bf65513cf4f290fe83c54c34ad214292120f247b90adf6de9bb8`  
		Last Modified: Wed, 21 Oct 2026 21:06:59 GMT  
		Size: 10.8 MB (10815509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5fc373befc2948622c8ec67db20d0f99a02d2145fdc665477a0c7da582c34f9`  
		Last Modified: Wed, 21 Oct 2026 21:06:59 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7e1caae42dd792911f8a422a56230836ee5f16bdadd52707b4758036bf7b2fc`  
		Last Modified: Wed, 21 Oct 2026 21:06:59 GMT  
		Size: 6.1 MB (6067931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:b70151b67f1c37c7127aa71184f86db02979fdecda0c3ad1655fcc68b0df3306
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba5b2e08c934247a0eea31980301bd651ed215bf879acf3b297dc33bf1075ff5`

```dockerfile
```

-	Layers:
	-	`sha256:5c31e6150855b1339db285380cdea4fdce7d1c262bd5bde1cf4dff3039014f61`  
		Last Modified: Wed, 21 Oct 2026 21:06:59 GMT  
		Size: 1.3 MB (1289248 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f06eeedbf7874717de2baebf573d4eb8a95ac4ff0a63ae25e84ea52ba288b861`  
		Last Modified: Wed, 21 Oct 2026 21:06:58 GMT  
		Size: 17.5 KB (17499 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine3.23` - linux; arm variant v6

```console
$ docker pull irssi@sha256:4af9032bcd859968cdbfd686dd20e0c1f99e11a066473caba658e9470ddaa0ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19480253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef6fb9719d9d85f56d917c98ec988f04d4258e88b50aae34359e5554024c18ad`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:11:04 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:11:04 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:11:04 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:11:04 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:11:04 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:11:19 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:11:19 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:11:19 GMT
USER user
# Wed, 21 Oct 2026 21:11:19 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab8a51e657fc7a2da56592ea150fd9e06158f212092b94a395b00556eb1ef60b`  
		Last Modified: Wed, 21 Oct 2026 21:11:25 GMT  
		Size: 10.0 MB (10025777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6772ba687ee640673314fba9cf8646b45d6718b7401a276f18e39f932085fb0`  
		Last Modified: Wed, 21 Oct 2026 21:11:24 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82475fb4972c472f57c12fd6fae022524f7156b94bb53416dd59610c290608b5`  
		Last Modified: Wed, 21 Oct 2026 21:11:25 GMT  
		Size: 5.9 MB (5895305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:10e3b308151bc45fc8b1592938735d34bc970dab4a9f7e98d8d1c4ef6142febd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 KB (17423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1153e7d4ea55381b1a1f424e38ef6ee1681ab7eb07d75e16ae95006926d72b7c`

```dockerfile
```

-	Layers:
	-	`sha256:9caf8f1bf53a769f370eefb214a142864e37613d04b1a8479aa8765e35c7ede9`  
		Last Modified: Wed, 21 Oct 2026 21:11:24 GMT  
		Size: 17.4 KB (17423 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine3.23` - linux; arm variant v7

```console
$ docker pull irssi@sha256:620e1fe3789d2154cc7a436b1661ff6a8601b11f696e3d660dc562f78e6e8e93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18770911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7448f678b2ab0a661b217be66d20880e3558af119dcece7c526aea0301780202`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:09:09 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:09:10 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:09:10 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:09:10 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:09:10 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:09:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:09:24 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:09:24 GMT
USER user
# Wed, 21 Oct 2026 21:09:24 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:349d2cc0aaca902a17627cb405a52203d446de0f45c98714141e9c96bf30b94f`  
		Last Modified: Wed, 21 Oct 2026 20:46:48 GMT  
		Size: 3.3 MB (3267040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6edaddb04ceb3355866dce9d94deb6d223e937b91a41615a8cca91f0a16fc9e5`  
		Last Modified: Wed, 21 Oct 2026 21:09:32 GMT  
		Size: 9.9 MB (9859334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95529e4712d45975677cf819b7e48a05142e036184e08fe9ca7902beebe20ee9`  
		Last Modified: Wed, 21 Oct 2026 21:09:31 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e8adef0f0579ecf7e9cbcdd43ffc5a8494847a431784f9a15b0f24a447c0383`  
		Last Modified: Wed, 21 Oct 2026 21:09:31 GMT  
		Size: 5.6 MB (5643556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:a06cc8dc95c09fba6f9bd758e52bdebd764b8bdde21cd0823c4ce7cb7d79fe00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1309290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66ecc6ba564f75aa0866d3787234c5728b5d643b1892ffa2db7c164ec7589dac`

```dockerfile
```

-	Layers:
	-	`sha256:19d92ca93975fdf799df0c9f0656b88620845fdd846a02022cd16ec60ee02c75`  
		Last Modified: Wed, 21 Oct 2026 21:09:31 GMT  
		Size: 1.3 MB (1291656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b7aaee04542b02e51708f05f3766bdbc161fe084dca3fb1c6ed806d7268608c`  
		Last Modified: Wed, 21 Oct 2026 21:09:31 GMT  
		Size: 17.6 KB (17634 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:8d7470356c61c7c0e89e8ba82a575065c0c5269132ca9a98e728e05a786e69d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20879093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb17b262e8d9802d3ee63b0634b3bc6a34e41a1d14b051a47378b85f7bd7046a`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:04 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:06:04 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:06:04 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:06:04 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:06:04 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:06:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:06:17 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:06:17 GMT
USER user
# Wed, 21 Oct 2026 21:06:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:666b3d421220ae797ac61b65bfafe13ff140f4e9d178771429a66014975506a8`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 10.7 MB (10749808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741e6da6b2b634d61d158f7e767bda28ea78e6f18354373d3cb321140fdb0175`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6324dbb26db17d055921cff930a6561b91ea7b90099a3574da782d6efe36ff2`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 5.9 MB (5938807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:2ced7d03760dfd54b37bc1443fe89b2d17c5284a3c07db9a63275c8e400f359d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1460fe62a3b558d8d1a4dbcc4bc8de75e65f3089a51918ed8650036720f99971`

```dockerfile
```

-	Layers:
	-	`sha256:173411df67a988867ac09f442392b175cfde959424420aed78bcfd2f80e31b8d`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 1.3 MB (1288702 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:177284c09f250cbf0e68c1c33be96dfdefbcd8754574f651942f705c7b0a8e6c`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 17.7 KB (17682 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine3.23` - linux; 386

```console
$ docker pull irssi@sha256:6020ba1bafa72fe73eb0e0c32dd890a0bf16e67349e69af06e89a916d705e2f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20172701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8c87a2a44dcae3aab8b7f000d1dbc0b26703ce825ac46ceba04018f6ae8506f`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:21 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:06:21 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:06:21 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:06:21 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:06:21 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:06:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:06:41 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:06:41 GMT
USER user
# Wed, 21 Oct 2026 21:06:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f39465ce84becf679a147dc059c54da328e647c257f9f8a48263965e5aa67818`  
		Last Modified: Wed, 21 Oct 2026 21:06:48 GMT  
		Size: 10.3 MB (10349339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ce6b69877c78f76e55d53aeb3ea1e4f4d5f72e48bc2e300a89a0a7fda16876a`  
		Last Modified: Wed, 21 Oct 2026 21:06:48 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df7e51b6a77ced4800a3caa90e53ca8f55f0498f84e14228b44df373877f949`  
		Last Modified: Wed, 21 Oct 2026 21:06:48 GMT  
		Size: 6.1 MB (6145073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:6dd60d1a55717a7ce1c2d59f01bcaffc13257c3ac8107a17012ab3e1bbfbce8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d30cec18abb5953cdcc8d2826d19c284068a4c79a6fb5f9e4a91a6c715e909c8`

```dockerfile
```

-	Layers:
	-	`sha256:36faca5d1bde2857ca03d8afa17d01133a4f870d28a95a422ac4e2c5cbb88780`  
		Last Modified: Wed, 21 Oct 2026 21:06:48 GMT  
		Size: 1.3 MB (1289203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac46588aeeb2f96a65b18bc8e8632783d4893e0e7bddf297f3edba7cb895b8a8`  
		Last Modified: Wed, 21 Oct 2026 21:06:47 GMT  
		Size: 17.4 KB (17444 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine3.23` - linux; ppc64le

```console
$ docker pull irssi@sha256:01451d7594170904828a6c54b6ac39c88f05d5d354fd26b927e18cc3b6db5620
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21222819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9f3a631f83b94485c1bbfbfb7cec6054c9033ec0fa1f4720934fead0c6a2e0`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:32:42 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 22 Oct 2026 10:32:42 GMT
ENV HOME=/home/user
# Thu, 22 Oct 2026 10:32:42 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 22 Oct 2026 10:32:42 GMT
ENV LANG=C.UTF-8
# Thu, 22 Oct 2026 10:32:42 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 22 Oct 2026 10:33:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 22 Oct 2026 10:33:07 GMT
WORKDIR /home/user
# Thu, 22 Oct 2026 10:33:07 GMT
USER user
# Thu, 22 Oct 2026 10:33:07 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3919971710de78afadd31f0d3899ea71d96ef55f5849386a7b811bcc3cd9f6a0`  
		Last Modified: Thu, 22 Oct 2026 10:33:22 GMT  
		Size: 11.0 MB (11039485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5199fd69215c5c6e933f7649eff0673e7240f332a9cc24ed9c9fdf65aeae502e`  
		Last Modified: Thu, 22 Oct 2026 10:33:21 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab8dbc08914d252096c11ae9fec5ce3b6589f3b64a1ada57a5159f154638141b`  
		Last Modified: Thu, 22 Oct 2026 10:33:22 GMT  
		Size: 6.4 MB (6363970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:850c8b7dd3bd6b8c8ede81d85d252e57badd5cc32f08c0bd87263c416b8bed11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff8f44784d1130dac63b52027e654fe4edda3a1c6916a6be537c231750c1110`

```dockerfile
```

-	Layers:
	-	`sha256:acf7d10cd0d792752ad67bd05aacbee92c3a2e103fa1d2ad39b9660075a3df2d`  
		Last Modified: Thu, 22 Oct 2026 10:33:21 GMT  
		Size: 1.3 MB (1288655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d85b7e407978067efb2b05383b6b80333eaf04cf6db7ff8113244326e5533687`  
		Last Modified: Thu, 22 Oct 2026 10:33:21 GMT  
		Size: 17.6 KB (17571 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine3.23` - linux; riscv64

```console
$ docker pull irssi@sha256:c24c25d5d5a242e8f9edf9c6788b0cd213ce8bccd91bef8dd1edaa316c19d1e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19894521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e151e95afa7a0cb35c839f8fb02feebea11ed3d5df06c49125a713112bc3dee`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 23 Oct 2026 04:55:52 GMT
ADD alpine-minirootfs-3.23.7-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:55:52 GMT
CMD ["/bin/sh"]
# Sat, 24 Oct 2026 16:02:35 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Sat, 24 Oct 2026 16:02:36 GMT
ENV HOME=/home/user
# Sat, 24 Oct 2026 16:02:36 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 24 Oct 2026 16:02:36 GMT
ENV LANG=C.UTF-8
# Sat, 24 Oct 2026 16:02:36 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 24 Oct 2026 16:06:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Sat, 24 Oct 2026 16:06:37 GMT
WORKDIR /home/user
# Sat, 24 Oct 2026 16:06:37 GMT
USER user
# Sat, 24 Oct 2026 16:06:37 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d03de878707a9da693ddc1eddbe1328c578f016182f72385d87f3b4b40158d37`  
		Last Modified: Fri, 23 Oct 2026 04:56:27 GMT  
		Size: 3.6 MB (3579612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7d69c25cc87bbc8892fc547be1d0629808c7da8bd8bb3e74680bf39866add6`  
		Last Modified: Sat, 24 Oct 2026 16:07:43 GMT  
		Size: 10.2 MB (10247990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50807fcfd5cb73bc16c92a39208b82f2bab60a55ad7fe838d260c7d60d7895d3`  
		Last Modified: Sat, 24 Oct 2026 16:07:41 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7724e34420f5f9833cddd0d5f39fa315be1dc9eb49fe8506acdfbc2c3863ef0`  
		Last Modified: Sat, 24 Oct 2026 16:07:43 GMT  
		Size: 6.1 MB (6065935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:a1fe8ae31046a44a7de54e51eeef536f71c6244702dbdc21952b98a9f43df755
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:969ab3c4f6593f35bd6eaaa6d614bbaca1c35390efbbdc18924cdc26550ea366`

```dockerfile
```

-	Layers:
	-	`sha256:75c6988d47b29d1965a595dfc5416429889921bd68f8ae136122bb6fff497ee5`  
		Last Modified: Sat, 24 Oct 2026 16:07:42 GMT  
		Size: 1.3 MB (1288651 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21081e308e0e0d517290ce8f2d953baaff734ba1a69ff4b94d0a75e15a48a59f`  
		Last Modified: Sat, 24 Oct 2026 16:07:41 GMT  
		Size: 17.6 KB (17572 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine3.23` - linux; s390x

```console
$ docker pull irssi@sha256:e092dfa0266df5c5266bb07832b94161c17d1663fc55d6a9b9d126f946a1413b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21287999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0e787fb3ba9b02571c8392210b63de56e987d72fedc7cb1280d8cdd210d7c23`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:39 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:06:39 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:06:39 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:06:39 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:06:39 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:06:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:06:53 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:06:53 GMT
USER user
# Wed, 21 Oct 2026 21:06:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:861c7277ad85e322353d03af79af3474ed1b63a4011b8d8ff078a16695cad4c3`  
		Last Modified: Wed, 21 Oct 2026 21:07:05 GMT  
		Size: 11.4 MB (11364981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58a482c646378d6aed326a9963787f742ef1d9be7fd4c617903067a733251935`  
		Last Modified: Wed, 21 Oct 2026 21:07:05 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce43c640fc8236f646730fb605db7fe501dfd98b1f8159030c347d6f75c17323`  
		Last Modified: Wed, 21 Oct 2026 21:07:05 GMT  
		Size: 6.2 MB (6204916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:f2ae176e9a3c47913ac6f5db8e10d15a82242eaf95c5281ba04b49a9856b595d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb9c63ee45081298c96f5d4972c7d20a168f58ace588561b18fbe01ce65e1ad2`

```dockerfile
```

-	Layers:
	-	`sha256:34ff2f2b8efca5a491cad41420a38640ca1c084e2702db244488c3c6c48877f7`  
		Last Modified: Wed, 21 Oct 2026 21:07:04 GMT  
		Size: 1.3 MB (1288597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cdc60272eb3b6b873bf2499068dbfdb2b77c0fcf5da80f87d95580c64d89249`  
		Last Modified: Wed, 21 Oct 2026 21:07:04 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1.4-trixie`

```console
$ docker pull irssi@sha256:5da20d308820d2278b9bcbc031ccc0ef87d7e8e603869bf6bfab02090a2c8ec8
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

### `irssi:1.4-trixie` - linux; amd64

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

### `irssi:1.4-trixie` - unknown; unknown

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

### `irssi:1.4-trixie` - linux; arm variant v5

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

### `irssi:1.4-trixie` - unknown; unknown

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

### `irssi:1.4-trixie` - linux; arm variant v7

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

### `irssi:1.4-trixie` - unknown; unknown

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

### `irssi:1.4-trixie` - linux; arm64 variant v8

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

### `irssi:1.4-trixie` - unknown; unknown

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

### `irssi:1.4-trixie` - linux; 386

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

### `irssi:1.4-trixie` - unknown; unknown

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

### `irssi:1.4-trixie` - linux; ppc64le

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

### `irssi:1.4-trixie` - unknown; unknown

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

### `irssi:1.4-trixie` - linux; riscv64

```console
$ docker pull irssi@sha256:b9398996fc42e4f92081bac09225c3ee819b6673da696a48f8899328749d2e56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51761683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:404f3e9b0283462c4d3182ed40faa6cbdcae6da4eca8c208def9a5095987c0d3`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793059200'
# Fri, 30 Oct 2026 11:48:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 30 Oct 2026 11:48:22 GMT
ENV HOME=/home/user
# Fri, 30 Oct 2026 11:48:22 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Fri, 30 Oct 2026 11:48:22 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 11:48:22 GMT
ENV IRSSI_VERSION=1.4.5
# Fri, 30 Oct 2026 11:55:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Fri, 30 Oct 2026 11:55:29 GMT
WORKDIR /home/user
# Fri, 30 Oct 2026 11:55:29 GMT
USER user
# Fri, 30 Oct 2026 11:55:29 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:a81ae23cfcc12d03cee9e3704fa559c027af15fefe8c60924add8fd17e4c98c1`  
		Last Modified: Wed, 28 Oct 2026 18:39:27 GMT  
		Size: 28.3 MB (28345669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e42dd22c6cb9e91f2dc25e9c1cbad2fb6f0c45a0543e1ae49f1d672c70eb01`  
		Last Modified: Fri, 30 Oct 2026 11:57:28 GMT  
		Size: 18.6 MB (18550034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741c5ebf96c5a39beaebb03a85b041bf1efd3999e67aaceaa9ba02351e8aa380`  
		Last Modified: Fri, 30 Oct 2026 11:57:23 GMT  
		Size: 3.3 KB (3331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c216878c55e948019ea55d4f8c499508910071a51dc0a7515965373f8bebf03`  
		Last Modified: Fri, 30 Oct 2026 11:57:26 GMT  
		Size: 4.9 MB (4862617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:8bdece1818ddc31ad42e1e18910b79d4599ed86b87f3997801ebbd2ee4c45e57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43807d34411cece97f375585cc0cd0e35ceb8c2812fab71b9e5f1e8f86fc4ea8`

```dockerfile
```

-	Layers:
	-	`sha256:a382050068f123cad7982883f5e9b90cd49d306becb521c9603ae44a46f5e139`  
		Last Modified: Fri, 30 Oct 2026 11:57:26 GMT  
		Size: 5.6 MB (5584585 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c7f2dd4dc616c8b6ea5a3b3f464d3aa825af379c7e4f472e9cf2fa6e8c23d2f`  
		Last Modified: Fri, 30 Oct 2026 11:57:24 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; s390x

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

### `irssi:1.4-trixie` - unknown; unknown

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

## `irssi:1.4.5`

```console
$ docker pull irssi@sha256:5da20d308820d2278b9bcbc031ccc0ef87d7e8e603869bf6bfab02090a2c8ec8
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

### `irssi:1.4.5` - linux; amd64

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

### `irssi:1.4.5` - unknown; unknown

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

### `irssi:1.4.5` - linux; arm variant v5

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

### `irssi:1.4.5` - unknown; unknown

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

### `irssi:1.4.5` - linux; arm variant v7

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

### `irssi:1.4.5` - unknown; unknown

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

### `irssi:1.4.5` - linux; arm64 variant v8

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

### `irssi:1.4.5` - unknown; unknown

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

### `irssi:1.4.5` - linux; 386

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

### `irssi:1.4.5` - unknown; unknown

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

### `irssi:1.4.5` - linux; ppc64le

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

### `irssi:1.4.5` - unknown; unknown

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

### `irssi:1.4.5` - linux; riscv64

```console
$ docker pull irssi@sha256:b9398996fc42e4f92081bac09225c3ee819b6673da696a48f8899328749d2e56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51761683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:404f3e9b0283462c4d3182ed40faa6cbdcae6da4eca8c208def9a5095987c0d3`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793059200'
# Fri, 30 Oct 2026 11:48:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 30 Oct 2026 11:48:22 GMT
ENV HOME=/home/user
# Fri, 30 Oct 2026 11:48:22 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Fri, 30 Oct 2026 11:48:22 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 11:48:22 GMT
ENV IRSSI_VERSION=1.4.5
# Fri, 30 Oct 2026 11:55:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Fri, 30 Oct 2026 11:55:29 GMT
WORKDIR /home/user
# Fri, 30 Oct 2026 11:55:29 GMT
USER user
# Fri, 30 Oct 2026 11:55:29 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:a81ae23cfcc12d03cee9e3704fa559c027af15fefe8c60924add8fd17e4c98c1`  
		Last Modified: Wed, 28 Oct 2026 18:39:27 GMT  
		Size: 28.3 MB (28345669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e42dd22c6cb9e91f2dc25e9c1cbad2fb6f0c45a0543e1ae49f1d672c70eb01`  
		Last Modified: Fri, 30 Oct 2026 11:57:28 GMT  
		Size: 18.6 MB (18550034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741c5ebf96c5a39beaebb03a85b041bf1efd3999e67aaceaa9ba02351e8aa380`  
		Last Modified: Fri, 30 Oct 2026 11:57:23 GMT  
		Size: 3.3 KB (3331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c216878c55e948019ea55d4f8c499508910071a51dc0a7515965373f8bebf03`  
		Last Modified: Fri, 30 Oct 2026 11:57:26 GMT  
		Size: 4.9 MB (4862617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:8bdece1818ddc31ad42e1e18910b79d4599ed86b87f3997801ebbd2ee4c45e57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43807d34411cece97f375585cc0cd0e35ceb8c2812fab71b9e5f1e8f86fc4ea8`

```dockerfile
```

-	Layers:
	-	`sha256:a382050068f123cad7982883f5e9b90cd49d306becb521c9603ae44a46f5e139`  
		Last Modified: Fri, 30 Oct 2026 11:57:26 GMT  
		Size: 5.6 MB (5584585 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c7f2dd4dc616c8b6ea5a3b3f464d3aa825af379c7e4f472e9cf2fa6e8c23d2f`  
		Last Modified: Fri, 30 Oct 2026 11:57:24 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; s390x

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

### `irssi:1.4.5` - unknown; unknown

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

## `irssi:1.4.5-alpine`

```console
$ docker pull irssi@sha256:540ea0780dd51d49d786d5380269b3eba5daa3ac72e183377b2ceafc65ea9219
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
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

### `irssi:1.4.5-alpine` - linux; amd64

```console
$ docker pull irssi@sha256:75ec2a007387a4bc7ea016e6d282a6db656c8cfa195af2900f8b9968ac391028
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20736652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c77dd691416c8d0fd2307fe866fb33f4cb0f0b8a245276add87c6e8d2745d3b8`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:40 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:06:40 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:06:40 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:06:40 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:06:40 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:06:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:06:52 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:06:52 GMT
USER user
# Wed, 21 Oct 2026 21:06:52 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5ce58680647bf65513cf4f290fe83c54c34ad214292120f247b90adf6de9bb8`  
		Last Modified: Wed, 21 Oct 2026 21:06:59 GMT  
		Size: 10.8 MB (10815509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5fc373befc2948622c8ec67db20d0f99a02d2145fdc665477a0c7da582c34f9`  
		Last Modified: Wed, 21 Oct 2026 21:06:59 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7e1caae42dd792911f8a422a56230836ee5f16bdadd52707b4758036bf7b2fc`  
		Last Modified: Wed, 21 Oct 2026 21:06:59 GMT  
		Size: 6.1 MB (6067931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:b70151b67f1c37c7127aa71184f86db02979fdecda0c3ad1655fcc68b0df3306
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba5b2e08c934247a0eea31980301bd651ed215bf879acf3b297dc33bf1075ff5`

```dockerfile
```

-	Layers:
	-	`sha256:5c31e6150855b1339db285380cdea4fdce7d1c262bd5bde1cf4dff3039014f61`  
		Last Modified: Wed, 21 Oct 2026 21:06:59 GMT  
		Size: 1.3 MB (1289248 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f06eeedbf7874717de2baebf573d4eb8a95ac4ff0a63ae25e84ea52ba288b861`  
		Last Modified: Wed, 21 Oct 2026 21:06:58 GMT  
		Size: 17.5 KB (17499 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine` - linux; arm variant v6

```console
$ docker pull irssi@sha256:4af9032bcd859968cdbfd686dd20e0c1f99e11a066473caba658e9470ddaa0ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19480253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef6fb9719d9d85f56d917c98ec988f04d4258e88b50aae34359e5554024c18ad`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:11:04 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:11:04 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:11:04 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:11:04 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:11:04 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:11:19 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:11:19 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:11:19 GMT
USER user
# Wed, 21 Oct 2026 21:11:19 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab8a51e657fc7a2da56592ea150fd9e06158f212092b94a395b00556eb1ef60b`  
		Last Modified: Wed, 21 Oct 2026 21:11:25 GMT  
		Size: 10.0 MB (10025777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6772ba687ee640673314fba9cf8646b45d6718b7401a276f18e39f932085fb0`  
		Last Modified: Wed, 21 Oct 2026 21:11:24 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82475fb4972c472f57c12fd6fae022524f7156b94bb53416dd59610c290608b5`  
		Last Modified: Wed, 21 Oct 2026 21:11:25 GMT  
		Size: 5.9 MB (5895305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:10e3b308151bc45fc8b1592938735d34bc970dab4a9f7e98d8d1c4ef6142febd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 KB (17423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1153e7d4ea55381b1a1f424e38ef6ee1681ab7eb07d75e16ae95006926d72b7c`

```dockerfile
```

-	Layers:
	-	`sha256:9caf8f1bf53a769f370eefb214a142864e37613d04b1a8479aa8765e35c7ede9`  
		Last Modified: Wed, 21 Oct 2026 21:11:24 GMT  
		Size: 17.4 KB (17423 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine` - linux; arm variant v7

```console
$ docker pull irssi@sha256:620e1fe3789d2154cc7a436b1661ff6a8601b11f696e3d660dc562f78e6e8e93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18770911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7448f678b2ab0a661b217be66d20880e3558af119dcece7c526aea0301780202`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:09:09 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:09:10 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:09:10 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:09:10 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:09:10 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:09:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:09:24 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:09:24 GMT
USER user
# Wed, 21 Oct 2026 21:09:24 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:349d2cc0aaca902a17627cb405a52203d446de0f45c98714141e9c96bf30b94f`  
		Last Modified: Wed, 21 Oct 2026 20:46:48 GMT  
		Size: 3.3 MB (3267040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6edaddb04ceb3355866dce9d94deb6d223e937b91a41615a8cca91f0a16fc9e5`  
		Last Modified: Wed, 21 Oct 2026 21:09:32 GMT  
		Size: 9.9 MB (9859334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95529e4712d45975677cf819b7e48a05142e036184e08fe9ca7902beebe20ee9`  
		Last Modified: Wed, 21 Oct 2026 21:09:31 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e8adef0f0579ecf7e9cbcdd43ffc5a8494847a431784f9a15b0f24a447c0383`  
		Last Modified: Wed, 21 Oct 2026 21:09:31 GMT  
		Size: 5.6 MB (5643556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:a06cc8dc95c09fba6f9bd758e52bdebd764b8bdde21cd0823c4ce7cb7d79fe00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1309290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66ecc6ba564f75aa0866d3787234c5728b5d643b1892ffa2db7c164ec7589dac`

```dockerfile
```

-	Layers:
	-	`sha256:19d92ca93975fdf799df0c9f0656b88620845fdd846a02022cd16ec60ee02c75`  
		Last Modified: Wed, 21 Oct 2026 21:09:31 GMT  
		Size: 1.3 MB (1291656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b7aaee04542b02e51708f05f3766bdbc161fe084dca3fb1c6ed806d7268608c`  
		Last Modified: Wed, 21 Oct 2026 21:09:31 GMT  
		Size: 17.6 KB (17634 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:8d7470356c61c7c0e89e8ba82a575065c0c5269132ca9a98e728e05a786e69d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20879093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb17b262e8d9802d3ee63b0634b3bc6a34e41a1d14b051a47378b85f7bd7046a`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:04 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:06:04 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:06:04 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:06:04 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:06:04 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:06:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:06:17 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:06:17 GMT
USER user
# Wed, 21 Oct 2026 21:06:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:666b3d421220ae797ac61b65bfafe13ff140f4e9d178771429a66014975506a8`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 10.7 MB (10749808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741e6da6b2b634d61d158f7e767bda28ea78e6f18354373d3cb321140fdb0175`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6324dbb26db17d055921cff930a6561b91ea7b90099a3574da782d6efe36ff2`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 5.9 MB (5938807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:2ced7d03760dfd54b37bc1443fe89b2d17c5284a3c07db9a63275c8e400f359d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1460fe62a3b558d8d1a4dbcc4bc8de75e65f3089a51918ed8650036720f99971`

```dockerfile
```

-	Layers:
	-	`sha256:173411df67a988867ac09f442392b175cfde959424420aed78bcfd2f80e31b8d`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 1.3 MB (1288702 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:177284c09f250cbf0e68c1c33be96dfdefbcd8754574f651942f705c7b0a8e6c`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 17.7 KB (17682 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine` - linux; 386

```console
$ docker pull irssi@sha256:6020ba1bafa72fe73eb0e0c32dd890a0bf16e67349e69af06e89a916d705e2f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20172701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8c87a2a44dcae3aab8b7f000d1dbc0b26703ce825ac46ceba04018f6ae8506f`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:21 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:06:21 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:06:21 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:06:21 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:06:21 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:06:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:06:41 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:06:41 GMT
USER user
# Wed, 21 Oct 2026 21:06:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f39465ce84becf679a147dc059c54da328e647c257f9f8a48263965e5aa67818`  
		Last Modified: Wed, 21 Oct 2026 21:06:48 GMT  
		Size: 10.3 MB (10349339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ce6b69877c78f76e55d53aeb3ea1e4f4d5f72e48bc2e300a89a0a7fda16876a`  
		Last Modified: Wed, 21 Oct 2026 21:06:48 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df7e51b6a77ced4800a3caa90e53ca8f55f0498f84e14228b44df373877f949`  
		Last Modified: Wed, 21 Oct 2026 21:06:48 GMT  
		Size: 6.1 MB (6145073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:6dd60d1a55717a7ce1c2d59f01bcaffc13257c3ac8107a17012ab3e1bbfbce8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d30cec18abb5953cdcc8d2826d19c284068a4c79a6fb5f9e4a91a6c715e909c8`

```dockerfile
```

-	Layers:
	-	`sha256:36faca5d1bde2857ca03d8afa17d01133a4f870d28a95a422ac4e2c5cbb88780`  
		Last Modified: Wed, 21 Oct 2026 21:06:48 GMT  
		Size: 1.3 MB (1289203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac46588aeeb2f96a65b18bc8e8632783d4893e0e7bddf297f3edba7cb895b8a8`  
		Last Modified: Wed, 21 Oct 2026 21:06:47 GMT  
		Size: 17.4 KB (17444 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine` - linux; ppc64le

```console
$ docker pull irssi@sha256:01451d7594170904828a6c54b6ac39c88f05d5d354fd26b927e18cc3b6db5620
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21222819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9f3a631f83b94485c1bbfbfb7cec6054c9033ec0fa1f4720934fead0c6a2e0`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:32:42 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 22 Oct 2026 10:32:42 GMT
ENV HOME=/home/user
# Thu, 22 Oct 2026 10:32:42 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 22 Oct 2026 10:32:42 GMT
ENV LANG=C.UTF-8
# Thu, 22 Oct 2026 10:32:42 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 22 Oct 2026 10:33:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 22 Oct 2026 10:33:07 GMT
WORKDIR /home/user
# Thu, 22 Oct 2026 10:33:07 GMT
USER user
# Thu, 22 Oct 2026 10:33:07 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3919971710de78afadd31f0d3899ea71d96ef55f5849386a7b811bcc3cd9f6a0`  
		Last Modified: Thu, 22 Oct 2026 10:33:22 GMT  
		Size: 11.0 MB (11039485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5199fd69215c5c6e933f7649eff0673e7240f332a9cc24ed9c9fdf65aeae502e`  
		Last Modified: Thu, 22 Oct 2026 10:33:21 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab8dbc08914d252096c11ae9fec5ce3b6589f3b64a1ada57a5159f154638141b`  
		Last Modified: Thu, 22 Oct 2026 10:33:22 GMT  
		Size: 6.4 MB (6363970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:850c8b7dd3bd6b8c8ede81d85d252e57badd5cc32f08c0bd87263c416b8bed11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff8f44784d1130dac63b52027e654fe4edda3a1c6916a6be537c231750c1110`

```dockerfile
```

-	Layers:
	-	`sha256:acf7d10cd0d792752ad67bd05aacbee92c3a2e103fa1d2ad39b9660075a3df2d`  
		Last Modified: Thu, 22 Oct 2026 10:33:21 GMT  
		Size: 1.3 MB (1288655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d85b7e407978067efb2b05383b6b80333eaf04cf6db7ff8113244326e5533687`  
		Last Modified: Thu, 22 Oct 2026 10:33:21 GMT  
		Size: 17.6 KB (17571 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine` - linux; riscv64

```console
$ docker pull irssi@sha256:c24c25d5d5a242e8f9edf9c6788b0cd213ce8bccd91bef8dd1edaa316c19d1e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19894521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e151e95afa7a0cb35c839f8fb02feebea11ed3d5df06c49125a713112bc3dee`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 23 Oct 2026 04:55:52 GMT
ADD alpine-minirootfs-3.23.7-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:55:52 GMT
CMD ["/bin/sh"]
# Sat, 24 Oct 2026 16:02:35 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Sat, 24 Oct 2026 16:02:36 GMT
ENV HOME=/home/user
# Sat, 24 Oct 2026 16:02:36 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 24 Oct 2026 16:02:36 GMT
ENV LANG=C.UTF-8
# Sat, 24 Oct 2026 16:02:36 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 24 Oct 2026 16:06:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Sat, 24 Oct 2026 16:06:37 GMT
WORKDIR /home/user
# Sat, 24 Oct 2026 16:06:37 GMT
USER user
# Sat, 24 Oct 2026 16:06:37 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d03de878707a9da693ddc1eddbe1328c578f016182f72385d87f3b4b40158d37`  
		Last Modified: Fri, 23 Oct 2026 04:56:27 GMT  
		Size: 3.6 MB (3579612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7d69c25cc87bbc8892fc547be1d0629808c7da8bd8bb3e74680bf39866add6`  
		Last Modified: Sat, 24 Oct 2026 16:07:43 GMT  
		Size: 10.2 MB (10247990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50807fcfd5cb73bc16c92a39208b82f2bab60a55ad7fe838d260c7d60d7895d3`  
		Last Modified: Sat, 24 Oct 2026 16:07:41 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7724e34420f5f9833cddd0d5f39fa315be1dc9eb49fe8506acdfbc2c3863ef0`  
		Last Modified: Sat, 24 Oct 2026 16:07:43 GMT  
		Size: 6.1 MB (6065935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:a1fe8ae31046a44a7de54e51eeef536f71c6244702dbdc21952b98a9f43df755
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:969ab3c4f6593f35bd6eaaa6d614bbaca1c35390efbbdc18924cdc26550ea366`

```dockerfile
```

-	Layers:
	-	`sha256:75c6988d47b29d1965a595dfc5416429889921bd68f8ae136122bb6fff497ee5`  
		Last Modified: Sat, 24 Oct 2026 16:07:42 GMT  
		Size: 1.3 MB (1288651 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21081e308e0e0d517290ce8f2d953baaff734ba1a69ff4b94d0a75e15a48a59f`  
		Last Modified: Sat, 24 Oct 2026 16:07:41 GMT  
		Size: 17.6 KB (17572 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine` - linux; s390x

```console
$ docker pull irssi@sha256:e092dfa0266df5c5266bb07832b94161c17d1663fc55d6a9b9d126f946a1413b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21287999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0e787fb3ba9b02571c8392210b63de56e987d72fedc7cb1280d8cdd210d7c23`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:39 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:06:39 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:06:39 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:06:39 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:06:39 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:06:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:06:53 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:06:53 GMT
USER user
# Wed, 21 Oct 2026 21:06:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:861c7277ad85e322353d03af79af3474ed1b63a4011b8d8ff078a16695cad4c3`  
		Last Modified: Wed, 21 Oct 2026 21:07:05 GMT  
		Size: 11.4 MB (11364981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58a482c646378d6aed326a9963787f742ef1d9be7fd4c617903067a733251935`  
		Last Modified: Wed, 21 Oct 2026 21:07:05 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce43c640fc8236f646730fb605db7fe501dfd98b1f8159030c347d6f75c17323`  
		Last Modified: Wed, 21 Oct 2026 21:07:05 GMT  
		Size: 6.2 MB (6204916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:f2ae176e9a3c47913ac6f5db8e10d15a82242eaf95c5281ba04b49a9856b595d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb9c63ee45081298c96f5d4972c7d20a168f58ace588561b18fbe01ce65e1ad2`

```dockerfile
```

-	Layers:
	-	`sha256:34ff2f2b8efca5a491cad41420a38640ca1c084e2702db244488c3c6c48877f7`  
		Last Modified: Wed, 21 Oct 2026 21:07:04 GMT  
		Size: 1.3 MB (1288597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cdc60272eb3b6b873bf2499068dbfdb2b77c0fcf5da80f87d95580c64d89249`  
		Last Modified: Wed, 21 Oct 2026 21:07:04 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1.4.5-alpine3.23`

```console
$ docker pull irssi@sha256:540ea0780dd51d49d786d5380269b3eba5daa3ac72e183377b2ceafc65ea9219
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
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

### `irssi:1.4.5-alpine3.23` - linux; amd64

```console
$ docker pull irssi@sha256:75ec2a007387a4bc7ea016e6d282a6db656c8cfa195af2900f8b9968ac391028
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20736652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c77dd691416c8d0fd2307fe866fb33f4cb0f0b8a245276add87c6e8d2745d3b8`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:40 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:06:40 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:06:40 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:06:40 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:06:40 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:06:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:06:52 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:06:52 GMT
USER user
# Wed, 21 Oct 2026 21:06:52 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5ce58680647bf65513cf4f290fe83c54c34ad214292120f247b90adf6de9bb8`  
		Last Modified: Wed, 21 Oct 2026 21:06:59 GMT  
		Size: 10.8 MB (10815509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5fc373befc2948622c8ec67db20d0f99a02d2145fdc665477a0c7da582c34f9`  
		Last Modified: Wed, 21 Oct 2026 21:06:59 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7e1caae42dd792911f8a422a56230836ee5f16bdadd52707b4758036bf7b2fc`  
		Last Modified: Wed, 21 Oct 2026 21:06:59 GMT  
		Size: 6.1 MB (6067931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:b70151b67f1c37c7127aa71184f86db02979fdecda0c3ad1655fcc68b0df3306
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba5b2e08c934247a0eea31980301bd651ed215bf879acf3b297dc33bf1075ff5`

```dockerfile
```

-	Layers:
	-	`sha256:5c31e6150855b1339db285380cdea4fdce7d1c262bd5bde1cf4dff3039014f61`  
		Last Modified: Wed, 21 Oct 2026 21:06:59 GMT  
		Size: 1.3 MB (1289248 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f06eeedbf7874717de2baebf573d4eb8a95ac4ff0a63ae25e84ea52ba288b861`  
		Last Modified: Wed, 21 Oct 2026 21:06:58 GMT  
		Size: 17.5 KB (17499 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine3.23` - linux; arm variant v6

```console
$ docker pull irssi@sha256:4af9032bcd859968cdbfd686dd20e0c1f99e11a066473caba658e9470ddaa0ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19480253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef6fb9719d9d85f56d917c98ec988f04d4258e88b50aae34359e5554024c18ad`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:11:04 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:11:04 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:11:04 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:11:04 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:11:04 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:11:19 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:11:19 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:11:19 GMT
USER user
# Wed, 21 Oct 2026 21:11:19 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab8a51e657fc7a2da56592ea150fd9e06158f212092b94a395b00556eb1ef60b`  
		Last Modified: Wed, 21 Oct 2026 21:11:25 GMT  
		Size: 10.0 MB (10025777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6772ba687ee640673314fba9cf8646b45d6718b7401a276f18e39f932085fb0`  
		Last Modified: Wed, 21 Oct 2026 21:11:24 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82475fb4972c472f57c12fd6fae022524f7156b94bb53416dd59610c290608b5`  
		Last Modified: Wed, 21 Oct 2026 21:11:25 GMT  
		Size: 5.9 MB (5895305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:10e3b308151bc45fc8b1592938735d34bc970dab4a9f7e98d8d1c4ef6142febd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 KB (17423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1153e7d4ea55381b1a1f424e38ef6ee1681ab7eb07d75e16ae95006926d72b7c`

```dockerfile
```

-	Layers:
	-	`sha256:9caf8f1bf53a769f370eefb214a142864e37613d04b1a8479aa8765e35c7ede9`  
		Last Modified: Wed, 21 Oct 2026 21:11:24 GMT  
		Size: 17.4 KB (17423 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine3.23` - linux; arm variant v7

```console
$ docker pull irssi@sha256:620e1fe3789d2154cc7a436b1661ff6a8601b11f696e3d660dc562f78e6e8e93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18770911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7448f678b2ab0a661b217be66d20880e3558af119dcece7c526aea0301780202`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:09:09 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:09:10 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:09:10 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:09:10 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:09:10 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:09:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:09:24 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:09:24 GMT
USER user
# Wed, 21 Oct 2026 21:09:24 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:349d2cc0aaca902a17627cb405a52203d446de0f45c98714141e9c96bf30b94f`  
		Last Modified: Wed, 21 Oct 2026 20:46:48 GMT  
		Size: 3.3 MB (3267040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6edaddb04ceb3355866dce9d94deb6d223e937b91a41615a8cca91f0a16fc9e5`  
		Last Modified: Wed, 21 Oct 2026 21:09:32 GMT  
		Size: 9.9 MB (9859334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95529e4712d45975677cf819b7e48a05142e036184e08fe9ca7902beebe20ee9`  
		Last Modified: Wed, 21 Oct 2026 21:09:31 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e8adef0f0579ecf7e9cbcdd43ffc5a8494847a431784f9a15b0f24a447c0383`  
		Last Modified: Wed, 21 Oct 2026 21:09:31 GMT  
		Size: 5.6 MB (5643556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:a06cc8dc95c09fba6f9bd758e52bdebd764b8bdde21cd0823c4ce7cb7d79fe00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1309290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66ecc6ba564f75aa0866d3787234c5728b5d643b1892ffa2db7c164ec7589dac`

```dockerfile
```

-	Layers:
	-	`sha256:19d92ca93975fdf799df0c9f0656b88620845fdd846a02022cd16ec60ee02c75`  
		Last Modified: Wed, 21 Oct 2026 21:09:31 GMT  
		Size: 1.3 MB (1291656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b7aaee04542b02e51708f05f3766bdbc161fe084dca3fb1c6ed806d7268608c`  
		Last Modified: Wed, 21 Oct 2026 21:09:31 GMT  
		Size: 17.6 KB (17634 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:8d7470356c61c7c0e89e8ba82a575065c0c5269132ca9a98e728e05a786e69d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20879093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb17b262e8d9802d3ee63b0634b3bc6a34e41a1d14b051a47378b85f7bd7046a`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:04 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:06:04 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:06:04 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:06:04 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:06:04 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:06:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:06:17 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:06:17 GMT
USER user
# Wed, 21 Oct 2026 21:06:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:666b3d421220ae797ac61b65bfafe13ff140f4e9d178771429a66014975506a8`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 10.7 MB (10749808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741e6da6b2b634d61d158f7e767bda28ea78e6f18354373d3cb321140fdb0175`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6324dbb26db17d055921cff930a6561b91ea7b90099a3574da782d6efe36ff2`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 5.9 MB (5938807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:2ced7d03760dfd54b37bc1443fe89b2d17c5284a3c07db9a63275c8e400f359d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1460fe62a3b558d8d1a4dbcc4bc8de75e65f3089a51918ed8650036720f99971`

```dockerfile
```

-	Layers:
	-	`sha256:173411df67a988867ac09f442392b175cfde959424420aed78bcfd2f80e31b8d`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 1.3 MB (1288702 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:177284c09f250cbf0e68c1c33be96dfdefbcd8754574f651942f705c7b0a8e6c`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 17.7 KB (17682 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine3.23` - linux; 386

```console
$ docker pull irssi@sha256:6020ba1bafa72fe73eb0e0c32dd890a0bf16e67349e69af06e89a916d705e2f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20172701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8c87a2a44dcae3aab8b7f000d1dbc0b26703ce825ac46ceba04018f6ae8506f`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:21 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:06:21 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:06:21 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:06:21 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:06:21 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:06:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:06:41 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:06:41 GMT
USER user
# Wed, 21 Oct 2026 21:06:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f39465ce84becf679a147dc059c54da328e647c257f9f8a48263965e5aa67818`  
		Last Modified: Wed, 21 Oct 2026 21:06:48 GMT  
		Size: 10.3 MB (10349339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ce6b69877c78f76e55d53aeb3ea1e4f4d5f72e48bc2e300a89a0a7fda16876a`  
		Last Modified: Wed, 21 Oct 2026 21:06:48 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df7e51b6a77ced4800a3caa90e53ca8f55f0498f84e14228b44df373877f949`  
		Last Modified: Wed, 21 Oct 2026 21:06:48 GMT  
		Size: 6.1 MB (6145073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:6dd60d1a55717a7ce1c2d59f01bcaffc13257c3ac8107a17012ab3e1bbfbce8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d30cec18abb5953cdcc8d2826d19c284068a4c79a6fb5f9e4a91a6c715e909c8`

```dockerfile
```

-	Layers:
	-	`sha256:36faca5d1bde2857ca03d8afa17d01133a4f870d28a95a422ac4e2c5cbb88780`  
		Last Modified: Wed, 21 Oct 2026 21:06:48 GMT  
		Size: 1.3 MB (1289203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac46588aeeb2f96a65b18bc8e8632783d4893e0e7bddf297f3edba7cb895b8a8`  
		Last Modified: Wed, 21 Oct 2026 21:06:47 GMT  
		Size: 17.4 KB (17444 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine3.23` - linux; ppc64le

```console
$ docker pull irssi@sha256:01451d7594170904828a6c54b6ac39c88f05d5d354fd26b927e18cc3b6db5620
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21222819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9f3a631f83b94485c1bbfbfb7cec6054c9033ec0fa1f4720934fead0c6a2e0`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:32:42 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 22 Oct 2026 10:32:42 GMT
ENV HOME=/home/user
# Thu, 22 Oct 2026 10:32:42 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 22 Oct 2026 10:32:42 GMT
ENV LANG=C.UTF-8
# Thu, 22 Oct 2026 10:32:42 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 22 Oct 2026 10:33:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 22 Oct 2026 10:33:07 GMT
WORKDIR /home/user
# Thu, 22 Oct 2026 10:33:07 GMT
USER user
# Thu, 22 Oct 2026 10:33:07 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3919971710de78afadd31f0d3899ea71d96ef55f5849386a7b811bcc3cd9f6a0`  
		Last Modified: Thu, 22 Oct 2026 10:33:22 GMT  
		Size: 11.0 MB (11039485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5199fd69215c5c6e933f7649eff0673e7240f332a9cc24ed9c9fdf65aeae502e`  
		Last Modified: Thu, 22 Oct 2026 10:33:21 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab8dbc08914d252096c11ae9fec5ce3b6589f3b64a1ada57a5159f154638141b`  
		Last Modified: Thu, 22 Oct 2026 10:33:22 GMT  
		Size: 6.4 MB (6363970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:850c8b7dd3bd6b8c8ede81d85d252e57badd5cc32f08c0bd87263c416b8bed11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff8f44784d1130dac63b52027e654fe4edda3a1c6916a6be537c231750c1110`

```dockerfile
```

-	Layers:
	-	`sha256:acf7d10cd0d792752ad67bd05aacbee92c3a2e103fa1d2ad39b9660075a3df2d`  
		Last Modified: Thu, 22 Oct 2026 10:33:21 GMT  
		Size: 1.3 MB (1288655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d85b7e407978067efb2b05383b6b80333eaf04cf6db7ff8113244326e5533687`  
		Last Modified: Thu, 22 Oct 2026 10:33:21 GMT  
		Size: 17.6 KB (17571 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine3.23` - linux; riscv64

```console
$ docker pull irssi@sha256:c24c25d5d5a242e8f9edf9c6788b0cd213ce8bccd91bef8dd1edaa316c19d1e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19894521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e151e95afa7a0cb35c839f8fb02feebea11ed3d5df06c49125a713112bc3dee`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 23 Oct 2026 04:55:52 GMT
ADD alpine-minirootfs-3.23.7-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:55:52 GMT
CMD ["/bin/sh"]
# Sat, 24 Oct 2026 16:02:35 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Sat, 24 Oct 2026 16:02:36 GMT
ENV HOME=/home/user
# Sat, 24 Oct 2026 16:02:36 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 24 Oct 2026 16:02:36 GMT
ENV LANG=C.UTF-8
# Sat, 24 Oct 2026 16:02:36 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 24 Oct 2026 16:06:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Sat, 24 Oct 2026 16:06:37 GMT
WORKDIR /home/user
# Sat, 24 Oct 2026 16:06:37 GMT
USER user
# Sat, 24 Oct 2026 16:06:37 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d03de878707a9da693ddc1eddbe1328c578f016182f72385d87f3b4b40158d37`  
		Last Modified: Fri, 23 Oct 2026 04:56:27 GMT  
		Size: 3.6 MB (3579612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7d69c25cc87bbc8892fc547be1d0629808c7da8bd8bb3e74680bf39866add6`  
		Last Modified: Sat, 24 Oct 2026 16:07:43 GMT  
		Size: 10.2 MB (10247990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50807fcfd5cb73bc16c92a39208b82f2bab60a55ad7fe838d260c7d60d7895d3`  
		Last Modified: Sat, 24 Oct 2026 16:07:41 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7724e34420f5f9833cddd0d5f39fa315be1dc9eb49fe8506acdfbc2c3863ef0`  
		Last Modified: Sat, 24 Oct 2026 16:07:43 GMT  
		Size: 6.1 MB (6065935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:a1fe8ae31046a44a7de54e51eeef536f71c6244702dbdc21952b98a9f43df755
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:969ab3c4f6593f35bd6eaaa6d614bbaca1c35390efbbdc18924cdc26550ea366`

```dockerfile
```

-	Layers:
	-	`sha256:75c6988d47b29d1965a595dfc5416429889921bd68f8ae136122bb6fff497ee5`  
		Last Modified: Sat, 24 Oct 2026 16:07:42 GMT  
		Size: 1.3 MB (1288651 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21081e308e0e0d517290ce8f2d953baaff734ba1a69ff4b94d0a75e15a48a59f`  
		Last Modified: Sat, 24 Oct 2026 16:07:41 GMT  
		Size: 17.6 KB (17572 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine3.23` - linux; s390x

```console
$ docker pull irssi@sha256:e092dfa0266df5c5266bb07832b94161c17d1663fc55d6a9b9d126f946a1413b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21287999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0e787fb3ba9b02571c8392210b63de56e987d72fedc7cb1280d8cdd210d7c23`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:39 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:06:39 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:06:39 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:06:39 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:06:39 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:06:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:06:53 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:06:53 GMT
USER user
# Wed, 21 Oct 2026 21:06:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:861c7277ad85e322353d03af79af3474ed1b63a4011b8d8ff078a16695cad4c3`  
		Last Modified: Wed, 21 Oct 2026 21:07:05 GMT  
		Size: 11.4 MB (11364981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58a482c646378d6aed326a9963787f742ef1d9be7fd4c617903067a733251935`  
		Last Modified: Wed, 21 Oct 2026 21:07:05 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce43c640fc8236f646730fb605db7fe501dfd98b1f8159030c347d6f75c17323`  
		Last Modified: Wed, 21 Oct 2026 21:07:05 GMT  
		Size: 6.2 MB (6204916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:f2ae176e9a3c47913ac6f5db8e10d15a82242eaf95c5281ba04b49a9856b595d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb9c63ee45081298c96f5d4972c7d20a168f58ace588561b18fbe01ce65e1ad2`

```dockerfile
```

-	Layers:
	-	`sha256:34ff2f2b8efca5a491cad41420a38640ca1c084e2702db244488c3c6c48877f7`  
		Last Modified: Wed, 21 Oct 2026 21:07:04 GMT  
		Size: 1.3 MB (1288597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cdc60272eb3b6b873bf2499068dbfdb2b77c0fcf5da80f87d95580c64d89249`  
		Last Modified: Wed, 21 Oct 2026 21:07:04 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1.4.5-trixie`

```console
$ docker pull irssi@sha256:5da20d308820d2278b9bcbc031ccc0ef87d7e8e603869bf6bfab02090a2c8ec8
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

### `irssi:1.4.5-trixie` - linux; amd64

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

### `irssi:1.4.5-trixie` - unknown; unknown

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

### `irssi:1.4.5-trixie` - linux; arm variant v5

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

### `irssi:1.4.5-trixie` - unknown; unknown

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

### `irssi:1.4.5-trixie` - linux; arm variant v7

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

### `irssi:1.4.5-trixie` - unknown; unknown

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

### `irssi:1.4.5-trixie` - linux; arm64 variant v8

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

### `irssi:1.4.5-trixie` - unknown; unknown

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

### `irssi:1.4.5-trixie` - linux; 386

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

### `irssi:1.4.5-trixie` - unknown; unknown

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

### `irssi:1.4.5-trixie` - linux; ppc64le

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

### `irssi:1.4.5-trixie` - unknown; unknown

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

### `irssi:1.4.5-trixie` - linux; riscv64

```console
$ docker pull irssi@sha256:b9398996fc42e4f92081bac09225c3ee819b6673da696a48f8899328749d2e56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51761683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:404f3e9b0283462c4d3182ed40faa6cbdcae6da4eca8c208def9a5095987c0d3`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793059200'
# Fri, 30 Oct 2026 11:48:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 30 Oct 2026 11:48:22 GMT
ENV HOME=/home/user
# Fri, 30 Oct 2026 11:48:22 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Fri, 30 Oct 2026 11:48:22 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 11:48:22 GMT
ENV IRSSI_VERSION=1.4.5
# Fri, 30 Oct 2026 11:55:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Fri, 30 Oct 2026 11:55:29 GMT
WORKDIR /home/user
# Fri, 30 Oct 2026 11:55:29 GMT
USER user
# Fri, 30 Oct 2026 11:55:29 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:a81ae23cfcc12d03cee9e3704fa559c027af15fefe8c60924add8fd17e4c98c1`  
		Last Modified: Wed, 28 Oct 2026 18:39:27 GMT  
		Size: 28.3 MB (28345669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e42dd22c6cb9e91f2dc25e9c1cbad2fb6f0c45a0543e1ae49f1d672c70eb01`  
		Last Modified: Fri, 30 Oct 2026 11:57:28 GMT  
		Size: 18.6 MB (18550034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741c5ebf96c5a39beaebb03a85b041bf1efd3999e67aaceaa9ba02351e8aa380`  
		Last Modified: Fri, 30 Oct 2026 11:57:23 GMT  
		Size: 3.3 KB (3331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c216878c55e948019ea55d4f8c499508910071a51dc0a7515965373f8bebf03`  
		Last Modified: Fri, 30 Oct 2026 11:57:26 GMT  
		Size: 4.9 MB (4862617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:8bdece1818ddc31ad42e1e18910b79d4599ed86b87f3997801ebbd2ee4c45e57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43807d34411cece97f375585cc0cd0e35ceb8c2812fab71b9e5f1e8f86fc4ea8`

```dockerfile
```

-	Layers:
	-	`sha256:a382050068f123cad7982883f5e9b90cd49d306becb521c9603ae44a46f5e139`  
		Last Modified: Fri, 30 Oct 2026 11:57:26 GMT  
		Size: 5.6 MB (5584585 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c7f2dd4dc616c8b6ea5a3b3f464d3aa825af379c7e4f472e9cf2fa6e8c23d2f`  
		Last Modified: Fri, 30 Oct 2026 11:57:24 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; s390x

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

### `irssi:1.4.5-trixie` - unknown; unknown

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

## `irssi:alpine`

```console
$ docker pull irssi@sha256:540ea0780dd51d49d786d5380269b3eba5daa3ac72e183377b2ceafc65ea9219
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
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

### `irssi:alpine` - linux; amd64

```console
$ docker pull irssi@sha256:75ec2a007387a4bc7ea016e6d282a6db656c8cfa195af2900f8b9968ac391028
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20736652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c77dd691416c8d0fd2307fe866fb33f4cb0f0b8a245276add87c6e8d2745d3b8`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:40 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:06:40 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:06:40 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:06:40 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:06:40 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:06:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:06:52 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:06:52 GMT
USER user
# Wed, 21 Oct 2026 21:06:52 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5ce58680647bf65513cf4f290fe83c54c34ad214292120f247b90adf6de9bb8`  
		Last Modified: Wed, 21 Oct 2026 21:06:59 GMT  
		Size: 10.8 MB (10815509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5fc373befc2948622c8ec67db20d0f99a02d2145fdc665477a0c7da582c34f9`  
		Last Modified: Wed, 21 Oct 2026 21:06:59 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7e1caae42dd792911f8a422a56230836ee5f16bdadd52707b4758036bf7b2fc`  
		Last Modified: Wed, 21 Oct 2026 21:06:59 GMT  
		Size: 6.1 MB (6067931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:b70151b67f1c37c7127aa71184f86db02979fdecda0c3ad1655fcc68b0df3306
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba5b2e08c934247a0eea31980301bd651ed215bf879acf3b297dc33bf1075ff5`

```dockerfile
```

-	Layers:
	-	`sha256:5c31e6150855b1339db285380cdea4fdce7d1c262bd5bde1cf4dff3039014f61`  
		Last Modified: Wed, 21 Oct 2026 21:06:59 GMT  
		Size: 1.3 MB (1289248 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f06eeedbf7874717de2baebf573d4eb8a95ac4ff0a63ae25e84ea52ba288b861`  
		Last Modified: Wed, 21 Oct 2026 21:06:58 GMT  
		Size: 17.5 KB (17499 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine` - linux; arm variant v6

```console
$ docker pull irssi@sha256:4af9032bcd859968cdbfd686dd20e0c1f99e11a066473caba658e9470ddaa0ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19480253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef6fb9719d9d85f56d917c98ec988f04d4258e88b50aae34359e5554024c18ad`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:11:04 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:11:04 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:11:04 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:11:04 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:11:04 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:11:19 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:11:19 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:11:19 GMT
USER user
# Wed, 21 Oct 2026 21:11:19 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab8a51e657fc7a2da56592ea150fd9e06158f212092b94a395b00556eb1ef60b`  
		Last Modified: Wed, 21 Oct 2026 21:11:25 GMT  
		Size: 10.0 MB (10025777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6772ba687ee640673314fba9cf8646b45d6718b7401a276f18e39f932085fb0`  
		Last Modified: Wed, 21 Oct 2026 21:11:24 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82475fb4972c472f57c12fd6fae022524f7156b94bb53416dd59610c290608b5`  
		Last Modified: Wed, 21 Oct 2026 21:11:25 GMT  
		Size: 5.9 MB (5895305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:10e3b308151bc45fc8b1592938735d34bc970dab4a9f7e98d8d1c4ef6142febd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 KB (17423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1153e7d4ea55381b1a1f424e38ef6ee1681ab7eb07d75e16ae95006926d72b7c`

```dockerfile
```

-	Layers:
	-	`sha256:9caf8f1bf53a769f370eefb214a142864e37613d04b1a8479aa8765e35c7ede9`  
		Last Modified: Wed, 21 Oct 2026 21:11:24 GMT  
		Size: 17.4 KB (17423 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine` - linux; arm variant v7

```console
$ docker pull irssi@sha256:620e1fe3789d2154cc7a436b1661ff6a8601b11f696e3d660dc562f78e6e8e93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18770911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7448f678b2ab0a661b217be66d20880e3558af119dcece7c526aea0301780202`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:09:09 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:09:10 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:09:10 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:09:10 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:09:10 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:09:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:09:24 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:09:24 GMT
USER user
# Wed, 21 Oct 2026 21:09:24 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:349d2cc0aaca902a17627cb405a52203d446de0f45c98714141e9c96bf30b94f`  
		Last Modified: Wed, 21 Oct 2026 20:46:48 GMT  
		Size: 3.3 MB (3267040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6edaddb04ceb3355866dce9d94deb6d223e937b91a41615a8cca91f0a16fc9e5`  
		Last Modified: Wed, 21 Oct 2026 21:09:32 GMT  
		Size: 9.9 MB (9859334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95529e4712d45975677cf819b7e48a05142e036184e08fe9ca7902beebe20ee9`  
		Last Modified: Wed, 21 Oct 2026 21:09:31 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e8adef0f0579ecf7e9cbcdd43ffc5a8494847a431784f9a15b0f24a447c0383`  
		Last Modified: Wed, 21 Oct 2026 21:09:31 GMT  
		Size: 5.6 MB (5643556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:a06cc8dc95c09fba6f9bd758e52bdebd764b8bdde21cd0823c4ce7cb7d79fe00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1309290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66ecc6ba564f75aa0866d3787234c5728b5d643b1892ffa2db7c164ec7589dac`

```dockerfile
```

-	Layers:
	-	`sha256:19d92ca93975fdf799df0c9f0656b88620845fdd846a02022cd16ec60ee02c75`  
		Last Modified: Wed, 21 Oct 2026 21:09:31 GMT  
		Size: 1.3 MB (1291656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b7aaee04542b02e51708f05f3766bdbc161fe084dca3fb1c6ed806d7268608c`  
		Last Modified: Wed, 21 Oct 2026 21:09:31 GMT  
		Size: 17.6 KB (17634 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:8d7470356c61c7c0e89e8ba82a575065c0c5269132ca9a98e728e05a786e69d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20879093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb17b262e8d9802d3ee63b0634b3bc6a34e41a1d14b051a47378b85f7bd7046a`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:04 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:06:04 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:06:04 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:06:04 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:06:04 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:06:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:06:17 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:06:17 GMT
USER user
# Wed, 21 Oct 2026 21:06:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:666b3d421220ae797ac61b65bfafe13ff140f4e9d178771429a66014975506a8`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 10.7 MB (10749808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741e6da6b2b634d61d158f7e767bda28ea78e6f18354373d3cb321140fdb0175`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6324dbb26db17d055921cff930a6561b91ea7b90099a3574da782d6efe36ff2`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 5.9 MB (5938807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:2ced7d03760dfd54b37bc1443fe89b2d17c5284a3c07db9a63275c8e400f359d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1460fe62a3b558d8d1a4dbcc4bc8de75e65f3089a51918ed8650036720f99971`

```dockerfile
```

-	Layers:
	-	`sha256:173411df67a988867ac09f442392b175cfde959424420aed78bcfd2f80e31b8d`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 1.3 MB (1288702 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:177284c09f250cbf0e68c1c33be96dfdefbcd8754574f651942f705c7b0a8e6c`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 17.7 KB (17682 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine` - linux; 386

```console
$ docker pull irssi@sha256:6020ba1bafa72fe73eb0e0c32dd890a0bf16e67349e69af06e89a916d705e2f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20172701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8c87a2a44dcae3aab8b7f000d1dbc0b26703ce825ac46ceba04018f6ae8506f`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:21 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:06:21 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:06:21 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:06:21 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:06:21 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:06:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:06:41 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:06:41 GMT
USER user
# Wed, 21 Oct 2026 21:06:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f39465ce84becf679a147dc059c54da328e647c257f9f8a48263965e5aa67818`  
		Last Modified: Wed, 21 Oct 2026 21:06:48 GMT  
		Size: 10.3 MB (10349339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ce6b69877c78f76e55d53aeb3ea1e4f4d5f72e48bc2e300a89a0a7fda16876a`  
		Last Modified: Wed, 21 Oct 2026 21:06:48 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df7e51b6a77ced4800a3caa90e53ca8f55f0498f84e14228b44df373877f949`  
		Last Modified: Wed, 21 Oct 2026 21:06:48 GMT  
		Size: 6.1 MB (6145073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:6dd60d1a55717a7ce1c2d59f01bcaffc13257c3ac8107a17012ab3e1bbfbce8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d30cec18abb5953cdcc8d2826d19c284068a4c79a6fb5f9e4a91a6c715e909c8`

```dockerfile
```

-	Layers:
	-	`sha256:36faca5d1bde2857ca03d8afa17d01133a4f870d28a95a422ac4e2c5cbb88780`  
		Last Modified: Wed, 21 Oct 2026 21:06:48 GMT  
		Size: 1.3 MB (1289203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac46588aeeb2f96a65b18bc8e8632783d4893e0e7bddf297f3edba7cb895b8a8`  
		Last Modified: Wed, 21 Oct 2026 21:06:47 GMT  
		Size: 17.4 KB (17444 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine` - linux; ppc64le

```console
$ docker pull irssi@sha256:01451d7594170904828a6c54b6ac39c88f05d5d354fd26b927e18cc3b6db5620
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21222819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9f3a631f83b94485c1bbfbfb7cec6054c9033ec0fa1f4720934fead0c6a2e0`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:32:42 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 22 Oct 2026 10:32:42 GMT
ENV HOME=/home/user
# Thu, 22 Oct 2026 10:32:42 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 22 Oct 2026 10:32:42 GMT
ENV LANG=C.UTF-8
# Thu, 22 Oct 2026 10:32:42 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 22 Oct 2026 10:33:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 22 Oct 2026 10:33:07 GMT
WORKDIR /home/user
# Thu, 22 Oct 2026 10:33:07 GMT
USER user
# Thu, 22 Oct 2026 10:33:07 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3919971710de78afadd31f0d3899ea71d96ef55f5849386a7b811bcc3cd9f6a0`  
		Last Modified: Thu, 22 Oct 2026 10:33:22 GMT  
		Size: 11.0 MB (11039485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5199fd69215c5c6e933f7649eff0673e7240f332a9cc24ed9c9fdf65aeae502e`  
		Last Modified: Thu, 22 Oct 2026 10:33:21 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab8dbc08914d252096c11ae9fec5ce3b6589f3b64a1ada57a5159f154638141b`  
		Last Modified: Thu, 22 Oct 2026 10:33:22 GMT  
		Size: 6.4 MB (6363970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:850c8b7dd3bd6b8c8ede81d85d252e57badd5cc32f08c0bd87263c416b8bed11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff8f44784d1130dac63b52027e654fe4edda3a1c6916a6be537c231750c1110`

```dockerfile
```

-	Layers:
	-	`sha256:acf7d10cd0d792752ad67bd05aacbee92c3a2e103fa1d2ad39b9660075a3df2d`  
		Last Modified: Thu, 22 Oct 2026 10:33:21 GMT  
		Size: 1.3 MB (1288655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d85b7e407978067efb2b05383b6b80333eaf04cf6db7ff8113244326e5533687`  
		Last Modified: Thu, 22 Oct 2026 10:33:21 GMT  
		Size: 17.6 KB (17571 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine` - linux; riscv64

```console
$ docker pull irssi@sha256:c24c25d5d5a242e8f9edf9c6788b0cd213ce8bccd91bef8dd1edaa316c19d1e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19894521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e151e95afa7a0cb35c839f8fb02feebea11ed3d5df06c49125a713112bc3dee`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 23 Oct 2026 04:55:52 GMT
ADD alpine-minirootfs-3.23.7-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:55:52 GMT
CMD ["/bin/sh"]
# Sat, 24 Oct 2026 16:02:35 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Sat, 24 Oct 2026 16:02:36 GMT
ENV HOME=/home/user
# Sat, 24 Oct 2026 16:02:36 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 24 Oct 2026 16:02:36 GMT
ENV LANG=C.UTF-8
# Sat, 24 Oct 2026 16:02:36 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 24 Oct 2026 16:06:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Sat, 24 Oct 2026 16:06:37 GMT
WORKDIR /home/user
# Sat, 24 Oct 2026 16:06:37 GMT
USER user
# Sat, 24 Oct 2026 16:06:37 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d03de878707a9da693ddc1eddbe1328c578f016182f72385d87f3b4b40158d37`  
		Last Modified: Fri, 23 Oct 2026 04:56:27 GMT  
		Size: 3.6 MB (3579612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7d69c25cc87bbc8892fc547be1d0629808c7da8bd8bb3e74680bf39866add6`  
		Last Modified: Sat, 24 Oct 2026 16:07:43 GMT  
		Size: 10.2 MB (10247990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50807fcfd5cb73bc16c92a39208b82f2bab60a55ad7fe838d260c7d60d7895d3`  
		Last Modified: Sat, 24 Oct 2026 16:07:41 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7724e34420f5f9833cddd0d5f39fa315be1dc9eb49fe8506acdfbc2c3863ef0`  
		Last Modified: Sat, 24 Oct 2026 16:07:43 GMT  
		Size: 6.1 MB (6065935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:a1fe8ae31046a44a7de54e51eeef536f71c6244702dbdc21952b98a9f43df755
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:969ab3c4f6593f35bd6eaaa6d614bbaca1c35390efbbdc18924cdc26550ea366`

```dockerfile
```

-	Layers:
	-	`sha256:75c6988d47b29d1965a595dfc5416429889921bd68f8ae136122bb6fff497ee5`  
		Last Modified: Sat, 24 Oct 2026 16:07:42 GMT  
		Size: 1.3 MB (1288651 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21081e308e0e0d517290ce8f2d953baaff734ba1a69ff4b94d0a75e15a48a59f`  
		Last Modified: Sat, 24 Oct 2026 16:07:41 GMT  
		Size: 17.6 KB (17572 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine` - linux; s390x

```console
$ docker pull irssi@sha256:e092dfa0266df5c5266bb07832b94161c17d1663fc55d6a9b9d126f946a1413b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21287999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0e787fb3ba9b02571c8392210b63de56e987d72fedc7cb1280d8cdd210d7c23`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:39 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:06:39 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:06:39 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:06:39 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:06:39 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:06:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:06:53 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:06:53 GMT
USER user
# Wed, 21 Oct 2026 21:06:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:861c7277ad85e322353d03af79af3474ed1b63a4011b8d8ff078a16695cad4c3`  
		Last Modified: Wed, 21 Oct 2026 21:07:05 GMT  
		Size: 11.4 MB (11364981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58a482c646378d6aed326a9963787f742ef1d9be7fd4c617903067a733251935`  
		Last Modified: Wed, 21 Oct 2026 21:07:05 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce43c640fc8236f646730fb605db7fe501dfd98b1f8159030c347d6f75c17323`  
		Last Modified: Wed, 21 Oct 2026 21:07:05 GMT  
		Size: 6.2 MB (6204916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:f2ae176e9a3c47913ac6f5db8e10d15a82242eaf95c5281ba04b49a9856b595d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb9c63ee45081298c96f5d4972c7d20a168f58ace588561b18fbe01ce65e1ad2`

```dockerfile
```

-	Layers:
	-	`sha256:34ff2f2b8efca5a491cad41420a38640ca1c084e2702db244488c3c6c48877f7`  
		Last Modified: Wed, 21 Oct 2026 21:07:04 GMT  
		Size: 1.3 MB (1288597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cdc60272eb3b6b873bf2499068dbfdb2b77c0fcf5da80f87d95580c64d89249`  
		Last Modified: Wed, 21 Oct 2026 21:07:04 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:alpine3.23`

```console
$ docker pull irssi@sha256:540ea0780dd51d49d786d5380269b3eba5daa3ac72e183377b2ceafc65ea9219
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
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

### `irssi:alpine3.23` - linux; amd64

```console
$ docker pull irssi@sha256:75ec2a007387a4bc7ea016e6d282a6db656c8cfa195af2900f8b9968ac391028
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20736652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c77dd691416c8d0fd2307fe866fb33f4cb0f0b8a245276add87c6e8d2745d3b8`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:40 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:06:40 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:06:40 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:06:40 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:06:40 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:06:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:06:52 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:06:52 GMT
USER user
# Wed, 21 Oct 2026 21:06:52 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5ce58680647bf65513cf4f290fe83c54c34ad214292120f247b90adf6de9bb8`  
		Last Modified: Wed, 21 Oct 2026 21:06:59 GMT  
		Size: 10.8 MB (10815509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5fc373befc2948622c8ec67db20d0f99a02d2145fdc665477a0c7da582c34f9`  
		Last Modified: Wed, 21 Oct 2026 21:06:59 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7e1caae42dd792911f8a422a56230836ee5f16bdadd52707b4758036bf7b2fc`  
		Last Modified: Wed, 21 Oct 2026 21:06:59 GMT  
		Size: 6.1 MB (6067931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:b70151b67f1c37c7127aa71184f86db02979fdecda0c3ad1655fcc68b0df3306
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba5b2e08c934247a0eea31980301bd651ed215bf879acf3b297dc33bf1075ff5`

```dockerfile
```

-	Layers:
	-	`sha256:5c31e6150855b1339db285380cdea4fdce7d1c262bd5bde1cf4dff3039014f61`  
		Last Modified: Wed, 21 Oct 2026 21:06:59 GMT  
		Size: 1.3 MB (1289248 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f06eeedbf7874717de2baebf573d4eb8a95ac4ff0a63ae25e84ea52ba288b861`  
		Last Modified: Wed, 21 Oct 2026 21:06:58 GMT  
		Size: 17.5 KB (17499 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine3.23` - linux; arm variant v6

```console
$ docker pull irssi@sha256:4af9032bcd859968cdbfd686dd20e0c1f99e11a066473caba658e9470ddaa0ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19480253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef6fb9719d9d85f56d917c98ec988f04d4258e88b50aae34359e5554024c18ad`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:11:04 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:11:04 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:11:04 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:11:04 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:11:04 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:11:19 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:11:19 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:11:19 GMT
USER user
# Wed, 21 Oct 2026 21:11:19 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab8a51e657fc7a2da56592ea150fd9e06158f212092b94a395b00556eb1ef60b`  
		Last Modified: Wed, 21 Oct 2026 21:11:25 GMT  
		Size: 10.0 MB (10025777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6772ba687ee640673314fba9cf8646b45d6718b7401a276f18e39f932085fb0`  
		Last Modified: Wed, 21 Oct 2026 21:11:24 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82475fb4972c472f57c12fd6fae022524f7156b94bb53416dd59610c290608b5`  
		Last Modified: Wed, 21 Oct 2026 21:11:25 GMT  
		Size: 5.9 MB (5895305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:10e3b308151bc45fc8b1592938735d34bc970dab4a9f7e98d8d1c4ef6142febd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 KB (17423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1153e7d4ea55381b1a1f424e38ef6ee1681ab7eb07d75e16ae95006926d72b7c`

```dockerfile
```

-	Layers:
	-	`sha256:9caf8f1bf53a769f370eefb214a142864e37613d04b1a8479aa8765e35c7ede9`  
		Last Modified: Wed, 21 Oct 2026 21:11:24 GMT  
		Size: 17.4 KB (17423 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine3.23` - linux; arm variant v7

```console
$ docker pull irssi@sha256:620e1fe3789d2154cc7a436b1661ff6a8601b11f696e3d660dc562f78e6e8e93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18770911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7448f678b2ab0a661b217be66d20880e3558af119dcece7c526aea0301780202`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:09:09 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:09:10 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:09:10 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:09:10 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:09:10 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:09:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:09:24 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:09:24 GMT
USER user
# Wed, 21 Oct 2026 21:09:24 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:349d2cc0aaca902a17627cb405a52203d446de0f45c98714141e9c96bf30b94f`  
		Last Modified: Wed, 21 Oct 2026 20:46:48 GMT  
		Size: 3.3 MB (3267040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6edaddb04ceb3355866dce9d94deb6d223e937b91a41615a8cca91f0a16fc9e5`  
		Last Modified: Wed, 21 Oct 2026 21:09:32 GMT  
		Size: 9.9 MB (9859334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95529e4712d45975677cf819b7e48a05142e036184e08fe9ca7902beebe20ee9`  
		Last Modified: Wed, 21 Oct 2026 21:09:31 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e8adef0f0579ecf7e9cbcdd43ffc5a8494847a431784f9a15b0f24a447c0383`  
		Last Modified: Wed, 21 Oct 2026 21:09:31 GMT  
		Size: 5.6 MB (5643556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:a06cc8dc95c09fba6f9bd758e52bdebd764b8bdde21cd0823c4ce7cb7d79fe00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1309290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66ecc6ba564f75aa0866d3787234c5728b5d643b1892ffa2db7c164ec7589dac`

```dockerfile
```

-	Layers:
	-	`sha256:19d92ca93975fdf799df0c9f0656b88620845fdd846a02022cd16ec60ee02c75`  
		Last Modified: Wed, 21 Oct 2026 21:09:31 GMT  
		Size: 1.3 MB (1291656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b7aaee04542b02e51708f05f3766bdbc161fe084dca3fb1c6ed806d7268608c`  
		Last Modified: Wed, 21 Oct 2026 21:09:31 GMT  
		Size: 17.6 KB (17634 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine3.23` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:8d7470356c61c7c0e89e8ba82a575065c0c5269132ca9a98e728e05a786e69d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20879093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb17b262e8d9802d3ee63b0634b3bc6a34e41a1d14b051a47378b85f7bd7046a`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:04 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:06:04 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:06:04 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:06:04 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:06:04 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:06:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:06:17 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:06:17 GMT
USER user
# Wed, 21 Oct 2026 21:06:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:666b3d421220ae797ac61b65bfafe13ff140f4e9d178771429a66014975506a8`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 10.7 MB (10749808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741e6da6b2b634d61d158f7e767bda28ea78e6f18354373d3cb321140fdb0175`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6324dbb26db17d055921cff930a6561b91ea7b90099a3574da782d6efe36ff2`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 5.9 MB (5938807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:2ced7d03760dfd54b37bc1443fe89b2d17c5284a3c07db9a63275c8e400f359d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1460fe62a3b558d8d1a4dbcc4bc8de75e65f3089a51918ed8650036720f99971`

```dockerfile
```

-	Layers:
	-	`sha256:173411df67a988867ac09f442392b175cfde959424420aed78bcfd2f80e31b8d`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 1.3 MB (1288702 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:177284c09f250cbf0e68c1c33be96dfdefbcd8754574f651942f705c7b0a8e6c`  
		Last Modified: Wed, 21 Oct 2026 21:06:25 GMT  
		Size: 17.7 KB (17682 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine3.23` - linux; 386

```console
$ docker pull irssi@sha256:6020ba1bafa72fe73eb0e0c32dd890a0bf16e67349e69af06e89a916d705e2f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20172701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8c87a2a44dcae3aab8b7f000d1dbc0b26703ce825ac46ceba04018f6ae8506f`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:21 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:06:21 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:06:21 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:06:21 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:06:21 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:06:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:06:41 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:06:41 GMT
USER user
# Wed, 21 Oct 2026 21:06:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f39465ce84becf679a147dc059c54da328e647c257f9f8a48263965e5aa67818`  
		Last Modified: Wed, 21 Oct 2026 21:06:48 GMT  
		Size: 10.3 MB (10349339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ce6b69877c78f76e55d53aeb3ea1e4f4d5f72e48bc2e300a89a0a7fda16876a`  
		Last Modified: Wed, 21 Oct 2026 21:06:48 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df7e51b6a77ced4800a3caa90e53ca8f55f0498f84e14228b44df373877f949`  
		Last Modified: Wed, 21 Oct 2026 21:06:48 GMT  
		Size: 6.1 MB (6145073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:6dd60d1a55717a7ce1c2d59f01bcaffc13257c3ac8107a17012ab3e1bbfbce8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d30cec18abb5953cdcc8d2826d19c284068a4c79a6fb5f9e4a91a6c715e909c8`

```dockerfile
```

-	Layers:
	-	`sha256:36faca5d1bde2857ca03d8afa17d01133a4f870d28a95a422ac4e2c5cbb88780`  
		Last Modified: Wed, 21 Oct 2026 21:06:48 GMT  
		Size: 1.3 MB (1289203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac46588aeeb2f96a65b18bc8e8632783d4893e0e7bddf297f3edba7cb895b8a8`  
		Last Modified: Wed, 21 Oct 2026 21:06:47 GMT  
		Size: 17.4 KB (17444 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine3.23` - linux; ppc64le

```console
$ docker pull irssi@sha256:01451d7594170904828a6c54b6ac39c88f05d5d354fd26b927e18cc3b6db5620
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21222819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9f3a631f83b94485c1bbfbfb7cec6054c9033ec0fa1f4720934fead0c6a2e0`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:32:42 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 22 Oct 2026 10:32:42 GMT
ENV HOME=/home/user
# Thu, 22 Oct 2026 10:32:42 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 22 Oct 2026 10:32:42 GMT
ENV LANG=C.UTF-8
# Thu, 22 Oct 2026 10:32:42 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 22 Oct 2026 10:33:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 22 Oct 2026 10:33:07 GMT
WORKDIR /home/user
# Thu, 22 Oct 2026 10:33:07 GMT
USER user
# Thu, 22 Oct 2026 10:33:07 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3919971710de78afadd31f0d3899ea71d96ef55f5849386a7b811bcc3cd9f6a0`  
		Last Modified: Thu, 22 Oct 2026 10:33:22 GMT  
		Size: 11.0 MB (11039485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5199fd69215c5c6e933f7649eff0673e7240f332a9cc24ed9c9fdf65aeae502e`  
		Last Modified: Thu, 22 Oct 2026 10:33:21 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab8dbc08914d252096c11ae9fec5ce3b6589f3b64a1ada57a5159f154638141b`  
		Last Modified: Thu, 22 Oct 2026 10:33:22 GMT  
		Size: 6.4 MB (6363970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:850c8b7dd3bd6b8c8ede81d85d252e57badd5cc32f08c0bd87263c416b8bed11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff8f44784d1130dac63b52027e654fe4edda3a1c6916a6be537c231750c1110`

```dockerfile
```

-	Layers:
	-	`sha256:acf7d10cd0d792752ad67bd05aacbee92c3a2e103fa1d2ad39b9660075a3df2d`  
		Last Modified: Thu, 22 Oct 2026 10:33:21 GMT  
		Size: 1.3 MB (1288655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d85b7e407978067efb2b05383b6b80333eaf04cf6db7ff8113244326e5533687`  
		Last Modified: Thu, 22 Oct 2026 10:33:21 GMT  
		Size: 17.6 KB (17571 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine3.23` - linux; riscv64

```console
$ docker pull irssi@sha256:c24c25d5d5a242e8f9edf9c6788b0cd213ce8bccd91bef8dd1edaa316c19d1e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19894521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e151e95afa7a0cb35c839f8fb02feebea11ed3d5df06c49125a713112bc3dee`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 23 Oct 2026 04:55:52 GMT
ADD alpine-minirootfs-3.23.7-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:55:52 GMT
CMD ["/bin/sh"]
# Sat, 24 Oct 2026 16:02:35 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Sat, 24 Oct 2026 16:02:36 GMT
ENV HOME=/home/user
# Sat, 24 Oct 2026 16:02:36 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 24 Oct 2026 16:02:36 GMT
ENV LANG=C.UTF-8
# Sat, 24 Oct 2026 16:02:36 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 24 Oct 2026 16:06:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Sat, 24 Oct 2026 16:06:37 GMT
WORKDIR /home/user
# Sat, 24 Oct 2026 16:06:37 GMT
USER user
# Sat, 24 Oct 2026 16:06:37 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d03de878707a9da693ddc1eddbe1328c578f016182f72385d87f3b4b40158d37`  
		Last Modified: Fri, 23 Oct 2026 04:56:27 GMT  
		Size: 3.6 MB (3579612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7d69c25cc87bbc8892fc547be1d0629808c7da8bd8bb3e74680bf39866add6`  
		Last Modified: Sat, 24 Oct 2026 16:07:43 GMT  
		Size: 10.2 MB (10247990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50807fcfd5cb73bc16c92a39208b82f2bab60a55ad7fe838d260c7d60d7895d3`  
		Last Modified: Sat, 24 Oct 2026 16:07:41 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7724e34420f5f9833cddd0d5f39fa315be1dc9eb49fe8506acdfbc2c3863ef0`  
		Last Modified: Sat, 24 Oct 2026 16:07:43 GMT  
		Size: 6.1 MB (6065935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:a1fe8ae31046a44a7de54e51eeef536f71c6244702dbdc21952b98a9f43df755
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:969ab3c4f6593f35bd6eaaa6d614bbaca1c35390efbbdc18924cdc26550ea366`

```dockerfile
```

-	Layers:
	-	`sha256:75c6988d47b29d1965a595dfc5416429889921bd68f8ae136122bb6fff497ee5`  
		Last Modified: Sat, 24 Oct 2026 16:07:42 GMT  
		Size: 1.3 MB (1288651 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21081e308e0e0d517290ce8f2d953baaff734ba1a69ff4b94d0a75e15a48a59f`  
		Last Modified: Sat, 24 Oct 2026 16:07:41 GMT  
		Size: 17.6 KB (17572 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine3.23` - linux; s390x

```console
$ docker pull irssi@sha256:e092dfa0266df5c5266bb07832b94161c17d1663fc55d6a9b9d126f946a1413b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21287999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0e787fb3ba9b02571c8392210b63de56e987d72fedc7cb1280d8cdd210d7c23`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:39 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Wed, 21 Oct 2026 21:06:39 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 21:06:39 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 21:06:39 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:06:39 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 21:06:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Wed, 21 Oct 2026 21:06:53 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 21:06:53 GMT
USER user
# Wed, 21 Oct 2026 21:06:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:861c7277ad85e322353d03af79af3474ed1b63a4011b8d8ff078a16695cad4c3`  
		Last Modified: Wed, 21 Oct 2026 21:07:05 GMT  
		Size: 11.4 MB (11364981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58a482c646378d6aed326a9963787f742ef1d9be7fd4c617903067a733251935`  
		Last Modified: Wed, 21 Oct 2026 21:07:05 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce43c640fc8236f646730fb605db7fe501dfd98b1f8159030c347d6f75c17323`  
		Last Modified: Wed, 21 Oct 2026 21:07:05 GMT  
		Size: 6.2 MB (6204916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:f2ae176e9a3c47913ac6f5db8e10d15a82242eaf95c5281ba04b49a9856b595d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb9c63ee45081298c96f5d4972c7d20a168f58ace588561b18fbe01ce65e1ad2`

```dockerfile
```

-	Layers:
	-	`sha256:34ff2f2b8efca5a491cad41420a38640ca1c084e2702db244488c3c6c48877f7`  
		Last Modified: Wed, 21 Oct 2026 21:07:04 GMT  
		Size: 1.3 MB (1288597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cdc60272eb3b6b873bf2499068dbfdb2b77c0fcf5da80f87d95580c64d89249`  
		Last Modified: Wed, 21 Oct 2026 21:07:04 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:latest`

```console
$ docker pull irssi@sha256:5da20d308820d2278b9bcbc031ccc0ef87d7e8e603869bf6bfab02090a2c8ec8
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
$ docker pull irssi@sha256:b9398996fc42e4f92081bac09225c3ee819b6673da696a48f8899328749d2e56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51761683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:404f3e9b0283462c4d3182ed40faa6cbdcae6da4eca8c208def9a5095987c0d3`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793059200'
# Fri, 30 Oct 2026 11:48:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 30 Oct 2026 11:48:22 GMT
ENV HOME=/home/user
# Fri, 30 Oct 2026 11:48:22 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Fri, 30 Oct 2026 11:48:22 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 11:48:22 GMT
ENV IRSSI_VERSION=1.4.5
# Fri, 30 Oct 2026 11:55:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Fri, 30 Oct 2026 11:55:29 GMT
WORKDIR /home/user
# Fri, 30 Oct 2026 11:55:29 GMT
USER user
# Fri, 30 Oct 2026 11:55:29 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:a81ae23cfcc12d03cee9e3704fa559c027af15fefe8c60924add8fd17e4c98c1`  
		Last Modified: Wed, 28 Oct 2026 18:39:27 GMT  
		Size: 28.3 MB (28345669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e42dd22c6cb9e91f2dc25e9c1cbad2fb6f0c45a0543e1ae49f1d672c70eb01`  
		Last Modified: Fri, 30 Oct 2026 11:57:28 GMT  
		Size: 18.6 MB (18550034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741c5ebf96c5a39beaebb03a85b041bf1efd3999e67aaceaa9ba02351e8aa380`  
		Last Modified: Fri, 30 Oct 2026 11:57:23 GMT  
		Size: 3.3 KB (3331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c216878c55e948019ea55d4f8c499508910071a51dc0a7515965373f8bebf03`  
		Last Modified: Fri, 30 Oct 2026 11:57:26 GMT  
		Size: 4.9 MB (4862617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:8bdece1818ddc31ad42e1e18910b79d4599ed86b87f3997801ebbd2ee4c45e57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43807d34411cece97f375585cc0cd0e35ceb8c2812fab71b9e5f1e8f86fc4ea8`

```dockerfile
```

-	Layers:
	-	`sha256:a382050068f123cad7982883f5e9b90cd49d306becb521c9603ae44a46f5e139`  
		Last Modified: Fri, 30 Oct 2026 11:57:26 GMT  
		Size: 5.6 MB (5584585 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c7f2dd4dc616c8b6ea5a3b3f464d3aa825af379c7e4f472e9cf2fa6e8c23d2f`  
		Last Modified: Fri, 30 Oct 2026 11:57:24 GMT  
		Size: 18.7 KB (18723 bytes)  
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

## `irssi:trixie`

```console
$ docker pull irssi@sha256:5da20d308820d2278b9bcbc031ccc0ef87d7e8e603869bf6bfab02090a2c8ec8
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

### `irssi:trixie` - linux; amd64

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

### `irssi:trixie` - unknown; unknown

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

### `irssi:trixie` - linux; arm variant v5

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

### `irssi:trixie` - unknown; unknown

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

### `irssi:trixie` - linux; arm variant v7

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

### `irssi:trixie` - unknown; unknown

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

### `irssi:trixie` - linux; arm64 variant v8

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

### `irssi:trixie` - unknown; unknown

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

### `irssi:trixie` - linux; 386

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

### `irssi:trixie` - unknown; unknown

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

### `irssi:trixie` - linux; ppc64le

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

### `irssi:trixie` - unknown; unknown

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

### `irssi:trixie` - linux; riscv64

```console
$ docker pull irssi@sha256:b9398996fc42e4f92081bac09225c3ee819b6673da696a48f8899328749d2e56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51761683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:404f3e9b0283462c4d3182ed40faa6cbdcae6da4eca8c208def9a5095987c0d3`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793059200'
# Fri, 30 Oct 2026 11:48:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 30 Oct 2026 11:48:22 GMT
ENV HOME=/home/user
# Fri, 30 Oct 2026 11:48:22 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Fri, 30 Oct 2026 11:48:22 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 11:48:22 GMT
ENV IRSSI_VERSION=1.4.5
# Fri, 30 Oct 2026 11:55:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Fri, 30 Oct 2026 11:55:29 GMT
WORKDIR /home/user
# Fri, 30 Oct 2026 11:55:29 GMT
USER user
# Fri, 30 Oct 2026 11:55:29 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:a81ae23cfcc12d03cee9e3704fa559c027af15fefe8c60924add8fd17e4c98c1`  
		Last Modified: Wed, 28 Oct 2026 18:39:27 GMT  
		Size: 28.3 MB (28345669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e42dd22c6cb9e91f2dc25e9c1cbad2fb6f0c45a0543e1ae49f1d672c70eb01`  
		Last Modified: Fri, 30 Oct 2026 11:57:28 GMT  
		Size: 18.6 MB (18550034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741c5ebf96c5a39beaebb03a85b041bf1efd3999e67aaceaa9ba02351e8aa380`  
		Last Modified: Fri, 30 Oct 2026 11:57:23 GMT  
		Size: 3.3 KB (3331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c216878c55e948019ea55d4f8c499508910071a51dc0a7515965373f8bebf03`  
		Last Modified: Fri, 30 Oct 2026 11:57:26 GMT  
		Size: 4.9 MB (4862617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:8bdece1818ddc31ad42e1e18910b79d4599ed86b87f3997801ebbd2ee4c45e57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43807d34411cece97f375585cc0cd0e35ceb8c2812fab71b9e5f1e8f86fc4ea8`

```dockerfile
```

-	Layers:
	-	`sha256:a382050068f123cad7982883f5e9b90cd49d306becb521c9603ae44a46f5e139`  
		Last Modified: Fri, 30 Oct 2026 11:57:26 GMT  
		Size: 5.6 MB (5584585 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c7f2dd4dc616c8b6ea5a3b3f464d3aa825af379c7e4f472e9cf2fa6e8c23d2f`  
		Last Modified: Fri, 30 Oct 2026 11:57:24 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; s390x

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

### `irssi:trixie` - unknown; unknown

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
