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
$ docker pull irssi@sha256:f9037f53b568fe2c95645211d5e9bf0f0e8cbdd12b458bc10ad859fcd6672a34
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
$ docker pull irssi@sha256:9ba9e845867082176deae7619fb98c157a549c5b043c72e2d600d867c75d82ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53881321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a1355ecfb7107f457bc0c9969931516a7d7710384a68f6d5dd359ff88b9f498`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:20:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:20:53 GMT
ENV HOME=/home/user
# Tue, 14 Jul 2026 01:20:53 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 14 Jul 2026 01:20:53 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:20:53 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 14 Jul 2026 01:21:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 14 Jul 2026 01:21:27 GMT
WORKDIR /home/user
# Tue, 14 Jul 2026 01:21:27 GMT
USER user
# Tue, 14 Jul 2026 01:21:27 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f088d1a16398080a6b9f9f3ffeed8a5420cd8011906ecfbb7a244d400ea8d2aa`  
		Last Modified: Tue, 14 Jul 2026 01:21:38 GMT  
		Size: 19.2 MB (19229414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:530ea975359f311dc64bea2c93b2e4a2c7121373c75b9961607e83cb8d1b8ae9`  
		Last Modified: Tue, 14 Jul 2026 01:21:37 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afcf61da58173ba0fec0dcbb893ec48916ef590ae395c8d58c466efd318e0a36`  
		Last Modified: Tue, 14 Jul 2026 01:21:38 GMT  
		Size: 4.9 MB (4867638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:57707cc9ab9eff0768c709572f36beeef2aadb4583a054355e8441526f8de290
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8898995073111fa4bb5568038d1f035ef6ba1523df9c03684f5f16d20c1f798`

```dockerfile
```

-	Layers:
	-	`sha256:e6f602e424e5beb42cfb6cd4d1244ab724788c17d208014bdbf3acfd6293ffe1`  
		Last Modified: Tue, 14 Jul 2026 01:21:38 GMT  
		Size: 5.6 MB (5588615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8c026664390c46a3ea0df96b7052eaf3bdbec82f03b7c4e3cf4491ac7982180`  
		Last Modified: Tue, 14 Jul 2026 01:21:37 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; arm variant v5

```console
$ docker pull irssi@sha256:259180164ae595df2de0892cfd4d87f610a7cd78ea10fe3d39ab99e8548f3d21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50967277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17d6ec58a215ceb5ddd93ffa50345bdd02b5bf89f1ad6cebc35b18bdc277ea20`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:17:40 GMT
ENV HOME=/home/user
# Tue, 14 Jul 2026 01:17:40 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 14 Jul 2026 01:17:40 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:17:40 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 14 Jul 2026 01:18:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 14 Jul 2026 01:18:32 GMT
WORKDIR /home/user
# Tue, 14 Jul 2026 01:18:32 GMT
USER user
# Tue, 14 Jul 2026 01:18:32 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:9ce68cca63faf1f06434dd1423cb52db0d4251ee3f1838e43e5893fae28f9267`  
		Last Modified: Tue, 14 Jul 2026 00:14:26 GMT  
		Size: 28.0 MB (27954818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30a22039c98dd3bb3c314f99b17b8d8b94c4ce378383e70a7a72799ab5fc2c66`  
		Last Modified: Tue, 14 Jul 2026 01:18:43 GMT  
		Size: 18.3 MB (18298623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d388610189353c94b1e146029a6d3c9f3bb208ef7ce34f45fa19041f1cee3209`  
		Last Modified: Tue, 14 Jul 2026 01:18:42 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3786fcea6bf9c5ec3526c364a07506b82509437469acaa048133fcd1bfd8374`  
		Last Modified: Tue, 14 Jul 2026 01:18:42 GMT  
		Size: 4.7 MB (4710475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:f3f97323ff3c6e3fed26314c4cde06cde96dc89fcf90408e68dcbadde8b68bf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5604953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c816a901b5df5e7ae0f26993f6aab09e481792c6b44eaaed4f7bcb7107a2fab8`

```dockerfile
```

-	Layers:
	-	`sha256:402ca94d41c2b008665793557e5c33a789433f88998b9530502c5645ad7fa193`  
		Last Modified: Tue, 14 Jul 2026 01:18:42 GMT  
		Size: 5.6 MB (5586164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2325bb608405bf5869bb2b2b6f1ca3e01b8869ced5198dadb6cc9aa5eb23c087`  
		Last Modified: Tue, 14 Jul 2026 01:18:42 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; arm variant v7

```console
$ docker pull irssi@sha256:8a09f260e09b4b8e61f51fee37b909dbdc38c2d0263937b8a320ac83d4fd1df8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48692459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc3e099ec9fda22ced8725eb804242eb1913d08c68eb208c090f549698a82bb4`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:18:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:18:36 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 01:18:36 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 01:18:36 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:18:36 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 01:19:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 01:19:16 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 01:19:16 GMT
USER user
# Wed, 24 Jun 2026 01:19:16 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8beb1abd8be4a5a60f09bda3fdf0b401d43b3377d72dce987d68c72a457ec4b4`  
		Last Modified: Wed, 24 Jun 2026 01:19:27 GMT  
		Size: 17.9 MB (17918168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e580be0074573aae7441865a31a6ced2e9274c54ef2ac9216e4c09ad0b85d20`  
		Last Modified: Wed, 24 Jun 2026 01:19:27 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93ccd2320f7239f28e6c946ba53ee54e513b54c8d41bb6d4d0ddce411c36e122`  
		Last Modified: Wed, 24 Jun 2026 01:19:27 GMT  
		Size: 4.6 MB (4559876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:ac622be08227a3f33584b18e45144d81e74b077c07613f1676386ae2bb7b590f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1e84d3b17cccf2c99e5d50ca85e668fa0e8cf458396f3672f1acb7ae40fcd8`

```dockerfile
```

-	Layers:
	-	`sha256:4597b5aeb4ee7985c17d8d010854e0c17c9a99592db4b31774b5ca6077b0bcc2`  
		Last Modified: Wed, 24 Jun 2026 01:19:27 GMT  
		Size: 5.6 MB (5589124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db91dfef5e6ca5acb7d7d5bff398c21f5004653c13ca93ed0d33428edf496555`  
		Last Modified: Wed, 24 Jun 2026 01:19:26 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:561395fe06676721509b6290e57a97726fa7839e17e404119f7fd81019beb12d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53989884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:999db7a06a940a111ba1c7fdca8a85915b4d72cf7c02b9ae3d8627220bedab4e`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:20:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:20:25 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 01:20:25 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 01:20:25 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:20:25 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 01:21:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 01:21:04 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 01:21:04 GMT
USER user
# Wed, 24 Jun 2026 01:21:04 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:294a283bb72393ae2fbf5f801a0cff8adde691f54cff36a4e90c81b5310e765d`  
		Last Modified: Wed, 24 Jun 2026 01:21:15 GMT  
		Size: 19.1 MB (19055871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d073fd71c18b9761e900a0e5e71724b8da519841571083dc198208d5a9fc9af1`  
		Last Modified: Wed, 24 Jun 2026 01:21:14 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3c4d9e1b8aa365ea311ad8dd47691bf0bf39894f063bb3d595908fd5d4dbc5b`  
		Last Modified: Wed, 24 Jun 2026 01:21:15 GMT  
		Size: 4.8 MB (4782101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:64005db4f517d3053ba6b6df65039385a2371403dab68d462925d4f66739bd6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5613862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4a524b64793b3782644f5c8dc2c47efe6262407f24c090a7fac2559f153866e`

```dockerfile
```

-	Layers:
	-	`sha256:4d4346bd8895d74d904ee79eb726ca18bbea8803cffd532ab5dfdec3e9449559`  
		Last Modified: Wed, 24 Jun 2026 01:21:15 GMT  
		Size: 5.6 MB (5595029 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f8f5778e72e3d4f25dac5a69a467cca46cfbbb06b4f4ca0860165de3c5f4f23`  
		Last Modified: Wed, 24 Jun 2026 01:21:14 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; 386

```console
$ docker pull irssi@sha256:c79731a3d86e3b4ea9b139a38cbc9b7dd7785a3439e19ec99968fe674e0c80b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54920600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09f471eb47009cbea5d5517ab651a05fb8d2909f4d37f01817c4a4d8137f6ae1`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:16:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:16:32 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 01:16:32 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 01:16:32 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:16:32 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 01:17:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 01:17:11 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 01:17:11 GMT
USER user
# Wed, 24 Jun 2026 01:17:11 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f0a7b85bdc61e23fe4edf5328983889a4532c723a3c16bb1fb82811d7a665cf`  
		Last Modified: Wed, 24 Jun 2026 01:17:21 GMT  
		Size: 18.7 MB (18747119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44a78a7db65f5c7fc7371bc85c4255e57ec66965b1a4cb140aed86c62e78a105`  
		Last Modified: Wed, 24 Jun 2026 01:17:20 GMT  
		Size: 3.3 KB (3333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34d40e5193a5d57b8bff4c86cd09514888722d43de9efdbf111bb058b5801c3f`  
		Last Modified: Wed, 24 Jun 2026 01:17:20 GMT  
		Size: 4.9 MB (4868906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:bff8cb3b55487ea4ddd01494c23d9b4815ee25a8aa86429229dcbe1adc62c35e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1efee0c5993099bc0e33cf0da5d8ee1e949c050c0c3a3c2aa5de94af9651deb9`

```dockerfile
```

-	Layers:
	-	`sha256:adaf948308b73fc9351880d5e96094161c3f59aff6505402f72cfb268be73122`  
		Last Modified: Wed, 24 Jun 2026 01:17:20 GMT  
		Size: 5.6 MB (5584676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea52efff25848c2f2ecfb75a082d6c51653b4114bf3dcd00cecfa5705e0eb1b2`  
		Last Modified: Wed, 24 Jun 2026 01:17:20 GMT  
		Size: 18.6 KB (18593 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; ppc64le

```console
$ docker pull irssi@sha256:8497783ffb752c673b40bac6e26969894f93c9ce17069bf7daec9883d5197bd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58252491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26c2f1613306f8e796733529cec601d355d48a9ce4faa7fb56902a35abf6c5ba`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:25:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:25:16 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 01:25:16 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 01:25:16 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:25:16 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 01:27:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 01:27:13 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 01:27:13 GMT
USER user
# Wed, 24 Jun 2026 01:27:13 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1000292e2d94490eb5ee5b15dced71b72de57eadcc0bc162536bacd41dade55`  
		Last Modified: Wed, 24 Jun 2026 01:27:34 GMT  
		Size: 19.5 MB (19543975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679bc2aa3b1163339819bfc7defba6c9a247cc115fcfa314ae44155a3b6c6706`  
		Last Modified: Wed, 24 Jun 2026 01:27:33 GMT  
		Size: 3.3 KB (3336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86f03b14f3056fdd8d161cf7ca10ac58974d0e6639e5806904e2a62016885335`  
		Last Modified: Wed, 24 Jun 2026 01:27:33 GMT  
		Size: 5.1 MB (5098760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:dde4452acc23542a3c46c8f4c300ec075686efa667b5500ae990b2f8d687877a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8e9782f2c6a668a51e112046a6cd09cc4bfba6949387fc673f3b997df0d99d6`

```dockerfile
```

-	Layers:
	-	`sha256:c0ecf4e906a56239646c3a7b4a46934d68b7e699bd32ce49e9416592dc6270e1`  
		Last Modified: Wed, 24 Jun 2026 01:27:33 GMT  
		Size: 5.6 MB (5595584 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a8b0b20edb7219de658a8ba9d5fb396c88c91b1642bc33032eb1b27bdca339d`  
		Last Modified: Wed, 24 Jun 2026 01:27:33 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; riscv64

```console
$ docker pull irssi@sha256:56b7a30dfa04eaa948916ce8cf668897b81c3c2055ccfbe70cd33dbde35c8d09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51710193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a00cf966669bfa5d2372939f36da61b54bca6367242c440ac669129f92c0741`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 20:44:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 20:44:03 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 20:44:03 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 20:44:03 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 20:44:03 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 20:50:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 20:50:50 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 20:50:50 GMT
USER user
# Wed, 24 Jun 2026 20:50:50 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3f4aedbdd8327225623c766d0c77fe9c5b424b6794cb6206fa2fda4f8947d40`  
		Last Modified: Wed, 24 Jun 2026 20:52:45 GMT  
		Size: 18.6 MB (18563062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad4233f2f6372d1a9fbca680ac9d693cf890853b0e809e5281907c0c12f61847`  
		Last Modified: Wed, 24 Jun 2026 20:52:41 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3931864be5ccbc4edf8d6460040fbf7cd4f2589e83e1bd3ea297640cf36c9bf4`  
		Last Modified: Wed, 24 Jun 2026 20:52:42 GMT  
		Size: 4.9 MB (4861389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:17b615bdadbf90c95cf7f9bbe93bb5d2a66874c4da980ac469177ff223de7039
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5598579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9c283324ad22a4f4b7f61f88d50f8432b1d864b021f0870429f17af6623a537`

```dockerfile
```

-	Layers:
	-	`sha256:0fcb0b279db79ecc85fbadcb0dfaf937db4d65064afbe9d18e687721bf58962f`  
		Last Modified: Wed, 24 Jun 2026 20:52:43 GMT  
		Size: 5.6 MB (5579856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc84877d49c52cc39ef8b73c05f555a4f34a7ec6080eb5c8dbe6a0e13360b6f8`  
		Last Modified: Wed, 24 Jun 2026 20:52:41 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; s390x

```console
$ docker pull irssi@sha256:32bf5f073f62d4043be0d906aef4675beb8081c29134244be56b434d347be677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54538238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:766dace219bf7735cbd74a21a948702cc85a3087448b8757d7e4da663822bbf9`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:18:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:18:07 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 01:18:07 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 01:18:07 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:18:07 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 01:18:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 01:18:47 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 01:18:47 GMT
USER user
# Wed, 24 Jun 2026 01:18:47 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a48bebcdb184f28922d9a474ab4af51b5adc15a1d39bc3538b11e2d2d332ca8a`  
		Last Modified: Wed, 24 Jun 2026 01:19:04 GMT  
		Size: 19.8 MB (19776551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:667be9254fd49c8ed6ce64d9061dddbdcbec5e530b056331e49f3548d2fc5f00`  
		Last Modified: Wed, 24 Jun 2026 01:19:03 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e44896948d5e8e045a19e6868723be737fa4f373c81881b0a48754fe48f78832`  
		Last Modified: Wed, 24 Jun 2026 01:19:04 GMT  
		Size: 4.9 MB (4906945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:9b1878c6f6bed51ce74efda68de885513f95a26ba5e5a1d3b895ae8696491a42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:076a7fe1529b6d6738e0939baaffa5803028b524584cf72df98a7428aa18b45e`

```dockerfile
```

-	Layers:
	-	`sha256:9781b17a837f6d930dd660afe6866bcec44d8c1b91f2c0867b9560adec98952c`  
		Last Modified: Wed, 24 Jun 2026 01:19:04 GMT  
		Size: 5.6 MB (5589458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49d6078493e9d9a50e97f2595be062a24ef08334063e2178a74983af7c3711f8`  
		Last Modified: Wed, 24 Jun 2026 01:19:03 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1-alpine`

```console
$ docker pull irssi@sha256:c65b1f7f4fd1943ddc6209937f2f5b00a80298b224032f50e475267a7c3c86c5
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
$ docker pull irssi@sha256:ee97c76564b57e4bb7e9095822fc55b75297ea61cb745181d626152385c4600e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20725683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:004acb4b5256aa50ff297f7fe6c7b2e17fb73ed7d050f72c66c1d05cf5beb121`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:46:14 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:46:14 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:46:14 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:46:14 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:46:14 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:46:27 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:46:27 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:46:27 GMT
USER user
# Mon, 22 Jun 2026 19:46:27 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f1e94f1984d1a34781222d067c9e0fb4246ed50ba11ac34de4f8546f4e2485`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 10.8 MB (10817260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abd8ebfd85bd55d38847eb7338e5e45eb39412dfab6fc7f745757724d626fd08`  
		Last Modified: Mon, 22 Jun 2026 19:46:34 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a28df43b22dfc13f2366edbda7491c5d8fbdfa40ee29cefdc6d4e9bc7c4fa74e`  
		Last Modified: Mon, 22 Jun 2026 19:46:34 GMT  
		Size: 6.1 MB (6063016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:520d0b373d64902a539d204abd3a42f4c7b273132959ae3590994f6d2dcf8e75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1307392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef5a09b1ad68a809735a39bcd0a8fddfc609a134767d3364ae7df9d8fd58b296`

```dockerfile
```

-	Layers:
	-	`sha256:5acaec97be559a688326f497f478dbdb6e4915d006b76c4b53e8bdd64088536a`  
		Last Modified: Mon, 22 Jun 2026 19:46:34 GMT  
		Size: 1.3 MB (1289892 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7af272cbe9b3c649aee4fadbdb5505dd378ef44316d06299aad532db0f1c5cf4`  
		Last Modified: Mon, 22 Jun 2026 19:46:34 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine` - linux; arm variant v6

```console
$ docker pull irssi@sha256:0e3aa1699cea3307fe17198c9d1cb8fb606f07392b9ee525d46dd49235f9043b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19470670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca66492574e94e99685d079fbfebf446df2347a5c072b0fc173cdaed678b068b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:46:01 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:46:01 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:46:01 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:46:01 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:46:01 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:46:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:46:17 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:46:17 GMT
USER user
# Mon, 22 Jun 2026 19:46:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82defeaa7caa2c7d4266000dda4c830bea74f161848ccd918a9d75c9c85b18e3`  
		Last Modified: Mon, 22 Jun 2026 19:46:23 GMT  
		Size: 10.0 MB (10025025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7063e8d3be6cd1169a61752e1d98a649d42f3c0931936a2d787fddcdebcdfe79`  
		Last Modified: Mon, 22 Jun 2026 19:46:23 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:977d3156c4ca4aae124c90d37aec9ee6375975089e18395cef1bc87aa6d6ffc4`  
		Last Modified: Mon, 22 Jun 2026 19:46:23 GMT  
		Size: 5.9 MB (5892065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:d3bfc6587b61a29b57468e9f85dfe1f0185277328cce7eba62a7a0fd9807b1a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 KB (17423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ceef14e9dd6f7c90a99f80faaba2298c95552c1b00a056bff999d5659f141a`

```dockerfile
```

-	Layers:
	-	`sha256:d3172774ae94b48c3226b7e5176879db7e72a4d4d97ef5c1afcaa5b6820b2aac`  
		Last Modified: Mon, 22 Jun 2026 19:46:23 GMT  
		Size: 17.4 KB (17423 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine` - linux; arm variant v7

```console
$ docker pull irssi@sha256:c6346492ffddac8ad99270069266d14602d3b16426778772b73406545faec005
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18765246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b90939a86a350a9919fa3e8972b151397d7b54b03ee21435ee544bbf677a0f09`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:54:46 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:54:46 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:54:46 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:54:46 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:54:46 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:55:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:55:05 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:55:05 GMT
USER user
# Mon, 22 Jun 2026 19:55:05 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ea6ba6c89e64b810b05f4345c90018d99187b4908ba7c678fb2da59ad298063`  
		Last Modified: Mon, 22 Jun 2026 19:55:13 GMT  
		Size: 9.9 MB (9858991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73405b9e5926e564109dbcc12631ae70b008dae146e7574c6d6d9942e4a808cf`  
		Last Modified: Mon, 22 Jun 2026 19:55:12 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4db8da01a044ba53423d803b4956366017b1e0857313b152eeb27ec164280d`  
		Last Modified: Mon, 22 Jun 2026 19:55:13 GMT  
		Size: 5.6 MB (5643416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:465fdca29637831598f18eb6b247ab253e3198e3dd41df98a04ecf910d7499f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1309934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4fabaced20896c96987546a9f128e97a46f75331be1f133a9ee80bf5ee699d6`

```dockerfile
```

-	Layers:
	-	`sha256:83c2f3976ccc4b3f7141e2000c6b6ff5368d5afee6ce2302d029033297cd996a`  
		Last Modified: Mon, 22 Jun 2026 19:55:12 GMT  
		Size: 1.3 MB (1292300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e9f8dde6c52979c4e2eaf369d9a5677dc407347f63fe392c1c609c8efc15ae9`  
		Last Modified: Mon, 22 Jun 2026 19:55:12 GMT  
		Size: 17.6 KB (17634 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:9dc603beb4a07d393530d95086db6dddc1a1534d7d09a221a326b0bba478f895
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20869826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a734a9b36fa9c8fafec921fed6ef5a7913568dfa78db72a7c40c353190ffdb5`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:47:01 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:47:02 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:47:02 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:47:02 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:47:02 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:47:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:47:13 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:47:13 GMT
USER user
# Mon, 22 Jun 2026 19:47:13 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a1314d0c4d705abd2003b834ff222929aadee219573406905b1ebdbcb2fd0e5`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 10.8 MB (10751011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b51ac442374423225d78f343355d2d1c4916b10252075e88ca9413f5e1431ef`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859b41dac8613012dcbc45b580ab5d15c02974c28e2033d81a371533dbbc0b2f`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 5.9 MB (5935970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:2a6f14a09840b9202c0cbc299b854b79f25cded499de1d99f9663655e47c68a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1307027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b15c812595b215a1aeb63653f112b73ec5a48ba4b63fddf376c00305bb6c0efb`

```dockerfile
```

-	Layers:
	-	`sha256:3de740e24bda3370e066e00f280a3ca5156edc7f363250326e7ca0c5100051d8`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 1.3 MB (1289346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ff8fa68c15d34a1c878b54527440ce7ab0b9ceb6a9d42e821cff31d2e91afad`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 17.7 KB (17681 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine` - linux; 386

```console
$ docker pull irssi@sha256:bff44ff5f28c28096901bee2b6a903a831bd237248e35f57bd5b6320cda08bf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20163548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57e40dae22529a380af2f2d1dd3100c569877d7ba9c4b1051e64df9e52c88e87`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:46:11 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:46:11 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:46:11 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:46:11 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:46:11 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:46:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:46:28 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:46:28 GMT
USER user
# Mon, 22 Jun 2026 19:46:28 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1630aba8794abec3af226b1736b6b62797443e3c4b03af5bf02dc67b2bf22a7`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 10.4 MB (10351196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:004e325c3306131ecbe3ef3ed32a950855cf6b711aad5296a4b6936c462f7a44`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1525ce92cde60047ef81b57e8b939c9ee067189240d2aeb62bbca9c118800fe6`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 6.1 MB (6143379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:2ae352e0f4ddcfa3cbcae809a0abe748c999bffed183bf538d88fe9d59d60143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1307291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a425fa3680d2c2984c776bc56be97be44fbbe15ceadb3b71c923e02708aa04e`

```dockerfile
```

-	Layers:
	-	`sha256:2b7236139a451e3522be5b28e2e5f07dd6135f951dc3a7cfbc38053c6fa2c51e`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 1.3 MB (1289847 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ccbf6ecb50a4018210ae5bed44dbd5932652fbb0f487e2f755fb24006dfef35`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 17.4 KB (17444 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine` - linux; ppc64le

```console
$ docker pull irssi@sha256:36bd8f1c85c53276584b31ecbd4fc8f2290a8f8aaa4758e0e4070328367a8cfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21215327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53fd75983e50e468a396b0ec585adc7593d3b79eccd40d17ea6c8616aa3dedcc`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:52:59 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:52:59 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:52:59 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:52:59 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:52:59 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:53:20 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:53:20 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:53:20 GMT
USER user
# Mon, 22 Jun 2026 19:53:20 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80ca1493cc77dfa723bed221766a958a4b6713fd5cbe7323645d82dc22d9eb14`  
		Last Modified: Mon, 22 Jun 2026 19:53:37 GMT  
		Size: 11.0 MB (11039519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efadd163d0d496a592324d86ce4b1b0d7ba3a6162be35fb2ca9ad34b1e410eee`  
		Last Modified: Mon, 22 Jun 2026 19:53:36 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ce0cfe8881f2132dda000a5eddabb0994150b10fda5290e0fef5771c18393b`  
		Last Modified: Mon, 22 Jun 2026 19:53:37 GMT  
		Size: 6.4 MB (6362524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:09a17eb571ca45406713a69853c7bdc6e2a2a892ceb44c9ad5f9ea60fb7504ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:686b4270754ba7801cc14fdd9985f93980a39b76edcac849924bc4d4b990b87e`

```dockerfile
```

-	Layers:
	-	`sha256:b93f61a4f08643a442eba6357584db91c0f8d3c58b0e57c1924c796ccfd7ad1d`  
		Last Modified: Mon, 22 Jun 2026 19:53:37 GMT  
		Size: 1.3 MB (1289299 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a082bb19995633572b61251e374f85a1aaaf35209d26bee8c85bc2bf6d9d6ca`  
		Last Modified: Mon, 22 Jun 2026 19:53:37 GMT  
		Size: 17.6 KB (17572 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine` - linux; riscv64

```console
$ docker pull irssi@sha256:94b120e9b15f5c81091f116f5e6e5f913a8cb318cdd41eb40e22b64946655446
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19885865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d505a244fb87c10f37d80d6b2572243b3a37083e45fed0a3c289a67e5a552da`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 21:02:34 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 21:02:34 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 21:02:34 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 21:02:34 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 21:02:34 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 21:06:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 21:06:24 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 21:06:24 GMT
USER user
# Mon, 22 Jun 2026 21:06:24 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f730c254988ca0282bd88a0dcf04e16c9110ea8c311d08a54205ee9be1e6349`  
		Last Modified: Mon, 22 Jun 2026 21:07:19 GMT  
		Size: 10.2 MB (10248751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0aa85364964156e8bc871a2b1ce7a6933a1fb636df5f26523b8daa2fd22ff43`  
		Last Modified: Mon, 22 Jun 2026 21:07:17 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc698d4c330b08f0e16fda8ef2f08dcf5515555054cd15f1447916f6417e4106`  
		Last Modified: Mon, 22 Jun 2026 21:07:18 GMT  
		Size: 6.1 MB (6062890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:8f5a83eb51e324734511ddb6e539ac5592b33c8e846124ff9e3c40fadcfbbb4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f12b8cab76048437250e6c425a2f3e877c4cc4a3cad1570a297d6a6046808cc`

```dockerfile
```

-	Layers:
	-	`sha256:383a1dc595cc7be04c0215692e726d7491f9d3b5ef5bf6dcb0fd78dc44a7a7ba`  
		Last Modified: Mon, 22 Jun 2026 21:07:17 GMT  
		Size: 1.3 MB (1289295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87e3cbaf2d3118cdea5dde1c769d0dc21a5996273ebdd10aa133379f8200b8df`  
		Last Modified: Mon, 22 Jun 2026 21:07:16 GMT  
		Size: 17.6 KB (17572 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine` - linux; s390x

```console
$ docker pull irssi@sha256:7cd75ba79bf4f34ba81e21b2dec21292ca05c7f0a85b05f67240ac33d7bc7223
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21277654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e78906991e5560a0f8a9186b95ca902141ec50d3deb79cc9a88c94ca37086294`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:46:33 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:46:33 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:46:33 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:46:33 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:46:33 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:46:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:46:51 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:46:51 GMT
USER user
# Mon, 22 Jun 2026 19:46:51 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5f1a3b639533b39fabdf06fbaa13cdd7e421c8fd97094d306c225ebd72c5dfa`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 11.4 MB (11366931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37d1df320466adeacca73c2859b76a6a11fb284e7554134179f7ae320cef5242`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a6bf8cb2affcc570d30e427ec2de43d4fb2ee3d73f5b53ba0ee5223aa9041a`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 6.2 MB (6202491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:b4f20c9d1f6fada462a04d45b3ac9c1d3dca1ec5bf5a7b042b6bf10081dd8479
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:799fcdc0bd8c80bc76c68d24e51158cbe0f050aca2015fd3b12abaaec557f3d1`

```dockerfile
```

-	Layers:
	-	`sha256:6190de7dcf0e7771b7bfb8b673b4a53f4d3f23eddd402d10f69b485603bf4810`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 1.3 MB (1289241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eea269e2b2b1765c13e969996451fe624a1526ff4e72c19ab4301e5631c796ce`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1-alpine3.23`

```console
$ docker pull irssi@sha256:c65b1f7f4fd1943ddc6209937f2f5b00a80298b224032f50e475267a7c3c86c5
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
$ docker pull irssi@sha256:ee97c76564b57e4bb7e9095822fc55b75297ea61cb745181d626152385c4600e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20725683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:004acb4b5256aa50ff297f7fe6c7b2e17fb73ed7d050f72c66c1d05cf5beb121`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:46:14 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:46:14 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:46:14 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:46:14 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:46:14 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:46:27 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:46:27 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:46:27 GMT
USER user
# Mon, 22 Jun 2026 19:46:27 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f1e94f1984d1a34781222d067c9e0fb4246ed50ba11ac34de4f8546f4e2485`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 10.8 MB (10817260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abd8ebfd85bd55d38847eb7338e5e45eb39412dfab6fc7f745757724d626fd08`  
		Last Modified: Mon, 22 Jun 2026 19:46:34 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a28df43b22dfc13f2366edbda7491c5d8fbdfa40ee29cefdc6d4e9bc7c4fa74e`  
		Last Modified: Mon, 22 Jun 2026 19:46:34 GMT  
		Size: 6.1 MB (6063016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:520d0b373d64902a539d204abd3a42f4c7b273132959ae3590994f6d2dcf8e75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1307392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef5a09b1ad68a809735a39bcd0a8fddfc609a134767d3364ae7df9d8fd58b296`

```dockerfile
```

-	Layers:
	-	`sha256:5acaec97be559a688326f497f478dbdb6e4915d006b76c4b53e8bdd64088536a`  
		Last Modified: Mon, 22 Jun 2026 19:46:34 GMT  
		Size: 1.3 MB (1289892 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7af272cbe9b3c649aee4fadbdb5505dd378ef44316d06299aad532db0f1c5cf4`  
		Last Modified: Mon, 22 Jun 2026 19:46:34 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine3.23` - linux; arm variant v6

```console
$ docker pull irssi@sha256:0e3aa1699cea3307fe17198c9d1cb8fb606f07392b9ee525d46dd49235f9043b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19470670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca66492574e94e99685d079fbfebf446df2347a5c072b0fc173cdaed678b068b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:46:01 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:46:01 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:46:01 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:46:01 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:46:01 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:46:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:46:17 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:46:17 GMT
USER user
# Mon, 22 Jun 2026 19:46:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82defeaa7caa2c7d4266000dda4c830bea74f161848ccd918a9d75c9c85b18e3`  
		Last Modified: Mon, 22 Jun 2026 19:46:23 GMT  
		Size: 10.0 MB (10025025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7063e8d3be6cd1169a61752e1d98a649d42f3c0931936a2d787fddcdebcdfe79`  
		Last Modified: Mon, 22 Jun 2026 19:46:23 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:977d3156c4ca4aae124c90d37aec9ee6375975089e18395cef1bc87aa6d6ffc4`  
		Last Modified: Mon, 22 Jun 2026 19:46:23 GMT  
		Size: 5.9 MB (5892065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:d3bfc6587b61a29b57468e9f85dfe1f0185277328cce7eba62a7a0fd9807b1a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 KB (17423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ceef14e9dd6f7c90a99f80faaba2298c95552c1b00a056bff999d5659f141a`

```dockerfile
```

-	Layers:
	-	`sha256:d3172774ae94b48c3226b7e5176879db7e72a4d4d97ef5c1afcaa5b6820b2aac`  
		Last Modified: Mon, 22 Jun 2026 19:46:23 GMT  
		Size: 17.4 KB (17423 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine3.23` - linux; arm variant v7

```console
$ docker pull irssi@sha256:c6346492ffddac8ad99270069266d14602d3b16426778772b73406545faec005
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18765246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b90939a86a350a9919fa3e8972b151397d7b54b03ee21435ee544bbf677a0f09`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:54:46 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:54:46 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:54:46 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:54:46 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:54:46 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:55:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:55:05 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:55:05 GMT
USER user
# Mon, 22 Jun 2026 19:55:05 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ea6ba6c89e64b810b05f4345c90018d99187b4908ba7c678fb2da59ad298063`  
		Last Modified: Mon, 22 Jun 2026 19:55:13 GMT  
		Size: 9.9 MB (9858991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73405b9e5926e564109dbcc12631ae70b008dae146e7574c6d6d9942e4a808cf`  
		Last Modified: Mon, 22 Jun 2026 19:55:12 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4db8da01a044ba53423d803b4956366017b1e0857313b152eeb27ec164280d`  
		Last Modified: Mon, 22 Jun 2026 19:55:13 GMT  
		Size: 5.6 MB (5643416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:465fdca29637831598f18eb6b247ab253e3198e3dd41df98a04ecf910d7499f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1309934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4fabaced20896c96987546a9f128e97a46f75331be1f133a9ee80bf5ee699d6`

```dockerfile
```

-	Layers:
	-	`sha256:83c2f3976ccc4b3f7141e2000c6b6ff5368d5afee6ce2302d029033297cd996a`  
		Last Modified: Mon, 22 Jun 2026 19:55:12 GMT  
		Size: 1.3 MB (1292300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e9f8dde6c52979c4e2eaf369d9a5677dc407347f63fe392c1c609c8efc15ae9`  
		Last Modified: Mon, 22 Jun 2026 19:55:12 GMT  
		Size: 17.6 KB (17634 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:9dc603beb4a07d393530d95086db6dddc1a1534d7d09a221a326b0bba478f895
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20869826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a734a9b36fa9c8fafec921fed6ef5a7913568dfa78db72a7c40c353190ffdb5`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:47:01 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:47:02 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:47:02 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:47:02 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:47:02 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:47:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:47:13 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:47:13 GMT
USER user
# Mon, 22 Jun 2026 19:47:13 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a1314d0c4d705abd2003b834ff222929aadee219573406905b1ebdbcb2fd0e5`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 10.8 MB (10751011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b51ac442374423225d78f343355d2d1c4916b10252075e88ca9413f5e1431ef`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859b41dac8613012dcbc45b580ab5d15c02974c28e2033d81a371533dbbc0b2f`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 5.9 MB (5935970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:2a6f14a09840b9202c0cbc299b854b79f25cded499de1d99f9663655e47c68a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1307027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b15c812595b215a1aeb63653f112b73ec5a48ba4b63fddf376c00305bb6c0efb`

```dockerfile
```

-	Layers:
	-	`sha256:3de740e24bda3370e066e00f280a3ca5156edc7f363250326e7ca0c5100051d8`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 1.3 MB (1289346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ff8fa68c15d34a1c878b54527440ce7ab0b9ceb6a9d42e821cff31d2e91afad`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 17.7 KB (17681 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine3.23` - linux; 386

```console
$ docker pull irssi@sha256:bff44ff5f28c28096901bee2b6a903a831bd237248e35f57bd5b6320cda08bf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20163548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57e40dae22529a380af2f2d1dd3100c569877d7ba9c4b1051e64df9e52c88e87`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:46:11 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:46:11 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:46:11 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:46:11 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:46:11 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:46:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:46:28 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:46:28 GMT
USER user
# Mon, 22 Jun 2026 19:46:28 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1630aba8794abec3af226b1736b6b62797443e3c4b03af5bf02dc67b2bf22a7`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 10.4 MB (10351196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:004e325c3306131ecbe3ef3ed32a950855cf6b711aad5296a4b6936c462f7a44`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1525ce92cde60047ef81b57e8b939c9ee067189240d2aeb62bbca9c118800fe6`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 6.1 MB (6143379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:2ae352e0f4ddcfa3cbcae809a0abe748c999bffed183bf538d88fe9d59d60143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1307291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a425fa3680d2c2984c776bc56be97be44fbbe15ceadb3b71c923e02708aa04e`

```dockerfile
```

-	Layers:
	-	`sha256:2b7236139a451e3522be5b28e2e5f07dd6135f951dc3a7cfbc38053c6fa2c51e`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 1.3 MB (1289847 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ccbf6ecb50a4018210ae5bed44dbd5932652fbb0f487e2f755fb24006dfef35`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 17.4 KB (17444 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine3.23` - linux; ppc64le

```console
$ docker pull irssi@sha256:36bd8f1c85c53276584b31ecbd4fc8f2290a8f8aaa4758e0e4070328367a8cfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21215327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53fd75983e50e468a396b0ec585adc7593d3b79eccd40d17ea6c8616aa3dedcc`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:52:59 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:52:59 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:52:59 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:52:59 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:52:59 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:53:20 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:53:20 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:53:20 GMT
USER user
# Mon, 22 Jun 2026 19:53:20 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80ca1493cc77dfa723bed221766a958a4b6713fd5cbe7323645d82dc22d9eb14`  
		Last Modified: Mon, 22 Jun 2026 19:53:37 GMT  
		Size: 11.0 MB (11039519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efadd163d0d496a592324d86ce4b1b0d7ba3a6162be35fb2ca9ad34b1e410eee`  
		Last Modified: Mon, 22 Jun 2026 19:53:36 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ce0cfe8881f2132dda000a5eddabb0994150b10fda5290e0fef5771c18393b`  
		Last Modified: Mon, 22 Jun 2026 19:53:37 GMT  
		Size: 6.4 MB (6362524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:09a17eb571ca45406713a69853c7bdc6e2a2a892ceb44c9ad5f9ea60fb7504ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:686b4270754ba7801cc14fdd9985f93980a39b76edcac849924bc4d4b990b87e`

```dockerfile
```

-	Layers:
	-	`sha256:b93f61a4f08643a442eba6357584db91c0f8d3c58b0e57c1924c796ccfd7ad1d`  
		Last Modified: Mon, 22 Jun 2026 19:53:37 GMT  
		Size: 1.3 MB (1289299 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a082bb19995633572b61251e374f85a1aaaf35209d26bee8c85bc2bf6d9d6ca`  
		Last Modified: Mon, 22 Jun 2026 19:53:37 GMT  
		Size: 17.6 KB (17572 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine3.23` - linux; riscv64

```console
$ docker pull irssi@sha256:94b120e9b15f5c81091f116f5e6e5f913a8cb318cdd41eb40e22b64946655446
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19885865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d505a244fb87c10f37d80d6b2572243b3a37083e45fed0a3c289a67e5a552da`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 21:02:34 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 21:02:34 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 21:02:34 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 21:02:34 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 21:02:34 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 21:06:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 21:06:24 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 21:06:24 GMT
USER user
# Mon, 22 Jun 2026 21:06:24 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f730c254988ca0282bd88a0dcf04e16c9110ea8c311d08a54205ee9be1e6349`  
		Last Modified: Mon, 22 Jun 2026 21:07:19 GMT  
		Size: 10.2 MB (10248751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0aa85364964156e8bc871a2b1ce7a6933a1fb636df5f26523b8daa2fd22ff43`  
		Last Modified: Mon, 22 Jun 2026 21:07:17 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc698d4c330b08f0e16fda8ef2f08dcf5515555054cd15f1447916f6417e4106`  
		Last Modified: Mon, 22 Jun 2026 21:07:18 GMT  
		Size: 6.1 MB (6062890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:8f5a83eb51e324734511ddb6e539ac5592b33c8e846124ff9e3c40fadcfbbb4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f12b8cab76048437250e6c425a2f3e877c4cc4a3cad1570a297d6a6046808cc`

```dockerfile
```

-	Layers:
	-	`sha256:383a1dc595cc7be04c0215692e726d7491f9d3b5ef5bf6dcb0fd78dc44a7a7ba`  
		Last Modified: Mon, 22 Jun 2026 21:07:17 GMT  
		Size: 1.3 MB (1289295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87e3cbaf2d3118cdea5dde1c769d0dc21a5996273ebdd10aa133379f8200b8df`  
		Last Modified: Mon, 22 Jun 2026 21:07:16 GMT  
		Size: 17.6 KB (17572 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine3.23` - linux; s390x

```console
$ docker pull irssi@sha256:7cd75ba79bf4f34ba81e21b2dec21292ca05c7f0a85b05f67240ac33d7bc7223
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21277654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e78906991e5560a0f8a9186b95ca902141ec50d3deb79cc9a88c94ca37086294`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:46:33 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:46:33 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:46:33 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:46:33 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:46:33 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:46:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:46:51 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:46:51 GMT
USER user
# Mon, 22 Jun 2026 19:46:51 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5f1a3b639533b39fabdf06fbaa13cdd7e421c8fd97094d306c225ebd72c5dfa`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 11.4 MB (11366931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37d1df320466adeacca73c2859b76a6a11fb284e7554134179f7ae320cef5242`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a6bf8cb2affcc570d30e427ec2de43d4fb2ee3d73f5b53ba0ee5223aa9041a`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 6.2 MB (6202491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:b4f20c9d1f6fada462a04d45b3ac9c1d3dca1ec5bf5a7b042b6bf10081dd8479
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:799fcdc0bd8c80bc76c68d24e51158cbe0f050aca2015fd3b12abaaec557f3d1`

```dockerfile
```

-	Layers:
	-	`sha256:6190de7dcf0e7771b7bfb8b673b4a53f4d3f23eddd402d10f69b485603bf4810`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 1.3 MB (1289241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eea269e2b2b1765c13e969996451fe624a1526ff4e72c19ab4301e5631c796ce`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1-trixie`

```console
$ docker pull irssi@sha256:60d90545f6923549ed99e1218f4fea6ebb5560284d82827a04a8f8b868ce9d9c
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
$ docker pull irssi@sha256:9ba9e845867082176deae7619fb98c157a549c5b043c72e2d600d867c75d82ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53881321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a1355ecfb7107f457bc0c9969931516a7d7710384a68f6d5dd359ff88b9f498`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:20:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:20:53 GMT
ENV HOME=/home/user
# Tue, 14 Jul 2026 01:20:53 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 14 Jul 2026 01:20:53 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:20:53 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 14 Jul 2026 01:21:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 14 Jul 2026 01:21:27 GMT
WORKDIR /home/user
# Tue, 14 Jul 2026 01:21:27 GMT
USER user
# Tue, 14 Jul 2026 01:21:27 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f088d1a16398080a6b9f9f3ffeed8a5420cd8011906ecfbb7a244d400ea8d2aa`  
		Last Modified: Tue, 14 Jul 2026 01:21:38 GMT  
		Size: 19.2 MB (19229414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:530ea975359f311dc64bea2c93b2e4a2c7121373c75b9961607e83cb8d1b8ae9`  
		Last Modified: Tue, 14 Jul 2026 01:21:37 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afcf61da58173ba0fec0dcbb893ec48916ef590ae395c8d58c466efd318e0a36`  
		Last Modified: Tue, 14 Jul 2026 01:21:38 GMT  
		Size: 4.9 MB (4867638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:57707cc9ab9eff0768c709572f36beeef2aadb4583a054355e8441526f8de290
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8898995073111fa4bb5568038d1f035ef6ba1523df9c03684f5f16d20c1f798`

```dockerfile
```

-	Layers:
	-	`sha256:e6f602e424e5beb42cfb6cd4d1244ab724788c17d208014bdbf3acfd6293ffe1`  
		Last Modified: Tue, 14 Jul 2026 01:21:38 GMT  
		Size: 5.6 MB (5588615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8c026664390c46a3ea0df96b7052eaf3bdbec82f03b7c4e3cf4491ac7982180`  
		Last Modified: Tue, 14 Jul 2026 01:21:37 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; arm variant v5

```console
$ docker pull irssi@sha256:259180164ae595df2de0892cfd4d87f610a7cd78ea10fe3d39ab99e8548f3d21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50967277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17d6ec58a215ceb5ddd93ffa50345bdd02b5bf89f1ad6cebc35b18bdc277ea20`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:17:40 GMT
ENV HOME=/home/user
# Tue, 14 Jul 2026 01:17:40 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 14 Jul 2026 01:17:40 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:17:40 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 14 Jul 2026 01:18:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 14 Jul 2026 01:18:32 GMT
WORKDIR /home/user
# Tue, 14 Jul 2026 01:18:32 GMT
USER user
# Tue, 14 Jul 2026 01:18:32 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:9ce68cca63faf1f06434dd1423cb52db0d4251ee3f1838e43e5893fae28f9267`  
		Last Modified: Tue, 14 Jul 2026 00:14:26 GMT  
		Size: 28.0 MB (27954818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30a22039c98dd3bb3c314f99b17b8d8b94c4ce378383e70a7a72799ab5fc2c66`  
		Last Modified: Tue, 14 Jul 2026 01:18:43 GMT  
		Size: 18.3 MB (18298623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d388610189353c94b1e146029a6d3c9f3bb208ef7ce34f45fa19041f1cee3209`  
		Last Modified: Tue, 14 Jul 2026 01:18:42 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3786fcea6bf9c5ec3526c364a07506b82509437469acaa048133fcd1bfd8374`  
		Last Modified: Tue, 14 Jul 2026 01:18:42 GMT  
		Size: 4.7 MB (4710475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:f3f97323ff3c6e3fed26314c4cde06cde96dc89fcf90408e68dcbadde8b68bf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5604953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c816a901b5df5e7ae0f26993f6aab09e481792c6b44eaaed4f7bcb7107a2fab8`

```dockerfile
```

-	Layers:
	-	`sha256:402ca94d41c2b008665793557e5c33a789433f88998b9530502c5645ad7fa193`  
		Last Modified: Tue, 14 Jul 2026 01:18:42 GMT  
		Size: 5.6 MB (5586164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2325bb608405bf5869bb2b2b6f1ca3e01b8869ced5198dadb6cc9aa5eb23c087`  
		Last Modified: Tue, 14 Jul 2026 01:18:42 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; arm variant v7

```console
$ docker pull irssi@sha256:8a09f260e09b4b8e61f51fee37b909dbdc38c2d0263937b8a320ac83d4fd1df8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48692459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc3e099ec9fda22ced8725eb804242eb1913d08c68eb208c090f549698a82bb4`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:18:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:18:36 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 01:18:36 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 01:18:36 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:18:36 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 01:19:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 01:19:16 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 01:19:16 GMT
USER user
# Wed, 24 Jun 2026 01:19:16 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8beb1abd8be4a5a60f09bda3fdf0b401d43b3377d72dce987d68c72a457ec4b4`  
		Last Modified: Wed, 24 Jun 2026 01:19:27 GMT  
		Size: 17.9 MB (17918168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e580be0074573aae7441865a31a6ced2e9274c54ef2ac9216e4c09ad0b85d20`  
		Last Modified: Wed, 24 Jun 2026 01:19:27 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93ccd2320f7239f28e6c946ba53ee54e513b54c8d41bb6d4d0ddce411c36e122`  
		Last Modified: Wed, 24 Jun 2026 01:19:27 GMT  
		Size: 4.6 MB (4559876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:ac622be08227a3f33584b18e45144d81e74b077c07613f1676386ae2bb7b590f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1e84d3b17cccf2c99e5d50ca85e668fa0e8cf458396f3672f1acb7ae40fcd8`

```dockerfile
```

-	Layers:
	-	`sha256:4597b5aeb4ee7985c17d8d010854e0c17c9a99592db4b31774b5ca6077b0bcc2`  
		Last Modified: Wed, 24 Jun 2026 01:19:27 GMT  
		Size: 5.6 MB (5589124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db91dfef5e6ca5acb7d7d5bff398c21f5004653c13ca93ed0d33428edf496555`  
		Last Modified: Wed, 24 Jun 2026 01:19:26 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:1ed2b1fd8165a55f0f3b66fc01676cc2377bd27f5a4daec05682ada53e25881a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53985594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1829fc926362e2518fccc9417820f436596386075a41fee62f49e7fdecd9713`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:20:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:20:56 GMT
ENV HOME=/home/user
# Tue, 14 Jul 2026 01:20:56 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 14 Jul 2026 01:20:56 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:20:56 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 14 Jul 2026 01:21:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 14 Jul 2026 01:21:33 GMT
WORKDIR /home/user
# Tue, 14 Jul 2026 01:21:33 GMT
USER user
# Tue, 14 Jul 2026 01:21:33 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59dcce1e48887eef382548586a68528fa696e383efa53864392f99821f8467eb`  
		Last Modified: Tue, 14 Jul 2026 01:21:44 GMT  
		Size: 19.1 MB (19056330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4ce309480af1f97f3d83b6f28a54c676563b934ad1f1c20ac13bb3976bd72ec`  
		Last Modified: Tue, 14 Jul 2026 01:21:43 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceec76b0c9220b2ef37957b6189fd01f9f9bf083624a597bb02bbd1117a3bbc0`  
		Last Modified: Tue, 14 Jul 2026 01:21:43 GMT  
		Size: 4.8 MB (4782199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:fd7d5a087f8a12fd45c95c0fd51c2e60e7efb9a5d05bd9995f61e9b239171687
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5613924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12846cd02143d088581443ec6b896170e1e3a04a3f2a43aa45a7bf735ba6f746`

```dockerfile
```

-	Layers:
	-	`sha256:45872d82cb29778eab16875c5bf411deae3ca53f881c263d9397d4bb1120ef2f`  
		Last Modified: Tue, 14 Jul 2026 01:21:44 GMT  
		Size: 5.6 MB (5595091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:60450bc490ee1b114f97eed02aa233dc339b2a37e6f545df25ba1893af6e6bcc`  
		Last Modified: Tue, 14 Jul 2026 01:21:43 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; 386

```console
$ docker pull irssi@sha256:c79731a3d86e3b4ea9b139a38cbc9b7dd7785a3439e19ec99968fe674e0c80b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54920600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09f471eb47009cbea5d5517ab651a05fb8d2909f4d37f01817c4a4d8137f6ae1`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:16:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:16:32 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 01:16:32 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 01:16:32 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:16:32 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 01:17:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 01:17:11 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 01:17:11 GMT
USER user
# Wed, 24 Jun 2026 01:17:11 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f0a7b85bdc61e23fe4edf5328983889a4532c723a3c16bb1fb82811d7a665cf`  
		Last Modified: Wed, 24 Jun 2026 01:17:21 GMT  
		Size: 18.7 MB (18747119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44a78a7db65f5c7fc7371bc85c4255e57ec66965b1a4cb140aed86c62e78a105`  
		Last Modified: Wed, 24 Jun 2026 01:17:20 GMT  
		Size: 3.3 KB (3333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34d40e5193a5d57b8bff4c86cd09514888722d43de9efdbf111bb058b5801c3f`  
		Last Modified: Wed, 24 Jun 2026 01:17:20 GMT  
		Size: 4.9 MB (4868906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:bff8cb3b55487ea4ddd01494c23d9b4815ee25a8aa86429229dcbe1adc62c35e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1efee0c5993099bc0e33cf0da5d8ee1e949c050c0c3a3c2aa5de94af9651deb9`

```dockerfile
```

-	Layers:
	-	`sha256:adaf948308b73fc9351880d5e96094161c3f59aff6505402f72cfb268be73122`  
		Last Modified: Wed, 24 Jun 2026 01:17:20 GMT  
		Size: 5.6 MB (5584676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea52efff25848c2f2ecfb75a082d6c51653b4114bf3dcd00cecfa5705e0eb1b2`  
		Last Modified: Wed, 24 Jun 2026 01:17:20 GMT  
		Size: 18.6 KB (18593 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; ppc64le

```console
$ docker pull irssi@sha256:8497783ffb752c673b40bac6e26969894f93c9ce17069bf7daec9883d5197bd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58252491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26c2f1613306f8e796733529cec601d355d48a9ce4faa7fb56902a35abf6c5ba`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:25:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:25:16 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 01:25:16 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 01:25:16 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:25:16 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 01:27:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 01:27:13 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 01:27:13 GMT
USER user
# Wed, 24 Jun 2026 01:27:13 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1000292e2d94490eb5ee5b15dced71b72de57eadcc0bc162536bacd41dade55`  
		Last Modified: Wed, 24 Jun 2026 01:27:34 GMT  
		Size: 19.5 MB (19543975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679bc2aa3b1163339819bfc7defba6c9a247cc115fcfa314ae44155a3b6c6706`  
		Last Modified: Wed, 24 Jun 2026 01:27:33 GMT  
		Size: 3.3 KB (3336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86f03b14f3056fdd8d161cf7ca10ac58974d0e6639e5806904e2a62016885335`  
		Last Modified: Wed, 24 Jun 2026 01:27:33 GMT  
		Size: 5.1 MB (5098760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:dde4452acc23542a3c46c8f4c300ec075686efa667b5500ae990b2f8d687877a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8e9782f2c6a668a51e112046a6cd09cc4bfba6949387fc673f3b997df0d99d6`

```dockerfile
```

-	Layers:
	-	`sha256:c0ecf4e906a56239646c3a7b4a46934d68b7e699bd32ce49e9416592dc6270e1`  
		Last Modified: Wed, 24 Jun 2026 01:27:33 GMT  
		Size: 5.6 MB (5595584 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a8b0b20edb7219de658a8ba9d5fb396c88c91b1642bc33032eb1b27bdca339d`  
		Last Modified: Wed, 24 Jun 2026 01:27:33 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; riscv64

```console
$ docker pull irssi@sha256:56b7a30dfa04eaa948916ce8cf668897b81c3c2055ccfbe70cd33dbde35c8d09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51710193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a00cf966669bfa5d2372939f36da61b54bca6367242c440ac669129f92c0741`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 20:44:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 20:44:03 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 20:44:03 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 20:44:03 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 20:44:03 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 20:50:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 20:50:50 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 20:50:50 GMT
USER user
# Wed, 24 Jun 2026 20:50:50 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3f4aedbdd8327225623c766d0c77fe9c5b424b6794cb6206fa2fda4f8947d40`  
		Last Modified: Wed, 24 Jun 2026 20:52:45 GMT  
		Size: 18.6 MB (18563062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad4233f2f6372d1a9fbca680ac9d693cf890853b0e809e5281907c0c12f61847`  
		Last Modified: Wed, 24 Jun 2026 20:52:41 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3931864be5ccbc4edf8d6460040fbf7cd4f2589e83e1bd3ea297640cf36c9bf4`  
		Last Modified: Wed, 24 Jun 2026 20:52:42 GMT  
		Size: 4.9 MB (4861389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:17b615bdadbf90c95cf7f9bbe93bb5d2a66874c4da980ac469177ff223de7039
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5598579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9c283324ad22a4f4b7f61f88d50f8432b1d864b021f0870429f17af6623a537`

```dockerfile
```

-	Layers:
	-	`sha256:0fcb0b279db79ecc85fbadcb0dfaf937db4d65064afbe9d18e687721bf58962f`  
		Last Modified: Wed, 24 Jun 2026 20:52:43 GMT  
		Size: 5.6 MB (5579856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc84877d49c52cc39ef8b73c05f555a4f34a7ec6080eb5c8dbe6a0e13360b6f8`  
		Last Modified: Wed, 24 Jun 2026 20:52:41 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; s390x

```console
$ docker pull irssi@sha256:32bf5f073f62d4043be0d906aef4675beb8081c29134244be56b434d347be677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54538238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:766dace219bf7735cbd74a21a948702cc85a3087448b8757d7e4da663822bbf9`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:18:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:18:07 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 01:18:07 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 01:18:07 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:18:07 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 01:18:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 01:18:47 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 01:18:47 GMT
USER user
# Wed, 24 Jun 2026 01:18:47 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a48bebcdb184f28922d9a474ab4af51b5adc15a1d39bc3538b11e2d2d332ca8a`  
		Last Modified: Wed, 24 Jun 2026 01:19:04 GMT  
		Size: 19.8 MB (19776551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:667be9254fd49c8ed6ce64d9061dddbdcbec5e530b056331e49f3548d2fc5f00`  
		Last Modified: Wed, 24 Jun 2026 01:19:03 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e44896948d5e8e045a19e6868723be737fa4f373c81881b0a48754fe48f78832`  
		Last Modified: Wed, 24 Jun 2026 01:19:04 GMT  
		Size: 4.9 MB (4906945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:9b1878c6f6bed51ce74efda68de885513f95a26ba5e5a1d3b895ae8696491a42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:076a7fe1529b6d6738e0939baaffa5803028b524584cf72df98a7428aa18b45e`

```dockerfile
```

-	Layers:
	-	`sha256:9781b17a837f6d930dd660afe6866bcec44d8c1b91f2c0867b9560adec98952c`  
		Last Modified: Wed, 24 Jun 2026 01:19:04 GMT  
		Size: 5.6 MB (5589458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49d6078493e9d9a50e97f2595be062a24ef08334063e2178a74983af7c3711f8`  
		Last Modified: Wed, 24 Jun 2026 01:19:03 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1.4`

```console
$ docker pull irssi@sha256:60d90545f6923549ed99e1218f4fea6ebb5560284d82827a04a8f8b868ce9d9c
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
$ docker pull irssi@sha256:9ba9e845867082176deae7619fb98c157a549c5b043c72e2d600d867c75d82ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53881321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a1355ecfb7107f457bc0c9969931516a7d7710384a68f6d5dd359ff88b9f498`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:20:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:20:53 GMT
ENV HOME=/home/user
# Tue, 14 Jul 2026 01:20:53 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 14 Jul 2026 01:20:53 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:20:53 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 14 Jul 2026 01:21:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 14 Jul 2026 01:21:27 GMT
WORKDIR /home/user
# Tue, 14 Jul 2026 01:21:27 GMT
USER user
# Tue, 14 Jul 2026 01:21:27 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f088d1a16398080a6b9f9f3ffeed8a5420cd8011906ecfbb7a244d400ea8d2aa`  
		Last Modified: Tue, 14 Jul 2026 01:21:38 GMT  
		Size: 19.2 MB (19229414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:530ea975359f311dc64bea2c93b2e4a2c7121373c75b9961607e83cb8d1b8ae9`  
		Last Modified: Tue, 14 Jul 2026 01:21:37 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afcf61da58173ba0fec0dcbb893ec48916ef590ae395c8d58c466efd318e0a36`  
		Last Modified: Tue, 14 Jul 2026 01:21:38 GMT  
		Size: 4.9 MB (4867638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:57707cc9ab9eff0768c709572f36beeef2aadb4583a054355e8441526f8de290
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8898995073111fa4bb5568038d1f035ef6ba1523df9c03684f5f16d20c1f798`

```dockerfile
```

-	Layers:
	-	`sha256:e6f602e424e5beb42cfb6cd4d1244ab724788c17d208014bdbf3acfd6293ffe1`  
		Last Modified: Tue, 14 Jul 2026 01:21:38 GMT  
		Size: 5.6 MB (5588615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8c026664390c46a3ea0df96b7052eaf3bdbec82f03b7c4e3cf4491ac7982180`  
		Last Modified: Tue, 14 Jul 2026 01:21:37 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; arm variant v5

```console
$ docker pull irssi@sha256:259180164ae595df2de0892cfd4d87f610a7cd78ea10fe3d39ab99e8548f3d21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50967277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17d6ec58a215ceb5ddd93ffa50345bdd02b5bf89f1ad6cebc35b18bdc277ea20`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:17:40 GMT
ENV HOME=/home/user
# Tue, 14 Jul 2026 01:17:40 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 14 Jul 2026 01:17:40 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:17:40 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 14 Jul 2026 01:18:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 14 Jul 2026 01:18:32 GMT
WORKDIR /home/user
# Tue, 14 Jul 2026 01:18:32 GMT
USER user
# Tue, 14 Jul 2026 01:18:32 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:9ce68cca63faf1f06434dd1423cb52db0d4251ee3f1838e43e5893fae28f9267`  
		Last Modified: Tue, 14 Jul 2026 00:14:26 GMT  
		Size: 28.0 MB (27954818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30a22039c98dd3bb3c314f99b17b8d8b94c4ce378383e70a7a72799ab5fc2c66`  
		Last Modified: Tue, 14 Jul 2026 01:18:43 GMT  
		Size: 18.3 MB (18298623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d388610189353c94b1e146029a6d3c9f3bb208ef7ce34f45fa19041f1cee3209`  
		Last Modified: Tue, 14 Jul 2026 01:18:42 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3786fcea6bf9c5ec3526c364a07506b82509437469acaa048133fcd1bfd8374`  
		Last Modified: Tue, 14 Jul 2026 01:18:42 GMT  
		Size: 4.7 MB (4710475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:f3f97323ff3c6e3fed26314c4cde06cde96dc89fcf90408e68dcbadde8b68bf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5604953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c816a901b5df5e7ae0f26993f6aab09e481792c6b44eaaed4f7bcb7107a2fab8`

```dockerfile
```

-	Layers:
	-	`sha256:402ca94d41c2b008665793557e5c33a789433f88998b9530502c5645ad7fa193`  
		Last Modified: Tue, 14 Jul 2026 01:18:42 GMT  
		Size: 5.6 MB (5586164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2325bb608405bf5869bb2b2b6f1ca3e01b8869ced5198dadb6cc9aa5eb23c087`  
		Last Modified: Tue, 14 Jul 2026 01:18:42 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; arm variant v7

```console
$ docker pull irssi@sha256:8a09f260e09b4b8e61f51fee37b909dbdc38c2d0263937b8a320ac83d4fd1df8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48692459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc3e099ec9fda22ced8725eb804242eb1913d08c68eb208c090f549698a82bb4`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:18:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:18:36 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 01:18:36 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 01:18:36 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:18:36 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 01:19:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 01:19:16 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 01:19:16 GMT
USER user
# Wed, 24 Jun 2026 01:19:16 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8beb1abd8be4a5a60f09bda3fdf0b401d43b3377d72dce987d68c72a457ec4b4`  
		Last Modified: Wed, 24 Jun 2026 01:19:27 GMT  
		Size: 17.9 MB (17918168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e580be0074573aae7441865a31a6ced2e9274c54ef2ac9216e4c09ad0b85d20`  
		Last Modified: Wed, 24 Jun 2026 01:19:27 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93ccd2320f7239f28e6c946ba53ee54e513b54c8d41bb6d4d0ddce411c36e122`  
		Last Modified: Wed, 24 Jun 2026 01:19:27 GMT  
		Size: 4.6 MB (4559876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:ac622be08227a3f33584b18e45144d81e74b077c07613f1676386ae2bb7b590f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1e84d3b17cccf2c99e5d50ca85e668fa0e8cf458396f3672f1acb7ae40fcd8`

```dockerfile
```

-	Layers:
	-	`sha256:4597b5aeb4ee7985c17d8d010854e0c17c9a99592db4b31774b5ca6077b0bcc2`  
		Last Modified: Wed, 24 Jun 2026 01:19:27 GMT  
		Size: 5.6 MB (5589124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db91dfef5e6ca5acb7d7d5bff398c21f5004653c13ca93ed0d33428edf496555`  
		Last Modified: Wed, 24 Jun 2026 01:19:26 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:1ed2b1fd8165a55f0f3b66fc01676cc2377bd27f5a4daec05682ada53e25881a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53985594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1829fc926362e2518fccc9417820f436596386075a41fee62f49e7fdecd9713`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:20:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:20:56 GMT
ENV HOME=/home/user
# Tue, 14 Jul 2026 01:20:56 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 14 Jul 2026 01:20:56 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:20:56 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 14 Jul 2026 01:21:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 14 Jul 2026 01:21:33 GMT
WORKDIR /home/user
# Tue, 14 Jul 2026 01:21:33 GMT
USER user
# Tue, 14 Jul 2026 01:21:33 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59dcce1e48887eef382548586a68528fa696e383efa53864392f99821f8467eb`  
		Last Modified: Tue, 14 Jul 2026 01:21:44 GMT  
		Size: 19.1 MB (19056330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4ce309480af1f97f3d83b6f28a54c676563b934ad1f1c20ac13bb3976bd72ec`  
		Last Modified: Tue, 14 Jul 2026 01:21:43 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceec76b0c9220b2ef37957b6189fd01f9f9bf083624a597bb02bbd1117a3bbc0`  
		Last Modified: Tue, 14 Jul 2026 01:21:43 GMT  
		Size: 4.8 MB (4782199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:fd7d5a087f8a12fd45c95c0fd51c2e60e7efb9a5d05bd9995f61e9b239171687
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5613924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12846cd02143d088581443ec6b896170e1e3a04a3f2a43aa45a7bf735ba6f746`

```dockerfile
```

-	Layers:
	-	`sha256:45872d82cb29778eab16875c5bf411deae3ca53f881c263d9397d4bb1120ef2f`  
		Last Modified: Tue, 14 Jul 2026 01:21:44 GMT  
		Size: 5.6 MB (5595091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:60450bc490ee1b114f97eed02aa233dc339b2a37e6f545df25ba1893af6e6bcc`  
		Last Modified: Tue, 14 Jul 2026 01:21:43 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; 386

```console
$ docker pull irssi@sha256:c79731a3d86e3b4ea9b139a38cbc9b7dd7785a3439e19ec99968fe674e0c80b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54920600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09f471eb47009cbea5d5517ab651a05fb8d2909f4d37f01817c4a4d8137f6ae1`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:16:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:16:32 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 01:16:32 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 01:16:32 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:16:32 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 01:17:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 01:17:11 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 01:17:11 GMT
USER user
# Wed, 24 Jun 2026 01:17:11 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f0a7b85bdc61e23fe4edf5328983889a4532c723a3c16bb1fb82811d7a665cf`  
		Last Modified: Wed, 24 Jun 2026 01:17:21 GMT  
		Size: 18.7 MB (18747119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44a78a7db65f5c7fc7371bc85c4255e57ec66965b1a4cb140aed86c62e78a105`  
		Last Modified: Wed, 24 Jun 2026 01:17:20 GMT  
		Size: 3.3 KB (3333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34d40e5193a5d57b8bff4c86cd09514888722d43de9efdbf111bb058b5801c3f`  
		Last Modified: Wed, 24 Jun 2026 01:17:20 GMT  
		Size: 4.9 MB (4868906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:bff8cb3b55487ea4ddd01494c23d9b4815ee25a8aa86429229dcbe1adc62c35e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1efee0c5993099bc0e33cf0da5d8ee1e949c050c0c3a3c2aa5de94af9651deb9`

```dockerfile
```

-	Layers:
	-	`sha256:adaf948308b73fc9351880d5e96094161c3f59aff6505402f72cfb268be73122`  
		Last Modified: Wed, 24 Jun 2026 01:17:20 GMT  
		Size: 5.6 MB (5584676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea52efff25848c2f2ecfb75a082d6c51653b4114bf3dcd00cecfa5705e0eb1b2`  
		Last Modified: Wed, 24 Jun 2026 01:17:20 GMT  
		Size: 18.6 KB (18593 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; ppc64le

```console
$ docker pull irssi@sha256:8497783ffb752c673b40bac6e26969894f93c9ce17069bf7daec9883d5197bd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58252491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26c2f1613306f8e796733529cec601d355d48a9ce4faa7fb56902a35abf6c5ba`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:25:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:25:16 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 01:25:16 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 01:25:16 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:25:16 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 01:27:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 01:27:13 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 01:27:13 GMT
USER user
# Wed, 24 Jun 2026 01:27:13 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1000292e2d94490eb5ee5b15dced71b72de57eadcc0bc162536bacd41dade55`  
		Last Modified: Wed, 24 Jun 2026 01:27:34 GMT  
		Size: 19.5 MB (19543975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679bc2aa3b1163339819bfc7defba6c9a247cc115fcfa314ae44155a3b6c6706`  
		Last Modified: Wed, 24 Jun 2026 01:27:33 GMT  
		Size: 3.3 KB (3336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86f03b14f3056fdd8d161cf7ca10ac58974d0e6639e5806904e2a62016885335`  
		Last Modified: Wed, 24 Jun 2026 01:27:33 GMT  
		Size: 5.1 MB (5098760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:dde4452acc23542a3c46c8f4c300ec075686efa667b5500ae990b2f8d687877a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8e9782f2c6a668a51e112046a6cd09cc4bfba6949387fc673f3b997df0d99d6`

```dockerfile
```

-	Layers:
	-	`sha256:c0ecf4e906a56239646c3a7b4a46934d68b7e699bd32ce49e9416592dc6270e1`  
		Last Modified: Wed, 24 Jun 2026 01:27:33 GMT  
		Size: 5.6 MB (5595584 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a8b0b20edb7219de658a8ba9d5fb396c88c91b1642bc33032eb1b27bdca339d`  
		Last Modified: Wed, 24 Jun 2026 01:27:33 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; riscv64

```console
$ docker pull irssi@sha256:56b7a30dfa04eaa948916ce8cf668897b81c3c2055ccfbe70cd33dbde35c8d09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51710193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a00cf966669bfa5d2372939f36da61b54bca6367242c440ac669129f92c0741`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 20:44:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 20:44:03 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 20:44:03 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 20:44:03 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 20:44:03 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 20:50:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 20:50:50 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 20:50:50 GMT
USER user
# Wed, 24 Jun 2026 20:50:50 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3f4aedbdd8327225623c766d0c77fe9c5b424b6794cb6206fa2fda4f8947d40`  
		Last Modified: Wed, 24 Jun 2026 20:52:45 GMT  
		Size: 18.6 MB (18563062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad4233f2f6372d1a9fbca680ac9d693cf890853b0e809e5281907c0c12f61847`  
		Last Modified: Wed, 24 Jun 2026 20:52:41 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3931864be5ccbc4edf8d6460040fbf7cd4f2589e83e1bd3ea297640cf36c9bf4`  
		Last Modified: Wed, 24 Jun 2026 20:52:42 GMT  
		Size: 4.9 MB (4861389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:17b615bdadbf90c95cf7f9bbe93bb5d2a66874c4da980ac469177ff223de7039
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5598579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9c283324ad22a4f4b7f61f88d50f8432b1d864b021f0870429f17af6623a537`

```dockerfile
```

-	Layers:
	-	`sha256:0fcb0b279db79ecc85fbadcb0dfaf937db4d65064afbe9d18e687721bf58962f`  
		Last Modified: Wed, 24 Jun 2026 20:52:43 GMT  
		Size: 5.6 MB (5579856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc84877d49c52cc39ef8b73c05f555a4f34a7ec6080eb5c8dbe6a0e13360b6f8`  
		Last Modified: Wed, 24 Jun 2026 20:52:41 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; s390x

```console
$ docker pull irssi@sha256:32bf5f073f62d4043be0d906aef4675beb8081c29134244be56b434d347be677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54538238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:766dace219bf7735cbd74a21a948702cc85a3087448b8757d7e4da663822bbf9`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:18:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:18:07 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 01:18:07 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 01:18:07 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:18:07 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 01:18:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 01:18:47 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 01:18:47 GMT
USER user
# Wed, 24 Jun 2026 01:18:47 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a48bebcdb184f28922d9a474ab4af51b5adc15a1d39bc3538b11e2d2d332ca8a`  
		Last Modified: Wed, 24 Jun 2026 01:19:04 GMT  
		Size: 19.8 MB (19776551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:667be9254fd49c8ed6ce64d9061dddbdcbec5e530b056331e49f3548d2fc5f00`  
		Last Modified: Wed, 24 Jun 2026 01:19:03 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e44896948d5e8e045a19e6868723be737fa4f373c81881b0a48754fe48f78832`  
		Last Modified: Wed, 24 Jun 2026 01:19:04 GMT  
		Size: 4.9 MB (4906945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:9b1878c6f6bed51ce74efda68de885513f95a26ba5e5a1d3b895ae8696491a42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:076a7fe1529b6d6738e0939baaffa5803028b524584cf72df98a7428aa18b45e`

```dockerfile
```

-	Layers:
	-	`sha256:9781b17a837f6d930dd660afe6866bcec44d8c1b91f2c0867b9560adec98952c`  
		Last Modified: Wed, 24 Jun 2026 01:19:04 GMT  
		Size: 5.6 MB (5589458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49d6078493e9d9a50e97f2595be062a24ef08334063e2178a74983af7c3711f8`  
		Last Modified: Wed, 24 Jun 2026 01:19:03 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1.4-alpine`

```console
$ docker pull irssi@sha256:c65b1f7f4fd1943ddc6209937f2f5b00a80298b224032f50e475267a7c3c86c5
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
$ docker pull irssi@sha256:ee97c76564b57e4bb7e9095822fc55b75297ea61cb745181d626152385c4600e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20725683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:004acb4b5256aa50ff297f7fe6c7b2e17fb73ed7d050f72c66c1d05cf5beb121`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:46:14 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:46:14 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:46:14 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:46:14 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:46:14 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:46:27 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:46:27 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:46:27 GMT
USER user
# Mon, 22 Jun 2026 19:46:27 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f1e94f1984d1a34781222d067c9e0fb4246ed50ba11ac34de4f8546f4e2485`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 10.8 MB (10817260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abd8ebfd85bd55d38847eb7338e5e45eb39412dfab6fc7f745757724d626fd08`  
		Last Modified: Mon, 22 Jun 2026 19:46:34 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a28df43b22dfc13f2366edbda7491c5d8fbdfa40ee29cefdc6d4e9bc7c4fa74e`  
		Last Modified: Mon, 22 Jun 2026 19:46:34 GMT  
		Size: 6.1 MB (6063016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:520d0b373d64902a539d204abd3a42f4c7b273132959ae3590994f6d2dcf8e75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1307392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef5a09b1ad68a809735a39bcd0a8fddfc609a134767d3364ae7df9d8fd58b296`

```dockerfile
```

-	Layers:
	-	`sha256:5acaec97be559a688326f497f478dbdb6e4915d006b76c4b53e8bdd64088536a`  
		Last Modified: Mon, 22 Jun 2026 19:46:34 GMT  
		Size: 1.3 MB (1289892 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7af272cbe9b3c649aee4fadbdb5505dd378ef44316d06299aad532db0f1c5cf4`  
		Last Modified: Mon, 22 Jun 2026 19:46:34 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine` - linux; arm variant v6

```console
$ docker pull irssi@sha256:0e3aa1699cea3307fe17198c9d1cb8fb606f07392b9ee525d46dd49235f9043b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19470670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca66492574e94e99685d079fbfebf446df2347a5c072b0fc173cdaed678b068b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:46:01 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:46:01 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:46:01 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:46:01 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:46:01 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:46:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:46:17 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:46:17 GMT
USER user
# Mon, 22 Jun 2026 19:46:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82defeaa7caa2c7d4266000dda4c830bea74f161848ccd918a9d75c9c85b18e3`  
		Last Modified: Mon, 22 Jun 2026 19:46:23 GMT  
		Size: 10.0 MB (10025025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7063e8d3be6cd1169a61752e1d98a649d42f3c0931936a2d787fddcdebcdfe79`  
		Last Modified: Mon, 22 Jun 2026 19:46:23 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:977d3156c4ca4aae124c90d37aec9ee6375975089e18395cef1bc87aa6d6ffc4`  
		Last Modified: Mon, 22 Jun 2026 19:46:23 GMT  
		Size: 5.9 MB (5892065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:d3bfc6587b61a29b57468e9f85dfe1f0185277328cce7eba62a7a0fd9807b1a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 KB (17423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ceef14e9dd6f7c90a99f80faaba2298c95552c1b00a056bff999d5659f141a`

```dockerfile
```

-	Layers:
	-	`sha256:d3172774ae94b48c3226b7e5176879db7e72a4d4d97ef5c1afcaa5b6820b2aac`  
		Last Modified: Mon, 22 Jun 2026 19:46:23 GMT  
		Size: 17.4 KB (17423 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine` - linux; arm variant v7

```console
$ docker pull irssi@sha256:c6346492ffddac8ad99270069266d14602d3b16426778772b73406545faec005
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18765246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b90939a86a350a9919fa3e8972b151397d7b54b03ee21435ee544bbf677a0f09`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:54:46 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:54:46 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:54:46 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:54:46 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:54:46 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:55:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:55:05 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:55:05 GMT
USER user
# Mon, 22 Jun 2026 19:55:05 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ea6ba6c89e64b810b05f4345c90018d99187b4908ba7c678fb2da59ad298063`  
		Last Modified: Mon, 22 Jun 2026 19:55:13 GMT  
		Size: 9.9 MB (9858991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73405b9e5926e564109dbcc12631ae70b008dae146e7574c6d6d9942e4a808cf`  
		Last Modified: Mon, 22 Jun 2026 19:55:12 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4db8da01a044ba53423d803b4956366017b1e0857313b152eeb27ec164280d`  
		Last Modified: Mon, 22 Jun 2026 19:55:13 GMT  
		Size: 5.6 MB (5643416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:465fdca29637831598f18eb6b247ab253e3198e3dd41df98a04ecf910d7499f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1309934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4fabaced20896c96987546a9f128e97a46f75331be1f133a9ee80bf5ee699d6`

```dockerfile
```

-	Layers:
	-	`sha256:83c2f3976ccc4b3f7141e2000c6b6ff5368d5afee6ce2302d029033297cd996a`  
		Last Modified: Mon, 22 Jun 2026 19:55:12 GMT  
		Size: 1.3 MB (1292300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e9f8dde6c52979c4e2eaf369d9a5677dc407347f63fe392c1c609c8efc15ae9`  
		Last Modified: Mon, 22 Jun 2026 19:55:12 GMT  
		Size: 17.6 KB (17634 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:9dc603beb4a07d393530d95086db6dddc1a1534d7d09a221a326b0bba478f895
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20869826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a734a9b36fa9c8fafec921fed6ef5a7913568dfa78db72a7c40c353190ffdb5`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:47:01 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:47:02 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:47:02 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:47:02 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:47:02 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:47:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:47:13 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:47:13 GMT
USER user
# Mon, 22 Jun 2026 19:47:13 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a1314d0c4d705abd2003b834ff222929aadee219573406905b1ebdbcb2fd0e5`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 10.8 MB (10751011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b51ac442374423225d78f343355d2d1c4916b10252075e88ca9413f5e1431ef`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859b41dac8613012dcbc45b580ab5d15c02974c28e2033d81a371533dbbc0b2f`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 5.9 MB (5935970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:2a6f14a09840b9202c0cbc299b854b79f25cded499de1d99f9663655e47c68a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1307027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b15c812595b215a1aeb63653f112b73ec5a48ba4b63fddf376c00305bb6c0efb`

```dockerfile
```

-	Layers:
	-	`sha256:3de740e24bda3370e066e00f280a3ca5156edc7f363250326e7ca0c5100051d8`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 1.3 MB (1289346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ff8fa68c15d34a1c878b54527440ce7ab0b9ceb6a9d42e821cff31d2e91afad`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 17.7 KB (17681 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine` - linux; 386

```console
$ docker pull irssi@sha256:bff44ff5f28c28096901bee2b6a903a831bd237248e35f57bd5b6320cda08bf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20163548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57e40dae22529a380af2f2d1dd3100c569877d7ba9c4b1051e64df9e52c88e87`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:46:11 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:46:11 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:46:11 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:46:11 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:46:11 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:46:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:46:28 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:46:28 GMT
USER user
# Mon, 22 Jun 2026 19:46:28 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1630aba8794abec3af226b1736b6b62797443e3c4b03af5bf02dc67b2bf22a7`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 10.4 MB (10351196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:004e325c3306131ecbe3ef3ed32a950855cf6b711aad5296a4b6936c462f7a44`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1525ce92cde60047ef81b57e8b939c9ee067189240d2aeb62bbca9c118800fe6`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 6.1 MB (6143379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:2ae352e0f4ddcfa3cbcae809a0abe748c999bffed183bf538d88fe9d59d60143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1307291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a425fa3680d2c2984c776bc56be97be44fbbe15ceadb3b71c923e02708aa04e`

```dockerfile
```

-	Layers:
	-	`sha256:2b7236139a451e3522be5b28e2e5f07dd6135f951dc3a7cfbc38053c6fa2c51e`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 1.3 MB (1289847 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ccbf6ecb50a4018210ae5bed44dbd5932652fbb0f487e2f755fb24006dfef35`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 17.4 KB (17444 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine` - linux; ppc64le

```console
$ docker pull irssi@sha256:36bd8f1c85c53276584b31ecbd4fc8f2290a8f8aaa4758e0e4070328367a8cfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21215327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53fd75983e50e468a396b0ec585adc7593d3b79eccd40d17ea6c8616aa3dedcc`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:52:59 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:52:59 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:52:59 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:52:59 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:52:59 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:53:20 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:53:20 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:53:20 GMT
USER user
# Mon, 22 Jun 2026 19:53:20 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80ca1493cc77dfa723bed221766a958a4b6713fd5cbe7323645d82dc22d9eb14`  
		Last Modified: Mon, 22 Jun 2026 19:53:37 GMT  
		Size: 11.0 MB (11039519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efadd163d0d496a592324d86ce4b1b0d7ba3a6162be35fb2ca9ad34b1e410eee`  
		Last Modified: Mon, 22 Jun 2026 19:53:36 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ce0cfe8881f2132dda000a5eddabb0994150b10fda5290e0fef5771c18393b`  
		Last Modified: Mon, 22 Jun 2026 19:53:37 GMT  
		Size: 6.4 MB (6362524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:09a17eb571ca45406713a69853c7bdc6e2a2a892ceb44c9ad5f9ea60fb7504ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:686b4270754ba7801cc14fdd9985f93980a39b76edcac849924bc4d4b990b87e`

```dockerfile
```

-	Layers:
	-	`sha256:b93f61a4f08643a442eba6357584db91c0f8d3c58b0e57c1924c796ccfd7ad1d`  
		Last Modified: Mon, 22 Jun 2026 19:53:37 GMT  
		Size: 1.3 MB (1289299 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a082bb19995633572b61251e374f85a1aaaf35209d26bee8c85bc2bf6d9d6ca`  
		Last Modified: Mon, 22 Jun 2026 19:53:37 GMT  
		Size: 17.6 KB (17572 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine` - linux; riscv64

```console
$ docker pull irssi@sha256:94b120e9b15f5c81091f116f5e6e5f913a8cb318cdd41eb40e22b64946655446
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19885865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d505a244fb87c10f37d80d6b2572243b3a37083e45fed0a3c289a67e5a552da`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 21:02:34 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 21:02:34 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 21:02:34 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 21:02:34 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 21:02:34 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 21:06:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 21:06:24 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 21:06:24 GMT
USER user
# Mon, 22 Jun 2026 21:06:24 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f730c254988ca0282bd88a0dcf04e16c9110ea8c311d08a54205ee9be1e6349`  
		Last Modified: Mon, 22 Jun 2026 21:07:19 GMT  
		Size: 10.2 MB (10248751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0aa85364964156e8bc871a2b1ce7a6933a1fb636df5f26523b8daa2fd22ff43`  
		Last Modified: Mon, 22 Jun 2026 21:07:17 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc698d4c330b08f0e16fda8ef2f08dcf5515555054cd15f1447916f6417e4106`  
		Last Modified: Mon, 22 Jun 2026 21:07:18 GMT  
		Size: 6.1 MB (6062890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:8f5a83eb51e324734511ddb6e539ac5592b33c8e846124ff9e3c40fadcfbbb4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f12b8cab76048437250e6c425a2f3e877c4cc4a3cad1570a297d6a6046808cc`

```dockerfile
```

-	Layers:
	-	`sha256:383a1dc595cc7be04c0215692e726d7491f9d3b5ef5bf6dcb0fd78dc44a7a7ba`  
		Last Modified: Mon, 22 Jun 2026 21:07:17 GMT  
		Size: 1.3 MB (1289295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87e3cbaf2d3118cdea5dde1c769d0dc21a5996273ebdd10aa133379f8200b8df`  
		Last Modified: Mon, 22 Jun 2026 21:07:16 GMT  
		Size: 17.6 KB (17572 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine` - linux; s390x

```console
$ docker pull irssi@sha256:7cd75ba79bf4f34ba81e21b2dec21292ca05c7f0a85b05f67240ac33d7bc7223
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21277654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e78906991e5560a0f8a9186b95ca902141ec50d3deb79cc9a88c94ca37086294`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:46:33 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:46:33 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:46:33 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:46:33 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:46:33 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:46:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:46:51 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:46:51 GMT
USER user
# Mon, 22 Jun 2026 19:46:51 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5f1a3b639533b39fabdf06fbaa13cdd7e421c8fd97094d306c225ebd72c5dfa`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 11.4 MB (11366931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37d1df320466adeacca73c2859b76a6a11fb284e7554134179f7ae320cef5242`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a6bf8cb2affcc570d30e427ec2de43d4fb2ee3d73f5b53ba0ee5223aa9041a`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 6.2 MB (6202491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:b4f20c9d1f6fada462a04d45b3ac9c1d3dca1ec5bf5a7b042b6bf10081dd8479
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:799fcdc0bd8c80bc76c68d24e51158cbe0f050aca2015fd3b12abaaec557f3d1`

```dockerfile
```

-	Layers:
	-	`sha256:6190de7dcf0e7771b7bfb8b673b4a53f4d3f23eddd402d10f69b485603bf4810`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 1.3 MB (1289241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eea269e2b2b1765c13e969996451fe624a1526ff4e72c19ab4301e5631c796ce`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1.4-alpine3.23`

```console
$ docker pull irssi@sha256:c65b1f7f4fd1943ddc6209937f2f5b00a80298b224032f50e475267a7c3c86c5
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
$ docker pull irssi@sha256:ee97c76564b57e4bb7e9095822fc55b75297ea61cb745181d626152385c4600e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20725683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:004acb4b5256aa50ff297f7fe6c7b2e17fb73ed7d050f72c66c1d05cf5beb121`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:46:14 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:46:14 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:46:14 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:46:14 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:46:14 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:46:27 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:46:27 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:46:27 GMT
USER user
# Mon, 22 Jun 2026 19:46:27 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f1e94f1984d1a34781222d067c9e0fb4246ed50ba11ac34de4f8546f4e2485`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 10.8 MB (10817260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abd8ebfd85bd55d38847eb7338e5e45eb39412dfab6fc7f745757724d626fd08`  
		Last Modified: Mon, 22 Jun 2026 19:46:34 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a28df43b22dfc13f2366edbda7491c5d8fbdfa40ee29cefdc6d4e9bc7c4fa74e`  
		Last Modified: Mon, 22 Jun 2026 19:46:34 GMT  
		Size: 6.1 MB (6063016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:520d0b373d64902a539d204abd3a42f4c7b273132959ae3590994f6d2dcf8e75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1307392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef5a09b1ad68a809735a39bcd0a8fddfc609a134767d3364ae7df9d8fd58b296`

```dockerfile
```

-	Layers:
	-	`sha256:5acaec97be559a688326f497f478dbdb6e4915d006b76c4b53e8bdd64088536a`  
		Last Modified: Mon, 22 Jun 2026 19:46:34 GMT  
		Size: 1.3 MB (1289892 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7af272cbe9b3c649aee4fadbdb5505dd378ef44316d06299aad532db0f1c5cf4`  
		Last Modified: Mon, 22 Jun 2026 19:46:34 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine3.23` - linux; arm variant v6

```console
$ docker pull irssi@sha256:0e3aa1699cea3307fe17198c9d1cb8fb606f07392b9ee525d46dd49235f9043b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19470670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca66492574e94e99685d079fbfebf446df2347a5c072b0fc173cdaed678b068b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:46:01 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:46:01 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:46:01 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:46:01 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:46:01 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:46:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:46:17 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:46:17 GMT
USER user
# Mon, 22 Jun 2026 19:46:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82defeaa7caa2c7d4266000dda4c830bea74f161848ccd918a9d75c9c85b18e3`  
		Last Modified: Mon, 22 Jun 2026 19:46:23 GMT  
		Size: 10.0 MB (10025025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7063e8d3be6cd1169a61752e1d98a649d42f3c0931936a2d787fddcdebcdfe79`  
		Last Modified: Mon, 22 Jun 2026 19:46:23 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:977d3156c4ca4aae124c90d37aec9ee6375975089e18395cef1bc87aa6d6ffc4`  
		Last Modified: Mon, 22 Jun 2026 19:46:23 GMT  
		Size: 5.9 MB (5892065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:d3bfc6587b61a29b57468e9f85dfe1f0185277328cce7eba62a7a0fd9807b1a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 KB (17423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ceef14e9dd6f7c90a99f80faaba2298c95552c1b00a056bff999d5659f141a`

```dockerfile
```

-	Layers:
	-	`sha256:d3172774ae94b48c3226b7e5176879db7e72a4d4d97ef5c1afcaa5b6820b2aac`  
		Last Modified: Mon, 22 Jun 2026 19:46:23 GMT  
		Size: 17.4 KB (17423 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine3.23` - linux; arm variant v7

```console
$ docker pull irssi@sha256:c6346492ffddac8ad99270069266d14602d3b16426778772b73406545faec005
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18765246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b90939a86a350a9919fa3e8972b151397d7b54b03ee21435ee544bbf677a0f09`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:54:46 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:54:46 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:54:46 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:54:46 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:54:46 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:55:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:55:05 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:55:05 GMT
USER user
# Mon, 22 Jun 2026 19:55:05 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ea6ba6c89e64b810b05f4345c90018d99187b4908ba7c678fb2da59ad298063`  
		Last Modified: Mon, 22 Jun 2026 19:55:13 GMT  
		Size: 9.9 MB (9858991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73405b9e5926e564109dbcc12631ae70b008dae146e7574c6d6d9942e4a808cf`  
		Last Modified: Mon, 22 Jun 2026 19:55:12 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4db8da01a044ba53423d803b4956366017b1e0857313b152eeb27ec164280d`  
		Last Modified: Mon, 22 Jun 2026 19:55:13 GMT  
		Size: 5.6 MB (5643416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:465fdca29637831598f18eb6b247ab253e3198e3dd41df98a04ecf910d7499f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1309934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4fabaced20896c96987546a9f128e97a46f75331be1f133a9ee80bf5ee699d6`

```dockerfile
```

-	Layers:
	-	`sha256:83c2f3976ccc4b3f7141e2000c6b6ff5368d5afee6ce2302d029033297cd996a`  
		Last Modified: Mon, 22 Jun 2026 19:55:12 GMT  
		Size: 1.3 MB (1292300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e9f8dde6c52979c4e2eaf369d9a5677dc407347f63fe392c1c609c8efc15ae9`  
		Last Modified: Mon, 22 Jun 2026 19:55:12 GMT  
		Size: 17.6 KB (17634 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:9dc603beb4a07d393530d95086db6dddc1a1534d7d09a221a326b0bba478f895
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20869826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a734a9b36fa9c8fafec921fed6ef5a7913568dfa78db72a7c40c353190ffdb5`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:47:01 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:47:02 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:47:02 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:47:02 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:47:02 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:47:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:47:13 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:47:13 GMT
USER user
# Mon, 22 Jun 2026 19:47:13 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a1314d0c4d705abd2003b834ff222929aadee219573406905b1ebdbcb2fd0e5`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 10.8 MB (10751011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b51ac442374423225d78f343355d2d1c4916b10252075e88ca9413f5e1431ef`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859b41dac8613012dcbc45b580ab5d15c02974c28e2033d81a371533dbbc0b2f`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 5.9 MB (5935970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:2a6f14a09840b9202c0cbc299b854b79f25cded499de1d99f9663655e47c68a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1307027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b15c812595b215a1aeb63653f112b73ec5a48ba4b63fddf376c00305bb6c0efb`

```dockerfile
```

-	Layers:
	-	`sha256:3de740e24bda3370e066e00f280a3ca5156edc7f363250326e7ca0c5100051d8`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 1.3 MB (1289346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ff8fa68c15d34a1c878b54527440ce7ab0b9ceb6a9d42e821cff31d2e91afad`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 17.7 KB (17681 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine3.23` - linux; 386

```console
$ docker pull irssi@sha256:bff44ff5f28c28096901bee2b6a903a831bd237248e35f57bd5b6320cda08bf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20163548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57e40dae22529a380af2f2d1dd3100c569877d7ba9c4b1051e64df9e52c88e87`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:46:11 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:46:11 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:46:11 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:46:11 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:46:11 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:46:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:46:28 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:46:28 GMT
USER user
# Mon, 22 Jun 2026 19:46:28 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1630aba8794abec3af226b1736b6b62797443e3c4b03af5bf02dc67b2bf22a7`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 10.4 MB (10351196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:004e325c3306131ecbe3ef3ed32a950855cf6b711aad5296a4b6936c462f7a44`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1525ce92cde60047ef81b57e8b939c9ee067189240d2aeb62bbca9c118800fe6`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 6.1 MB (6143379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:2ae352e0f4ddcfa3cbcae809a0abe748c999bffed183bf538d88fe9d59d60143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1307291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a425fa3680d2c2984c776bc56be97be44fbbe15ceadb3b71c923e02708aa04e`

```dockerfile
```

-	Layers:
	-	`sha256:2b7236139a451e3522be5b28e2e5f07dd6135f951dc3a7cfbc38053c6fa2c51e`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 1.3 MB (1289847 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ccbf6ecb50a4018210ae5bed44dbd5932652fbb0f487e2f755fb24006dfef35`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 17.4 KB (17444 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine3.23` - linux; ppc64le

```console
$ docker pull irssi@sha256:36bd8f1c85c53276584b31ecbd4fc8f2290a8f8aaa4758e0e4070328367a8cfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21215327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53fd75983e50e468a396b0ec585adc7593d3b79eccd40d17ea6c8616aa3dedcc`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:52:59 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:52:59 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:52:59 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:52:59 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:52:59 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:53:20 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:53:20 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:53:20 GMT
USER user
# Mon, 22 Jun 2026 19:53:20 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80ca1493cc77dfa723bed221766a958a4b6713fd5cbe7323645d82dc22d9eb14`  
		Last Modified: Mon, 22 Jun 2026 19:53:37 GMT  
		Size: 11.0 MB (11039519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efadd163d0d496a592324d86ce4b1b0d7ba3a6162be35fb2ca9ad34b1e410eee`  
		Last Modified: Mon, 22 Jun 2026 19:53:36 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ce0cfe8881f2132dda000a5eddabb0994150b10fda5290e0fef5771c18393b`  
		Last Modified: Mon, 22 Jun 2026 19:53:37 GMT  
		Size: 6.4 MB (6362524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:09a17eb571ca45406713a69853c7bdc6e2a2a892ceb44c9ad5f9ea60fb7504ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:686b4270754ba7801cc14fdd9985f93980a39b76edcac849924bc4d4b990b87e`

```dockerfile
```

-	Layers:
	-	`sha256:b93f61a4f08643a442eba6357584db91c0f8d3c58b0e57c1924c796ccfd7ad1d`  
		Last Modified: Mon, 22 Jun 2026 19:53:37 GMT  
		Size: 1.3 MB (1289299 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a082bb19995633572b61251e374f85a1aaaf35209d26bee8c85bc2bf6d9d6ca`  
		Last Modified: Mon, 22 Jun 2026 19:53:37 GMT  
		Size: 17.6 KB (17572 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine3.23` - linux; riscv64

```console
$ docker pull irssi@sha256:94b120e9b15f5c81091f116f5e6e5f913a8cb318cdd41eb40e22b64946655446
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19885865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d505a244fb87c10f37d80d6b2572243b3a37083e45fed0a3c289a67e5a552da`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 21:02:34 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 21:02:34 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 21:02:34 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 21:02:34 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 21:02:34 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 21:06:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 21:06:24 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 21:06:24 GMT
USER user
# Mon, 22 Jun 2026 21:06:24 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f730c254988ca0282bd88a0dcf04e16c9110ea8c311d08a54205ee9be1e6349`  
		Last Modified: Mon, 22 Jun 2026 21:07:19 GMT  
		Size: 10.2 MB (10248751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0aa85364964156e8bc871a2b1ce7a6933a1fb636df5f26523b8daa2fd22ff43`  
		Last Modified: Mon, 22 Jun 2026 21:07:17 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc698d4c330b08f0e16fda8ef2f08dcf5515555054cd15f1447916f6417e4106`  
		Last Modified: Mon, 22 Jun 2026 21:07:18 GMT  
		Size: 6.1 MB (6062890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:8f5a83eb51e324734511ddb6e539ac5592b33c8e846124ff9e3c40fadcfbbb4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f12b8cab76048437250e6c425a2f3e877c4cc4a3cad1570a297d6a6046808cc`

```dockerfile
```

-	Layers:
	-	`sha256:383a1dc595cc7be04c0215692e726d7491f9d3b5ef5bf6dcb0fd78dc44a7a7ba`  
		Last Modified: Mon, 22 Jun 2026 21:07:17 GMT  
		Size: 1.3 MB (1289295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87e3cbaf2d3118cdea5dde1c769d0dc21a5996273ebdd10aa133379f8200b8df`  
		Last Modified: Mon, 22 Jun 2026 21:07:16 GMT  
		Size: 17.6 KB (17572 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine3.23` - linux; s390x

```console
$ docker pull irssi@sha256:7cd75ba79bf4f34ba81e21b2dec21292ca05c7f0a85b05f67240ac33d7bc7223
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21277654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e78906991e5560a0f8a9186b95ca902141ec50d3deb79cc9a88c94ca37086294`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:46:33 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:46:33 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:46:33 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:46:33 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:46:33 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:46:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:46:51 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:46:51 GMT
USER user
# Mon, 22 Jun 2026 19:46:51 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5f1a3b639533b39fabdf06fbaa13cdd7e421c8fd97094d306c225ebd72c5dfa`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 11.4 MB (11366931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37d1df320466adeacca73c2859b76a6a11fb284e7554134179f7ae320cef5242`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a6bf8cb2affcc570d30e427ec2de43d4fb2ee3d73f5b53ba0ee5223aa9041a`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 6.2 MB (6202491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:b4f20c9d1f6fada462a04d45b3ac9c1d3dca1ec5bf5a7b042b6bf10081dd8479
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:799fcdc0bd8c80bc76c68d24e51158cbe0f050aca2015fd3b12abaaec557f3d1`

```dockerfile
```

-	Layers:
	-	`sha256:6190de7dcf0e7771b7bfb8b673b4a53f4d3f23eddd402d10f69b485603bf4810`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 1.3 MB (1289241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eea269e2b2b1765c13e969996451fe624a1526ff4e72c19ab4301e5631c796ce`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1.4-trixie`

```console
$ docker pull irssi@sha256:f9037f53b568fe2c95645211d5e9bf0f0e8cbdd12b458bc10ad859fcd6672a34
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
$ docker pull irssi@sha256:9ba9e845867082176deae7619fb98c157a549c5b043c72e2d600d867c75d82ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53881321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a1355ecfb7107f457bc0c9969931516a7d7710384a68f6d5dd359ff88b9f498`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:20:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:20:53 GMT
ENV HOME=/home/user
# Tue, 14 Jul 2026 01:20:53 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 14 Jul 2026 01:20:53 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:20:53 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 14 Jul 2026 01:21:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 14 Jul 2026 01:21:27 GMT
WORKDIR /home/user
# Tue, 14 Jul 2026 01:21:27 GMT
USER user
# Tue, 14 Jul 2026 01:21:27 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f088d1a16398080a6b9f9f3ffeed8a5420cd8011906ecfbb7a244d400ea8d2aa`  
		Last Modified: Tue, 14 Jul 2026 01:21:38 GMT  
		Size: 19.2 MB (19229414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:530ea975359f311dc64bea2c93b2e4a2c7121373c75b9961607e83cb8d1b8ae9`  
		Last Modified: Tue, 14 Jul 2026 01:21:37 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afcf61da58173ba0fec0dcbb893ec48916ef590ae395c8d58c466efd318e0a36`  
		Last Modified: Tue, 14 Jul 2026 01:21:38 GMT  
		Size: 4.9 MB (4867638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:57707cc9ab9eff0768c709572f36beeef2aadb4583a054355e8441526f8de290
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8898995073111fa4bb5568038d1f035ef6ba1523df9c03684f5f16d20c1f798`

```dockerfile
```

-	Layers:
	-	`sha256:e6f602e424e5beb42cfb6cd4d1244ab724788c17d208014bdbf3acfd6293ffe1`  
		Last Modified: Tue, 14 Jul 2026 01:21:38 GMT  
		Size: 5.6 MB (5588615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8c026664390c46a3ea0df96b7052eaf3bdbec82f03b7c4e3cf4491ac7982180`  
		Last Modified: Tue, 14 Jul 2026 01:21:37 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; arm variant v5

```console
$ docker pull irssi@sha256:259180164ae595df2de0892cfd4d87f610a7cd78ea10fe3d39ab99e8548f3d21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50967277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17d6ec58a215ceb5ddd93ffa50345bdd02b5bf89f1ad6cebc35b18bdc277ea20`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:17:40 GMT
ENV HOME=/home/user
# Tue, 14 Jul 2026 01:17:40 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 14 Jul 2026 01:17:40 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:17:40 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 14 Jul 2026 01:18:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 14 Jul 2026 01:18:32 GMT
WORKDIR /home/user
# Tue, 14 Jul 2026 01:18:32 GMT
USER user
# Tue, 14 Jul 2026 01:18:32 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:9ce68cca63faf1f06434dd1423cb52db0d4251ee3f1838e43e5893fae28f9267`  
		Last Modified: Tue, 14 Jul 2026 00:14:26 GMT  
		Size: 28.0 MB (27954818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30a22039c98dd3bb3c314f99b17b8d8b94c4ce378383e70a7a72799ab5fc2c66`  
		Last Modified: Tue, 14 Jul 2026 01:18:43 GMT  
		Size: 18.3 MB (18298623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d388610189353c94b1e146029a6d3c9f3bb208ef7ce34f45fa19041f1cee3209`  
		Last Modified: Tue, 14 Jul 2026 01:18:42 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3786fcea6bf9c5ec3526c364a07506b82509437469acaa048133fcd1bfd8374`  
		Last Modified: Tue, 14 Jul 2026 01:18:42 GMT  
		Size: 4.7 MB (4710475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:f3f97323ff3c6e3fed26314c4cde06cde96dc89fcf90408e68dcbadde8b68bf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5604953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c816a901b5df5e7ae0f26993f6aab09e481792c6b44eaaed4f7bcb7107a2fab8`

```dockerfile
```

-	Layers:
	-	`sha256:402ca94d41c2b008665793557e5c33a789433f88998b9530502c5645ad7fa193`  
		Last Modified: Tue, 14 Jul 2026 01:18:42 GMT  
		Size: 5.6 MB (5586164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2325bb608405bf5869bb2b2b6f1ca3e01b8869ced5198dadb6cc9aa5eb23c087`  
		Last Modified: Tue, 14 Jul 2026 01:18:42 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; arm variant v7

```console
$ docker pull irssi@sha256:8a09f260e09b4b8e61f51fee37b909dbdc38c2d0263937b8a320ac83d4fd1df8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48692459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc3e099ec9fda22ced8725eb804242eb1913d08c68eb208c090f549698a82bb4`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:18:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:18:36 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 01:18:36 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 01:18:36 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:18:36 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 01:19:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 01:19:16 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 01:19:16 GMT
USER user
# Wed, 24 Jun 2026 01:19:16 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8beb1abd8be4a5a60f09bda3fdf0b401d43b3377d72dce987d68c72a457ec4b4`  
		Last Modified: Wed, 24 Jun 2026 01:19:27 GMT  
		Size: 17.9 MB (17918168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e580be0074573aae7441865a31a6ced2e9274c54ef2ac9216e4c09ad0b85d20`  
		Last Modified: Wed, 24 Jun 2026 01:19:27 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93ccd2320f7239f28e6c946ba53ee54e513b54c8d41bb6d4d0ddce411c36e122`  
		Last Modified: Wed, 24 Jun 2026 01:19:27 GMT  
		Size: 4.6 MB (4559876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:ac622be08227a3f33584b18e45144d81e74b077c07613f1676386ae2bb7b590f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1e84d3b17cccf2c99e5d50ca85e668fa0e8cf458396f3672f1acb7ae40fcd8`

```dockerfile
```

-	Layers:
	-	`sha256:4597b5aeb4ee7985c17d8d010854e0c17c9a99592db4b31774b5ca6077b0bcc2`  
		Last Modified: Wed, 24 Jun 2026 01:19:27 GMT  
		Size: 5.6 MB (5589124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db91dfef5e6ca5acb7d7d5bff398c21f5004653c13ca93ed0d33428edf496555`  
		Last Modified: Wed, 24 Jun 2026 01:19:26 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:561395fe06676721509b6290e57a97726fa7839e17e404119f7fd81019beb12d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53989884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:999db7a06a940a111ba1c7fdca8a85915b4d72cf7c02b9ae3d8627220bedab4e`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:20:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:20:25 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 01:20:25 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 01:20:25 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:20:25 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 01:21:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 01:21:04 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 01:21:04 GMT
USER user
# Wed, 24 Jun 2026 01:21:04 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:294a283bb72393ae2fbf5f801a0cff8adde691f54cff36a4e90c81b5310e765d`  
		Last Modified: Wed, 24 Jun 2026 01:21:15 GMT  
		Size: 19.1 MB (19055871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d073fd71c18b9761e900a0e5e71724b8da519841571083dc198208d5a9fc9af1`  
		Last Modified: Wed, 24 Jun 2026 01:21:14 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3c4d9e1b8aa365ea311ad8dd47691bf0bf39894f063bb3d595908fd5d4dbc5b`  
		Last Modified: Wed, 24 Jun 2026 01:21:15 GMT  
		Size: 4.8 MB (4782101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:64005db4f517d3053ba6b6df65039385a2371403dab68d462925d4f66739bd6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5613862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4a524b64793b3782644f5c8dc2c47efe6262407f24c090a7fac2559f153866e`

```dockerfile
```

-	Layers:
	-	`sha256:4d4346bd8895d74d904ee79eb726ca18bbea8803cffd532ab5dfdec3e9449559`  
		Last Modified: Wed, 24 Jun 2026 01:21:15 GMT  
		Size: 5.6 MB (5595029 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f8f5778e72e3d4f25dac5a69a467cca46cfbbb06b4f4ca0860165de3c5f4f23`  
		Last Modified: Wed, 24 Jun 2026 01:21:14 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; 386

```console
$ docker pull irssi@sha256:c79731a3d86e3b4ea9b139a38cbc9b7dd7785a3439e19ec99968fe674e0c80b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54920600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09f471eb47009cbea5d5517ab651a05fb8d2909f4d37f01817c4a4d8137f6ae1`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:16:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:16:32 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 01:16:32 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 01:16:32 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:16:32 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 01:17:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 01:17:11 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 01:17:11 GMT
USER user
# Wed, 24 Jun 2026 01:17:11 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f0a7b85bdc61e23fe4edf5328983889a4532c723a3c16bb1fb82811d7a665cf`  
		Last Modified: Wed, 24 Jun 2026 01:17:21 GMT  
		Size: 18.7 MB (18747119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44a78a7db65f5c7fc7371bc85c4255e57ec66965b1a4cb140aed86c62e78a105`  
		Last Modified: Wed, 24 Jun 2026 01:17:20 GMT  
		Size: 3.3 KB (3333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34d40e5193a5d57b8bff4c86cd09514888722d43de9efdbf111bb058b5801c3f`  
		Last Modified: Wed, 24 Jun 2026 01:17:20 GMT  
		Size: 4.9 MB (4868906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:bff8cb3b55487ea4ddd01494c23d9b4815ee25a8aa86429229dcbe1adc62c35e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1efee0c5993099bc0e33cf0da5d8ee1e949c050c0c3a3c2aa5de94af9651deb9`

```dockerfile
```

-	Layers:
	-	`sha256:adaf948308b73fc9351880d5e96094161c3f59aff6505402f72cfb268be73122`  
		Last Modified: Wed, 24 Jun 2026 01:17:20 GMT  
		Size: 5.6 MB (5584676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea52efff25848c2f2ecfb75a082d6c51653b4114bf3dcd00cecfa5705e0eb1b2`  
		Last Modified: Wed, 24 Jun 2026 01:17:20 GMT  
		Size: 18.6 KB (18593 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; ppc64le

```console
$ docker pull irssi@sha256:8497783ffb752c673b40bac6e26969894f93c9ce17069bf7daec9883d5197bd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58252491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26c2f1613306f8e796733529cec601d355d48a9ce4faa7fb56902a35abf6c5ba`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:25:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:25:16 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 01:25:16 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 01:25:16 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:25:16 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 01:27:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 01:27:13 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 01:27:13 GMT
USER user
# Wed, 24 Jun 2026 01:27:13 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1000292e2d94490eb5ee5b15dced71b72de57eadcc0bc162536bacd41dade55`  
		Last Modified: Wed, 24 Jun 2026 01:27:34 GMT  
		Size: 19.5 MB (19543975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679bc2aa3b1163339819bfc7defba6c9a247cc115fcfa314ae44155a3b6c6706`  
		Last Modified: Wed, 24 Jun 2026 01:27:33 GMT  
		Size: 3.3 KB (3336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86f03b14f3056fdd8d161cf7ca10ac58974d0e6639e5806904e2a62016885335`  
		Last Modified: Wed, 24 Jun 2026 01:27:33 GMT  
		Size: 5.1 MB (5098760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:dde4452acc23542a3c46c8f4c300ec075686efa667b5500ae990b2f8d687877a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8e9782f2c6a668a51e112046a6cd09cc4bfba6949387fc673f3b997df0d99d6`

```dockerfile
```

-	Layers:
	-	`sha256:c0ecf4e906a56239646c3a7b4a46934d68b7e699bd32ce49e9416592dc6270e1`  
		Last Modified: Wed, 24 Jun 2026 01:27:33 GMT  
		Size: 5.6 MB (5595584 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a8b0b20edb7219de658a8ba9d5fb396c88c91b1642bc33032eb1b27bdca339d`  
		Last Modified: Wed, 24 Jun 2026 01:27:33 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; riscv64

```console
$ docker pull irssi@sha256:56b7a30dfa04eaa948916ce8cf668897b81c3c2055ccfbe70cd33dbde35c8d09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51710193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a00cf966669bfa5d2372939f36da61b54bca6367242c440ac669129f92c0741`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 20:44:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 20:44:03 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 20:44:03 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 20:44:03 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 20:44:03 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 20:50:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 20:50:50 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 20:50:50 GMT
USER user
# Wed, 24 Jun 2026 20:50:50 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3f4aedbdd8327225623c766d0c77fe9c5b424b6794cb6206fa2fda4f8947d40`  
		Last Modified: Wed, 24 Jun 2026 20:52:45 GMT  
		Size: 18.6 MB (18563062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad4233f2f6372d1a9fbca680ac9d693cf890853b0e809e5281907c0c12f61847`  
		Last Modified: Wed, 24 Jun 2026 20:52:41 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3931864be5ccbc4edf8d6460040fbf7cd4f2589e83e1bd3ea297640cf36c9bf4`  
		Last Modified: Wed, 24 Jun 2026 20:52:42 GMT  
		Size: 4.9 MB (4861389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:17b615bdadbf90c95cf7f9bbe93bb5d2a66874c4da980ac469177ff223de7039
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5598579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9c283324ad22a4f4b7f61f88d50f8432b1d864b021f0870429f17af6623a537`

```dockerfile
```

-	Layers:
	-	`sha256:0fcb0b279db79ecc85fbadcb0dfaf937db4d65064afbe9d18e687721bf58962f`  
		Last Modified: Wed, 24 Jun 2026 20:52:43 GMT  
		Size: 5.6 MB (5579856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc84877d49c52cc39ef8b73c05f555a4f34a7ec6080eb5c8dbe6a0e13360b6f8`  
		Last Modified: Wed, 24 Jun 2026 20:52:41 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; s390x

```console
$ docker pull irssi@sha256:32bf5f073f62d4043be0d906aef4675beb8081c29134244be56b434d347be677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54538238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:766dace219bf7735cbd74a21a948702cc85a3087448b8757d7e4da663822bbf9`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:18:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:18:07 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 01:18:07 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 01:18:07 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:18:07 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 01:18:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 01:18:47 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 01:18:47 GMT
USER user
# Wed, 24 Jun 2026 01:18:47 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a48bebcdb184f28922d9a474ab4af51b5adc15a1d39bc3538b11e2d2d332ca8a`  
		Last Modified: Wed, 24 Jun 2026 01:19:04 GMT  
		Size: 19.8 MB (19776551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:667be9254fd49c8ed6ce64d9061dddbdcbec5e530b056331e49f3548d2fc5f00`  
		Last Modified: Wed, 24 Jun 2026 01:19:03 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e44896948d5e8e045a19e6868723be737fa4f373c81881b0a48754fe48f78832`  
		Last Modified: Wed, 24 Jun 2026 01:19:04 GMT  
		Size: 4.9 MB (4906945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:9b1878c6f6bed51ce74efda68de885513f95a26ba5e5a1d3b895ae8696491a42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:076a7fe1529b6d6738e0939baaffa5803028b524584cf72df98a7428aa18b45e`

```dockerfile
```

-	Layers:
	-	`sha256:9781b17a837f6d930dd660afe6866bcec44d8c1b91f2c0867b9560adec98952c`  
		Last Modified: Wed, 24 Jun 2026 01:19:04 GMT  
		Size: 5.6 MB (5589458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49d6078493e9d9a50e97f2595be062a24ef08334063e2178a74983af7c3711f8`  
		Last Modified: Wed, 24 Jun 2026 01:19:03 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1.4.5`

```console
$ docker pull irssi@sha256:60d90545f6923549ed99e1218f4fea6ebb5560284d82827a04a8f8b868ce9d9c
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
$ docker pull irssi@sha256:9ba9e845867082176deae7619fb98c157a549c5b043c72e2d600d867c75d82ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53881321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a1355ecfb7107f457bc0c9969931516a7d7710384a68f6d5dd359ff88b9f498`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:20:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:20:53 GMT
ENV HOME=/home/user
# Tue, 14 Jul 2026 01:20:53 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 14 Jul 2026 01:20:53 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:20:53 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 14 Jul 2026 01:21:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 14 Jul 2026 01:21:27 GMT
WORKDIR /home/user
# Tue, 14 Jul 2026 01:21:27 GMT
USER user
# Tue, 14 Jul 2026 01:21:27 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f088d1a16398080a6b9f9f3ffeed8a5420cd8011906ecfbb7a244d400ea8d2aa`  
		Last Modified: Tue, 14 Jul 2026 01:21:38 GMT  
		Size: 19.2 MB (19229414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:530ea975359f311dc64bea2c93b2e4a2c7121373c75b9961607e83cb8d1b8ae9`  
		Last Modified: Tue, 14 Jul 2026 01:21:37 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afcf61da58173ba0fec0dcbb893ec48916ef590ae395c8d58c466efd318e0a36`  
		Last Modified: Tue, 14 Jul 2026 01:21:38 GMT  
		Size: 4.9 MB (4867638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:57707cc9ab9eff0768c709572f36beeef2aadb4583a054355e8441526f8de290
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8898995073111fa4bb5568038d1f035ef6ba1523df9c03684f5f16d20c1f798`

```dockerfile
```

-	Layers:
	-	`sha256:e6f602e424e5beb42cfb6cd4d1244ab724788c17d208014bdbf3acfd6293ffe1`  
		Last Modified: Tue, 14 Jul 2026 01:21:38 GMT  
		Size: 5.6 MB (5588615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8c026664390c46a3ea0df96b7052eaf3bdbec82f03b7c4e3cf4491ac7982180`  
		Last Modified: Tue, 14 Jul 2026 01:21:37 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; arm variant v5

```console
$ docker pull irssi@sha256:259180164ae595df2de0892cfd4d87f610a7cd78ea10fe3d39ab99e8548f3d21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50967277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17d6ec58a215ceb5ddd93ffa50345bdd02b5bf89f1ad6cebc35b18bdc277ea20`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:17:40 GMT
ENV HOME=/home/user
# Tue, 14 Jul 2026 01:17:40 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 14 Jul 2026 01:17:40 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:17:40 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 14 Jul 2026 01:18:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 14 Jul 2026 01:18:32 GMT
WORKDIR /home/user
# Tue, 14 Jul 2026 01:18:32 GMT
USER user
# Tue, 14 Jul 2026 01:18:32 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:9ce68cca63faf1f06434dd1423cb52db0d4251ee3f1838e43e5893fae28f9267`  
		Last Modified: Tue, 14 Jul 2026 00:14:26 GMT  
		Size: 28.0 MB (27954818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30a22039c98dd3bb3c314f99b17b8d8b94c4ce378383e70a7a72799ab5fc2c66`  
		Last Modified: Tue, 14 Jul 2026 01:18:43 GMT  
		Size: 18.3 MB (18298623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d388610189353c94b1e146029a6d3c9f3bb208ef7ce34f45fa19041f1cee3209`  
		Last Modified: Tue, 14 Jul 2026 01:18:42 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3786fcea6bf9c5ec3526c364a07506b82509437469acaa048133fcd1bfd8374`  
		Last Modified: Tue, 14 Jul 2026 01:18:42 GMT  
		Size: 4.7 MB (4710475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:f3f97323ff3c6e3fed26314c4cde06cde96dc89fcf90408e68dcbadde8b68bf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5604953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c816a901b5df5e7ae0f26993f6aab09e481792c6b44eaaed4f7bcb7107a2fab8`

```dockerfile
```

-	Layers:
	-	`sha256:402ca94d41c2b008665793557e5c33a789433f88998b9530502c5645ad7fa193`  
		Last Modified: Tue, 14 Jul 2026 01:18:42 GMT  
		Size: 5.6 MB (5586164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2325bb608405bf5869bb2b2b6f1ca3e01b8869ced5198dadb6cc9aa5eb23c087`  
		Last Modified: Tue, 14 Jul 2026 01:18:42 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; arm variant v7

```console
$ docker pull irssi@sha256:8a09f260e09b4b8e61f51fee37b909dbdc38c2d0263937b8a320ac83d4fd1df8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48692459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc3e099ec9fda22ced8725eb804242eb1913d08c68eb208c090f549698a82bb4`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:18:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:18:36 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 01:18:36 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 01:18:36 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:18:36 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 01:19:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 01:19:16 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 01:19:16 GMT
USER user
# Wed, 24 Jun 2026 01:19:16 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8beb1abd8be4a5a60f09bda3fdf0b401d43b3377d72dce987d68c72a457ec4b4`  
		Last Modified: Wed, 24 Jun 2026 01:19:27 GMT  
		Size: 17.9 MB (17918168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e580be0074573aae7441865a31a6ced2e9274c54ef2ac9216e4c09ad0b85d20`  
		Last Modified: Wed, 24 Jun 2026 01:19:27 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93ccd2320f7239f28e6c946ba53ee54e513b54c8d41bb6d4d0ddce411c36e122`  
		Last Modified: Wed, 24 Jun 2026 01:19:27 GMT  
		Size: 4.6 MB (4559876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:ac622be08227a3f33584b18e45144d81e74b077c07613f1676386ae2bb7b590f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1e84d3b17cccf2c99e5d50ca85e668fa0e8cf458396f3672f1acb7ae40fcd8`

```dockerfile
```

-	Layers:
	-	`sha256:4597b5aeb4ee7985c17d8d010854e0c17c9a99592db4b31774b5ca6077b0bcc2`  
		Last Modified: Wed, 24 Jun 2026 01:19:27 GMT  
		Size: 5.6 MB (5589124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db91dfef5e6ca5acb7d7d5bff398c21f5004653c13ca93ed0d33428edf496555`  
		Last Modified: Wed, 24 Jun 2026 01:19:26 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:1ed2b1fd8165a55f0f3b66fc01676cc2377bd27f5a4daec05682ada53e25881a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53985594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1829fc926362e2518fccc9417820f436596386075a41fee62f49e7fdecd9713`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:20:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:20:56 GMT
ENV HOME=/home/user
# Tue, 14 Jul 2026 01:20:56 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 14 Jul 2026 01:20:56 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:20:56 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 14 Jul 2026 01:21:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 14 Jul 2026 01:21:33 GMT
WORKDIR /home/user
# Tue, 14 Jul 2026 01:21:33 GMT
USER user
# Tue, 14 Jul 2026 01:21:33 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59dcce1e48887eef382548586a68528fa696e383efa53864392f99821f8467eb`  
		Last Modified: Tue, 14 Jul 2026 01:21:44 GMT  
		Size: 19.1 MB (19056330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4ce309480af1f97f3d83b6f28a54c676563b934ad1f1c20ac13bb3976bd72ec`  
		Last Modified: Tue, 14 Jul 2026 01:21:43 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceec76b0c9220b2ef37957b6189fd01f9f9bf083624a597bb02bbd1117a3bbc0`  
		Last Modified: Tue, 14 Jul 2026 01:21:43 GMT  
		Size: 4.8 MB (4782199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:fd7d5a087f8a12fd45c95c0fd51c2e60e7efb9a5d05bd9995f61e9b239171687
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5613924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12846cd02143d088581443ec6b896170e1e3a04a3f2a43aa45a7bf735ba6f746`

```dockerfile
```

-	Layers:
	-	`sha256:45872d82cb29778eab16875c5bf411deae3ca53f881c263d9397d4bb1120ef2f`  
		Last Modified: Tue, 14 Jul 2026 01:21:44 GMT  
		Size: 5.6 MB (5595091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:60450bc490ee1b114f97eed02aa233dc339b2a37e6f545df25ba1893af6e6bcc`  
		Last Modified: Tue, 14 Jul 2026 01:21:43 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; 386

```console
$ docker pull irssi@sha256:c79731a3d86e3b4ea9b139a38cbc9b7dd7785a3439e19ec99968fe674e0c80b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54920600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09f471eb47009cbea5d5517ab651a05fb8d2909f4d37f01817c4a4d8137f6ae1`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:16:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:16:32 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 01:16:32 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 01:16:32 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:16:32 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 01:17:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 01:17:11 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 01:17:11 GMT
USER user
# Wed, 24 Jun 2026 01:17:11 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f0a7b85bdc61e23fe4edf5328983889a4532c723a3c16bb1fb82811d7a665cf`  
		Last Modified: Wed, 24 Jun 2026 01:17:21 GMT  
		Size: 18.7 MB (18747119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44a78a7db65f5c7fc7371bc85c4255e57ec66965b1a4cb140aed86c62e78a105`  
		Last Modified: Wed, 24 Jun 2026 01:17:20 GMT  
		Size: 3.3 KB (3333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34d40e5193a5d57b8bff4c86cd09514888722d43de9efdbf111bb058b5801c3f`  
		Last Modified: Wed, 24 Jun 2026 01:17:20 GMT  
		Size: 4.9 MB (4868906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:bff8cb3b55487ea4ddd01494c23d9b4815ee25a8aa86429229dcbe1adc62c35e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1efee0c5993099bc0e33cf0da5d8ee1e949c050c0c3a3c2aa5de94af9651deb9`

```dockerfile
```

-	Layers:
	-	`sha256:adaf948308b73fc9351880d5e96094161c3f59aff6505402f72cfb268be73122`  
		Last Modified: Wed, 24 Jun 2026 01:17:20 GMT  
		Size: 5.6 MB (5584676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea52efff25848c2f2ecfb75a082d6c51653b4114bf3dcd00cecfa5705e0eb1b2`  
		Last Modified: Wed, 24 Jun 2026 01:17:20 GMT  
		Size: 18.6 KB (18593 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; ppc64le

```console
$ docker pull irssi@sha256:8497783ffb752c673b40bac6e26969894f93c9ce17069bf7daec9883d5197bd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58252491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26c2f1613306f8e796733529cec601d355d48a9ce4faa7fb56902a35abf6c5ba`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:25:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:25:16 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 01:25:16 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 01:25:16 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:25:16 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 01:27:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 01:27:13 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 01:27:13 GMT
USER user
# Wed, 24 Jun 2026 01:27:13 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1000292e2d94490eb5ee5b15dced71b72de57eadcc0bc162536bacd41dade55`  
		Last Modified: Wed, 24 Jun 2026 01:27:34 GMT  
		Size: 19.5 MB (19543975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679bc2aa3b1163339819bfc7defba6c9a247cc115fcfa314ae44155a3b6c6706`  
		Last Modified: Wed, 24 Jun 2026 01:27:33 GMT  
		Size: 3.3 KB (3336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86f03b14f3056fdd8d161cf7ca10ac58974d0e6639e5806904e2a62016885335`  
		Last Modified: Wed, 24 Jun 2026 01:27:33 GMT  
		Size: 5.1 MB (5098760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:dde4452acc23542a3c46c8f4c300ec075686efa667b5500ae990b2f8d687877a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8e9782f2c6a668a51e112046a6cd09cc4bfba6949387fc673f3b997df0d99d6`

```dockerfile
```

-	Layers:
	-	`sha256:c0ecf4e906a56239646c3a7b4a46934d68b7e699bd32ce49e9416592dc6270e1`  
		Last Modified: Wed, 24 Jun 2026 01:27:33 GMT  
		Size: 5.6 MB (5595584 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a8b0b20edb7219de658a8ba9d5fb396c88c91b1642bc33032eb1b27bdca339d`  
		Last Modified: Wed, 24 Jun 2026 01:27:33 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; riscv64

```console
$ docker pull irssi@sha256:56b7a30dfa04eaa948916ce8cf668897b81c3c2055ccfbe70cd33dbde35c8d09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51710193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a00cf966669bfa5d2372939f36da61b54bca6367242c440ac669129f92c0741`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 20:44:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 20:44:03 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 20:44:03 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 20:44:03 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 20:44:03 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 20:50:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 20:50:50 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 20:50:50 GMT
USER user
# Wed, 24 Jun 2026 20:50:50 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3f4aedbdd8327225623c766d0c77fe9c5b424b6794cb6206fa2fda4f8947d40`  
		Last Modified: Wed, 24 Jun 2026 20:52:45 GMT  
		Size: 18.6 MB (18563062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad4233f2f6372d1a9fbca680ac9d693cf890853b0e809e5281907c0c12f61847`  
		Last Modified: Wed, 24 Jun 2026 20:52:41 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3931864be5ccbc4edf8d6460040fbf7cd4f2589e83e1bd3ea297640cf36c9bf4`  
		Last Modified: Wed, 24 Jun 2026 20:52:42 GMT  
		Size: 4.9 MB (4861389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:17b615bdadbf90c95cf7f9bbe93bb5d2a66874c4da980ac469177ff223de7039
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5598579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9c283324ad22a4f4b7f61f88d50f8432b1d864b021f0870429f17af6623a537`

```dockerfile
```

-	Layers:
	-	`sha256:0fcb0b279db79ecc85fbadcb0dfaf937db4d65064afbe9d18e687721bf58962f`  
		Last Modified: Wed, 24 Jun 2026 20:52:43 GMT  
		Size: 5.6 MB (5579856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc84877d49c52cc39ef8b73c05f555a4f34a7ec6080eb5c8dbe6a0e13360b6f8`  
		Last Modified: Wed, 24 Jun 2026 20:52:41 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; s390x

```console
$ docker pull irssi@sha256:32bf5f073f62d4043be0d906aef4675beb8081c29134244be56b434d347be677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54538238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:766dace219bf7735cbd74a21a948702cc85a3087448b8757d7e4da663822bbf9`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:18:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:18:07 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 01:18:07 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 01:18:07 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:18:07 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 01:18:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 01:18:47 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 01:18:47 GMT
USER user
# Wed, 24 Jun 2026 01:18:47 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a48bebcdb184f28922d9a474ab4af51b5adc15a1d39bc3538b11e2d2d332ca8a`  
		Last Modified: Wed, 24 Jun 2026 01:19:04 GMT  
		Size: 19.8 MB (19776551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:667be9254fd49c8ed6ce64d9061dddbdcbec5e530b056331e49f3548d2fc5f00`  
		Last Modified: Wed, 24 Jun 2026 01:19:03 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e44896948d5e8e045a19e6868723be737fa4f373c81881b0a48754fe48f78832`  
		Last Modified: Wed, 24 Jun 2026 01:19:04 GMT  
		Size: 4.9 MB (4906945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:9b1878c6f6bed51ce74efda68de885513f95a26ba5e5a1d3b895ae8696491a42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:076a7fe1529b6d6738e0939baaffa5803028b524584cf72df98a7428aa18b45e`

```dockerfile
```

-	Layers:
	-	`sha256:9781b17a837f6d930dd660afe6866bcec44d8c1b91f2c0867b9560adec98952c`  
		Last Modified: Wed, 24 Jun 2026 01:19:04 GMT  
		Size: 5.6 MB (5589458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49d6078493e9d9a50e97f2595be062a24ef08334063e2178a74983af7c3711f8`  
		Last Modified: Wed, 24 Jun 2026 01:19:03 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1.4.5-alpine`

```console
$ docker pull irssi@sha256:c65b1f7f4fd1943ddc6209937f2f5b00a80298b224032f50e475267a7c3c86c5
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
$ docker pull irssi@sha256:ee97c76564b57e4bb7e9095822fc55b75297ea61cb745181d626152385c4600e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20725683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:004acb4b5256aa50ff297f7fe6c7b2e17fb73ed7d050f72c66c1d05cf5beb121`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:46:14 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:46:14 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:46:14 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:46:14 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:46:14 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:46:27 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:46:27 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:46:27 GMT
USER user
# Mon, 22 Jun 2026 19:46:27 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f1e94f1984d1a34781222d067c9e0fb4246ed50ba11ac34de4f8546f4e2485`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 10.8 MB (10817260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abd8ebfd85bd55d38847eb7338e5e45eb39412dfab6fc7f745757724d626fd08`  
		Last Modified: Mon, 22 Jun 2026 19:46:34 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a28df43b22dfc13f2366edbda7491c5d8fbdfa40ee29cefdc6d4e9bc7c4fa74e`  
		Last Modified: Mon, 22 Jun 2026 19:46:34 GMT  
		Size: 6.1 MB (6063016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:520d0b373d64902a539d204abd3a42f4c7b273132959ae3590994f6d2dcf8e75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1307392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef5a09b1ad68a809735a39bcd0a8fddfc609a134767d3364ae7df9d8fd58b296`

```dockerfile
```

-	Layers:
	-	`sha256:5acaec97be559a688326f497f478dbdb6e4915d006b76c4b53e8bdd64088536a`  
		Last Modified: Mon, 22 Jun 2026 19:46:34 GMT  
		Size: 1.3 MB (1289892 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7af272cbe9b3c649aee4fadbdb5505dd378ef44316d06299aad532db0f1c5cf4`  
		Last Modified: Mon, 22 Jun 2026 19:46:34 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine` - linux; arm variant v6

```console
$ docker pull irssi@sha256:0e3aa1699cea3307fe17198c9d1cb8fb606f07392b9ee525d46dd49235f9043b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19470670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca66492574e94e99685d079fbfebf446df2347a5c072b0fc173cdaed678b068b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:46:01 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:46:01 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:46:01 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:46:01 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:46:01 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:46:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:46:17 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:46:17 GMT
USER user
# Mon, 22 Jun 2026 19:46:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82defeaa7caa2c7d4266000dda4c830bea74f161848ccd918a9d75c9c85b18e3`  
		Last Modified: Mon, 22 Jun 2026 19:46:23 GMT  
		Size: 10.0 MB (10025025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7063e8d3be6cd1169a61752e1d98a649d42f3c0931936a2d787fddcdebcdfe79`  
		Last Modified: Mon, 22 Jun 2026 19:46:23 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:977d3156c4ca4aae124c90d37aec9ee6375975089e18395cef1bc87aa6d6ffc4`  
		Last Modified: Mon, 22 Jun 2026 19:46:23 GMT  
		Size: 5.9 MB (5892065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:d3bfc6587b61a29b57468e9f85dfe1f0185277328cce7eba62a7a0fd9807b1a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 KB (17423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ceef14e9dd6f7c90a99f80faaba2298c95552c1b00a056bff999d5659f141a`

```dockerfile
```

-	Layers:
	-	`sha256:d3172774ae94b48c3226b7e5176879db7e72a4d4d97ef5c1afcaa5b6820b2aac`  
		Last Modified: Mon, 22 Jun 2026 19:46:23 GMT  
		Size: 17.4 KB (17423 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine` - linux; arm variant v7

```console
$ docker pull irssi@sha256:c6346492ffddac8ad99270069266d14602d3b16426778772b73406545faec005
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18765246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b90939a86a350a9919fa3e8972b151397d7b54b03ee21435ee544bbf677a0f09`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:54:46 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:54:46 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:54:46 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:54:46 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:54:46 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:55:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:55:05 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:55:05 GMT
USER user
# Mon, 22 Jun 2026 19:55:05 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ea6ba6c89e64b810b05f4345c90018d99187b4908ba7c678fb2da59ad298063`  
		Last Modified: Mon, 22 Jun 2026 19:55:13 GMT  
		Size: 9.9 MB (9858991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73405b9e5926e564109dbcc12631ae70b008dae146e7574c6d6d9942e4a808cf`  
		Last Modified: Mon, 22 Jun 2026 19:55:12 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4db8da01a044ba53423d803b4956366017b1e0857313b152eeb27ec164280d`  
		Last Modified: Mon, 22 Jun 2026 19:55:13 GMT  
		Size: 5.6 MB (5643416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:465fdca29637831598f18eb6b247ab253e3198e3dd41df98a04ecf910d7499f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1309934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4fabaced20896c96987546a9f128e97a46f75331be1f133a9ee80bf5ee699d6`

```dockerfile
```

-	Layers:
	-	`sha256:83c2f3976ccc4b3f7141e2000c6b6ff5368d5afee6ce2302d029033297cd996a`  
		Last Modified: Mon, 22 Jun 2026 19:55:12 GMT  
		Size: 1.3 MB (1292300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e9f8dde6c52979c4e2eaf369d9a5677dc407347f63fe392c1c609c8efc15ae9`  
		Last Modified: Mon, 22 Jun 2026 19:55:12 GMT  
		Size: 17.6 KB (17634 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:9dc603beb4a07d393530d95086db6dddc1a1534d7d09a221a326b0bba478f895
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20869826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a734a9b36fa9c8fafec921fed6ef5a7913568dfa78db72a7c40c353190ffdb5`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:47:01 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:47:02 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:47:02 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:47:02 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:47:02 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:47:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:47:13 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:47:13 GMT
USER user
# Mon, 22 Jun 2026 19:47:13 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a1314d0c4d705abd2003b834ff222929aadee219573406905b1ebdbcb2fd0e5`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 10.8 MB (10751011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b51ac442374423225d78f343355d2d1c4916b10252075e88ca9413f5e1431ef`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859b41dac8613012dcbc45b580ab5d15c02974c28e2033d81a371533dbbc0b2f`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 5.9 MB (5935970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:2a6f14a09840b9202c0cbc299b854b79f25cded499de1d99f9663655e47c68a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1307027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b15c812595b215a1aeb63653f112b73ec5a48ba4b63fddf376c00305bb6c0efb`

```dockerfile
```

-	Layers:
	-	`sha256:3de740e24bda3370e066e00f280a3ca5156edc7f363250326e7ca0c5100051d8`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 1.3 MB (1289346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ff8fa68c15d34a1c878b54527440ce7ab0b9ceb6a9d42e821cff31d2e91afad`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 17.7 KB (17681 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine` - linux; 386

```console
$ docker pull irssi@sha256:bff44ff5f28c28096901bee2b6a903a831bd237248e35f57bd5b6320cda08bf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20163548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57e40dae22529a380af2f2d1dd3100c569877d7ba9c4b1051e64df9e52c88e87`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:46:11 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:46:11 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:46:11 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:46:11 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:46:11 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:46:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:46:28 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:46:28 GMT
USER user
# Mon, 22 Jun 2026 19:46:28 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1630aba8794abec3af226b1736b6b62797443e3c4b03af5bf02dc67b2bf22a7`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 10.4 MB (10351196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:004e325c3306131ecbe3ef3ed32a950855cf6b711aad5296a4b6936c462f7a44`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1525ce92cde60047ef81b57e8b939c9ee067189240d2aeb62bbca9c118800fe6`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 6.1 MB (6143379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:2ae352e0f4ddcfa3cbcae809a0abe748c999bffed183bf538d88fe9d59d60143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1307291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a425fa3680d2c2984c776bc56be97be44fbbe15ceadb3b71c923e02708aa04e`

```dockerfile
```

-	Layers:
	-	`sha256:2b7236139a451e3522be5b28e2e5f07dd6135f951dc3a7cfbc38053c6fa2c51e`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 1.3 MB (1289847 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ccbf6ecb50a4018210ae5bed44dbd5932652fbb0f487e2f755fb24006dfef35`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 17.4 KB (17444 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine` - linux; ppc64le

```console
$ docker pull irssi@sha256:36bd8f1c85c53276584b31ecbd4fc8f2290a8f8aaa4758e0e4070328367a8cfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21215327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53fd75983e50e468a396b0ec585adc7593d3b79eccd40d17ea6c8616aa3dedcc`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:52:59 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:52:59 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:52:59 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:52:59 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:52:59 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:53:20 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:53:20 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:53:20 GMT
USER user
# Mon, 22 Jun 2026 19:53:20 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80ca1493cc77dfa723bed221766a958a4b6713fd5cbe7323645d82dc22d9eb14`  
		Last Modified: Mon, 22 Jun 2026 19:53:37 GMT  
		Size: 11.0 MB (11039519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efadd163d0d496a592324d86ce4b1b0d7ba3a6162be35fb2ca9ad34b1e410eee`  
		Last Modified: Mon, 22 Jun 2026 19:53:36 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ce0cfe8881f2132dda000a5eddabb0994150b10fda5290e0fef5771c18393b`  
		Last Modified: Mon, 22 Jun 2026 19:53:37 GMT  
		Size: 6.4 MB (6362524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:09a17eb571ca45406713a69853c7bdc6e2a2a892ceb44c9ad5f9ea60fb7504ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:686b4270754ba7801cc14fdd9985f93980a39b76edcac849924bc4d4b990b87e`

```dockerfile
```

-	Layers:
	-	`sha256:b93f61a4f08643a442eba6357584db91c0f8d3c58b0e57c1924c796ccfd7ad1d`  
		Last Modified: Mon, 22 Jun 2026 19:53:37 GMT  
		Size: 1.3 MB (1289299 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a082bb19995633572b61251e374f85a1aaaf35209d26bee8c85bc2bf6d9d6ca`  
		Last Modified: Mon, 22 Jun 2026 19:53:37 GMT  
		Size: 17.6 KB (17572 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine` - linux; riscv64

```console
$ docker pull irssi@sha256:94b120e9b15f5c81091f116f5e6e5f913a8cb318cdd41eb40e22b64946655446
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19885865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d505a244fb87c10f37d80d6b2572243b3a37083e45fed0a3c289a67e5a552da`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 21:02:34 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 21:02:34 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 21:02:34 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 21:02:34 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 21:02:34 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 21:06:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 21:06:24 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 21:06:24 GMT
USER user
# Mon, 22 Jun 2026 21:06:24 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f730c254988ca0282bd88a0dcf04e16c9110ea8c311d08a54205ee9be1e6349`  
		Last Modified: Mon, 22 Jun 2026 21:07:19 GMT  
		Size: 10.2 MB (10248751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0aa85364964156e8bc871a2b1ce7a6933a1fb636df5f26523b8daa2fd22ff43`  
		Last Modified: Mon, 22 Jun 2026 21:07:17 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc698d4c330b08f0e16fda8ef2f08dcf5515555054cd15f1447916f6417e4106`  
		Last Modified: Mon, 22 Jun 2026 21:07:18 GMT  
		Size: 6.1 MB (6062890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:8f5a83eb51e324734511ddb6e539ac5592b33c8e846124ff9e3c40fadcfbbb4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f12b8cab76048437250e6c425a2f3e877c4cc4a3cad1570a297d6a6046808cc`

```dockerfile
```

-	Layers:
	-	`sha256:383a1dc595cc7be04c0215692e726d7491f9d3b5ef5bf6dcb0fd78dc44a7a7ba`  
		Last Modified: Mon, 22 Jun 2026 21:07:17 GMT  
		Size: 1.3 MB (1289295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87e3cbaf2d3118cdea5dde1c769d0dc21a5996273ebdd10aa133379f8200b8df`  
		Last Modified: Mon, 22 Jun 2026 21:07:16 GMT  
		Size: 17.6 KB (17572 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine` - linux; s390x

```console
$ docker pull irssi@sha256:7cd75ba79bf4f34ba81e21b2dec21292ca05c7f0a85b05f67240ac33d7bc7223
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21277654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e78906991e5560a0f8a9186b95ca902141ec50d3deb79cc9a88c94ca37086294`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:46:33 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:46:33 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:46:33 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:46:33 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:46:33 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:46:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:46:51 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:46:51 GMT
USER user
# Mon, 22 Jun 2026 19:46:51 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5f1a3b639533b39fabdf06fbaa13cdd7e421c8fd97094d306c225ebd72c5dfa`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 11.4 MB (11366931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37d1df320466adeacca73c2859b76a6a11fb284e7554134179f7ae320cef5242`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a6bf8cb2affcc570d30e427ec2de43d4fb2ee3d73f5b53ba0ee5223aa9041a`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 6.2 MB (6202491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:b4f20c9d1f6fada462a04d45b3ac9c1d3dca1ec5bf5a7b042b6bf10081dd8479
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:799fcdc0bd8c80bc76c68d24e51158cbe0f050aca2015fd3b12abaaec557f3d1`

```dockerfile
```

-	Layers:
	-	`sha256:6190de7dcf0e7771b7bfb8b673b4a53f4d3f23eddd402d10f69b485603bf4810`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 1.3 MB (1289241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eea269e2b2b1765c13e969996451fe624a1526ff4e72c19ab4301e5631c796ce`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1.4.5-alpine3.23`

```console
$ docker pull irssi@sha256:c65b1f7f4fd1943ddc6209937f2f5b00a80298b224032f50e475267a7c3c86c5
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
$ docker pull irssi@sha256:ee97c76564b57e4bb7e9095822fc55b75297ea61cb745181d626152385c4600e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20725683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:004acb4b5256aa50ff297f7fe6c7b2e17fb73ed7d050f72c66c1d05cf5beb121`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:46:14 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:46:14 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:46:14 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:46:14 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:46:14 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:46:27 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:46:27 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:46:27 GMT
USER user
# Mon, 22 Jun 2026 19:46:27 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f1e94f1984d1a34781222d067c9e0fb4246ed50ba11ac34de4f8546f4e2485`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 10.8 MB (10817260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abd8ebfd85bd55d38847eb7338e5e45eb39412dfab6fc7f745757724d626fd08`  
		Last Modified: Mon, 22 Jun 2026 19:46:34 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a28df43b22dfc13f2366edbda7491c5d8fbdfa40ee29cefdc6d4e9bc7c4fa74e`  
		Last Modified: Mon, 22 Jun 2026 19:46:34 GMT  
		Size: 6.1 MB (6063016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:520d0b373d64902a539d204abd3a42f4c7b273132959ae3590994f6d2dcf8e75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1307392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef5a09b1ad68a809735a39bcd0a8fddfc609a134767d3364ae7df9d8fd58b296`

```dockerfile
```

-	Layers:
	-	`sha256:5acaec97be559a688326f497f478dbdb6e4915d006b76c4b53e8bdd64088536a`  
		Last Modified: Mon, 22 Jun 2026 19:46:34 GMT  
		Size: 1.3 MB (1289892 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7af272cbe9b3c649aee4fadbdb5505dd378ef44316d06299aad532db0f1c5cf4`  
		Last Modified: Mon, 22 Jun 2026 19:46:34 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine3.23` - linux; arm variant v6

```console
$ docker pull irssi@sha256:0e3aa1699cea3307fe17198c9d1cb8fb606f07392b9ee525d46dd49235f9043b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19470670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca66492574e94e99685d079fbfebf446df2347a5c072b0fc173cdaed678b068b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:46:01 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:46:01 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:46:01 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:46:01 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:46:01 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:46:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:46:17 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:46:17 GMT
USER user
# Mon, 22 Jun 2026 19:46:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82defeaa7caa2c7d4266000dda4c830bea74f161848ccd918a9d75c9c85b18e3`  
		Last Modified: Mon, 22 Jun 2026 19:46:23 GMT  
		Size: 10.0 MB (10025025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7063e8d3be6cd1169a61752e1d98a649d42f3c0931936a2d787fddcdebcdfe79`  
		Last Modified: Mon, 22 Jun 2026 19:46:23 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:977d3156c4ca4aae124c90d37aec9ee6375975089e18395cef1bc87aa6d6ffc4`  
		Last Modified: Mon, 22 Jun 2026 19:46:23 GMT  
		Size: 5.9 MB (5892065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:d3bfc6587b61a29b57468e9f85dfe1f0185277328cce7eba62a7a0fd9807b1a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 KB (17423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ceef14e9dd6f7c90a99f80faaba2298c95552c1b00a056bff999d5659f141a`

```dockerfile
```

-	Layers:
	-	`sha256:d3172774ae94b48c3226b7e5176879db7e72a4d4d97ef5c1afcaa5b6820b2aac`  
		Last Modified: Mon, 22 Jun 2026 19:46:23 GMT  
		Size: 17.4 KB (17423 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine3.23` - linux; arm variant v7

```console
$ docker pull irssi@sha256:c6346492ffddac8ad99270069266d14602d3b16426778772b73406545faec005
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18765246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b90939a86a350a9919fa3e8972b151397d7b54b03ee21435ee544bbf677a0f09`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:54:46 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:54:46 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:54:46 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:54:46 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:54:46 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:55:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:55:05 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:55:05 GMT
USER user
# Mon, 22 Jun 2026 19:55:05 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ea6ba6c89e64b810b05f4345c90018d99187b4908ba7c678fb2da59ad298063`  
		Last Modified: Mon, 22 Jun 2026 19:55:13 GMT  
		Size: 9.9 MB (9858991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73405b9e5926e564109dbcc12631ae70b008dae146e7574c6d6d9942e4a808cf`  
		Last Modified: Mon, 22 Jun 2026 19:55:12 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4db8da01a044ba53423d803b4956366017b1e0857313b152eeb27ec164280d`  
		Last Modified: Mon, 22 Jun 2026 19:55:13 GMT  
		Size: 5.6 MB (5643416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:465fdca29637831598f18eb6b247ab253e3198e3dd41df98a04ecf910d7499f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1309934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4fabaced20896c96987546a9f128e97a46f75331be1f133a9ee80bf5ee699d6`

```dockerfile
```

-	Layers:
	-	`sha256:83c2f3976ccc4b3f7141e2000c6b6ff5368d5afee6ce2302d029033297cd996a`  
		Last Modified: Mon, 22 Jun 2026 19:55:12 GMT  
		Size: 1.3 MB (1292300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e9f8dde6c52979c4e2eaf369d9a5677dc407347f63fe392c1c609c8efc15ae9`  
		Last Modified: Mon, 22 Jun 2026 19:55:12 GMT  
		Size: 17.6 KB (17634 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:9dc603beb4a07d393530d95086db6dddc1a1534d7d09a221a326b0bba478f895
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20869826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a734a9b36fa9c8fafec921fed6ef5a7913568dfa78db72a7c40c353190ffdb5`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:47:01 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:47:02 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:47:02 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:47:02 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:47:02 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:47:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:47:13 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:47:13 GMT
USER user
# Mon, 22 Jun 2026 19:47:13 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a1314d0c4d705abd2003b834ff222929aadee219573406905b1ebdbcb2fd0e5`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 10.8 MB (10751011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b51ac442374423225d78f343355d2d1c4916b10252075e88ca9413f5e1431ef`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859b41dac8613012dcbc45b580ab5d15c02974c28e2033d81a371533dbbc0b2f`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 5.9 MB (5935970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:2a6f14a09840b9202c0cbc299b854b79f25cded499de1d99f9663655e47c68a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1307027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b15c812595b215a1aeb63653f112b73ec5a48ba4b63fddf376c00305bb6c0efb`

```dockerfile
```

-	Layers:
	-	`sha256:3de740e24bda3370e066e00f280a3ca5156edc7f363250326e7ca0c5100051d8`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 1.3 MB (1289346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ff8fa68c15d34a1c878b54527440ce7ab0b9ceb6a9d42e821cff31d2e91afad`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 17.7 KB (17681 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine3.23` - linux; 386

```console
$ docker pull irssi@sha256:bff44ff5f28c28096901bee2b6a903a831bd237248e35f57bd5b6320cda08bf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20163548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57e40dae22529a380af2f2d1dd3100c569877d7ba9c4b1051e64df9e52c88e87`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:46:11 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:46:11 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:46:11 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:46:11 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:46:11 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:46:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:46:28 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:46:28 GMT
USER user
# Mon, 22 Jun 2026 19:46:28 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1630aba8794abec3af226b1736b6b62797443e3c4b03af5bf02dc67b2bf22a7`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 10.4 MB (10351196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:004e325c3306131ecbe3ef3ed32a950855cf6b711aad5296a4b6936c462f7a44`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1525ce92cde60047ef81b57e8b939c9ee067189240d2aeb62bbca9c118800fe6`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 6.1 MB (6143379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:2ae352e0f4ddcfa3cbcae809a0abe748c999bffed183bf538d88fe9d59d60143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1307291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a425fa3680d2c2984c776bc56be97be44fbbe15ceadb3b71c923e02708aa04e`

```dockerfile
```

-	Layers:
	-	`sha256:2b7236139a451e3522be5b28e2e5f07dd6135f951dc3a7cfbc38053c6fa2c51e`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 1.3 MB (1289847 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ccbf6ecb50a4018210ae5bed44dbd5932652fbb0f487e2f755fb24006dfef35`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 17.4 KB (17444 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine3.23` - linux; ppc64le

```console
$ docker pull irssi@sha256:36bd8f1c85c53276584b31ecbd4fc8f2290a8f8aaa4758e0e4070328367a8cfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21215327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53fd75983e50e468a396b0ec585adc7593d3b79eccd40d17ea6c8616aa3dedcc`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:52:59 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:52:59 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:52:59 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:52:59 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:52:59 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:53:20 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:53:20 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:53:20 GMT
USER user
# Mon, 22 Jun 2026 19:53:20 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80ca1493cc77dfa723bed221766a958a4b6713fd5cbe7323645d82dc22d9eb14`  
		Last Modified: Mon, 22 Jun 2026 19:53:37 GMT  
		Size: 11.0 MB (11039519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efadd163d0d496a592324d86ce4b1b0d7ba3a6162be35fb2ca9ad34b1e410eee`  
		Last Modified: Mon, 22 Jun 2026 19:53:36 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ce0cfe8881f2132dda000a5eddabb0994150b10fda5290e0fef5771c18393b`  
		Last Modified: Mon, 22 Jun 2026 19:53:37 GMT  
		Size: 6.4 MB (6362524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:09a17eb571ca45406713a69853c7bdc6e2a2a892ceb44c9ad5f9ea60fb7504ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:686b4270754ba7801cc14fdd9985f93980a39b76edcac849924bc4d4b990b87e`

```dockerfile
```

-	Layers:
	-	`sha256:b93f61a4f08643a442eba6357584db91c0f8d3c58b0e57c1924c796ccfd7ad1d`  
		Last Modified: Mon, 22 Jun 2026 19:53:37 GMT  
		Size: 1.3 MB (1289299 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a082bb19995633572b61251e374f85a1aaaf35209d26bee8c85bc2bf6d9d6ca`  
		Last Modified: Mon, 22 Jun 2026 19:53:37 GMT  
		Size: 17.6 KB (17572 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine3.23` - linux; riscv64

```console
$ docker pull irssi@sha256:94b120e9b15f5c81091f116f5e6e5f913a8cb318cdd41eb40e22b64946655446
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19885865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d505a244fb87c10f37d80d6b2572243b3a37083e45fed0a3c289a67e5a552da`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 21:02:34 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 21:02:34 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 21:02:34 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 21:02:34 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 21:02:34 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 21:06:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 21:06:24 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 21:06:24 GMT
USER user
# Mon, 22 Jun 2026 21:06:24 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f730c254988ca0282bd88a0dcf04e16c9110ea8c311d08a54205ee9be1e6349`  
		Last Modified: Mon, 22 Jun 2026 21:07:19 GMT  
		Size: 10.2 MB (10248751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0aa85364964156e8bc871a2b1ce7a6933a1fb636df5f26523b8daa2fd22ff43`  
		Last Modified: Mon, 22 Jun 2026 21:07:17 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc698d4c330b08f0e16fda8ef2f08dcf5515555054cd15f1447916f6417e4106`  
		Last Modified: Mon, 22 Jun 2026 21:07:18 GMT  
		Size: 6.1 MB (6062890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:8f5a83eb51e324734511ddb6e539ac5592b33c8e846124ff9e3c40fadcfbbb4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f12b8cab76048437250e6c425a2f3e877c4cc4a3cad1570a297d6a6046808cc`

```dockerfile
```

-	Layers:
	-	`sha256:383a1dc595cc7be04c0215692e726d7491f9d3b5ef5bf6dcb0fd78dc44a7a7ba`  
		Last Modified: Mon, 22 Jun 2026 21:07:17 GMT  
		Size: 1.3 MB (1289295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87e3cbaf2d3118cdea5dde1c769d0dc21a5996273ebdd10aa133379f8200b8df`  
		Last Modified: Mon, 22 Jun 2026 21:07:16 GMT  
		Size: 17.6 KB (17572 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine3.23` - linux; s390x

```console
$ docker pull irssi@sha256:7cd75ba79bf4f34ba81e21b2dec21292ca05c7f0a85b05f67240ac33d7bc7223
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21277654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e78906991e5560a0f8a9186b95ca902141ec50d3deb79cc9a88c94ca37086294`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:46:33 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:46:33 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:46:33 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:46:33 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:46:33 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:46:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:46:51 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:46:51 GMT
USER user
# Mon, 22 Jun 2026 19:46:51 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5f1a3b639533b39fabdf06fbaa13cdd7e421c8fd97094d306c225ebd72c5dfa`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 11.4 MB (11366931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37d1df320466adeacca73c2859b76a6a11fb284e7554134179f7ae320cef5242`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a6bf8cb2affcc570d30e427ec2de43d4fb2ee3d73f5b53ba0ee5223aa9041a`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 6.2 MB (6202491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:b4f20c9d1f6fada462a04d45b3ac9c1d3dca1ec5bf5a7b042b6bf10081dd8479
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:799fcdc0bd8c80bc76c68d24e51158cbe0f050aca2015fd3b12abaaec557f3d1`

```dockerfile
```

-	Layers:
	-	`sha256:6190de7dcf0e7771b7bfb8b673b4a53f4d3f23eddd402d10f69b485603bf4810`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 1.3 MB (1289241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eea269e2b2b1765c13e969996451fe624a1526ff4e72c19ab4301e5631c796ce`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1.4.5-trixie`

```console
$ docker pull irssi@sha256:f9037f53b568fe2c95645211d5e9bf0f0e8cbdd12b458bc10ad859fcd6672a34
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
$ docker pull irssi@sha256:9ba9e845867082176deae7619fb98c157a549c5b043c72e2d600d867c75d82ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53881321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a1355ecfb7107f457bc0c9969931516a7d7710384a68f6d5dd359ff88b9f498`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:20:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:20:53 GMT
ENV HOME=/home/user
# Tue, 14 Jul 2026 01:20:53 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 14 Jul 2026 01:20:53 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:20:53 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 14 Jul 2026 01:21:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 14 Jul 2026 01:21:27 GMT
WORKDIR /home/user
# Tue, 14 Jul 2026 01:21:27 GMT
USER user
# Tue, 14 Jul 2026 01:21:27 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f088d1a16398080a6b9f9f3ffeed8a5420cd8011906ecfbb7a244d400ea8d2aa`  
		Last Modified: Tue, 14 Jul 2026 01:21:38 GMT  
		Size: 19.2 MB (19229414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:530ea975359f311dc64bea2c93b2e4a2c7121373c75b9961607e83cb8d1b8ae9`  
		Last Modified: Tue, 14 Jul 2026 01:21:37 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afcf61da58173ba0fec0dcbb893ec48916ef590ae395c8d58c466efd318e0a36`  
		Last Modified: Tue, 14 Jul 2026 01:21:38 GMT  
		Size: 4.9 MB (4867638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:57707cc9ab9eff0768c709572f36beeef2aadb4583a054355e8441526f8de290
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8898995073111fa4bb5568038d1f035ef6ba1523df9c03684f5f16d20c1f798`

```dockerfile
```

-	Layers:
	-	`sha256:e6f602e424e5beb42cfb6cd4d1244ab724788c17d208014bdbf3acfd6293ffe1`  
		Last Modified: Tue, 14 Jul 2026 01:21:38 GMT  
		Size: 5.6 MB (5588615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8c026664390c46a3ea0df96b7052eaf3bdbec82f03b7c4e3cf4491ac7982180`  
		Last Modified: Tue, 14 Jul 2026 01:21:37 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; arm variant v5

```console
$ docker pull irssi@sha256:259180164ae595df2de0892cfd4d87f610a7cd78ea10fe3d39ab99e8548f3d21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50967277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17d6ec58a215ceb5ddd93ffa50345bdd02b5bf89f1ad6cebc35b18bdc277ea20`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:17:40 GMT
ENV HOME=/home/user
# Tue, 14 Jul 2026 01:17:40 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 14 Jul 2026 01:17:40 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:17:40 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 14 Jul 2026 01:18:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 14 Jul 2026 01:18:32 GMT
WORKDIR /home/user
# Tue, 14 Jul 2026 01:18:32 GMT
USER user
# Tue, 14 Jul 2026 01:18:32 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:9ce68cca63faf1f06434dd1423cb52db0d4251ee3f1838e43e5893fae28f9267`  
		Last Modified: Tue, 14 Jul 2026 00:14:26 GMT  
		Size: 28.0 MB (27954818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30a22039c98dd3bb3c314f99b17b8d8b94c4ce378383e70a7a72799ab5fc2c66`  
		Last Modified: Tue, 14 Jul 2026 01:18:43 GMT  
		Size: 18.3 MB (18298623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d388610189353c94b1e146029a6d3c9f3bb208ef7ce34f45fa19041f1cee3209`  
		Last Modified: Tue, 14 Jul 2026 01:18:42 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3786fcea6bf9c5ec3526c364a07506b82509437469acaa048133fcd1bfd8374`  
		Last Modified: Tue, 14 Jul 2026 01:18:42 GMT  
		Size: 4.7 MB (4710475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:f3f97323ff3c6e3fed26314c4cde06cde96dc89fcf90408e68dcbadde8b68bf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5604953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c816a901b5df5e7ae0f26993f6aab09e481792c6b44eaaed4f7bcb7107a2fab8`

```dockerfile
```

-	Layers:
	-	`sha256:402ca94d41c2b008665793557e5c33a789433f88998b9530502c5645ad7fa193`  
		Last Modified: Tue, 14 Jul 2026 01:18:42 GMT  
		Size: 5.6 MB (5586164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2325bb608405bf5869bb2b2b6f1ca3e01b8869ced5198dadb6cc9aa5eb23c087`  
		Last Modified: Tue, 14 Jul 2026 01:18:42 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; arm variant v7

```console
$ docker pull irssi@sha256:8a09f260e09b4b8e61f51fee37b909dbdc38c2d0263937b8a320ac83d4fd1df8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48692459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc3e099ec9fda22ced8725eb804242eb1913d08c68eb208c090f549698a82bb4`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:18:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:18:36 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 01:18:36 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 01:18:36 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:18:36 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 01:19:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 01:19:16 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 01:19:16 GMT
USER user
# Wed, 24 Jun 2026 01:19:16 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8beb1abd8be4a5a60f09bda3fdf0b401d43b3377d72dce987d68c72a457ec4b4`  
		Last Modified: Wed, 24 Jun 2026 01:19:27 GMT  
		Size: 17.9 MB (17918168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e580be0074573aae7441865a31a6ced2e9274c54ef2ac9216e4c09ad0b85d20`  
		Last Modified: Wed, 24 Jun 2026 01:19:27 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93ccd2320f7239f28e6c946ba53ee54e513b54c8d41bb6d4d0ddce411c36e122`  
		Last Modified: Wed, 24 Jun 2026 01:19:27 GMT  
		Size: 4.6 MB (4559876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:ac622be08227a3f33584b18e45144d81e74b077c07613f1676386ae2bb7b590f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1e84d3b17cccf2c99e5d50ca85e668fa0e8cf458396f3672f1acb7ae40fcd8`

```dockerfile
```

-	Layers:
	-	`sha256:4597b5aeb4ee7985c17d8d010854e0c17c9a99592db4b31774b5ca6077b0bcc2`  
		Last Modified: Wed, 24 Jun 2026 01:19:27 GMT  
		Size: 5.6 MB (5589124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db91dfef5e6ca5acb7d7d5bff398c21f5004653c13ca93ed0d33428edf496555`  
		Last Modified: Wed, 24 Jun 2026 01:19:26 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:561395fe06676721509b6290e57a97726fa7839e17e404119f7fd81019beb12d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53989884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:999db7a06a940a111ba1c7fdca8a85915b4d72cf7c02b9ae3d8627220bedab4e`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:20:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:20:25 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 01:20:25 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 01:20:25 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:20:25 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 01:21:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 01:21:04 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 01:21:04 GMT
USER user
# Wed, 24 Jun 2026 01:21:04 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:294a283bb72393ae2fbf5f801a0cff8adde691f54cff36a4e90c81b5310e765d`  
		Last Modified: Wed, 24 Jun 2026 01:21:15 GMT  
		Size: 19.1 MB (19055871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d073fd71c18b9761e900a0e5e71724b8da519841571083dc198208d5a9fc9af1`  
		Last Modified: Wed, 24 Jun 2026 01:21:14 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3c4d9e1b8aa365ea311ad8dd47691bf0bf39894f063bb3d595908fd5d4dbc5b`  
		Last Modified: Wed, 24 Jun 2026 01:21:15 GMT  
		Size: 4.8 MB (4782101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:64005db4f517d3053ba6b6df65039385a2371403dab68d462925d4f66739bd6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5613862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4a524b64793b3782644f5c8dc2c47efe6262407f24c090a7fac2559f153866e`

```dockerfile
```

-	Layers:
	-	`sha256:4d4346bd8895d74d904ee79eb726ca18bbea8803cffd532ab5dfdec3e9449559`  
		Last Modified: Wed, 24 Jun 2026 01:21:15 GMT  
		Size: 5.6 MB (5595029 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f8f5778e72e3d4f25dac5a69a467cca46cfbbb06b4f4ca0860165de3c5f4f23`  
		Last Modified: Wed, 24 Jun 2026 01:21:14 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; 386

```console
$ docker pull irssi@sha256:c79731a3d86e3b4ea9b139a38cbc9b7dd7785a3439e19ec99968fe674e0c80b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54920600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09f471eb47009cbea5d5517ab651a05fb8d2909f4d37f01817c4a4d8137f6ae1`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:16:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:16:32 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 01:16:32 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 01:16:32 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:16:32 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 01:17:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 01:17:11 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 01:17:11 GMT
USER user
# Wed, 24 Jun 2026 01:17:11 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f0a7b85bdc61e23fe4edf5328983889a4532c723a3c16bb1fb82811d7a665cf`  
		Last Modified: Wed, 24 Jun 2026 01:17:21 GMT  
		Size: 18.7 MB (18747119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44a78a7db65f5c7fc7371bc85c4255e57ec66965b1a4cb140aed86c62e78a105`  
		Last Modified: Wed, 24 Jun 2026 01:17:20 GMT  
		Size: 3.3 KB (3333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34d40e5193a5d57b8bff4c86cd09514888722d43de9efdbf111bb058b5801c3f`  
		Last Modified: Wed, 24 Jun 2026 01:17:20 GMT  
		Size: 4.9 MB (4868906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:bff8cb3b55487ea4ddd01494c23d9b4815ee25a8aa86429229dcbe1adc62c35e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1efee0c5993099bc0e33cf0da5d8ee1e949c050c0c3a3c2aa5de94af9651deb9`

```dockerfile
```

-	Layers:
	-	`sha256:adaf948308b73fc9351880d5e96094161c3f59aff6505402f72cfb268be73122`  
		Last Modified: Wed, 24 Jun 2026 01:17:20 GMT  
		Size: 5.6 MB (5584676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea52efff25848c2f2ecfb75a082d6c51653b4114bf3dcd00cecfa5705e0eb1b2`  
		Last Modified: Wed, 24 Jun 2026 01:17:20 GMT  
		Size: 18.6 KB (18593 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; ppc64le

```console
$ docker pull irssi@sha256:8497783ffb752c673b40bac6e26969894f93c9ce17069bf7daec9883d5197bd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58252491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26c2f1613306f8e796733529cec601d355d48a9ce4faa7fb56902a35abf6c5ba`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:25:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:25:16 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 01:25:16 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 01:25:16 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:25:16 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 01:27:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 01:27:13 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 01:27:13 GMT
USER user
# Wed, 24 Jun 2026 01:27:13 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1000292e2d94490eb5ee5b15dced71b72de57eadcc0bc162536bacd41dade55`  
		Last Modified: Wed, 24 Jun 2026 01:27:34 GMT  
		Size: 19.5 MB (19543975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679bc2aa3b1163339819bfc7defba6c9a247cc115fcfa314ae44155a3b6c6706`  
		Last Modified: Wed, 24 Jun 2026 01:27:33 GMT  
		Size: 3.3 KB (3336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86f03b14f3056fdd8d161cf7ca10ac58974d0e6639e5806904e2a62016885335`  
		Last Modified: Wed, 24 Jun 2026 01:27:33 GMT  
		Size: 5.1 MB (5098760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:dde4452acc23542a3c46c8f4c300ec075686efa667b5500ae990b2f8d687877a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8e9782f2c6a668a51e112046a6cd09cc4bfba6949387fc673f3b997df0d99d6`

```dockerfile
```

-	Layers:
	-	`sha256:c0ecf4e906a56239646c3a7b4a46934d68b7e699bd32ce49e9416592dc6270e1`  
		Last Modified: Wed, 24 Jun 2026 01:27:33 GMT  
		Size: 5.6 MB (5595584 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a8b0b20edb7219de658a8ba9d5fb396c88c91b1642bc33032eb1b27bdca339d`  
		Last Modified: Wed, 24 Jun 2026 01:27:33 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; riscv64

```console
$ docker pull irssi@sha256:56b7a30dfa04eaa948916ce8cf668897b81c3c2055ccfbe70cd33dbde35c8d09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51710193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a00cf966669bfa5d2372939f36da61b54bca6367242c440ac669129f92c0741`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 20:44:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 20:44:03 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 20:44:03 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 20:44:03 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 20:44:03 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 20:50:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 20:50:50 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 20:50:50 GMT
USER user
# Wed, 24 Jun 2026 20:50:50 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3f4aedbdd8327225623c766d0c77fe9c5b424b6794cb6206fa2fda4f8947d40`  
		Last Modified: Wed, 24 Jun 2026 20:52:45 GMT  
		Size: 18.6 MB (18563062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad4233f2f6372d1a9fbca680ac9d693cf890853b0e809e5281907c0c12f61847`  
		Last Modified: Wed, 24 Jun 2026 20:52:41 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3931864be5ccbc4edf8d6460040fbf7cd4f2589e83e1bd3ea297640cf36c9bf4`  
		Last Modified: Wed, 24 Jun 2026 20:52:42 GMT  
		Size: 4.9 MB (4861389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:17b615bdadbf90c95cf7f9bbe93bb5d2a66874c4da980ac469177ff223de7039
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5598579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9c283324ad22a4f4b7f61f88d50f8432b1d864b021f0870429f17af6623a537`

```dockerfile
```

-	Layers:
	-	`sha256:0fcb0b279db79ecc85fbadcb0dfaf937db4d65064afbe9d18e687721bf58962f`  
		Last Modified: Wed, 24 Jun 2026 20:52:43 GMT  
		Size: 5.6 MB (5579856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc84877d49c52cc39ef8b73c05f555a4f34a7ec6080eb5c8dbe6a0e13360b6f8`  
		Last Modified: Wed, 24 Jun 2026 20:52:41 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; s390x

```console
$ docker pull irssi@sha256:32bf5f073f62d4043be0d906aef4675beb8081c29134244be56b434d347be677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54538238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:766dace219bf7735cbd74a21a948702cc85a3087448b8757d7e4da663822bbf9`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:18:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:18:07 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 01:18:07 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 01:18:07 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:18:07 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 01:18:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 01:18:47 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 01:18:47 GMT
USER user
# Wed, 24 Jun 2026 01:18:47 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a48bebcdb184f28922d9a474ab4af51b5adc15a1d39bc3538b11e2d2d332ca8a`  
		Last Modified: Wed, 24 Jun 2026 01:19:04 GMT  
		Size: 19.8 MB (19776551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:667be9254fd49c8ed6ce64d9061dddbdcbec5e530b056331e49f3548d2fc5f00`  
		Last Modified: Wed, 24 Jun 2026 01:19:03 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e44896948d5e8e045a19e6868723be737fa4f373c81881b0a48754fe48f78832`  
		Last Modified: Wed, 24 Jun 2026 01:19:04 GMT  
		Size: 4.9 MB (4906945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:9b1878c6f6bed51ce74efda68de885513f95a26ba5e5a1d3b895ae8696491a42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:076a7fe1529b6d6738e0939baaffa5803028b524584cf72df98a7428aa18b45e`

```dockerfile
```

-	Layers:
	-	`sha256:9781b17a837f6d930dd660afe6866bcec44d8c1b91f2c0867b9560adec98952c`  
		Last Modified: Wed, 24 Jun 2026 01:19:04 GMT  
		Size: 5.6 MB (5589458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49d6078493e9d9a50e97f2595be062a24ef08334063e2178a74983af7c3711f8`  
		Last Modified: Wed, 24 Jun 2026 01:19:03 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:alpine`

```console
$ docker pull irssi@sha256:c65b1f7f4fd1943ddc6209937f2f5b00a80298b224032f50e475267a7c3c86c5
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
$ docker pull irssi@sha256:ee97c76564b57e4bb7e9095822fc55b75297ea61cb745181d626152385c4600e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20725683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:004acb4b5256aa50ff297f7fe6c7b2e17fb73ed7d050f72c66c1d05cf5beb121`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:46:14 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:46:14 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:46:14 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:46:14 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:46:14 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:46:27 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:46:27 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:46:27 GMT
USER user
# Mon, 22 Jun 2026 19:46:27 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f1e94f1984d1a34781222d067c9e0fb4246ed50ba11ac34de4f8546f4e2485`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 10.8 MB (10817260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abd8ebfd85bd55d38847eb7338e5e45eb39412dfab6fc7f745757724d626fd08`  
		Last Modified: Mon, 22 Jun 2026 19:46:34 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a28df43b22dfc13f2366edbda7491c5d8fbdfa40ee29cefdc6d4e9bc7c4fa74e`  
		Last Modified: Mon, 22 Jun 2026 19:46:34 GMT  
		Size: 6.1 MB (6063016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:520d0b373d64902a539d204abd3a42f4c7b273132959ae3590994f6d2dcf8e75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1307392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef5a09b1ad68a809735a39bcd0a8fddfc609a134767d3364ae7df9d8fd58b296`

```dockerfile
```

-	Layers:
	-	`sha256:5acaec97be559a688326f497f478dbdb6e4915d006b76c4b53e8bdd64088536a`  
		Last Modified: Mon, 22 Jun 2026 19:46:34 GMT  
		Size: 1.3 MB (1289892 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7af272cbe9b3c649aee4fadbdb5505dd378ef44316d06299aad532db0f1c5cf4`  
		Last Modified: Mon, 22 Jun 2026 19:46:34 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine` - linux; arm variant v6

```console
$ docker pull irssi@sha256:0e3aa1699cea3307fe17198c9d1cb8fb606f07392b9ee525d46dd49235f9043b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19470670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca66492574e94e99685d079fbfebf446df2347a5c072b0fc173cdaed678b068b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:46:01 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:46:01 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:46:01 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:46:01 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:46:01 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:46:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:46:17 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:46:17 GMT
USER user
# Mon, 22 Jun 2026 19:46:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82defeaa7caa2c7d4266000dda4c830bea74f161848ccd918a9d75c9c85b18e3`  
		Last Modified: Mon, 22 Jun 2026 19:46:23 GMT  
		Size: 10.0 MB (10025025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7063e8d3be6cd1169a61752e1d98a649d42f3c0931936a2d787fddcdebcdfe79`  
		Last Modified: Mon, 22 Jun 2026 19:46:23 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:977d3156c4ca4aae124c90d37aec9ee6375975089e18395cef1bc87aa6d6ffc4`  
		Last Modified: Mon, 22 Jun 2026 19:46:23 GMT  
		Size: 5.9 MB (5892065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:d3bfc6587b61a29b57468e9f85dfe1f0185277328cce7eba62a7a0fd9807b1a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 KB (17423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ceef14e9dd6f7c90a99f80faaba2298c95552c1b00a056bff999d5659f141a`

```dockerfile
```

-	Layers:
	-	`sha256:d3172774ae94b48c3226b7e5176879db7e72a4d4d97ef5c1afcaa5b6820b2aac`  
		Last Modified: Mon, 22 Jun 2026 19:46:23 GMT  
		Size: 17.4 KB (17423 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine` - linux; arm variant v7

```console
$ docker pull irssi@sha256:c6346492ffddac8ad99270069266d14602d3b16426778772b73406545faec005
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18765246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b90939a86a350a9919fa3e8972b151397d7b54b03ee21435ee544bbf677a0f09`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:54:46 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:54:46 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:54:46 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:54:46 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:54:46 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:55:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:55:05 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:55:05 GMT
USER user
# Mon, 22 Jun 2026 19:55:05 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ea6ba6c89e64b810b05f4345c90018d99187b4908ba7c678fb2da59ad298063`  
		Last Modified: Mon, 22 Jun 2026 19:55:13 GMT  
		Size: 9.9 MB (9858991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73405b9e5926e564109dbcc12631ae70b008dae146e7574c6d6d9942e4a808cf`  
		Last Modified: Mon, 22 Jun 2026 19:55:12 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4db8da01a044ba53423d803b4956366017b1e0857313b152eeb27ec164280d`  
		Last Modified: Mon, 22 Jun 2026 19:55:13 GMT  
		Size: 5.6 MB (5643416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:465fdca29637831598f18eb6b247ab253e3198e3dd41df98a04ecf910d7499f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1309934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4fabaced20896c96987546a9f128e97a46f75331be1f133a9ee80bf5ee699d6`

```dockerfile
```

-	Layers:
	-	`sha256:83c2f3976ccc4b3f7141e2000c6b6ff5368d5afee6ce2302d029033297cd996a`  
		Last Modified: Mon, 22 Jun 2026 19:55:12 GMT  
		Size: 1.3 MB (1292300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e9f8dde6c52979c4e2eaf369d9a5677dc407347f63fe392c1c609c8efc15ae9`  
		Last Modified: Mon, 22 Jun 2026 19:55:12 GMT  
		Size: 17.6 KB (17634 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:9dc603beb4a07d393530d95086db6dddc1a1534d7d09a221a326b0bba478f895
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20869826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a734a9b36fa9c8fafec921fed6ef5a7913568dfa78db72a7c40c353190ffdb5`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:47:01 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:47:02 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:47:02 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:47:02 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:47:02 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:47:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:47:13 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:47:13 GMT
USER user
# Mon, 22 Jun 2026 19:47:13 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a1314d0c4d705abd2003b834ff222929aadee219573406905b1ebdbcb2fd0e5`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 10.8 MB (10751011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b51ac442374423225d78f343355d2d1c4916b10252075e88ca9413f5e1431ef`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859b41dac8613012dcbc45b580ab5d15c02974c28e2033d81a371533dbbc0b2f`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 5.9 MB (5935970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:2a6f14a09840b9202c0cbc299b854b79f25cded499de1d99f9663655e47c68a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1307027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b15c812595b215a1aeb63653f112b73ec5a48ba4b63fddf376c00305bb6c0efb`

```dockerfile
```

-	Layers:
	-	`sha256:3de740e24bda3370e066e00f280a3ca5156edc7f363250326e7ca0c5100051d8`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 1.3 MB (1289346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ff8fa68c15d34a1c878b54527440ce7ab0b9ceb6a9d42e821cff31d2e91afad`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 17.7 KB (17681 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine` - linux; 386

```console
$ docker pull irssi@sha256:bff44ff5f28c28096901bee2b6a903a831bd237248e35f57bd5b6320cda08bf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20163548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57e40dae22529a380af2f2d1dd3100c569877d7ba9c4b1051e64df9e52c88e87`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:46:11 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:46:11 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:46:11 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:46:11 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:46:11 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:46:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:46:28 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:46:28 GMT
USER user
# Mon, 22 Jun 2026 19:46:28 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1630aba8794abec3af226b1736b6b62797443e3c4b03af5bf02dc67b2bf22a7`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 10.4 MB (10351196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:004e325c3306131ecbe3ef3ed32a950855cf6b711aad5296a4b6936c462f7a44`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1525ce92cde60047ef81b57e8b939c9ee067189240d2aeb62bbca9c118800fe6`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 6.1 MB (6143379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:2ae352e0f4ddcfa3cbcae809a0abe748c999bffed183bf538d88fe9d59d60143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1307291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a425fa3680d2c2984c776bc56be97be44fbbe15ceadb3b71c923e02708aa04e`

```dockerfile
```

-	Layers:
	-	`sha256:2b7236139a451e3522be5b28e2e5f07dd6135f951dc3a7cfbc38053c6fa2c51e`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 1.3 MB (1289847 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ccbf6ecb50a4018210ae5bed44dbd5932652fbb0f487e2f755fb24006dfef35`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 17.4 KB (17444 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine` - linux; ppc64le

```console
$ docker pull irssi@sha256:36bd8f1c85c53276584b31ecbd4fc8f2290a8f8aaa4758e0e4070328367a8cfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21215327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53fd75983e50e468a396b0ec585adc7593d3b79eccd40d17ea6c8616aa3dedcc`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:52:59 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:52:59 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:52:59 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:52:59 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:52:59 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:53:20 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:53:20 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:53:20 GMT
USER user
# Mon, 22 Jun 2026 19:53:20 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80ca1493cc77dfa723bed221766a958a4b6713fd5cbe7323645d82dc22d9eb14`  
		Last Modified: Mon, 22 Jun 2026 19:53:37 GMT  
		Size: 11.0 MB (11039519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efadd163d0d496a592324d86ce4b1b0d7ba3a6162be35fb2ca9ad34b1e410eee`  
		Last Modified: Mon, 22 Jun 2026 19:53:36 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ce0cfe8881f2132dda000a5eddabb0994150b10fda5290e0fef5771c18393b`  
		Last Modified: Mon, 22 Jun 2026 19:53:37 GMT  
		Size: 6.4 MB (6362524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:09a17eb571ca45406713a69853c7bdc6e2a2a892ceb44c9ad5f9ea60fb7504ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:686b4270754ba7801cc14fdd9985f93980a39b76edcac849924bc4d4b990b87e`

```dockerfile
```

-	Layers:
	-	`sha256:b93f61a4f08643a442eba6357584db91c0f8d3c58b0e57c1924c796ccfd7ad1d`  
		Last Modified: Mon, 22 Jun 2026 19:53:37 GMT  
		Size: 1.3 MB (1289299 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a082bb19995633572b61251e374f85a1aaaf35209d26bee8c85bc2bf6d9d6ca`  
		Last Modified: Mon, 22 Jun 2026 19:53:37 GMT  
		Size: 17.6 KB (17572 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine` - linux; riscv64

```console
$ docker pull irssi@sha256:94b120e9b15f5c81091f116f5e6e5f913a8cb318cdd41eb40e22b64946655446
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19885865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d505a244fb87c10f37d80d6b2572243b3a37083e45fed0a3c289a67e5a552da`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 21:02:34 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 21:02:34 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 21:02:34 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 21:02:34 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 21:02:34 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 21:06:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 21:06:24 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 21:06:24 GMT
USER user
# Mon, 22 Jun 2026 21:06:24 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f730c254988ca0282bd88a0dcf04e16c9110ea8c311d08a54205ee9be1e6349`  
		Last Modified: Mon, 22 Jun 2026 21:07:19 GMT  
		Size: 10.2 MB (10248751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0aa85364964156e8bc871a2b1ce7a6933a1fb636df5f26523b8daa2fd22ff43`  
		Last Modified: Mon, 22 Jun 2026 21:07:17 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc698d4c330b08f0e16fda8ef2f08dcf5515555054cd15f1447916f6417e4106`  
		Last Modified: Mon, 22 Jun 2026 21:07:18 GMT  
		Size: 6.1 MB (6062890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:8f5a83eb51e324734511ddb6e539ac5592b33c8e846124ff9e3c40fadcfbbb4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f12b8cab76048437250e6c425a2f3e877c4cc4a3cad1570a297d6a6046808cc`

```dockerfile
```

-	Layers:
	-	`sha256:383a1dc595cc7be04c0215692e726d7491f9d3b5ef5bf6dcb0fd78dc44a7a7ba`  
		Last Modified: Mon, 22 Jun 2026 21:07:17 GMT  
		Size: 1.3 MB (1289295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87e3cbaf2d3118cdea5dde1c769d0dc21a5996273ebdd10aa133379f8200b8df`  
		Last Modified: Mon, 22 Jun 2026 21:07:16 GMT  
		Size: 17.6 KB (17572 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine` - linux; s390x

```console
$ docker pull irssi@sha256:7cd75ba79bf4f34ba81e21b2dec21292ca05c7f0a85b05f67240ac33d7bc7223
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21277654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e78906991e5560a0f8a9186b95ca902141ec50d3deb79cc9a88c94ca37086294`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:46:33 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:46:33 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:46:33 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:46:33 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:46:33 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:46:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:46:51 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:46:51 GMT
USER user
# Mon, 22 Jun 2026 19:46:51 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5f1a3b639533b39fabdf06fbaa13cdd7e421c8fd97094d306c225ebd72c5dfa`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 11.4 MB (11366931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37d1df320466adeacca73c2859b76a6a11fb284e7554134179f7ae320cef5242`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a6bf8cb2affcc570d30e427ec2de43d4fb2ee3d73f5b53ba0ee5223aa9041a`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 6.2 MB (6202491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:b4f20c9d1f6fada462a04d45b3ac9c1d3dca1ec5bf5a7b042b6bf10081dd8479
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:799fcdc0bd8c80bc76c68d24e51158cbe0f050aca2015fd3b12abaaec557f3d1`

```dockerfile
```

-	Layers:
	-	`sha256:6190de7dcf0e7771b7bfb8b673b4a53f4d3f23eddd402d10f69b485603bf4810`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 1.3 MB (1289241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eea269e2b2b1765c13e969996451fe624a1526ff4e72c19ab4301e5631c796ce`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:alpine3.23`

```console
$ docker pull irssi@sha256:c65b1f7f4fd1943ddc6209937f2f5b00a80298b224032f50e475267a7c3c86c5
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
$ docker pull irssi@sha256:ee97c76564b57e4bb7e9095822fc55b75297ea61cb745181d626152385c4600e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20725683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:004acb4b5256aa50ff297f7fe6c7b2e17fb73ed7d050f72c66c1d05cf5beb121`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:46:14 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:46:14 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:46:14 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:46:14 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:46:14 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:46:27 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:46:27 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:46:27 GMT
USER user
# Mon, 22 Jun 2026 19:46:27 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f1e94f1984d1a34781222d067c9e0fb4246ed50ba11ac34de4f8546f4e2485`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 10.8 MB (10817260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abd8ebfd85bd55d38847eb7338e5e45eb39412dfab6fc7f745757724d626fd08`  
		Last Modified: Mon, 22 Jun 2026 19:46:34 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a28df43b22dfc13f2366edbda7491c5d8fbdfa40ee29cefdc6d4e9bc7c4fa74e`  
		Last Modified: Mon, 22 Jun 2026 19:46:34 GMT  
		Size: 6.1 MB (6063016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:520d0b373d64902a539d204abd3a42f4c7b273132959ae3590994f6d2dcf8e75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1307392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef5a09b1ad68a809735a39bcd0a8fddfc609a134767d3364ae7df9d8fd58b296`

```dockerfile
```

-	Layers:
	-	`sha256:5acaec97be559a688326f497f478dbdb6e4915d006b76c4b53e8bdd64088536a`  
		Last Modified: Mon, 22 Jun 2026 19:46:34 GMT  
		Size: 1.3 MB (1289892 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7af272cbe9b3c649aee4fadbdb5505dd378ef44316d06299aad532db0f1c5cf4`  
		Last Modified: Mon, 22 Jun 2026 19:46:34 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine3.23` - linux; arm variant v6

```console
$ docker pull irssi@sha256:0e3aa1699cea3307fe17198c9d1cb8fb606f07392b9ee525d46dd49235f9043b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19470670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca66492574e94e99685d079fbfebf446df2347a5c072b0fc173cdaed678b068b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:46:01 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:46:01 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:46:01 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:46:01 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:46:01 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:46:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:46:17 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:46:17 GMT
USER user
# Mon, 22 Jun 2026 19:46:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82defeaa7caa2c7d4266000dda4c830bea74f161848ccd918a9d75c9c85b18e3`  
		Last Modified: Mon, 22 Jun 2026 19:46:23 GMT  
		Size: 10.0 MB (10025025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7063e8d3be6cd1169a61752e1d98a649d42f3c0931936a2d787fddcdebcdfe79`  
		Last Modified: Mon, 22 Jun 2026 19:46:23 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:977d3156c4ca4aae124c90d37aec9ee6375975089e18395cef1bc87aa6d6ffc4`  
		Last Modified: Mon, 22 Jun 2026 19:46:23 GMT  
		Size: 5.9 MB (5892065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:d3bfc6587b61a29b57468e9f85dfe1f0185277328cce7eba62a7a0fd9807b1a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 KB (17423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ceef14e9dd6f7c90a99f80faaba2298c95552c1b00a056bff999d5659f141a`

```dockerfile
```

-	Layers:
	-	`sha256:d3172774ae94b48c3226b7e5176879db7e72a4d4d97ef5c1afcaa5b6820b2aac`  
		Last Modified: Mon, 22 Jun 2026 19:46:23 GMT  
		Size: 17.4 KB (17423 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine3.23` - linux; arm variant v7

```console
$ docker pull irssi@sha256:c6346492ffddac8ad99270069266d14602d3b16426778772b73406545faec005
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18765246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b90939a86a350a9919fa3e8972b151397d7b54b03ee21435ee544bbf677a0f09`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:54:46 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:54:46 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:54:46 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:54:46 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:54:46 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:55:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:55:05 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:55:05 GMT
USER user
# Mon, 22 Jun 2026 19:55:05 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ea6ba6c89e64b810b05f4345c90018d99187b4908ba7c678fb2da59ad298063`  
		Last Modified: Mon, 22 Jun 2026 19:55:13 GMT  
		Size: 9.9 MB (9858991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73405b9e5926e564109dbcc12631ae70b008dae146e7574c6d6d9942e4a808cf`  
		Last Modified: Mon, 22 Jun 2026 19:55:12 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4db8da01a044ba53423d803b4956366017b1e0857313b152eeb27ec164280d`  
		Last Modified: Mon, 22 Jun 2026 19:55:13 GMT  
		Size: 5.6 MB (5643416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:465fdca29637831598f18eb6b247ab253e3198e3dd41df98a04ecf910d7499f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1309934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4fabaced20896c96987546a9f128e97a46f75331be1f133a9ee80bf5ee699d6`

```dockerfile
```

-	Layers:
	-	`sha256:83c2f3976ccc4b3f7141e2000c6b6ff5368d5afee6ce2302d029033297cd996a`  
		Last Modified: Mon, 22 Jun 2026 19:55:12 GMT  
		Size: 1.3 MB (1292300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e9f8dde6c52979c4e2eaf369d9a5677dc407347f63fe392c1c609c8efc15ae9`  
		Last Modified: Mon, 22 Jun 2026 19:55:12 GMT  
		Size: 17.6 KB (17634 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine3.23` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:9dc603beb4a07d393530d95086db6dddc1a1534d7d09a221a326b0bba478f895
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20869826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a734a9b36fa9c8fafec921fed6ef5a7913568dfa78db72a7c40c353190ffdb5`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:47:01 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:47:02 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:47:02 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:47:02 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:47:02 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:47:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:47:13 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:47:13 GMT
USER user
# Mon, 22 Jun 2026 19:47:13 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a1314d0c4d705abd2003b834ff222929aadee219573406905b1ebdbcb2fd0e5`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 10.8 MB (10751011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b51ac442374423225d78f343355d2d1c4916b10252075e88ca9413f5e1431ef`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859b41dac8613012dcbc45b580ab5d15c02974c28e2033d81a371533dbbc0b2f`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 5.9 MB (5935970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:2a6f14a09840b9202c0cbc299b854b79f25cded499de1d99f9663655e47c68a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1307027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b15c812595b215a1aeb63653f112b73ec5a48ba4b63fddf376c00305bb6c0efb`

```dockerfile
```

-	Layers:
	-	`sha256:3de740e24bda3370e066e00f280a3ca5156edc7f363250326e7ca0c5100051d8`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 1.3 MB (1289346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ff8fa68c15d34a1c878b54527440ce7ab0b9ceb6a9d42e821cff31d2e91afad`  
		Last Modified: Mon, 22 Jun 2026 19:47:20 GMT  
		Size: 17.7 KB (17681 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine3.23` - linux; 386

```console
$ docker pull irssi@sha256:bff44ff5f28c28096901bee2b6a903a831bd237248e35f57bd5b6320cda08bf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20163548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57e40dae22529a380af2f2d1dd3100c569877d7ba9c4b1051e64df9e52c88e87`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:46:11 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:46:11 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:46:11 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:46:11 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:46:11 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:46:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:46:28 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:46:28 GMT
USER user
# Mon, 22 Jun 2026 19:46:28 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1630aba8794abec3af226b1736b6b62797443e3c4b03af5bf02dc67b2bf22a7`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 10.4 MB (10351196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:004e325c3306131ecbe3ef3ed32a950855cf6b711aad5296a4b6936c462f7a44`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1525ce92cde60047ef81b57e8b939c9ee067189240d2aeb62bbca9c118800fe6`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 6.1 MB (6143379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:2ae352e0f4ddcfa3cbcae809a0abe748c999bffed183bf538d88fe9d59d60143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1307291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a425fa3680d2c2984c776bc56be97be44fbbe15ceadb3b71c923e02708aa04e`

```dockerfile
```

-	Layers:
	-	`sha256:2b7236139a451e3522be5b28e2e5f07dd6135f951dc3a7cfbc38053c6fa2c51e`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 1.3 MB (1289847 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ccbf6ecb50a4018210ae5bed44dbd5932652fbb0f487e2f755fb24006dfef35`  
		Last Modified: Mon, 22 Jun 2026 19:46:35 GMT  
		Size: 17.4 KB (17444 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine3.23` - linux; ppc64le

```console
$ docker pull irssi@sha256:36bd8f1c85c53276584b31ecbd4fc8f2290a8f8aaa4758e0e4070328367a8cfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21215327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53fd75983e50e468a396b0ec585adc7593d3b79eccd40d17ea6c8616aa3dedcc`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:52:59 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:52:59 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:52:59 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:52:59 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:52:59 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:53:20 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:53:20 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:53:20 GMT
USER user
# Mon, 22 Jun 2026 19:53:20 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80ca1493cc77dfa723bed221766a958a4b6713fd5cbe7323645d82dc22d9eb14`  
		Last Modified: Mon, 22 Jun 2026 19:53:37 GMT  
		Size: 11.0 MB (11039519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efadd163d0d496a592324d86ce4b1b0d7ba3a6162be35fb2ca9ad34b1e410eee`  
		Last Modified: Mon, 22 Jun 2026 19:53:36 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ce0cfe8881f2132dda000a5eddabb0994150b10fda5290e0fef5771c18393b`  
		Last Modified: Mon, 22 Jun 2026 19:53:37 GMT  
		Size: 6.4 MB (6362524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:09a17eb571ca45406713a69853c7bdc6e2a2a892ceb44c9ad5f9ea60fb7504ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:686b4270754ba7801cc14fdd9985f93980a39b76edcac849924bc4d4b990b87e`

```dockerfile
```

-	Layers:
	-	`sha256:b93f61a4f08643a442eba6357584db91c0f8d3c58b0e57c1924c796ccfd7ad1d`  
		Last Modified: Mon, 22 Jun 2026 19:53:37 GMT  
		Size: 1.3 MB (1289299 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a082bb19995633572b61251e374f85a1aaaf35209d26bee8c85bc2bf6d9d6ca`  
		Last Modified: Mon, 22 Jun 2026 19:53:37 GMT  
		Size: 17.6 KB (17572 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine3.23` - linux; riscv64

```console
$ docker pull irssi@sha256:94b120e9b15f5c81091f116f5e6e5f913a8cb318cdd41eb40e22b64946655446
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19885865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d505a244fb87c10f37d80d6b2572243b3a37083e45fed0a3c289a67e5a552da`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 21:02:34 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 21:02:34 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 21:02:34 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 21:02:34 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 21:02:34 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 21:06:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 21:06:24 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 21:06:24 GMT
USER user
# Mon, 22 Jun 2026 21:06:24 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f730c254988ca0282bd88a0dcf04e16c9110ea8c311d08a54205ee9be1e6349`  
		Last Modified: Mon, 22 Jun 2026 21:07:19 GMT  
		Size: 10.2 MB (10248751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0aa85364964156e8bc871a2b1ce7a6933a1fb636df5f26523b8daa2fd22ff43`  
		Last Modified: Mon, 22 Jun 2026 21:07:17 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc698d4c330b08f0e16fda8ef2f08dcf5515555054cd15f1447916f6417e4106`  
		Last Modified: Mon, 22 Jun 2026 21:07:18 GMT  
		Size: 6.1 MB (6062890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:8f5a83eb51e324734511ddb6e539ac5592b33c8e846124ff9e3c40fadcfbbb4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f12b8cab76048437250e6c425a2f3e877c4cc4a3cad1570a297d6a6046808cc`

```dockerfile
```

-	Layers:
	-	`sha256:383a1dc595cc7be04c0215692e726d7491f9d3b5ef5bf6dcb0fd78dc44a7a7ba`  
		Last Modified: Mon, 22 Jun 2026 21:07:17 GMT  
		Size: 1.3 MB (1289295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87e3cbaf2d3118cdea5dde1c769d0dc21a5996273ebdd10aa133379f8200b8df`  
		Last Modified: Mon, 22 Jun 2026 21:07:16 GMT  
		Size: 17.6 KB (17572 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine3.23` - linux; s390x

```console
$ docker pull irssi@sha256:7cd75ba79bf4f34ba81e21b2dec21292ca05c7f0a85b05f67240ac33d7bc7223
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21277654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e78906991e5560a0f8a9186b95ca902141ec50d3deb79cc9a88c94ca37086294`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:46:33 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Mon, 22 Jun 2026 19:46:33 GMT
ENV HOME=/home/user
# Mon, 22 Jun 2026 19:46:33 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Mon, 22 Jun 2026 19:46:33 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:46:33 GMT
ENV IRSSI_VERSION=1.4.5
# Mon, 22 Jun 2026 19:46:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Mon, 22 Jun 2026 19:46:51 GMT
WORKDIR /home/user
# Mon, 22 Jun 2026 19:46:51 GMT
USER user
# Mon, 22 Jun 2026 19:46:51 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5f1a3b639533b39fabdf06fbaa13cdd7e421c8fd97094d306c225ebd72c5dfa`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 11.4 MB (11366931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37d1df320466adeacca73c2859b76a6a11fb284e7554134179f7ae320cef5242`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a6bf8cb2affcc570d30e427ec2de43d4fb2ee3d73f5b53ba0ee5223aa9041a`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 6.2 MB (6202491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:b4f20c9d1f6fada462a04d45b3ac9c1d3dca1ec5bf5a7b042b6bf10081dd8479
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:799fcdc0bd8c80bc76c68d24e51158cbe0f050aca2015fd3b12abaaec557f3d1`

```dockerfile
```

-	Layers:
	-	`sha256:6190de7dcf0e7771b7bfb8b673b4a53f4d3f23eddd402d10f69b485603bf4810`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 1.3 MB (1289241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eea269e2b2b1765c13e969996451fe624a1526ff4e72c19ab4301e5631c796ce`  
		Last Modified: Mon, 22 Jun 2026 19:47:03 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:latest`

```console
$ docker pull irssi@sha256:f9037f53b568fe2c95645211d5e9bf0f0e8cbdd12b458bc10ad859fcd6672a34
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
$ docker pull irssi@sha256:9ba9e845867082176deae7619fb98c157a549c5b043c72e2d600d867c75d82ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53881321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a1355ecfb7107f457bc0c9969931516a7d7710384a68f6d5dd359ff88b9f498`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:20:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:20:53 GMT
ENV HOME=/home/user
# Tue, 14 Jul 2026 01:20:53 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 14 Jul 2026 01:20:53 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:20:53 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 14 Jul 2026 01:21:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 14 Jul 2026 01:21:27 GMT
WORKDIR /home/user
# Tue, 14 Jul 2026 01:21:27 GMT
USER user
# Tue, 14 Jul 2026 01:21:27 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f088d1a16398080a6b9f9f3ffeed8a5420cd8011906ecfbb7a244d400ea8d2aa`  
		Last Modified: Tue, 14 Jul 2026 01:21:38 GMT  
		Size: 19.2 MB (19229414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:530ea975359f311dc64bea2c93b2e4a2c7121373c75b9961607e83cb8d1b8ae9`  
		Last Modified: Tue, 14 Jul 2026 01:21:37 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afcf61da58173ba0fec0dcbb893ec48916ef590ae395c8d58c466efd318e0a36`  
		Last Modified: Tue, 14 Jul 2026 01:21:38 GMT  
		Size: 4.9 MB (4867638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:57707cc9ab9eff0768c709572f36beeef2aadb4583a054355e8441526f8de290
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8898995073111fa4bb5568038d1f035ef6ba1523df9c03684f5f16d20c1f798`

```dockerfile
```

-	Layers:
	-	`sha256:e6f602e424e5beb42cfb6cd4d1244ab724788c17d208014bdbf3acfd6293ffe1`  
		Last Modified: Tue, 14 Jul 2026 01:21:38 GMT  
		Size: 5.6 MB (5588615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8c026664390c46a3ea0df96b7052eaf3bdbec82f03b7c4e3cf4491ac7982180`  
		Last Modified: Tue, 14 Jul 2026 01:21:37 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; arm variant v5

```console
$ docker pull irssi@sha256:259180164ae595df2de0892cfd4d87f610a7cd78ea10fe3d39ab99e8548f3d21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50967277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17d6ec58a215ceb5ddd93ffa50345bdd02b5bf89f1ad6cebc35b18bdc277ea20`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:17:40 GMT
ENV HOME=/home/user
# Tue, 14 Jul 2026 01:17:40 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 14 Jul 2026 01:17:40 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:17:40 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 14 Jul 2026 01:18:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 14 Jul 2026 01:18:32 GMT
WORKDIR /home/user
# Tue, 14 Jul 2026 01:18:32 GMT
USER user
# Tue, 14 Jul 2026 01:18:32 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:9ce68cca63faf1f06434dd1423cb52db0d4251ee3f1838e43e5893fae28f9267`  
		Last Modified: Tue, 14 Jul 2026 00:14:26 GMT  
		Size: 28.0 MB (27954818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30a22039c98dd3bb3c314f99b17b8d8b94c4ce378383e70a7a72799ab5fc2c66`  
		Last Modified: Tue, 14 Jul 2026 01:18:43 GMT  
		Size: 18.3 MB (18298623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d388610189353c94b1e146029a6d3c9f3bb208ef7ce34f45fa19041f1cee3209`  
		Last Modified: Tue, 14 Jul 2026 01:18:42 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3786fcea6bf9c5ec3526c364a07506b82509437469acaa048133fcd1bfd8374`  
		Last Modified: Tue, 14 Jul 2026 01:18:42 GMT  
		Size: 4.7 MB (4710475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:f3f97323ff3c6e3fed26314c4cde06cde96dc89fcf90408e68dcbadde8b68bf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5604953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c816a901b5df5e7ae0f26993f6aab09e481792c6b44eaaed4f7bcb7107a2fab8`

```dockerfile
```

-	Layers:
	-	`sha256:402ca94d41c2b008665793557e5c33a789433f88998b9530502c5645ad7fa193`  
		Last Modified: Tue, 14 Jul 2026 01:18:42 GMT  
		Size: 5.6 MB (5586164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2325bb608405bf5869bb2b2b6f1ca3e01b8869ced5198dadb6cc9aa5eb23c087`  
		Last Modified: Tue, 14 Jul 2026 01:18:42 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; arm variant v7

```console
$ docker pull irssi@sha256:8a09f260e09b4b8e61f51fee37b909dbdc38c2d0263937b8a320ac83d4fd1df8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48692459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc3e099ec9fda22ced8725eb804242eb1913d08c68eb208c090f549698a82bb4`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:18:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:18:36 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 01:18:36 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 01:18:36 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:18:36 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 01:19:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 01:19:16 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 01:19:16 GMT
USER user
# Wed, 24 Jun 2026 01:19:16 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8beb1abd8be4a5a60f09bda3fdf0b401d43b3377d72dce987d68c72a457ec4b4`  
		Last Modified: Wed, 24 Jun 2026 01:19:27 GMT  
		Size: 17.9 MB (17918168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e580be0074573aae7441865a31a6ced2e9274c54ef2ac9216e4c09ad0b85d20`  
		Last Modified: Wed, 24 Jun 2026 01:19:27 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93ccd2320f7239f28e6c946ba53ee54e513b54c8d41bb6d4d0ddce411c36e122`  
		Last Modified: Wed, 24 Jun 2026 01:19:27 GMT  
		Size: 4.6 MB (4559876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:ac622be08227a3f33584b18e45144d81e74b077c07613f1676386ae2bb7b590f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1e84d3b17cccf2c99e5d50ca85e668fa0e8cf458396f3672f1acb7ae40fcd8`

```dockerfile
```

-	Layers:
	-	`sha256:4597b5aeb4ee7985c17d8d010854e0c17c9a99592db4b31774b5ca6077b0bcc2`  
		Last Modified: Wed, 24 Jun 2026 01:19:27 GMT  
		Size: 5.6 MB (5589124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db91dfef5e6ca5acb7d7d5bff398c21f5004653c13ca93ed0d33428edf496555`  
		Last Modified: Wed, 24 Jun 2026 01:19:26 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:561395fe06676721509b6290e57a97726fa7839e17e404119f7fd81019beb12d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53989884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:999db7a06a940a111ba1c7fdca8a85915b4d72cf7c02b9ae3d8627220bedab4e`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:20:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:20:25 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 01:20:25 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 01:20:25 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:20:25 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 01:21:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 01:21:04 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 01:21:04 GMT
USER user
# Wed, 24 Jun 2026 01:21:04 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:294a283bb72393ae2fbf5f801a0cff8adde691f54cff36a4e90c81b5310e765d`  
		Last Modified: Wed, 24 Jun 2026 01:21:15 GMT  
		Size: 19.1 MB (19055871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d073fd71c18b9761e900a0e5e71724b8da519841571083dc198208d5a9fc9af1`  
		Last Modified: Wed, 24 Jun 2026 01:21:14 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3c4d9e1b8aa365ea311ad8dd47691bf0bf39894f063bb3d595908fd5d4dbc5b`  
		Last Modified: Wed, 24 Jun 2026 01:21:15 GMT  
		Size: 4.8 MB (4782101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:64005db4f517d3053ba6b6df65039385a2371403dab68d462925d4f66739bd6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5613862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4a524b64793b3782644f5c8dc2c47efe6262407f24c090a7fac2559f153866e`

```dockerfile
```

-	Layers:
	-	`sha256:4d4346bd8895d74d904ee79eb726ca18bbea8803cffd532ab5dfdec3e9449559`  
		Last Modified: Wed, 24 Jun 2026 01:21:15 GMT  
		Size: 5.6 MB (5595029 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f8f5778e72e3d4f25dac5a69a467cca46cfbbb06b4f4ca0860165de3c5f4f23`  
		Last Modified: Wed, 24 Jun 2026 01:21:14 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; 386

```console
$ docker pull irssi@sha256:c79731a3d86e3b4ea9b139a38cbc9b7dd7785a3439e19ec99968fe674e0c80b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54920600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09f471eb47009cbea5d5517ab651a05fb8d2909f4d37f01817c4a4d8137f6ae1`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:16:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:16:32 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 01:16:32 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 01:16:32 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:16:32 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 01:17:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 01:17:11 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 01:17:11 GMT
USER user
# Wed, 24 Jun 2026 01:17:11 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f0a7b85bdc61e23fe4edf5328983889a4532c723a3c16bb1fb82811d7a665cf`  
		Last Modified: Wed, 24 Jun 2026 01:17:21 GMT  
		Size: 18.7 MB (18747119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44a78a7db65f5c7fc7371bc85c4255e57ec66965b1a4cb140aed86c62e78a105`  
		Last Modified: Wed, 24 Jun 2026 01:17:20 GMT  
		Size: 3.3 KB (3333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34d40e5193a5d57b8bff4c86cd09514888722d43de9efdbf111bb058b5801c3f`  
		Last Modified: Wed, 24 Jun 2026 01:17:20 GMT  
		Size: 4.9 MB (4868906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:bff8cb3b55487ea4ddd01494c23d9b4815ee25a8aa86429229dcbe1adc62c35e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1efee0c5993099bc0e33cf0da5d8ee1e949c050c0c3a3c2aa5de94af9651deb9`

```dockerfile
```

-	Layers:
	-	`sha256:adaf948308b73fc9351880d5e96094161c3f59aff6505402f72cfb268be73122`  
		Last Modified: Wed, 24 Jun 2026 01:17:20 GMT  
		Size: 5.6 MB (5584676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea52efff25848c2f2ecfb75a082d6c51653b4114bf3dcd00cecfa5705e0eb1b2`  
		Last Modified: Wed, 24 Jun 2026 01:17:20 GMT  
		Size: 18.6 KB (18593 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; ppc64le

```console
$ docker pull irssi@sha256:8497783ffb752c673b40bac6e26969894f93c9ce17069bf7daec9883d5197bd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58252491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26c2f1613306f8e796733529cec601d355d48a9ce4faa7fb56902a35abf6c5ba`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:25:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:25:16 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 01:25:16 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 01:25:16 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:25:16 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 01:27:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 01:27:13 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 01:27:13 GMT
USER user
# Wed, 24 Jun 2026 01:27:13 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1000292e2d94490eb5ee5b15dced71b72de57eadcc0bc162536bacd41dade55`  
		Last Modified: Wed, 24 Jun 2026 01:27:34 GMT  
		Size: 19.5 MB (19543975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679bc2aa3b1163339819bfc7defba6c9a247cc115fcfa314ae44155a3b6c6706`  
		Last Modified: Wed, 24 Jun 2026 01:27:33 GMT  
		Size: 3.3 KB (3336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86f03b14f3056fdd8d161cf7ca10ac58974d0e6639e5806904e2a62016885335`  
		Last Modified: Wed, 24 Jun 2026 01:27:33 GMT  
		Size: 5.1 MB (5098760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:dde4452acc23542a3c46c8f4c300ec075686efa667b5500ae990b2f8d687877a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8e9782f2c6a668a51e112046a6cd09cc4bfba6949387fc673f3b997df0d99d6`

```dockerfile
```

-	Layers:
	-	`sha256:c0ecf4e906a56239646c3a7b4a46934d68b7e699bd32ce49e9416592dc6270e1`  
		Last Modified: Wed, 24 Jun 2026 01:27:33 GMT  
		Size: 5.6 MB (5595584 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a8b0b20edb7219de658a8ba9d5fb396c88c91b1642bc33032eb1b27bdca339d`  
		Last Modified: Wed, 24 Jun 2026 01:27:33 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; riscv64

```console
$ docker pull irssi@sha256:56b7a30dfa04eaa948916ce8cf668897b81c3c2055ccfbe70cd33dbde35c8d09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51710193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a00cf966669bfa5d2372939f36da61b54bca6367242c440ac669129f92c0741`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 20:44:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 20:44:03 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 20:44:03 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 20:44:03 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 20:44:03 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 20:50:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 20:50:50 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 20:50:50 GMT
USER user
# Wed, 24 Jun 2026 20:50:50 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3f4aedbdd8327225623c766d0c77fe9c5b424b6794cb6206fa2fda4f8947d40`  
		Last Modified: Wed, 24 Jun 2026 20:52:45 GMT  
		Size: 18.6 MB (18563062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad4233f2f6372d1a9fbca680ac9d693cf890853b0e809e5281907c0c12f61847`  
		Last Modified: Wed, 24 Jun 2026 20:52:41 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3931864be5ccbc4edf8d6460040fbf7cd4f2589e83e1bd3ea297640cf36c9bf4`  
		Last Modified: Wed, 24 Jun 2026 20:52:42 GMT  
		Size: 4.9 MB (4861389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:17b615bdadbf90c95cf7f9bbe93bb5d2a66874c4da980ac469177ff223de7039
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5598579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9c283324ad22a4f4b7f61f88d50f8432b1d864b021f0870429f17af6623a537`

```dockerfile
```

-	Layers:
	-	`sha256:0fcb0b279db79ecc85fbadcb0dfaf937db4d65064afbe9d18e687721bf58962f`  
		Last Modified: Wed, 24 Jun 2026 20:52:43 GMT  
		Size: 5.6 MB (5579856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc84877d49c52cc39ef8b73c05f555a4f34a7ec6080eb5c8dbe6a0e13360b6f8`  
		Last Modified: Wed, 24 Jun 2026 20:52:41 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; s390x

```console
$ docker pull irssi@sha256:32bf5f073f62d4043be0d906aef4675beb8081c29134244be56b434d347be677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54538238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:766dace219bf7735cbd74a21a948702cc85a3087448b8757d7e4da663822bbf9`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:18:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:18:07 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 01:18:07 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 01:18:07 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:18:07 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 01:18:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 01:18:47 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 01:18:47 GMT
USER user
# Wed, 24 Jun 2026 01:18:47 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a48bebcdb184f28922d9a474ab4af51b5adc15a1d39bc3538b11e2d2d332ca8a`  
		Last Modified: Wed, 24 Jun 2026 01:19:04 GMT  
		Size: 19.8 MB (19776551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:667be9254fd49c8ed6ce64d9061dddbdcbec5e530b056331e49f3548d2fc5f00`  
		Last Modified: Wed, 24 Jun 2026 01:19:03 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e44896948d5e8e045a19e6868723be737fa4f373c81881b0a48754fe48f78832`  
		Last Modified: Wed, 24 Jun 2026 01:19:04 GMT  
		Size: 4.9 MB (4906945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:9b1878c6f6bed51ce74efda68de885513f95a26ba5e5a1d3b895ae8696491a42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:076a7fe1529b6d6738e0939baaffa5803028b524584cf72df98a7428aa18b45e`

```dockerfile
```

-	Layers:
	-	`sha256:9781b17a837f6d930dd660afe6866bcec44d8c1b91f2c0867b9560adec98952c`  
		Last Modified: Wed, 24 Jun 2026 01:19:04 GMT  
		Size: 5.6 MB (5589458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49d6078493e9d9a50e97f2595be062a24ef08334063e2178a74983af7c3711f8`  
		Last Modified: Wed, 24 Jun 2026 01:19:03 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:trixie`

```console
$ docker pull irssi@sha256:60d90545f6923549ed99e1218f4fea6ebb5560284d82827a04a8f8b868ce9d9c
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
$ docker pull irssi@sha256:9ba9e845867082176deae7619fb98c157a549c5b043c72e2d600d867c75d82ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53881321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a1355ecfb7107f457bc0c9969931516a7d7710384a68f6d5dd359ff88b9f498`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:20:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:20:53 GMT
ENV HOME=/home/user
# Tue, 14 Jul 2026 01:20:53 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 14 Jul 2026 01:20:53 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:20:53 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 14 Jul 2026 01:21:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 14 Jul 2026 01:21:27 GMT
WORKDIR /home/user
# Tue, 14 Jul 2026 01:21:27 GMT
USER user
# Tue, 14 Jul 2026 01:21:27 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f088d1a16398080a6b9f9f3ffeed8a5420cd8011906ecfbb7a244d400ea8d2aa`  
		Last Modified: Tue, 14 Jul 2026 01:21:38 GMT  
		Size: 19.2 MB (19229414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:530ea975359f311dc64bea2c93b2e4a2c7121373c75b9961607e83cb8d1b8ae9`  
		Last Modified: Tue, 14 Jul 2026 01:21:37 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afcf61da58173ba0fec0dcbb893ec48916ef590ae395c8d58c466efd318e0a36`  
		Last Modified: Tue, 14 Jul 2026 01:21:38 GMT  
		Size: 4.9 MB (4867638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:57707cc9ab9eff0768c709572f36beeef2aadb4583a054355e8441526f8de290
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8898995073111fa4bb5568038d1f035ef6ba1523df9c03684f5f16d20c1f798`

```dockerfile
```

-	Layers:
	-	`sha256:e6f602e424e5beb42cfb6cd4d1244ab724788c17d208014bdbf3acfd6293ffe1`  
		Last Modified: Tue, 14 Jul 2026 01:21:38 GMT  
		Size: 5.6 MB (5588615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8c026664390c46a3ea0df96b7052eaf3bdbec82f03b7c4e3cf4491ac7982180`  
		Last Modified: Tue, 14 Jul 2026 01:21:37 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; arm variant v5

```console
$ docker pull irssi@sha256:259180164ae595df2de0892cfd4d87f610a7cd78ea10fe3d39ab99e8548f3d21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50967277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17d6ec58a215ceb5ddd93ffa50345bdd02b5bf89f1ad6cebc35b18bdc277ea20`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:17:40 GMT
ENV HOME=/home/user
# Tue, 14 Jul 2026 01:17:40 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 14 Jul 2026 01:17:40 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:17:40 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 14 Jul 2026 01:18:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 14 Jul 2026 01:18:32 GMT
WORKDIR /home/user
# Tue, 14 Jul 2026 01:18:32 GMT
USER user
# Tue, 14 Jul 2026 01:18:32 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:9ce68cca63faf1f06434dd1423cb52db0d4251ee3f1838e43e5893fae28f9267`  
		Last Modified: Tue, 14 Jul 2026 00:14:26 GMT  
		Size: 28.0 MB (27954818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30a22039c98dd3bb3c314f99b17b8d8b94c4ce378383e70a7a72799ab5fc2c66`  
		Last Modified: Tue, 14 Jul 2026 01:18:43 GMT  
		Size: 18.3 MB (18298623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d388610189353c94b1e146029a6d3c9f3bb208ef7ce34f45fa19041f1cee3209`  
		Last Modified: Tue, 14 Jul 2026 01:18:42 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3786fcea6bf9c5ec3526c364a07506b82509437469acaa048133fcd1bfd8374`  
		Last Modified: Tue, 14 Jul 2026 01:18:42 GMT  
		Size: 4.7 MB (4710475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:f3f97323ff3c6e3fed26314c4cde06cde96dc89fcf90408e68dcbadde8b68bf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5604953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c816a901b5df5e7ae0f26993f6aab09e481792c6b44eaaed4f7bcb7107a2fab8`

```dockerfile
```

-	Layers:
	-	`sha256:402ca94d41c2b008665793557e5c33a789433f88998b9530502c5645ad7fa193`  
		Last Modified: Tue, 14 Jul 2026 01:18:42 GMT  
		Size: 5.6 MB (5586164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2325bb608405bf5869bb2b2b6f1ca3e01b8869ced5198dadb6cc9aa5eb23c087`  
		Last Modified: Tue, 14 Jul 2026 01:18:42 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; arm variant v7

```console
$ docker pull irssi@sha256:8a09f260e09b4b8e61f51fee37b909dbdc38c2d0263937b8a320ac83d4fd1df8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48692459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc3e099ec9fda22ced8725eb804242eb1913d08c68eb208c090f549698a82bb4`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:18:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:18:36 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 01:18:36 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 01:18:36 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:18:36 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 01:19:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 01:19:16 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 01:19:16 GMT
USER user
# Wed, 24 Jun 2026 01:19:16 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8beb1abd8be4a5a60f09bda3fdf0b401d43b3377d72dce987d68c72a457ec4b4`  
		Last Modified: Wed, 24 Jun 2026 01:19:27 GMT  
		Size: 17.9 MB (17918168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e580be0074573aae7441865a31a6ced2e9274c54ef2ac9216e4c09ad0b85d20`  
		Last Modified: Wed, 24 Jun 2026 01:19:27 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93ccd2320f7239f28e6c946ba53ee54e513b54c8d41bb6d4d0ddce411c36e122`  
		Last Modified: Wed, 24 Jun 2026 01:19:27 GMT  
		Size: 4.6 MB (4559876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:ac622be08227a3f33584b18e45144d81e74b077c07613f1676386ae2bb7b590f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1e84d3b17cccf2c99e5d50ca85e668fa0e8cf458396f3672f1acb7ae40fcd8`

```dockerfile
```

-	Layers:
	-	`sha256:4597b5aeb4ee7985c17d8d010854e0c17c9a99592db4b31774b5ca6077b0bcc2`  
		Last Modified: Wed, 24 Jun 2026 01:19:27 GMT  
		Size: 5.6 MB (5589124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db91dfef5e6ca5acb7d7d5bff398c21f5004653c13ca93ed0d33428edf496555`  
		Last Modified: Wed, 24 Jun 2026 01:19:26 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:1ed2b1fd8165a55f0f3b66fc01676cc2377bd27f5a4daec05682ada53e25881a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53985594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1829fc926362e2518fccc9417820f436596386075a41fee62f49e7fdecd9713`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:20:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:20:56 GMT
ENV HOME=/home/user
# Tue, 14 Jul 2026 01:20:56 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 14 Jul 2026 01:20:56 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:20:56 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 14 Jul 2026 01:21:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 14 Jul 2026 01:21:33 GMT
WORKDIR /home/user
# Tue, 14 Jul 2026 01:21:33 GMT
USER user
# Tue, 14 Jul 2026 01:21:33 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59dcce1e48887eef382548586a68528fa696e383efa53864392f99821f8467eb`  
		Last Modified: Tue, 14 Jul 2026 01:21:44 GMT  
		Size: 19.1 MB (19056330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4ce309480af1f97f3d83b6f28a54c676563b934ad1f1c20ac13bb3976bd72ec`  
		Last Modified: Tue, 14 Jul 2026 01:21:43 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceec76b0c9220b2ef37957b6189fd01f9f9bf083624a597bb02bbd1117a3bbc0`  
		Last Modified: Tue, 14 Jul 2026 01:21:43 GMT  
		Size: 4.8 MB (4782199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:fd7d5a087f8a12fd45c95c0fd51c2e60e7efb9a5d05bd9995f61e9b239171687
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5613924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12846cd02143d088581443ec6b896170e1e3a04a3f2a43aa45a7bf735ba6f746`

```dockerfile
```

-	Layers:
	-	`sha256:45872d82cb29778eab16875c5bf411deae3ca53f881c263d9397d4bb1120ef2f`  
		Last Modified: Tue, 14 Jul 2026 01:21:44 GMT  
		Size: 5.6 MB (5595091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:60450bc490ee1b114f97eed02aa233dc339b2a37e6f545df25ba1893af6e6bcc`  
		Last Modified: Tue, 14 Jul 2026 01:21:43 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; 386

```console
$ docker pull irssi@sha256:c79731a3d86e3b4ea9b139a38cbc9b7dd7785a3439e19ec99968fe674e0c80b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54920600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09f471eb47009cbea5d5517ab651a05fb8d2909f4d37f01817c4a4d8137f6ae1`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:16:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:16:32 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 01:16:32 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 01:16:32 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:16:32 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 01:17:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 01:17:11 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 01:17:11 GMT
USER user
# Wed, 24 Jun 2026 01:17:11 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f0a7b85bdc61e23fe4edf5328983889a4532c723a3c16bb1fb82811d7a665cf`  
		Last Modified: Wed, 24 Jun 2026 01:17:21 GMT  
		Size: 18.7 MB (18747119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44a78a7db65f5c7fc7371bc85c4255e57ec66965b1a4cb140aed86c62e78a105`  
		Last Modified: Wed, 24 Jun 2026 01:17:20 GMT  
		Size: 3.3 KB (3333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34d40e5193a5d57b8bff4c86cd09514888722d43de9efdbf111bb058b5801c3f`  
		Last Modified: Wed, 24 Jun 2026 01:17:20 GMT  
		Size: 4.9 MB (4868906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:bff8cb3b55487ea4ddd01494c23d9b4815ee25a8aa86429229dcbe1adc62c35e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1efee0c5993099bc0e33cf0da5d8ee1e949c050c0c3a3c2aa5de94af9651deb9`

```dockerfile
```

-	Layers:
	-	`sha256:adaf948308b73fc9351880d5e96094161c3f59aff6505402f72cfb268be73122`  
		Last Modified: Wed, 24 Jun 2026 01:17:20 GMT  
		Size: 5.6 MB (5584676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea52efff25848c2f2ecfb75a082d6c51653b4114bf3dcd00cecfa5705e0eb1b2`  
		Last Modified: Wed, 24 Jun 2026 01:17:20 GMT  
		Size: 18.6 KB (18593 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; ppc64le

```console
$ docker pull irssi@sha256:8497783ffb752c673b40bac6e26969894f93c9ce17069bf7daec9883d5197bd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58252491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26c2f1613306f8e796733529cec601d355d48a9ce4faa7fb56902a35abf6c5ba`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:25:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:25:16 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 01:25:16 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 01:25:16 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:25:16 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 01:27:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 01:27:13 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 01:27:13 GMT
USER user
# Wed, 24 Jun 2026 01:27:13 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1000292e2d94490eb5ee5b15dced71b72de57eadcc0bc162536bacd41dade55`  
		Last Modified: Wed, 24 Jun 2026 01:27:34 GMT  
		Size: 19.5 MB (19543975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679bc2aa3b1163339819bfc7defba6c9a247cc115fcfa314ae44155a3b6c6706`  
		Last Modified: Wed, 24 Jun 2026 01:27:33 GMT  
		Size: 3.3 KB (3336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86f03b14f3056fdd8d161cf7ca10ac58974d0e6639e5806904e2a62016885335`  
		Last Modified: Wed, 24 Jun 2026 01:27:33 GMT  
		Size: 5.1 MB (5098760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:dde4452acc23542a3c46c8f4c300ec075686efa667b5500ae990b2f8d687877a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8e9782f2c6a668a51e112046a6cd09cc4bfba6949387fc673f3b997df0d99d6`

```dockerfile
```

-	Layers:
	-	`sha256:c0ecf4e906a56239646c3a7b4a46934d68b7e699bd32ce49e9416592dc6270e1`  
		Last Modified: Wed, 24 Jun 2026 01:27:33 GMT  
		Size: 5.6 MB (5595584 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a8b0b20edb7219de658a8ba9d5fb396c88c91b1642bc33032eb1b27bdca339d`  
		Last Modified: Wed, 24 Jun 2026 01:27:33 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; riscv64

```console
$ docker pull irssi@sha256:56b7a30dfa04eaa948916ce8cf668897b81c3c2055ccfbe70cd33dbde35c8d09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51710193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a00cf966669bfa5d2372939f36da61b54bca6367242c440ac669129f92c0741`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 20:44:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 20:44:03 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 20:44:03 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 20:44:03 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 20:44:03 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 20:50:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 20:50:50 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 20:50:50 GMT
USER user
# Wed, 24 Jun 2026 20:50:50 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3f4aedbdd8327225623c766d0c77fe9c5b424b6794cb6206fa2fda4f8947d40`  
		Last Modified: Wed, 24 Jun 2026 20:52:45 GMT  
		Size: 18.6 MB (18563062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad4233f2f6372d1a9fbca680ac9d693cf890853b0e809e5281907c0c12f61847`  
		Last Modified: Wed, 24 Jun 2026 20:52:41 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3931864be5ccbc4edf8d6460040fbf7cd4f2589e83e1bd3ea297640cf36c9bf4`  
		Last Modified: Wed, 24 Jun 2026 20:52:42 GMT  
		Size: 4.9 MB (4861389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:17b615bdadbf90c95cf7f9bbe93bb5d2a66874c4da980ac469177ff223de7039
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5598579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9c283324ad22a4f4b7f61f88d50f8432b1d864b021f0870429f17af6623a537`

```dockerfile
```

-	Layers:
	-	`sha256:0fcb0b279db79ecc85fbadcb0dfaf937db4d65064afbe9d18e687721bf58962f`  
		Last Modified: Wed, 24 Jun 2026 20:52:43 GMT  
		Size: 5.6 MB (5579856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc84877d49c52cc39ef8b73c05f555a4f34a7ec6080eb5c8dbe6a0e13360b6f8`  
		Last Modified: Wed, 24 Jun 2026 20:52:41 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; s390x

```console
$ docker pull irssi@sha256:32bf5f073f62d4043be0d906aef4675beb8081c29134244be56b434d347be677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54538238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:766dace219bf7735cbd74a21a948702cc85a3087448b8757d7e4da663822bbf9`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:18:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:18:07 GMT
ENV HOME=/home/user
# Wed, 24 Jun 2026 01:18:07 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 24 Jun 2026 01:18:07 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 01:18:07 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 24 Jun 2026 01:18:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 24 Jun 2026 01:18:47 GMT
WORKDIR /home/user
# Wed, 24 Jun 2026 01:18:47 GMT
USER user
# Wed, 24 Jun 2026 01:18:47 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a48bebcdb184f28922d9a474ab4af51b5adc15a1d39bc3538b11e2d2d332ca8a`  
		Last Modified: Wed, 24 Jun 2026 01:19:04 GMT  
		Size: 19.8 MB (19776551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:667be9254fd49c8ed6ce64d9061dddbdcbec5e530b056331e49f3548d2fc5f00`  
		Last Modified: Wed, 24 Jun 2026 01:19:03 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e44896948d5e8e045a19e6868723be737fa4f373c81881b0a48754fe48f78832`  
		Last Modified: Wed, 24 Jun 2026 01:19:04 GMT  
		Size: 4.9 MB (4906945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:9b1878c6f6bed51ce74efda68de885513f95a26ba5e5a1d3b895ae8696491a42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:076a7fe1529b6d6738e0939baaffa5803028b524584cf72df98a7428aa18b45e`

```dockerfile
```

-	Layers:
	-	`sha256:9781b17a837f6d930dd660afe6866bcec44d8c1b91f2c0867b9560adec98952c`  
		Last Modified: Wed, 24 Jun 2026 01:19:04 GMT  
		Size: 5.6 MB (5589458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49d6078493e9d9a50e97f2595be062a24ef08334063e2178a74983af7c3711f8`  
		Last Modified: Wed, 24 Jun 2026 01:19:03 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json
