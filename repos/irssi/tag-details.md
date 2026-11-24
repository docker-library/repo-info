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
$ docker pull irssi@sha256:21f55a0202af8d72c5b461c18d1923a71d443f4684efb8c4eac2d96e170d60f3
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
$ docker pull irssi@sha256:7b15c38df72dda518438177789d682cfd8d17d7b7594cbde3e04eb20a299656d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53948745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:694fa8d2229b6990d1e41c5ee35b0b484eb01fdcf222b64f9476084b0224bb1a`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:14:45 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:14:45 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:14:45 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:14:45 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:15:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:15:25 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:15:25 GMT
USER user
# Tue, 24 Nov 2026 04:15:25 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4163f095785a7400056a9db093405098957293a4dedade7fa1f13b49a913886b`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 19.2 MB (19233804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bddb90087b0ee70ccee4f7487f3432bc43b838ea6abded1eb5d5ddb82ccf70ae`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 3.3 KB (3325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:046dd3d4e3fd8a2eb4efb305d7e2fc39c36fe0514255ada3fa205c26997f1400`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 4.9 MB (4869402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:82e47ea872540ea8c85771064a983bf05844eecad18e4c91a387f76cd19c3224
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6264fed2114e9b18838d9625575ce6e44b22868346984b87fa8294d3d1826e25`

```dockerfile
```

-	Layers:
	-	`sha256:7f06da72a1b04ed9d899bd045574351277958197e28b480af78c31af7d40fdf0`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 5.6 MB (5595848 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2131319c69565da6aae551d42e74ea5c0872d8fe507e1c213e373268bd213f9`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; arm variant v5

```console
$ docker pull irssi@sha256:eb153dcc12989ac5be3816464fed644952e6619f36005edd4425664d856be802
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (51038784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b07f47a5f5bc7eee3d431c103990e258453a60c0743e9c834d3d100818fa9837`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:13:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:13:17 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 07:13:17 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 07:13:17 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:13:17 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 07:14:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Thu, 05 Nov 2026 07:14:06 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 07:14:06 GMT
USER user
# Thu, 05 Nov 2026 07:14:06 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94fab4177c1dfeb473ac657143cdd25b1216f7ce13c970d8112525307d15acfa`  
		Last Modified: Thu, 05 Nov 2026 07:14:18 GMT  
		Size: 18.3 MB (18304831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d4194f84be496cb54fea5d16441d45cf82e055e2bccd1fb90bccc44e54c1a8d`  
		Last Modified: Thu, 05 Nov 2026 07:14:17 GMT  
		Size: 3.3 KB (3327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:674730fc0c383a457de7dae2f60e6bb962e42ecf0d09ef112620bc5ce41708f9`  
		Last Modified: Thu, 05 Nov 2026 07:14:18 GMT  
		Size: 4.7 MB (4710984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:121dcd1e72b452949384bcc968376f1fbc4dd9cdc7c0bcd95e1f3eb37230573b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5612140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea617290a9f3600bac75e5902477d7bf94c303ea3eef1d7c1c1964ff71b44ea8`

```dockerfile
```

-	Layers:
	-	`sha256:d311083c31a5974a65689a2aec4610671222d1bf7c7d4918926016b6eb4cf58e`  
		Last Modified: Thu, 05 Nov 2026 07:14:18 GMT  
		Size: 5.6 MB (5593351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:396afaeabb57df6c3302cbe0a6e1418de93141bae973cb7e030967f89b1979e1`  
		Last Modified: Thu, 05 Nov 2026 07:14:17 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; arm variant v7

```console
$ docker pull irssi@sha256:e1bf1212a5e93e6c44ab07261066b0f4cd0b5c84f4f54e947aa6a34b5e4d1b85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48762576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3862d1f27b2a927452327b4cea4a69965096b2c7840fece3aa05e254c2045f4`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:20:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:20:13 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:20:13 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:20:13 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:20:13 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:20:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:20:55 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:20:55 GMT
USER user
# Tue, 24 Nov 2026 04:20:55 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b68b6f18cfebee93ffa901a17bb41e5dafbdd2dd07727a8fb5f2a0fbb17e4bd3`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 17.9 MB (17935385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7550455594fcfa52fe32a1cca8e6455a295e92b00081d1d47699392f840a75a`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:816e64db09dacbca2882225fc541a2a06b0d1e526e519ca98c0c93492e4af5ac`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 4.6 MB (4561371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:65ef887f995bcca37fe42b7ba4bde3d35e7d4e3722ec673f5421112ecb6b8e05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5615208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abd82f57b918d4463cf4dbc531e4a828196bb9e2c025ee53d6f8767e23948208`

```dockerfile
```

-	Layers:
	-	`sha256:cbff29ef1efa4ba10c1f237af9a401a850e1f5e924b257c75123687f216bf15c`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 5.6 MB (5596419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b4e69a6cd48bd4fc33136cee98bb9907eabe9ab8c43974506398e126a3210af`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:cdf6d721b4b6ab7d2f343208685bcac0d6ac6b6db2cf66f67a031f47ae04f9ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54058474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc04c3f235c43312613f005eed1b3cde8fb7966fdc0e79074261ce388cee624`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:14:48 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:14:48 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:14:48 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:14:48 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:15:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:15:25 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:15:25 GMT
USER user
# Tue, 24 Nov 2026 04:15:25 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1a84782dc5f2cd0146695bb2db9ef797364f2cf65b26c341d6c904eb105ee98`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 19.1 MB (19074969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:782647b4751588d53e9a6ea5ccfe3a7305bcbcc8114bcac6154e5fd0ee41a4ec`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:732424b924ec579490991a4aeb6d173cc02b2953ddaf2b312bd7980efcf43097`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 4.8 MB (4782111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:a93d578b5f5fbd52939ae483e6a75fe6bf16519e97e7e8f7e86bc8283d9f2121
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5621157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:040264ef51f0c59ac4f52d631dd9712f2e35212ad41e10d9fa73dca5b7e885c6`

```dockerfile
```

-	Layers:
	-	`sha256:94abf7e8b65f8e9da980d67329e4daca999990f9960ca6b05c66747fe8028660`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 5.6 MB (5602324 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8098ad63c83e8d0bc65b00fc4f42e29e299291f3033aa91f02734a4d31fe75f5`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; 386

```console
$ docker pull irssi@sha256:cb8bd42e30ac32b94e2f08719b590b16205c5fb4035d3231cc5a5b7d0c4b881a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54988559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b9fa2b3847ba141082182c759079f298f46130b3b3c2ca3ccfeb59bc006dbd0`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:14:12 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:14:12 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:14:12 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:14:12 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:14:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:14:53 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:14:53 GMT
USER user
# Tue, 24 Nov 2026 04:14:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:7fb9e5f471a439ab129e9fe258623bccb6c4da1d0313890202b55fd6b5839533`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 31.4 MB (31357919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34a950215307bf93554e724526a44e85993dae1c806fa8ae754287027482f540`  
		Last Modified: Tue, 24 Nov 2026 04:15:03 GMT  
		Size: 18.8 MB (18757461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea8f6101a0a5f007a8a95653053b98c972c43930817bace83573564596cae540`  
		Last Modified: Tue, 24 Nov 2026 04:15:03 GMT  
		Size: 3.3 KB (3327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff87df54bb9fa2736a5e49e342b600ae0a110d7e683aa75c0f2e54bce4b3ab6c`  
		Last Modified: Tue, 24 Nov 2026 04:15:03 GMT  
		Size: 4.9 MB (4869820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:3cc0a1dd9a9c3c0051fb481cda2ef84c99a1580e9141de21a403004bad734b29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5610565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18779fe01808861ad766c36f499ed2f055c5c85009b6d0740411d7895eed02f7`

```dockerfile
```

-	Layers:
	-	`sha256:8ba580f57cb2605c7702fed4a32e996833535c6134dae9b4beee22b4b4c25683`  
		Last Modified: Tue, 24 Nov 2026 04:15:03 GMT  
		Size: 5.6 MB (5591971 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a72dc7c8c6e351e2319bcf458af09973e7a24dd46de69bf16d77a492ae7170b`  
		Last Modified: Tue, 24 Nov 2026 04:15:02 GMT  
		Size: 18.6 KB (18594 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; ppc64le

```console
$ docker pull irssi@sha256:aa124609203a3a98fa1ceae427debd64e11c46e6f2d7ff17e7a49253c6cb27b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58324628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34dbdec57a8ee457db715bceb612aea0a3a79c6bd18190017018f5b8f8c98e18`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:24:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:24:15 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:24:15 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:24:15 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:24:15 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:25:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:25:43 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:25:43 GMT
USER user
# Tue, 24 Nov 2026 04:25:43 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6d599ee149161123db04af161af351247dbcd557ec08f78d82de0c89b6844f6c`  
		Last Modified: Tue, 24 Nov 2026 03:42:42 GMT  
		Size: 33.7 MB (33652639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d40040ff7c924fd070789a90df56f27eab4e574660c268dd423f48d3ceda7de`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 19.6 MB (19568633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af5b568fa79d5599705b5c17e19d295c5202197478716c9c8a14d9bba9735a46`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 3.3 KB (3325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:675e1e37181eef3ad607cb7892abbb5c394a3a33236be06b98e6a488d3d376e6`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 5.1 MB (5099999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:0949eb88547835e917a0afa69c6898c92ebd0c63e31fcf8b663851ae15376f71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5621602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:467625068771cd8c74b3cf51595af73868383680f50dcc2da480ced2e660cba0`

```dockerfile
```

-	Layers:
	-	`sha256:92bb1fefc5b5546dc8580b76650ce375b8d68e957503d95472377c8ea2043ff3`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 5.6 MB (5602879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72c23bb743a8d46747a814e5975f9097a066f144d600fd6abbf099ee4e05b7d0`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; riscv64

```console
$ docker pull irssi@sha256:fd758385a4b02c9d9e80d13998c8860b85685e47787f20a8e992a1f9d1a6a62a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51782249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fe3a44e915e81dd11aa7eef4592fde6fd4701a0681e1fcbdb3aa2992d830d8d`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 11:31:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 11:31:44 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 11:31:44 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 11:31:44 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 11:31:44 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 11:38:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Thu, 05 Nov 2026 11:38:53 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 11:38:53 GMT
USER user
# Thu, 05 Nov 2026 11:38:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9c2319a355ee4f65c20948fbe6e7dc4455455e24645204a22968523fae6b960`  
		Last Modified: Thu, 05 Nov 2026 11:41:02 GMT  
		Size: 18.6 MB (18570110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21c11a51c8760fd49dd499654c23f4172be4f0438e97703bff3b5d3e8130308e`  
		Last Modified: Thu, 05 Nov 2026 11:40:58 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2cb1f292825bf90d712819ceab2bf4d161ade4accb46ddb8070e3dc4b52041b`  
		Last Modified: Thu, 05 Nov 2026 11:41:00 GMT  
		Size: 4.9 MB (4862595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:8b397c081745fa12207cc2d4d68467baedf0fff0a6876209383eade4f40a10f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5605827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b36a001cd2ef7a0248a66e36d738e21a200313277e2968099de58e8bff77e5c2`

```dockerfile
```

-	Layers:
	-	`sha256:0bbc69528478fb204c597c5a81cfbe7e096101162374ac51dea8bca1244e9132`  
		Last Modified: Thu, 05 Nov 2026 11:41:00 GMT  
		Size: 5.6 MB (5587105 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:391674e9cd31f49507193d4cf927463c8efe5e03255c0f82914ab3cbbceea723`  
		Last Modified: Thu, 05 Nov 2026 11:40:58 GMT  
		Size: 18.7 KB (18722 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; s390x

```console
$ docker pull irssi@sha256:c99740094bb8fc3a42fe39a0df1d90c249341718e2531b8ee66d2ff5e37557b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54621603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cf62b7d7530301bf10e970850994b086459bfdda74a948cd236bafe4489b5c5`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:15:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:15:02 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 07:15:02 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 07:15:02 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:15:02 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 07:15:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Thu, 05 Nov 2026 07:15:41 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 07:15:41 GMT
USER user
# Thu, 05 Nov 2026 07:15:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56d570360718c12df13fb3403ebeeda60ad5cbd6ebe703ea5bfe0782b4c5f1ea`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 19.8 MB (19785679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec74ec51933f3b95a7dee95f4010c37c659cc34b70a7259650c96509ff57739`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 3.3 KB (3335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d163cf2a08ccfc0964f43337f0de3907c7b95345892d57206d45abeb4fab0c8`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 4.9 MB (4908440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:b668601dc63bea1aaf21eb394cb35899e97ec155269b081c7b1611f5cae7cff6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5615357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3240edcbc9b69bb78f17b066d101e992f5d1b2698c631b499dc9d5fe1f7c3a54`

```dockerfile
```

-	Layers:
	-	`sha256:b3ee1717ede5dd9c1d66ce2a188d0b16069dc0efd1d5805b7aecee0bfe4ebb56`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 5.6 MB (5596707 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f7dc624e297c33de874aba098bf70a12156b8003603defc82203e66703c5594`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 18.6 KB (18650 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1-alpine`

```console
$ docker pull irssi@sha256:62fbc3514f8ef0bf587137800856ee4dffbfaddf6ca8402501698a6491e3205d
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
$ docker pull irssi@sha256:10682944689d0bac10ff3de89c039609a3681d6617f04efe8825c78f8627eddd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20737030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7773520a95b316f4c62a1bdc7cfeed99cea83695b4dcc001fec54eb47413403e`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:56:10 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:56:10 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:56:10 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:56:10 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:56:10 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:56:23 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:56:23 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:56:23 GMT
USER user
# Thu, 05 Nov 2026 18:56:23 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153eb96a9b5dc9565f557c5c5f7222a7c97681e0610b74c949b59796f035ed08`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 10.8 MB (10815513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24281d2acaac72631003e68f6dd533dee76d6331e278182196edbad294f84965`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df7a0f14676f6da8bd15597a6551a78fa020761ba69af7b612210fd643ddb36`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 6.1 MB (6067943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:6f97a389d6ddc5adf3b3ee6ab67608a9de87266a9088c23446d8151c5f26fc2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b40a4574d537c018153d004dc4096cb0bc60c32b0712bf2c6d0bffb0f3a5f50b`

```dockerfile
```

-	Layers:
	-	`sha256:dab5f1c3d4c9120402c206e895bf05523e83e1e522f5ed83451d0a9b1ea40366`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 1.3 MB (1289248 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f455d1c5c8a75f18e093d4ec5efaa0d3eadd6d062703fb1258a38e2d3f0f14fb`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 17.5 KB (17498 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine` - linux; arm variant v6

```console
$ docker pull irssi@sha256:e9940753f49622f53fefa43723986bd654936a0435de06e08034aea06af0dd8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19480325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:169aa2e733fe5fde2822935396b616ee295002f3242e36ef32678347fe8bbfd4`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:01 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:19:01 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:19:01 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:19:01 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:19:01 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:19:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:19:17 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:19:17 GMT
USER user
# Thu, 05 Nov 2026 18:19:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:010e3505d8b0122aadb8b0d0b5e2fac89a1c6ea0bddbbb19d5ebe0ab095e5fb6`  
		Last Modified: Thu, 05 Nov 2026 18:19:23 GMT  
		Size: 10.0 MB (10025762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5864cd691741211885c86f434f91180255f33f38b737be953a2278ad263552bc`  
		Last Modified: Thu, 05 Nov 2026 18:19:22 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914ba4b363da5fc964a4b0813a887a729a99d5e27c1c13ea86ab456605478e9a`  
		Last Modified: Thu, 05 Nov 2026 18:19:23 GMT  
		Size: 5.9 MB (5895325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:9d57c895bd73dbe39627f16b7135eee83efd300a7b2b56ea07b87bc982597400
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 KB (17422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de1d9730b7b2adb55d4570e355d168e60b04084ca5e55f08c8a8ae4b573059c4`

```dockerfile
```

-	Layers:
	-	`sha256:26ab2839e9fe07c6a50eae7f349e1f27a440355aab740c4f175d2adcc7c4f97a`  
		Last Modified: Thu, 05 Nov 2026 18:19:22 GMT  
		Size: 17.4 KB (17422 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine` - linux; arm variant v7

```console
$ docker pull irssi@sha256:d9abe7a8abb266bbf575c5f1f30b96d622bb8f58b9030a09494cff9e182c6c3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18770756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2a75c7bfa7b3714cbaf10607a64a4cfedd729a31299ff3adeef47873972602a`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:17 GMT
ADD alpine-minirootfs-3.23.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:17 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:18:30 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:18:30 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:18:30 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:18:30 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:18:30 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:18:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:18:47 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:18:47 GMT
USER user
# Thu, 05 Nov 2026 18:18:47 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2715a345c82dd389382733a6d4282bdbb8950eed4bdb95c4a8e332b6b5d8adf5`  
		Last Modified: Thu, 05 Nov 2026 18:01:23 GMT  
		Size: 3.3 MB (3266828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea5432e6ab0500a7b2737280cfb74cda74139ce5a4f3a224b229bf12b413d85`  
		Last Modified: Thu, 05 Nov 2026 18:18:55 GMT  
		Size: 9.9 MB (9859395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a8a641cfb83b11ab5c8b97d83677380490ef303667f41735931f552b8ecdd8f`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209b5ffae4c8d90d9762885384e0b0f0ce71a005858f9e8a9fb4d8eae9639355`  
		Last Modified: Thu, 05 Nov 2026 18:18:55 GMT  
		Size: 5.6 MB (5643548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:63752f1ba387f3326217f4d82afa72d3c726cd32807659b39695ff6d5045e656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1309290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415f4add2f905e745c3497e5cf774c0482952267511c39b7da528b0f8f6905ee`

```dockerfile
```

-	Layers:
	-	`sha256:4a25585cadfff889ac0f34f9bde8009f5d98a5e84c8f37c7ee9fc4d68c2eac8b`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 1.3 MB (1291656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d714a48df0d2612d4f40390d953d9df3b679b6a161cab4b6219ef211b78053e5`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 17.6 KB (17634 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:6de2ad42d89c559426498e7483c1db0abf023694abf0275757ba723fd09aef7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20879484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f2f910b7a141b009fd6ce3e946f30adc985da47cd52078d15855fed8136c00f`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:51:49 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:51:50 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:51:50 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:51:50 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:51:50 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:52:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:52:02 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:52:02 GMT
USER user
# Thu, 05 Nov 2026 18:52:02 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5638efab2b4eaba0b025282b404bbd862223b1712ffc08be8ef3d81227755f8`  
		Last Modified: Thu, 05 Nov 2026 18:52:09 GMT  
		Size: 10.7 MB (10749440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4317a1f912d9d7d65d54d4531a6b486669cae379ffef4fa87439ec8a235306e`  
		Last Modified: Thu, 05 Nov 2026 18:52:08 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93bd37bb7508085789e03c8049ef43da625cafb166d2d06d3fe40e0a4f09328`  
		Last Modified: Thu, 05 Nov 2026 18:52:09 GMT  
		Size: 5.9 MB (5938838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:cebbec75f69919364d547da5dc8aee60c12a3d17f18dfb37688ada116bacfbf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad59022be4a9e5ff0f3cddd444f22a0dd593d613fbea4e721c24ef9a0fbc814a`

```dockerfile
```

-	Layers:
	-	`sha256:8ca9ae37854cc7aecae581d442e5cc8052f13a827662d8a63619e3f0a40f328f`  
		Last Modified: Thu, 05 Nov 2026 18:52:08 GMT  
		Size: 1.3 MB (1288702 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:defc35eed1069d29f57053568ade3e7d90ddab09d2528c781a12fa1287a05684`  
		Last Modified: Thu, 05 Nov 2026 18:52:09 GMT  
		Size: 17.7 KB (17682 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine` - linux; 386

```console
$ docker pull irssi@sha256:728437aee988d9d937d5ef62367c260d9cb7c93533a4b34004b4c54164d34359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20174407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6db4feae906072daac04e6710dec0d239f60d4809479d0b709fa206cc560af1f`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:03 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:16:03 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:16:03 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:16:03 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:16:03 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:16:21 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:16:21 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:16:21 GMT
USER user
# Thu, 05 Nov 2026 18:16:21 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40518fdd37d486420a6285f46f48189c5d30158d971d837be9177f2d5403cf70`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 10.3 MB (10349718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24ebdbd0e0933ec8446d913f38739a34833c377aa1b658aa8fc2117073c3fade`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9073c9219b05a2aa18308c501b6f4657b6a8b596aff9aca2ac23472982fe34e`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 6.1 MB (6145124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:def7a127dad963b178d0eddcab5a02a4d864f8ab9a96cd133fce8e7a6e6274f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5782ac570c48b3c5d63277469ba727fd310bb9fe34391f4640cafe249a18b3e`

```dockerfile
```

-	Layers:
	-	`sha256:c9f42695ab2c742d36040694bf1bf1dbaf14cc3ac293269e2f2e9ad2f797d2e9`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 1.3 MB (1289203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5e6769fc1db6391289bd52f74bedc3848963117a9b826b307c9b6ccf076369d`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 17.4 KB (17444 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine` - linux; ppc64le

```console
$ docker pull irssi@sha256:e0136ba60195f7213a6263c33992585b619aac233d5e01fc258b1ada0a361af6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21223439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b96fd502d118d3bb9211ee6c311f182f6e00fd31a9dbb8a7706942d7a53c859e`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:47 GMT
ADD alpine-minirootfs-3.23.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:47 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:32:46 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 21:32:47 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 21:32:47 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 21:32:47 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 21:32:47 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 21:33:11 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 21:33:12 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 21:33:12 GMT
USER user
# Thu, 05 Nov 2026 21:33:12 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6f9768cc5f6423f8942751565e49e2e8feab6597d57ab26efd88d8959ad0f0f5`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3819006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aca130ba2e0da33a5196b85f90cfdecd19a459d839ebf572009efd76fffdda6`  
		Last Modified: Thu, 05 Nov 2026 21:33:25 GMT  
		Size: 11.0 MB (11039500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc1bb579f9c86a2f820581c1ddaf552bb05a70f51cbaf4c327f4d4d645091b9f`  
		Last Modified: Thu, 05 Nov 2026 21:33:24 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb660c8cf836dbdba17286858831b90a95c9bb655cc12569d5e0ef02d5b864f1`  
		Last Modified: Thu, 05 Nov 2026 21:33:25 GMT  
		Size: 6.4 MB (6363947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:710fa4464bf8878fb26fa3512858e97f096cc16b9b01e17461ca5e822af59399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2bc021c224d7a6c2b73c0db962a3fc3790e5ffa9bc6469c7a6c64234c98f3af`

```dockerfile
```

-	Layers:
	-	`sha256:049a8f8f79f429d7052c3b0f2363c659c3f846881635b38d8ed477f4e7f6552a`  
		Last Modified: Thu, 05 Nov 2026 21:33:24 GMT  
		Size: 1.3 MB (1288655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abc5a12c3b21650d222f92caa384d017c822d820fa0ef33e172f3cfd2ac91a2d`  
		Last Modified: Thu, 05 Nov 2026 21:33:24 GMT  
		Size: 17.6 KB (17572 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine` - linux; riscv64

```console
$ docker pull irssi@sha256:70515621b1f7005a688f3eb0c9f199fdb05dd2e06cf5805355a5e6f9fe386a36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19948006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ce8a14b82879cf28712edd7bd98eae1fa334ba9636859d3a5fb774c2923ce2`
-	Default Command: `["irssi"]`

```dockerfile
# Sun, 08 Nov 2026 12:36:05 GMT
ADD alpine-minirootfs-3.23.8-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:36:05 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 01:00:49 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Tue, 10 Nov 2026 01:00:50 GMT
ENV HOME=/home/user
# Tue, 10 Nov 2026 01:00:50 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 10 Nov 2026 01:00:50 GMT
ENV LANG=C.UTF-8
# Tue, 10 Nov 2026 01:00:50 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 10 Nov 2026 01:04:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Tue, 10 Nov 2026 01:04:48 GMT
WORKDIR /home/user
# Tue, 10 Nov 2026 01:04:48 GMT
USER user
# Tue, 10 Nov 2026 01:04:48 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:40d8941112ffcb85e567141e79f094eb8ab795e6e171c6548ddc812cd9b19486`  
		Last Modified: Sun, 08 Nov 2026 12:36:40 GMT  
		Size: 3.6 MB (3580129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f90c86181fbd68092541cb842693653d896afd7d7376cfb2fb915d4e883bbb8`  
		Last Modified: Tue, 10 Nov 2026 01:05:52 GMT  
		Size: 10.2 MB (10248012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b1dc191b1922684b589438ddb0772e0d8814c6e7e03a05efbb0048a7c847c6`  
		Last Modified: Tue, 10 Nov 2026 01:05:50 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c0bb63007a3faed438c3a92f41b62f5559ec77904c35a466be7183c9d7017f`  
		Last Modified: Tue, 10 Nov 2026 01:05:52 GMT  
		Size: 6.1 MB (6118881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:f3220f61f3a2b63cfb83c2aa3a039471357c879c56950ee454d72b079a2ffeb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddea7a2fc0df722ebde9cf2fafa41d3718945ae0781c10c1933ff42c88ba434e`

```dockerfile
```

-	Layers:
	-	`sha256:055473ab57cb90aa50a23fa030f322a834e6de412f00c3994c8e3b5ac0f00dcb`  
		Last Modified: Tue, 10 Nov 2026 01:05:50 GMT  
		Size: 1.3 MB (1288645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ababdabb5fc4283d36e6938af191f89d433d533fe7a5ee107227a2c61dfed58`  
		Last Modified: Tue, 10 Nov 2026 01:05:50 GMT  
		Size: 17.6 KB (17570 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine` - linux; s390x

```console
$ docker pull irssi@sha256:72d543b1bdd2bc361bdbb7e1c37a04c40dbc98e2f5d75ca43508e3d6465be9f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21289259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cf20a46d6ccf7fe1ab269f1d33736de96a1742797a2bea78c31ee1df96968f0`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.23.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:21 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:16:22 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:16:22 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:16:22 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:16:22 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:16:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:16:36 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:16:36 GMT
USER user
# Thu, 05 Nov 2026 18:16:36 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f31bb69faaf3a010059c4f255f2a9e2738683be277999f627a4cd72325be9271`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.7 MB (3718347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98075b8354a00af8cd754f659acdeb71e63b663094afefc5f3e3d5826b41bba8`  
		Last Modified: Thu, 05 Nov 2026 18:16:48 GMT  
		Size: 11.4 MB (11364945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d82c65930b81ebdd0b42b966ef8c33baf21d01c0da3ce19f2bcf3520f7165fb`  
		Last Modified: Thu, 05 Nov 2026 18:16:48 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd80407b4d39455a636b3ad42ffa1c7e42fb3933ad132949ef163590e5cc54ac`  
		Last Modified: Thu, 05 Nov 2026 18:16:48 GMT  
		Size: 6.2 MB (6204981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:1038b62ab49bd4e651c9339e27203f780644bd3829e97bab3eefd33ccdea0e0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:470a73da7320635c4bb1f055661cad03623d59e9cf3a3d4285ff76bf84990164`

```dockerfile
```

-	Layers:
	-	`sha256:15348a0e166d7840dcb90d22f9aef68e8ef70c496e845cd7667d338c7bf2a2c5`  
		Last Modified: Thu, 05 Nov 2026 18:16:48 GMT  
		Size: 1.3 MB (1288597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e522bf53ac5c040ff0ef857951718702fcb095bcc3d91bbff9ca3efc235dde35`  
		Last Modified: Thu, 05 Nov 2026 18:16:47 GMT  
		Size: 17.5 KB (17498 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1-alpine3.23`

```console
$ docker pull irssi@sha256:62fbc3514f8ef0bf587137800856ee4dffbfaddf6ca8402501698a6491e3205d
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
$ docker pull irssi@sha256:10682944689d0bac10ff3de89c039609a3681d6617f04efe8825c78f8627eddd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20737030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7773520a95b316f4c62a1bdc7cfeed99cea83695b4dcc001fec54eb47413403e`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:56:10 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:56:10 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:56:10 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:56:10 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:56:10 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:56:23 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:56:23 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:56:23 GMT
USER user
# Thu, 05 Nov 2026 18:56:23 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153eb96a9b5dc9565f557c5c5f7222a7c97681e0610b74c949b59796f035ed08`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 10.8 MB (10815513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24281d2acaac72631003e68f6dd533dee76d6331e278182196edbad294f84965`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df7a0f14676f6da8bd15597a6551a78fa020761ba69af7b612210fd643ddb36`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 6.1 MB (6067943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:6f97a389d6ddc5adf3b3ee6ab67608a9de87266a9088c23446d8151c5f26fc2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b40a4574d537c018153d004dc4096cb0bc60c32b0712bf2c6d0bffb0f3a5f50b`

```dockerfile
```

-	Layers:
	-	`sha256:dab5f1c3d4c9120402c206e895bf05523e83e1e522f5ed83451d0a9b1ea40366`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 1.3 MB (1289248 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f455d1c5c8a75f18e093d4ec5efaa0d3eadd6d062703fb1258a38e2d3f0f14fb`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 17.5 KB (17498 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine3.23` - linux; arm variant v6

```console
$ docker pull irssi@sha256:e9940753f49622f53fefa43723986bd654936a0435de06e08034aea06af0dd8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19480325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:169aa2e733fe5fde2822935396b616ee295002f3242e36ef32678347fe8bbfd4`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:01 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:19:01 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:19:01 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:19:01 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:19:01 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:19:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:19:17 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:19:17 GMT
USER user
# Thu, 05 Nov 2026 18:19:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:010e3505d8b0122aadb8b0d0b5e2fac89a1c6ea0bddbbb19d5ebe0ab095e5fb6`  
		Last Modified: Thu, 05 Nov 2026 18:19:23 GMT  
		Size: 10.0 MB (10025762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5864cd691741211885c86f434f91180255f33f38b737be953a2278ad263552bc`  
		Last Modified: Thu, 05 Nov 2026 18:19:22 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914ba4b363da5fc964a4b0813a887a729a99d5e27c1c13ea86ab456605478e9a`  
		Last Modified: Thu, 05 Nov 2026 18:19:23 GMT  
		Size: 5.9 MB (5895325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:9d57c895bd73dbe39627f16b7135eee83efd300a7b2b56ea07b87bc982597400
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 KB (17422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de1d9730b7b2adb55d4570e355d168e60b04084ca5e55f08c8a8ae4b573059c4`

```dockerfile
```

-	Layers:
	-	`sha256:26ab2839e9fe07c6a50eae7f349e1f27a440355aab740c4f175d2adcc7c4f97a`  
		Last Modified: Thu, 05 Nov 2026 18:19:22 GMT  
		Size: 17.4 KB (17422 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine3.23` - linux; arm variant v7

```console
$ docker pull irssi@sha256:d9abe7a8abb266bbf575c5f1f30b96d622bb8f58b9030a09494cff9e182c6c3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18770756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2a75c7bfa7b3714cbaf10607a64a4cfedd729a31299ff3adeef47873972602a`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:17 GMT
ADD alpine-minirootfs-3.23.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:17 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:18:30 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:18:30 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:18:30 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:18:30 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:18:30 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:18:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:18:47 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:18:47 GMT
USER user
# Thu, 05 Nov 2026 18:18:47 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2715a345c82dd389382733a6d4282bdbb8950eed4bdb95c4a8e332b6b5d8adf5`  
		Last Modified: Thu, 05 Nov 2026 18:01:23 GMT  
		Size: 3.3 MB (3266828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea5432e6ab0500a7b2737280cfb74cda74139ce5a4f3a224b229bf12b413d85`  
		Last Modified: Thu, 05 Nov 2026 18:18:55 GMT  
		Size: 9.9 MB (9859395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a8a641cfb83b11ab5c8b97d83677380490ef303667f41735931f552b8ecdd8f`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209b5ffae4c8d90d9762885384e0b0f0ce71a005858f9e8a9fb4d8eae9639355`  
		Last Modified: Thu, 05 Nov 2026 18:18:55 GMT  
		Size: 5.6 MB (5643548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:63752f1ba387f3326217f4d82afa72d3c726cd32807659b39695ff6d5045e656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1309290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415f4add2f905e745c3497e5cf774c0482952267511c39b7da528b0f8f6905ee`

```dockerfile
```

-	Layers:
	-	`sha256:4a25585cadfff889ac0f34f9bde8009f5d98a5e84c8f37c7ee9fc4d68c2eac8b`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 1.3 MB (1291656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d714a48df0d2612d4f40390d953d9df3b679b6a161cab4b6219ef211b78053e5`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 17.6 KB (17634 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:6de2ad42d89c559426498e7483c1db0abf023694abf0275757ba723fd09aef7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20879484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f2f910b7a141b009fd6ce3e946f30adc985da47cd52078d15855fed8136c00f`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:51:49 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:51:50 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:51:50 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:51:50 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:51:50 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:52:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:52:02 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:52:02 GMT
USER user
# Thu, 05 Nov 2026 18:52:02 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5638efab2b4eaba0b025282b404bbd862223b1712ffc08be8ef3d81227755f8`  
		Last Modified: Thu, 05 Nov 2026 18:52:09 GMT  
		Size: 10.7 MB (10749440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4317a1f912d9d7d65d54d4531a6b486669cae379ffef4fa87439ec8a235306e`  
		Last Modified: Thu, 05 Nov 2026 18:52:08 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93bd37bb7508085789e03c8049ef43da625cafb166d2d06d3fe40e0a4f09328`  
		Last Modified: Thu, 05 Nov 2026 18:52:09 GMT  
		Size: 5.9 MB (5938838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:cebbec75f69919364d547da5dc8aee60c12a3d17f18dfb37688ada116bacfbf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad59022be4a9e5ff0f3cddd444f22a0dd593d613fbea4e721c24ef9a0fbc814a`

```dockerfile
```

-	Layers:
	-	`sha256:8ca9ae37854cc7aecae581d442e5cc8052f13a827662d8a63619e3f0a40f328f`  
		Last Modified: Thu, 05 Nov 2026 18:52:08 GMT  
		Size: 1.3 MB (1288702 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:defc35eed1069d29f57053568ade3e7d90ddab09d2528c781a12fa1287a05684`  
		Last Modified: Thu, 05 Nov 2026 18:52:09 GMT  
		Size: 17.7 KB (17682 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine3.23` - linux; 386

```console
$ docker pull irssi@sha256:728437aee988d9d937d5ef62367c260d9cb7c93533a4b34004b4c54164d34359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20174407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6db4feae906072daac04e6710dec0d239f60d4809479d0b709fa206cc560af1f`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:03 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:16:03 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:16:03 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:16:03 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:16:03 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:16:21 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:16:21 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:16:21 GMT
USER user
# Thu, 05 Nov 2026 18:16:21 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40518fdd37d486420a6285f46f48189c5d30158d971d837be9177f2d5403cf70`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 10.3 MB (10349718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24ebdbd0e0933ec8446d913f38739a34833c377aa1b658aa8fc2117073c3fade`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9073c9219b05a2aa18308c501b6f4657b6a8b596aff9aca2ac23472982fe34e`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 6.1 MB (6145124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:def7a127dad963b178d0eddcab5a02a4d864f8ab9a96cd133fce8e7a6e6274f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5782ac570c48b3c5d63277469ba727fd310bb9fe34391f4640cafe249a18b3e`

```dockerfile
```

-	Layers:
	-	`sha256:c9f42695ab2c742d36040694bf1bf1dbaf14cc3ac293269e2f2e9ad2f797d2e9`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 1.3 MB (1289203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5e6769fc1db6391289bd52f74bedc3848963117a9b826b307c9b6ccf076369d`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 17.4 KB (17444 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine3.23` - linux; ppc64le

```console
$ docker pull irssi@sha256:e0136ba60195f7213a6263c33992585b619aac233d5e01fc258b1ada0a361af6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21223439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b96fd502d118d3bb9211ee6c311f182f6e00fd31a9dbb8a7706942d7a53c859e`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:47 GMT
ADD alpine-minirootfs-3.23.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:47 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:32:46 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 21:32:47 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 21:32:47 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 21:32:47 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 21:32:47 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 21:33:11 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 21:33:12 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 21:33:12 GMT
USER user
# Thu, 05 Nov 2026 21:33:12 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6f9768cc5f6423f8942751565e49e2e8feab6597d57ab26efd88d8959ad0f0f5`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3819006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aca130ba2e0da33a5196b85f90cfdecd19a459d839ebf572009efd76fffdda6`  
		Last Modified: Thu, 05 Nov 2026 21:33:25 GMT  
		Size: 11.0 MB (11039500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc1bb579f9c86a2f820581c1ddaf552bb05a70f51cbaf4c327f4d4d645091b9f`  
		Last Modified: Thu, 05 Nov 2026 21:33:24 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb660c8cf836dbdba17286858831b90a95c9bb655cc12569d5e0ef02d5b864f1`  
		Last Modified: Thu, 05 Nov 2026 21:33:25 GMT  
		Size: 6.4 MB (6363947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:710fa4464bf8878fb26fa3512858e97f096cc16b9b01e17461ca5e822af59399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2bc021c224d7a6c2b73c0db962a3fc3790e5ffa9bc6469c7a6c64234c98f3af`

```dockerfile
```

-	Layers:
	-	`sha256:049a8f8f79f429d7052c3b0f2363c659c3f846881635b38d8ed477f4e7f6552a`  
		Last Modified: Thu, 05 Nov 2026 21:33:24 GMT  
		Size: 1.3 MB (1288655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abc5a12c3b21650d222f92caa384d017c822d820fa0ef33e172f3cfd2ac91a2d`  
		Last Modified: Thu, 05 Nov 2026 21:33:24 GMT  
		Size: 17.6 KB (17572 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine3.23` - linux; riscv64

```console
$ docker pull irssi@sha256:70515621b1f7005a688f3eb0c9f199fdb05dd2e06cf5805355a5e6f9fe386a36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19948006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ce8a14b82879cf28712edd7bd98eae1fa334ba9636859d3a5fb774c2923ce2`
-	Default Command: `["irssi"]`

```dockerfile
# Sun, 08 Nov 2026 12:36:05 GMT
ADD alpine-minirootfs-3.23.8-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:36:05 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 01:00:49 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Tue, 10 Nov 2026 01:00:50 GMT
ENV HOME=/home/user
# Tue, 10 Nov 2026 01:00:50 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 10 Nov 2026 01:00:50 GMT
ENV LANG=C.UTF-8
# Tue, 10 Nov 2026 01:00:50 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 10 Nov 2026 01:04:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Tue, 10 Nov 2026 01:04:48 GMT
WORKDIR /home/user
# Tue, 10 Nov 2026 01:04:48 GMT
USER user
# Tue, 10 Nov 2026 01:04:48 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:40d8941112ffcb85e567141e79f094eb8ab795e6e171c6548ddc812cd9b19486`  
		Last Modified: Sun, 08 Nov 2026 12:36:40 GMT  
		Size: 3.6 MB (3580129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f90c86181fbd68092541cb842693653d896afd7d7376cfb2fb915d4e883bbb8`  
		Last Modified: Tue, 10 Nov 2026 01:05:52 GMT  
		Size: 10.2 MB (10248012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b1dc191b1922684b589438ddb0772e0d8814c6e7e03a05efbb0048a7c847c6`  
		Last Modified: Tue, 10 Nov 2026 01:05:50 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c0bb63007a3faed438c3a92f41b62f5559ec77904c35a466be7183c9d7017f`  
		Last Modified: Tue, 10 Nov 2026 01:05:52 GMT  
		Size: 6.1 MB (6118881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:f3220f61f3a2b63cfb83c2aa3a039471357c879c56950ee454d72b079a2ffeb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddea7a2fc0df722ebde9cf2fafa41d3718945ae0781c10c1933ff42c88ba434e`

```dockerfile
```

-	Layers:
	-	`sha256:055473ab57cb90aa50a23fa030f322a834e6de412f00c3994c8e3b5ac0f00dcb`  
		Last Modified: Tue, 10 Nov 2026 01:05:50 GMT  
		Size: 1.3 MB (1288645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ababdabb5fc4283d36e6938af191f89d433d533fe7a5ee107227a2c61dfed58`  
		Last Modified: Tue, 10 Nov 2026 01:05:50 GMT  
		Size: 17.6 KB (17570 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine3.23` - linux; s390x

```console
$ docker pull irssi@sha256:72d543b1bdd2bc361bdbb7e1c37a04c40dbc98e2f5d75ca43508e3d6465be9f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21289259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cf20a46d6ccf7fe1ab269f1d33736de96a1742797a2bea78c31ee1df96968f0`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.23.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:21 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:16:22 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:16:22 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:16:22 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:16:22 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:16:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:16:36 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:16:36 GMT
USER user
# Thu, 05 Nov 2026 18:16:36 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f31bb69faaf3a010059c4f255f2a9e2738683be277999f627a4cd72325be9271`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.7 MB (3718347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98075b8354a00af8cd754f659acdeb71e63b663094afefc5f3e3d5826b41bba8`  
		Last Modified: Thu, 05 Nov 2026 18:16:48 GMT  
		Size: 11.4 MB (11364945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d82c65930b81ebdd0b42b966ef8c33baf21d01c0da3ce19f2bcf3520f7165fb`  
		Last Modified: Thu, 05 Nov 2026 18:16:48 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd80407b4d39455a636b3ad42ffa1c7e42fb3933ad132949ef163590e5cc54ac`  
		Last Modified: Thu, 05 Nov 2026 18:16:48 GMT  
		Size: 6.2 MB (6204981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:1038b62ab49bd4e651c9339e27203f780644bd3829e97bab3eefd33ccdea0e0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:470a73da7320635c4bb1f055661cad03623d59e9cf3a3d4285ff76bf84990164`

```dockerfile
```

-	Layers:
	-	`sha256:15348a0e166d7840dcb90d22f9aef68e8ef70c496e845cd7667d338c7bf2a2c5`  
		Last Modified: Thu, 05 Nov 2026 18:16:48 GMT  
		Size: 1.3 MB (1288597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e522bf53ac5c040ff0ef857951718702fcb095bcc3d91bbff9ca3efc235dde35`  
		Last Modified: Thu, 05 Nov 2026 18:16:47 GMT  
		Size: 17.5 KB (17498 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1-trixie`

```console
$ docker pull irssi@sha256:21f55a0202af8d72c5b461c18d1923a71d443f4684efb8c4eac2d96e170d60f3
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
$ docker pull irssi@sha256:7b15c38df72dda518438177789d682cfd8d17d7b7594cbde3e04eb20a299656d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53948745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:694fa8d2229b6990d1e41c5ee35b0b484eb01fdcf222b64f9476084b0224bb1a`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:14:45 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:14:45 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:14:45 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:14:45 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:15:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:15:25 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:15:25 GMT
USER user
# Tue, 24 Nov 2026 04:15:25 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4163f095785a7400056a9db093405098957293a4dedade7fa1f13b49a913886b`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 19.2 MB (19233804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bddb90087b0ee70ccee4f7487f3432bc43b838ea6abded1eb5d5ddb82ccf70ae`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 3.3 KB (3325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:046dd3d4e3fd8a2eb4efb305d7e2fc39c36fe0514255ada3fa205c26997f1400`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 4.9 MB (4869402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:82e47ea872540ea8c85771064a983bf05844eecad18e4c91a387f76cd19c3224
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6264fed2114e9b18838d9625575ce6e44b22868346984b87fa8294d3d1826e25`

```dockerfile
```

-	Layers:
	-	`sha256:7f06da72a1b04ed9d899bd045574351277958197e28b480af78c31af7d40fdf0`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 5.6 MB (5595848 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2131319c69565da6aae551d42e74ea5c0872d8fe507e1c213e373268bd213f9`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; arm variant v5

```console
$ docker pull irssi@sha256:eb153dcc12989ac5be3816464fed644952e6619f36005edd4425664d856be802
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (51038784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b07f47a5f5bc7eee3d431c103990e258453a60c0743e9c834d3d100818fa9837`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:13:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:13:17 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 07:13:17 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 07:13:17 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:13:17 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 07:14:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Thu, 05 Nov 2026 07:14:06 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 07:14:06 GMT
USER user
# Thu, 05 Nov 2026 07:14:06 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94fab4177c1dfeb473ac657143cdd25b1216f7ce13c970d8112525307d15acfa`  
		Last Modified: Thu, 05 Nov 2026 07:14:18 GMT  
		Size: 18.3 MB (18304831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d4194f84be496cb54fea5d16441d45cf82e055e2bccd1fb90bccc44e54c1a8d`  
		Last Modified: Thu, 05 Nov 2026 07:14:17 GMT  
		Size: 3.3 KB (3327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:674730fc0c383a457de7dae2f60e6bb962e42ecf0d09ef112620bc5ce41708f9`  
		Last Modified: Thu, 05 Nov 2026 07:14:18 GMT  
		Size: 4.7 MB (4710984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:121dcd1e72b452949384bcc968376f1fbc4dd9cdc7c0bcd95e1f3eb37230573b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5612140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea617290a9f3600bac75e5902477d7bf94c303ea3eef1d7c1c1964ff71b44ea8`

```dockerfile
```

-	Layers:
	-	`sha256:d311083c31a5974a65689a2aec4610671222d1bf7c7d4918926016b6eb4cf58e`  
		Last Modified: Thu, 05 Nov 2026 07:14:18 GMT  
		Size: 5.6 MB (5593351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:396afaeabb57df6c3302cbe0a6e1418de93141bae973cb7e030967f89b1979e1`  
		Last Modified: Thu, 05 Nov 2026 07:14:17 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; arm variant v7

```console
$ docker pull irssi@sha256:e1bf1212a5e93e6c44ab07261066b0f4cd0b5c84f4f54e947aa6a34b5e4d1b85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48762576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3862d1f27b2a927452327b4cea4a69965096b2c7840fece3aa05e254c2045f4`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:20:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:20:13 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:20:13 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:20:13 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:20:13 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:20:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:20:55 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:20:55 GMT
USER user
# Tue, 24 Nov 2026 04:20:55 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b68b6f18cfebee93ffa901a17bb41e5dafbdd2dd07727a8fb5f2a0fbb17e4bd3`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 17.9 MB (17935385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7550455594fcfa52fe32a1cca8e6455a295e92b00081d1d47699392f840a75a`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:816e64db09dacbca2882225fc541a2a06b0d1e526e519ca98c0c93492e4af5ac`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 4.6 MB (4561371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:65ef887f995bcca37fe42b7ba4bde3d35e7d4e3722ec673f5421112ecb6b8e05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5615208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abd82f57b918d4463cf4dbc531e4a828196bb9e2c025ee53d6f8767e23948208`

```dockerfile
```

-	Layers:
	-	`sha256:cbff29ef1efa4ba10c1f237af9a401a850e1f5e924b257c75123687f216bf15c`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 5.6 MB (5596419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b4e69a6cd48bd4fc33136cee98bb9907eabe9ab8c43974506398e126a3210af`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:cdf6d721b4b6ab7d2f343208685bcac0d6ac6b6db2cf66f67a031f47ae04f9ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54058474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc04c3f235c43312613f005eed1b3cde8fb7966fdc0e79074261ce388cee624`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:14:48 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:14:48 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:14:48 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:14:48 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:15:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:15:25 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:15:25 GMT
USER user
# Tue, 24 Nov 2026 04:15:25 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1a84782dc5f2cd0146695bb2db9ef797364f2cf65b26c341d6c904eb105ee98`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 19.1 MB (19074969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:782647b4751588d53e9a6ea5ccfe3a7305bcbcc8114bcac6154e5fd0ee41a4ec`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:732424b924ec579490991a4aeb6d173cc02b2953ddaf2b312bd7980efcf43097`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 4.8 MB (4782111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:a93d578b5f5fbd52939ae483e6a75fe6bf16519e97e7e8f7e86bc8283d9f2121
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5621157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:040264ef51f0c59ac4f52d631dd9712f2e35212ad41e10d9fa73dca5b7e885c6`

```dockerfile
```

-	Layers:
	-	`sha256:94abf7e8b65f8e9da980d67329e4daca999990f9960ca6b05c66747fe8028660`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 5.6 MB (5602324 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8098ad63c83e8d0bc65b00fc4f42e29e299291f3033aa91f02734a4d31fe75f5`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; 386

```console
$ docker pull irssi@sha256:cb8bd42e30ac32b94e2f08719b590b16205c5fb4035d3231cc5a5b7d0c4b881a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54988559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b9fa2b3847ba141082182c759079f298f46130b3b3c2ca3ccfeb59bc006dbd0`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:14:12 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:14:12 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:14:12 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:14:12 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:14:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:14:53 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:14:53 GMT
USER user
# Tue, 24 Nov 2026 04:14:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:7fb9e5f471a439ab129e9fe258623bccb6c4da1d0313890202b55fd6b5839533`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 31.4 MB (31357919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34a950215307bf93554e724526a44e85993dae1c806fa8ae754287027482f540`  
		Last Modified: Tue, 24 Nov 2026 04:15:03 GMT  
		Size: 18.8 MB (18757461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea8f6101a0a5f007a8a95653053b98c972c43930817bace83573564596cae540`  
		Last Modified: Tue, 24 Nov 2026 04:15:03 GMT  
		Size: 3.3 KB (3327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff87df54bb9fa2736a5e49e342b600ae0a110d7e683aa75c0f2e54bce4b3ab6c`  
		Last Modified: Tue, 24 Nov 2026 04:15:03 GMT  
		Size: 4.9 MB (4869820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:3cc0a1dd9a9c3c0051fb481cda2ef84c99a1580e9141de21a403004bad734b29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5610565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18779fe01808861ad766c36f499ed2f055c5c85009b6d0740411d7895eed02f7`

```dockerfile
```

-	Layers:
	-	`sha256:8ba580f57cb2605c7702fed4a32e996833535c6134dae9b4beee22b4b4c25683`  
		Last Modified: Tue, 24 Nov 2026 04:15:03 GMT  
		Size: 5.6 MB (5591971 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a72dc7c8c6e351e2319bcf458af09973e7a24dd46de69bf16d77a492ae7170b`  
		Last Modified: Tue, 24 Nov 2026 04:15:02 GMT  
		Size: 18.6 KB (18594 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; ppc64le

```console
$ docker pull irssi@sha256:aa124609203a3a98fa1ceae427debd64e11c46e6f2d7ff17e7a49253c6cb27b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58324628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34dbdec57a8ee457db715bceb612aea0a3a79c6bd18190017018f5b8f8c98e18`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:24:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:24:15 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:24:15 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:24:15 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:24:15 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:25:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:25:43 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:25:43 GMT
USER user
# Tue, 24 Nov 2026 04:25:43 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6d599ee149161123db04af161af351247dbcd557ec08f78d82de0c89b6844f6c`  
		Last Modified: Tue, 24 Nov 2026 03:42:42 GMT  
		Size: 33.7 MB (33652639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d40040ff7c924fd070789a90df56f27eab4e574660c268dd423f48d3ceda7de`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 19.6 MB (19568633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af5b568fa79d5599705b5c17e19d295c5202197478716c9c8a14d9bba9735a46`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 3.3 KB (3325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:675e1e37181eef3ad607cb7892abbb5c394a3a33236be06b98e6a488d3d376e6`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 5.1 MB (5099999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:0949eb88547835e917a0afa69c6898c92ebd0c63e31fcf8b663851ae15376f71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5621602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:467625068771cd8c74b3cf51595af73868383680f50dcc2da480ced2e660cba0`

```dockerfile
```

-	Layers:
	-	`sha256:92bb1fefc5b5546dc8580b76650ce375b8d68e957503d95472377c8ea2043ff3`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 5.6 MB (5602879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72c23bb743a8d46747a814e5975f9097a066f144d600fd6abbf099ee4e05b7d0`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; riscv64

```console
$ docker pull irssi@sha256:fd758385a4b02c9d9e80d13998c8860b85685e47787f20a8e992a1f9d1a6a62a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51782249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fe3a44e915e81dd11aa7eef4592fde6fd4701a0681e1fcbdb3aa2992d830d8d`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 11:31:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 11:31:44 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 11:31:44 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 11:31:44 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 11:31:44 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 11:38:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Thu, 05 Nov 2026 11:38:53 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 11:38:53 GMT
USER user
# Thu, 05 Nov 2026 11:38:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9c2319a355ee4f65c20948fbe6e7dc4455455e24645204a22968523fae6b960`  
		Last Modified: Thu, 05 Nov 2026 11:41:02 GMT  
		Size: 18.6 MB (18570110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21c11a51c8760fd49dd499654c23f4172be4f0438e97703bff3b5d3e8130308e`  
		Last Modified: Thu, 05 Nov 2026 11:40:58 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2cb1f292825bf90d712819ceab2bf4d161ade4accb46ddb8070e3dc4b52041b`  
		Last Modified: Thu, 05 Nov 2026 11:41:00 GMT  
		Size: 4.9 MB (4862595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:8b397c081745fa12207cc2d4d68467baedf0fff0a6876209383eade4f40a10f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5605827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b36a001cd2ef7a0248a66e36d738e21a200313277e2968099de58e8bff77e5c2`

```dockerfile
```

-	Layers:
	-	`sha256:0bbc69528478fb204c597c5a81cfbe7e096101162374ac51dea8bca1244e9132`  
		Last Modified: Thu, 05 Nov 2026 11:41:00 GMT  
		Size: 5.6 MB (5587105 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:391674e9cd31f49507193d4cf927463c8efe5e03255c0f82914ab3cbbceea723`  
		Last Modified: Thu, 05 Nov 2026 11:40:58 GMT  
		Size: 18.7 KB (18722 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; s390x

```console
$ docker pull irssi@sha256:c99740094bb8fc3a42fe39a0df1d90c249341718e2531b8ee66d2ff5e37557b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54621603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cf62b7d7530301bf10e970850994b086459bfdda74a948cd236bafe4489b5c5`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:15:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:15:02 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 07:15:02 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 07:15:02 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:15:02 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 07:15:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Thu, 05 Nov 2026 07:15:41 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 07:15:41 GMT
USER user
# Thu, 05 Nov 2026 07:15:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56d570360718c12df13fb3403ebeeda60ad5cbd6ebe703ea5bfe0782b4c5f1ea`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 19.8 MB (19785679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec74ec51933f3b95a7dee95f4010c37c659cc34b70a7259650c96509ff57739`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 3.3 KB (3335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d163cf2a08ccfc0964f43337f0de3907c7b95345892d57206d45abeb4fab0c8`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 4.9 MB (4908440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:b668601dc63bea1aaf21eb394cb35899e97ec155269b081c7b1611f5cae7cff6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5615357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3240edcbc9b69bb78f17b066d101e992f5d1b2698c631b499dc9d5fe1f7c3a54`

```dockerfile
```

-	Layers:
	-	`sha256:b3ee1717ede5dd9c1d66ce2a188d0b16069dc0efd1d5805b7aecee0bfe4ebb56`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 5.6 MB (5596707 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f7dc624e297c33de874aba098bf70a12156b8003603defc82203e66703c5594`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 18.6 KB (18650 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1.4`

```console
$ docker pull irssi@sha256:21f55a0202af8d72c5b461c18d1923a71d443f4684efb8c4eac2d96e170d60f3
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
$ docker pull irssi@sha256:7b15c38df72dda518438177789d682cfd8d17d7b7594cbde3e04eb20a299656d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53948745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:694fa8d2229b6990d1e41c5ee35b0b484eb01fdcf222b64f9476084b0224bb1a`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:14:45 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:14:45 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:14:45 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:14:45 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:15:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:15:25 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:15:25 GMT
USER user
# Tue, 24 Nov 2026 04:15:25 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4163f095785a7400056a9db093405098957293a4dedade7fa1f13b49a913886b`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 19.2 MB (19233804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bddb90087b0ee70ccee4f7487f3432bc43b838ea6abded1eb5d5ddb82ccf70ae`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 3.3 KB (3325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:046dd3d4e3fd8a2eb4efb305d7e2fc39c36fe0514255ada3fa205c26997f1400`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 4.9 MB (4869402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:82e47ea872540ea8c85771064a983bf05844eecad18e4c91a387f76cd19c3224
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6264fed2114e9b18838d9625575ce6e44b22868346984b87fa8294d3d1826e25`

```dockerfile
```

-	Layers:
	-	`sha256:7f06da72a1b04ed9d899bd045574351277958197e28b480af78c31af7d40fdf0`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 5.6 MB (5595848 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2131319c69565da6aae551d42e74ea5c0872d8fe507e1c213e373268bd213f9`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; arm variant v5

```console
$ docker pull irssi@sha256:eb153dcc12989ac5be3816464fed644952e6619f36005edd4425664d856be802
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (51038784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b07f47a5f5bc7eee3d431c103990e258453a60c0743e9c834d3d100818fa9837`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:13:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:13:17 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 07:13:17 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 07:13:17 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:13:17 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 07:14:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Thu, 05 Nov 2026 07:14:06 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 07:14:06 GMT
USER user
# Thu, 05 Nov 2026 07:14:06 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94fab4177c1dfeb473ac657143cdd25b1216f7ce13c970d8112525307d15acfa`  
		Last Modified: Thu, 05 Nov 2026 07:14:18 GMT  
		Size: 18.3 MB (18304831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d4194f84be496cb54fea5d16441d45cf82e055e2bccd1fb90bccc44e54c1a8d`  
		Last Modified: Thu, 05 Nov 2026 07:14:17 GMT  
		Size: 3.3 KB (3327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:674730fc0c383a457de7dae2f60e6bb962e42ecf0d09ef112620bc5ce41708f9`  
		Last Modified: Thu, 05 Nov 2026 07:14:18 GMT  
		Size: 4.7 MB (4710984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:121dcd1e72b452949384bcc968376f1fbc4dd9cdc7c0bcd95e1f3eb37230573b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5612140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea617290a9f3600bac75e5902477d7bf94c303ea3eef1d7c1c1964ff71b44ea8`

```dockerfile
```

-	Layers:
	-	`sha256:d311083c31a5974a65689a2aec4610671222d1bf7c7d4918926016b6eb4cf58e`  
		Last Modified: Thu, 05 Nov 2026 07:14:18 GMT  
		Size: 5.6 MB (5593351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:396afaeabb57df6c3302cbe0a6e1418de93141bae973cb7e030967f89b1979e1`  
		Last Modified: Thu, 05 Nov 2026 07:14:17 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; arm variant v7

```console
$ docker pull irssi@sha256:e1bf1212a5e93e6c44ab07261066b0f4cd0b5c84f4f54e947aa6a34b5e4d1b85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48762576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3862d1f27b2a927452327b4cea4a69965096b2c7840fece3aa05e254c2045f4`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:20:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:20:13 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:20:13 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:20:13 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:20:13 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:20:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:20:55 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:20:55 GMT
USER user
# Tue, 24 Nov 2026 04:20:55 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b68b6f18cfebee93ffa901a17bb41e5dafbdd2dd07727a8fb5f2a0fbb17e4bd3`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 17.9 MB (17935385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7550455594fcfa52fe32a1cca8e6455a295e92b00081d1d47699392f840a75a`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:816e64db09dacbca2882225fc541a2a06b0d1e526e519ca98c0c93492e4af5ac`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 4.6 MB (4561371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:65ef887f995bcca37fe42b7ba4bde3d35e7d4e3722ec673f5421112ecb6b8e05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5615208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abd82f57b918d4463cf4dbc531e4a828196bb9e2c025ee53d6f8767e23948208`

```dockerfile
```

-	Layers:
	-	`sha256:cbff29ef1efa4ba10c1f237af9a401a850e1f5e924b257c75123687f216bf15c`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 5.6 MB (5596419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b4e69a6cd48bd4fc33136cee98bb9907eabe9ab8c43974506398e126a3210af`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:cdf6d721b4b6ab7d2f343208685bcac0d6ac6b6db2cf66f67a031f47ae04f9ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54058474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc04c3f235c43312613f005eed1b3cde8fb7966fdc0e79074261ce388cee624`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:14:48 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:14:48 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:14:48 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:14:48 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:15:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:15:25 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:15:25 GMT
USER user
# Tue, 24 Nov 2026 04:15:25 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1a84782dc5f2cd0146695bb2db9ef797364f2cf65b26c341d6c904eb105ee98`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 19.1 MB (19074969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:782647b4751588d53e9a6ea5ccfe3a7305bcbcc8114bcac6154e5fd0ee41a4ec`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:732424b924ec579490991a4aeb6d173cc02b2953ddaf2b312bd7980efcf43097`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 4.8 MB (4782111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:a93d578b5f5fbd52939ae483e6a75fe6bf16519e97e7e8f7e86bc8283d9f2121
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5621157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:040264ef51f0c59ac4f52d631dd9712f2e35212ad41e10d9fa73dca5b7e885c6`

```dockerfile
```

-	Layers:
	-	`sha256:94abf7e8b65f8e9da980d67329e4daca999990f9960ca6b05c66747fe8028660`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 5.6 MB (5602324 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8098ad63c83e8d0bc65b00fc4f42e29e299291f3033aa91f02734a4d31fe75f5`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; 386

```console
$ docker pull irssi@sha256:cb8bd42e30ac32b94e2f08719b590b16205c5fb4035d3231cc5a5b7d0c4b881a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54988559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b9fa2b3847ba141082182c759079f298f46130b3b3c2ca3ccfeb59bc006dbd0`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:14:12 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:14:12 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:14:12 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:14:12 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:14:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:14:53 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:14:53 GMT
USER user
# Tue, 24 Nov 2026 04:14:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:7fb9e5f471a439ab129e9fe258623bccb6c4da1d0313890202b55fd6b5839533`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 31.4 MB (31357919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34a950215307bf93554e724526a44e85993dae1c806fa8ae754287027482f540`  
		Last Modified: Tue, 24 Nov 2026 04:15:03 GMT  
		Size: 18.8 MB (18757461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea8f6101a0a5f007a8a95653053b98c972c43930817bace83573564596cae540`  
		Last Modified: Tue, 24 Nov 2026 04:15:03 GMT  
		Size: 3.3 KB (3327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff87df54bb9fa2736a5e49e342b600ae0a110d7e683aa75c0f2e54bce4b3ab6c`  
		Last Modified: Tue, 24 Nov 2026 04:15:03 GMT  
		Size: 4.9 MB (4869820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:3cc0a1dd9a9c3c0051fb481cda2ef84c99a1580e9141de21a403004bad734b29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5610565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18779fe01808861ad766c36f499ed2f055c5c85009b6d0740411d7895eed02f7`

```dockerfile
```

-	Layers:
	-	`sha256:8ba580f57cb2605c7702fed4a32e996833535c6134dae9b4beee22b4b4c25683`  
		Last Modified: Tue, 24 Nov 2026 04:15:03 GMT  
		Size: 5.6 MB (5591971 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a72dc7c8c6e351e2319bcf458af09973e7a24dd46de69bf16d77a492ae7170b`  
		Last Modified: Tue, 24 Nov 2026 04:15:02 GMT  
		Size: 18.6 KB (18594 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; ppc64le

```console
$ docker pull irssi@sha256:aa124609203a3a98fa1ceae427debd64e11c46e6f2d7ff17e7a49253c6cb27b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58324628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34dbdec57a8ee457db715bceb612aea0a3a79c6bd18190017018f5b8f8c98e18`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:24:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:24:15 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:24:15 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:24:15 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:24:15 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:25:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:25:43 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:25:43 GMT
USER user
# Tue, 24 Nov 2026 04:25:43 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6d599ee149161123db04af161af351247dbcd557ec08f78d82de0c89b6844f6c`  
		Last Modified: Tue, 24 Nov 2026 03:42:42 GMT  
		Size: 33.7 MB (33652639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d40040ff7c924fd070789a90df56f27eab4e574660c268dd423f48d3ceda7de`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 19.6 MB (19568633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af5b568fa79d5599705b5c17e19d295c5202197478716c9c8a14d9bba9735a46`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 3.3 KB (3325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:675e1e37181eef3ad607cb7892abbb5c394a3a33236be06b98e6a488d3d376e6`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 5.1 MB (5099999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:0949eb88547835e917a0afa69c6898c92ebd0c63e31fcf8b663851ae15376f71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5621602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:467625068771cd8c74b3cf51595af73868383680f50dcc2da480ced2e660cba0`

```dockerfile
```

-	Layers:
	-	`sha256:92bb1fefc5b5546dc8580b76650ce375b8d68e957503d95472377c8ea2043ff3`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 5.6 MB (5602879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72c23bb743a8d46747a814e5975f9097a066f144d600fd6abbf099ee4e05b7d0`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; riscv64

```console
$ docker pull irssi@sha256:fd758385a4b02c9d9e80d13998c8860b85685e47787f20a8e992a1f9d1a6a62a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51782249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fe3a44e915e81dd11aa7eef4592fde6fd4701a0681e1fcbdb3aa2992d830d8d`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 11:31:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 11:31:44 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 11:31:44 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 11:31:44 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 11:31:44 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 11:38:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Thu, 05 Nov 2026 11:38:53 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 11:38:53 GMT
USER user
# Thu, 05 Nov 2026 11:38:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9c2319a355ee4f65c20948fbe6e7dc4455455e24645204a22968523fae6b960`  
		Last Modified: Thu, 05 Nov 2026 11:41:02 GMT  
		Size: 18.6 MB (18570110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21c11a51c8760fd49dd499654c23f4172be4f0438e97703bff3b5d3e8130308e`  
		Last Modified: Thu, 05 Nov 2026 11:40:58 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2cb1f292825bf90d712819ceab2bf4d161ade4accb46ddb8070e3dc4b52041b`  
		Last Modified: Thu, 05 Nov 2026 11:41:00 GMT  
		Size: 4.9 MB (4862595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:8b397c081745fa12207cc2d4d68467baedf0fff0a6876209383eade4f40a10f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5605827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b36a001cd2ef7a0248a66e36d738e21a200313277e2968099de58e8bff77e5c2`

```dockerfile
```

-	Layers:
	-	`sha256:0bbc69528478fb204c597c5a81cfbe7e096101162374ac51dea8bca1244e9132`  
		Last Modified: Thu, 05 Nov 2026 11:41:00 GMT  
		Size: 5.6 MB (5587105 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:391674e9cd31f49507193d4cf927463c8efe5e03255c0f82914ab3cbbceea723`  
		Last Modified: Thu, 05 Nov 2026 11:40:58 GMT  
		Size: 18.7 KB (18722 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; s390x

```console
$ docker pull irssi@sha256:c99740094bb8fc3a42fe39a0df1d90c249341718e2531b8ee66d2ff5e37557b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54621603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cf62b7d7530301bf10e970850994b086459bfdda74a948cd236bafe4489b5c5`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:15:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:15:02 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 07:15:02 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 07:15:02 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:15:02 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 07:15:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Thu, 05 Nov 2026 07:15:41 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 07:15:41 GMT
USER user
# Thu, 05 Nov 2026 07:15:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56d570360718c12df13fb3403ebeeda60ad5cbd6ebe703ea5bfe0782b4c5f1ea`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 19.8 MB (19785679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec74ec51933f3b95a7dee95f4010c37c659cc34b70a7259650c96509ff57739`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 3.3 KB (3335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d163cf2a08ccfc0964f43337f0de3907c7b95345892d57206d45abeb4fab0c8`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 4.9 MB (4908440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:b668601dc63bea1aaf21eb394cb35899e97ec155269b081c7b1611f5cae7cff6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5615357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3240edcbc9b69bb78f17b066d101e992f5d1b2698c631b499dc9d5fe1f7c3a54`

```dockerfile
```

-	Layers:
	-	`sha256:b3ee1717ede5dd9c1d66ce2a188d0b16069dc0efd1d5805b7aecee0bfe4ebb56`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 5.6 MB (5596707 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f7dc624e297c33de874aba098bf70a12156b8003603defc82203e66703c5594`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 18.6 KB (18650 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1.4-alpine`

```console
$ docker pull irssi@sha256:62fbc3514f8ef0bf587137800856ee4dffbfaddf6ca8402501698a6491e3205d
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
$ docker pull irssi@sha256:10682944689d0bac10ff3de89c039609a3681d6617f04efe8825c78f8627eddd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20737030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7773520a95b316f4c62a1bdc7cfeed99cea83695b4dcc001fec54eb47413403e`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:56:10 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:56:10 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:56:10 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:56:10 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:56:10 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:56:23 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:56:23 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:56:23 GMT
USER user
# Thu, 05 Nov 2026 18:56:23 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153eb96a9b5dc9565f557c5c5f7222a7c97681e0610b74c949b59796f035ed08`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 10.8 MB (10815513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24281d2acaac72631003e68f6dd533dee76d6331e278182196edbad294f84965`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df7a0f14676f6da8bd15597a6551a78fa020761ba69af7b612210fd643ddb36`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 6.1 MB (6067943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:6f97a389d6ddc5adf3b3ee6ab67608a9de87266a9088c23446d8151c5f26fc2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b40a4574d537c018153d004dc4096cb0bc60c32b0712bf2c6d0bffb0f3a5f50b`

```dockerfile
```

-	Layers:
	-	`sha256:dab5f1c3d4c9120402c206e895bf05523e83e1e522f5ed83451d0a9b1ea40366`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 1.3 MB (1289248 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f455d1c5c8a75f18e093d4ec5efaa0d3eadd6d062703fb1258a38e2d3f0f14fb`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 17.5 KB (17498 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine` - linux; arm variant v6

```console
$ docker pull irssi@sha256:e9940753f49622f53fefa43723986bd654936a0435de06e08034aea06af0dd8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19480325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:169aa2e733fe5fde2822935396b616ee295002f3242e36ef32678347fe8bbfd4`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:01 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:19:01 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:19:01 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:19:01 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:19:01 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:19:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:19:17 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:19:17 GMT
USER user
# Thu, 05 Nov 2026 18:19:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:010e3505d8b0122aadb8b0d0b5e2fac89a1c6ea0bddbbb19d5ebe0ab095e5fb6`  
		Last Modified: Thu, 05 Nov 2026 18:19:23 GMT  
		Size: 10.0 MB (10025762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5864cd691741211885c86f434f91180255f33f38b737be953a2278ad263552bc`  
		Last Modified: Thu, 05 Nov 2026 18:19:22 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914ba4b363da5fc964a4b0813a887a729a99d5e27c1c13ea86ab456605478e9a`  
		Last Modified: Thu, 05 Nov 2026 18:19:23 GMT  
		Size: 5.9 MB (5895325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:9d57c895bd73dbe39627f16b7135eee83efd300a7b2b56ea07b87bc982597400
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 KB (17422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de1d9730b7b2adb55d4570e355d168e60b04084ca5e55f08c8a8ae4b573059c4`

```dockerfile
```

-	Layers:
	-	`sha256:26ab2839e9fe07c6a50eae7f349e1f27a440355aab740c4f175d2adcc7c4f97a`  
		Last Modified: Thu, 05 Nov 2026 18:19:22 GMT  
		Size: 17.4 KB (17422 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine` - linux; arm variant v7

```console
$ docker pull irssi@sha256:d9abe7a8abb266bbf575c5f1f30b96d622bb8f58b9030a09494cff9e182c6c3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18770756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2a75c7bfa7b3714cbaf10607a64a4cfedd729a31299ff3adeef47873972602a`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:17 GMT
ADD alpine-minirootfs-3.23.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:17 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:18:30 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:18:30 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:18:30 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:18:30 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:18:30 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:18:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:18:47 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:18:47 GMT
USER user
# Thu, 05 Nov 2026 18:18:47 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2715a345c82dd389382733a6d4282bdbb8950eed4bdb95c4a8e332b6b5d8adf5`  
		Last Modified: Thu, 05 Nov 2026 18:01:23 GMT  
		Size: 3.3 MB (3266828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea5432e6ab0500a7b2737280cfb74cda74139ce5a4f3a224b229bf12b413d85`  
		Last Modified: Thu, 05 Nov 2026 18:18:55 GMT  
		Size: 9.9 MB (9859395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a8a641cfb83b11ab5c8b97d83677380490ef303667f41735931f552b8ecdd8f`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209b5ffae4c8d90d9762885384e0b0f0ce71a005858f9e8a9fb4d8eae9639355`  
		Last Modified: Thu, 05 Nov 2026 18:18:55 GMT  
		Size: 5.6 MB (5643548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:63752f1ba387f3326217f4d82afa72d3c726cd32807659b39695ff6d5045e656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1309290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415f4add2f905e745c3497e5cf774c0482952267511c39b7da528b0f8f6905ee`

```dockerfile
```

-	Layers:
	-	`sha256:4a25585cadfff889ac0f34f9bde8009f5d98a5e84c8f37c7ee9fc4d68c2eac8b`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 1.3 MB (1291656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d714a48df0d2612d4f40390d953d9df3b679b6a161cab4b6219ef211b78053e5`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 17.6 KB (17634 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:6de2ad42d89c559426498e7483c1db0abf023694abf0275757ba723fd09aef7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20879484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f2f910b7a141b009fd6ce3e946f30adc985da47cd52078d15855fed8136c00f`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:51:49 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:51:50 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:51:50 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:51:50 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:51:50 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:52:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:52:02 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:52:02 GMT
USER user
# Thu, 05 Nov 2026 18:52:02 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5638efab2b4eaba0b025282b404bbd862223b1712ffc08be8ef3d81227755f8`  
		Last Modified: Thu, 05 Nov 2026 18:52:09 GMT  
		Size: 10.7 MB (10749440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4317a1f912d9d7d65d54d4531a6b486669cae379ffef4fa87439ec8a235306e`  
		Last Modified: Thu, 05 Nov 2026 18:52:08 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93bd37bb7508085789e03c8049ef43da625cafb166d2d06d3fe40e0a4f09328`  
		Last Modified: Thu, 05 Nov 2026 18:52:09 GMT  
		Size: 5.9 MB (5938838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:cebbec75f69919364d547da5dc8aee60c12a3d17f18dfb37688ada116bacfbf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad59022be4a9e5ff0f3cddd444f22a0dd593d613fbea4e721c24ef9a0fbc814a`

```dockerfile
```

-	Layers:
	-	`sha256:8ca9ae37854cc7aecae581d442e5cc8052f13a827662d8a63619e3f0a40f328f`  
		Last Modified: Thu, 05 Nov 2026 18:52:08 GMT  
		Size: 1.3 MB (1288702 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:defc35eed1069d29f57053568ade3e7d90ddab09d2528c781a12fa1287a05684`  
		Last Modified: Thu, 05 Nov 2026 18:52:09 GMT  
		Size: 17.7 KB (17682 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine` - linux; 386

```console
$ docker pull irssi@sha256:728437aee988d9d937d5ef62367c260d9cb7c93533a4b34004b4c54164d34359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20174407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6db4feae906072daac04e6710dec0d239f60d4809479d0b709fa206cc560af1f`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:03 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:16:03 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:16:03 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:16:03 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:16:03 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:16:21 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:16:21 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:16:21 GMT
USER user
# Thu, 05 Nov 2026 18:16:21 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40518fdd37d486420a6285f46f48189c5d30158d971d837be9177f2d5403cf70`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 10.3 MB (10349718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24ebdbd0e0933ec8446d913f38739a34833c377aa1b658aa8fc2117073c3fade`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9073c9219b05a2aa18308c501b6f4657b6a8b596aff9aca2ac23472982fe34e`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 6.1 MB (6145124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:def7a127dad963b178d0eddcab5a02a4d864f8ab9a96cd133fce8e7a6e6274f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5782ac570c48b3c5d63277469ba727fd310bb9fe34391f4640cafe249a18b3e`

```dockerfile
```

-	Layers:
	-	`sha256:c9f42695ab2c742d36040694bf1bf1dbaf14cc3ac293269e2f2e9ad2f797d2e9`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 1.3 MB (1289203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5e6769fc1db6391289bd52f74bedc3848963117a9b826b307c9b6ccf076369d`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 17.4 KB (17444 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine` - linux; ppc64le

```console
$ docker pull irssi@sha256:e0136ba60195f7213a6263c33992585b619aac233d5e01fc258b1ada0a361af6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21223439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b96fd502d118d3bb9211ee6c311f182f6e00fd31a9dbb8a7706942d7a53c859e`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:47 GMT
ADD alpine-minirootfs-3.23.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:47 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:32:46 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 21:32:47 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 21:32:47 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 21:32:47 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 21:32:47 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 21:33:11 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 21:33:12 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 21:33:12 GMT
USER user
# Thu, 05 Nov 2026 21:33:12 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6f9768cc5f6423f8942751565e49e2e8feab6597d57ab26efd88d8959ad0f0f5`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3819006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aca130ba2e0da33a5196b85f90cfdecd19a459d839ebf572009efd76fffdda6`  
		Last Modified: Thu, 05 Nov 2026 21:33:25 GMT  
		Size: 11.0 MB (11039500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc1bb579f9c86a2f820581c1ddaf552bb05a70f51cbaf4c327f4d4d645091b9f`  
		Last Modified: Thu, 05 Nov 2026 21:33:24 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb660c8cf836dbdba17286858831b90a95c9bb655cc12569d5e0ef02d5b864f1`  
		Last Modified: Thu, 05 Nov 2026 21:33:25 GMT  
		Size: 6.4 MB (6363947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:710fa4464bf8878fb26fa3512858e97f096cc16b9b01e17461ca5e822af59399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2bc021c224d7a6c2b73c0db962a3fc3790e5ffa9bc6469c7a6c64234c98f3af`

```dockerfile
```

-	Layers:
	-	`sha256:049a8f8f79f429d7052c3b0f2363c659c3f846881635b38d8ed477f4e7f6552a`  
		Last Modified: Thu, 05 Nov 2026 21:33:24 GMT  
		Size: 1.3 MB (1288655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abc5a12c3b21650d222f92caa384d017c822d820fa0ef33e172f3cfd2ac91a2d`  
		Last Modified: Thu, 05 Nov 2026 21:33:24 GMT  
		Size: 17.6 KB (17572 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine` - linux; riscv64

```console
$ docker pull irssi@sha256:70515621b1f7005a688f3eb0c9f199fdb05dd2e06cf5805355a5e6f9fe386a36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19948006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ce8a14b82879cf28712edd7bd98eae1fa334ba9636859d3a5fb774c2923ce2`
-	Default Command: `["irssi"]`

```dockerfile
# Sun, 08 Nov 2026 12:36:05 GMT
ADD alpine-minirootfs-3.23.8-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:36:05 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 01:00:49 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Tue, 10 Nov 2026 01:00:50 GMT
ENV HOME=/home/user
# Tue, 10 Nov 2026 01:00:50 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 10 Nov 2026 01:00:50 GMT
ENV LANG=C.UTF-8
# Tue, 10 Nov 2026 01:00:50 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 10 Nov 2026 01:04:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Tue, 10 Nov 2026 01:04:48 GMT
WORKDIR /home/user
# Tue, 10 Nov 2026 01:04:48 GMT
USER user
# Tue, 10 Nov 2026 01:04:48 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:40d8941112ffcb85e567141e79f094eb8ab795e6e171c6548ddc812cd9b19486`  
		Last Modified: Sun, 08 Nov 2026 12:36:40 GMT  
		Size: 3.6 MB (3580129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f90c86181fbd68092541cb842693653d896afd7d7376cfb2fb915d4e883bbb8`  
		Last Modified: Tue, 10 Nov 2026 01:05:52 GMT  
		Size: 10.2 MB (10248012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b1dc191b1922684b589438ddb0772e0d8814c6e7e03a05efbb0048a7c847c6`  
		Last Modified: Tue, 10 Nov 2026 01:05:50 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c0bb63007a3faed438c3a92f41b62f5559ec77904c35a466be7183c9d7017f`  
		Last Modified: Tue, 10 Nov 2026 01:05:52 GMT  
		Size: 6.1 MB (6118881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:f3220f61f3a2b63cfb83c2aa3a039471357c879c56950ee454d72b079a2ffeb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddea7a2fc0df722ebde9cf2fafa41d3718945ae0781c10c1933ff42c88ba434e`

```dockerfile
```

-	Layers:
	-	`sha256:055473ab57cb90aa50a23fa030f322a834e6de412f00c3994c8e3b5ac0f00dcb`  
		Last Modified: Tue, 10 Nov 2026 01:05:50 GMT  
		Size: 1.3 MB (1288645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ababdabb5fc4283d36e6938af191f89d433d533fe7a5ee107227a2c61dfed58`  
		Last Modified: Tue, 10 Nov 2026 01:05:50 GMT  
		Size: 17.6 KB (17570 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine` - linux; s390x

```console
$ docker pull irssi@sha256:72d543b1bdd2bc361bdbb7e1c37a04c40dbc98e2f5d75ca43508e3d6465be9f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21289259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cf20a46d6ccf7fe1ab269f1d33736de96a1742797a2bea78c31ee1df96968f0`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.23.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:21 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:16:22 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:16:22 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:16:22 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:16:22 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:16:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:16:36 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:16:36 GMT
USER user
# Thu, 05 Nov 2026 18:16:36 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f31bb69faaf3a010059c4f255f2a9e2738683be277999f627a4cd72325be9271`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.7 MB (3718347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98075b8354a00af8cd754f659acdeb71e63b663094afefc5f3e3d5826b41bba8`  
		Last Modified: Thu, 05 Nov 2026 18:16:48 GMT  
		Size: 11.4 MB (11364945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d82c65930b81ebdd0b42b966ef8c33baf21d01c0da3ce19f2bcf3520f7165fb`  
		Last Modified: Thu, 05 Nov 2026 18:16:48 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd80407b4d39455a636b3ad42ffa1c7e42fb3933ad132949ef163590e5cc54ac`  
		Last Modified: Thu, 05 Nov 2026 18:16:48 GMT  
		Size: 6.2 MB (6204981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:1038b62ab49bd4e651c9339e27203f780644bd3829e97bab3eefd33ccdea0e0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:470a73da7320635c4bb1f055661cad03623d59e9cf3a3d4285ff76bf84990164`

```dockerfile
```

-	Layers:
	-	`sha256:15348a0e166d7840dcb90d22f9aef68e8ef70c496e845cd7667d338c7bf2a2c5`  
		Last Modified: Thu, 05 Nov 2026 18:16:48 GMT  
		Size: 1.3 MB (1288597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e522bf53ac5c040ff0ef857951718702fcb095bcc3d91bbff9ca3efc235dde35`  
		Last Modified: Thu, 05 Nov 2026 18:16:47 GMT  
		Size: 17.5 KB (17498 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1.4-alpine3.23`

```console
$ docker pull irssi@sha256:62fbc3514f8ef0bf587137800856ee4dffbfaddf6ca8402501698a6491e3205d
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
$ docker pull irssi@sha256:10682944689d0bac10ff3de89c039609a3681d6617f04efe8825c78f8627eddd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20737030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7773520a95b316f4c62a1bdc7cfeed99cea83695b4dcc001fec54eb47413403e`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:56:10 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:56:10 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:56:10 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:56:10 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:56:10 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:56:23 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:56:23 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:56:23 GMT
USER user
# Thu, 05 Nov 2026 18:56:23 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153eb96a9b5dc9565f557c5c5f7222a7c97681e0610b74c949b59796f035ed08`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 10.8 MB (10815513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24281d2acaac72631003e68f6dd533dee76d6331e278182196edbad294f84965`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df7a0f14676f6da8bd15597a6551a78fa020761ba69af7b612210fd643ddb36`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 6.1 MB (6067943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:6f97a389d6ddc5adf3b3ee6ab67608a9de87266a9088c23446d8151c5f26fc2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b40a4574d537c018153d004dc4096cb0bc60c32b0712bf2c6d0bffb0f3a5f50b`

```dockerfile
```

-	Layers:
	-	`sha256:dab5f1c3d4c9120402c206e895bf05523e83e1e522f5ed83451d0a9b1ea40366`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 1.3 MB (1289248 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f455d1c5c8a75f18e093d4ec5efaa0d3eadd6d062703fb1258a38e2d3f0f14fb`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 17.5 KB (17498 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine3.23` - linux; arm variant v6

```console
$ docker pull irssi@sha256:e9940753f49622f53fefa43723986bd654936a0435de06e08034aea06af0dd8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19480325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:169aa2e733fe5fde2822935396b616ee295002f3242e36ef32678347fe8bbfd4`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:01 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:19:01 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:19:01 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:19:01 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:19:01 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:19:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:19:17 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:19:17 GMT
USER user
# Thu, 05 Nov 2026 18:19:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:010e3505d8b0122aadb8b0d0b5e2fac89a1c6ea0bddbbb19d5ebe0ab095e5fb6`  
		Last Modified: Thu, 05 Nov 2026 18:19:23 GMT  
		Size: 10.0 MB (10025762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5864cd691741211885c86f434f91180255f33f38b737be953a2278ad263552bc`  
		Last Modified: Thu, 05 Nov 2026 18:19:22 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914ba4b363da5fc964a4b0813a887a729a99d5e27c1c13ea86ab456605478e9a`  
		Last Modified: Thu, 05 Nov 2026 18:19:23 GMT  
		Size: 5.9 MB (5895325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:9d57c895bd73dbe39627f16b7135eee83efd300a7b2b56ea07b87bc982597400
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 KB (17422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de1d9730b7b2adb55d4570e355d168e60b04084ca5e55f08c8a8ae4b573059c4`

```dockerfile
```

-	Layers:
	-	`sha256:26ab2839e9fe07c6a50eae7f349e1f27a440355aab740c4f175d2adcc7c4f97a`  
		Last Modified: Thu, 05 Nov 2026 18:19:22 GMT  
		Size: 17.4 KB (17422 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine3.23` - linux; arm variant v7

```console
$ docker pull irssi@sha256:d9abe7a8abb266bbf575c5f1f30b96d622bb8f58b9030a09494cff9e182c6c3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18770756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2a75c7bfa7b3714cbaf10607a64a4cfedd729a31299ff3adeef47873972602a`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:17 GMT
ADD alpine-minirootfs-3.23.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:17 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:18:30 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:18:30 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:18:30 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:18:30 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:18:30 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:18:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:18:47 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:18:47 GMT
USER user
# Thu, 05 Nov 2026 18:18:47 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2715a345c82dd389382733a6d4282bdbb8950eed4bdb95c4a8e332b6b5d8adf5`  
		Last Modified: Thu, 05 Nov 2026 18:01:23 GMT  
		Size: 3.3 MB (3266828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea5432e6ab0500a7b2737280cfb74cda74139ce5a4f3a224b229bf12b413d85`  
		Last Modified: Thu, 05 Nov 2026 18:18:55 GMT  
		Size: 9.9 MB (9859395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a8a641cfb83b11ab5c8b97d83677380490ef303667f41735931f552b8ecdd8f`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209b5ffae4c8d90d9762885384e0b0f0ce71a005858f9e8a9fb4d8eae9639355`  
		Last Modified: Thu, 05 Nov 2026 18:18:55 GMT  
		Size: 5.6 MB (5643548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:63752f1ba387f3326217f4d82afa72d3c726cd32807659b39695ff6d5045e656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1309290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415f4add2f905e745c3497e5cf774c0482952267511c39b7da528b0f8f6905ee`

```dockerfile
```

-	Layers:
	-	`sha256:4a25585cadfff889ac0f34f9bde8009f5d98a5e84c8f37c7ee9fc4d68c2eac8b`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 1.3 MB (1291656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d714a48df0d2612d4f40390d953d9df3b679b6a161cab4b6219ef211b78053e5`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 17.6 KB (17634 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:6de2ad42d89c559426498e7483c1db0abf023694abf0275757ba723fd09aef7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20879484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f2f910b7a141b009fd6ce3e946f30adc985da47cd52078d15855fed8136c00f`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:51:49 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:51:50 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:51:50 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:51:50 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:51:50 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:52:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:52:02 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:52:02 GMT
USER user
# Thu, 05 Nov 2026 18:52:02 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5638efab2b4eaba0b025282b404bbd862223b1712ffc08be8ef3d81227755f8`  
		Last Modified: Thu, 05 Nov 2026 18:52:09 GMT  
		Size: 10.7 MB (10749440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4317a1f912d9d7d65d54d4531a6b486669cae379ffef4fa87439ec8a235306e`  
		Last Modified: Thu, 05 Nov 2026 18:52:08 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93bd37bb7508085789e03c8049ef43da625cafb166d2d06d3fe40e0a4f09328`  
		Last Modified: Thu, 05 Nov 2026 18:52:09 GMT  
		Size: 5.9 MB (5938838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:cebbec75f69919364d547da5dc8aee60c12a3d17f18dfb37688ada116bacfbf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad59022be4a9e5ff0f3cddd444f22a0dd593d613fbea4e721c24ef9a0fbc814a`

```dockerfile
```

-	Layers:
	-	`sha256:8ca9ae37854cc7aecae581d442e5cc8052f13a827662d8a63619e3f0a40f328f`  
		Last Modified: Thu, 05 Nov 2026 18:52:08 GMT  
		Size: 1.3 MB (1288702 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:defc35eed1069d29f57053568ade3e7d90ddab09d2528c781a12fa1287a05684`  
		Last Modified: Thu, 05 Nov 2026 18:52:09 GMT  
		Size: 17.7 KB (17682 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine3.23` - linux; 386

```console
$ docker pull irssi@sha256:728437aee988d9d937d5ef62367c260d9cb7c93533a4b34004b4c54164d34359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20174407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6db4feae906072daac04e6710dec0d239f60d4809479d0b709fa206cc560af1f`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:03 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:16:03 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:16:03 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:16:03 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:16:03 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:16:21 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:16:21 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:16:21 GMT
USER user
# Thu, 05 Nov 2026 18:16:21 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40518fdd37d486420a6285f46f48189c5d30158d971d837be9177f2d5403cf70`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 10.3 MB (10349718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24ebdbd0e0933ec8446d913f38739a34833c377aa1b658aa8fc2117073c3fade`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9073c9219b05a2aa18308c501b6f4657b6a8b596aff9aca2ac23472982fe34e`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 6.1 MB (6145124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:def7a127dad963b178d0eddcab5a02a4d864f8ab9a96cd133fce8e7a6e6274f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5782ac570c48b3c5d63277469ba727fd310bb9fe34391f4640cafe249a18b3e`

```dockerfile
```

-	Layers:
	-	`sha256:c9f42695ab2c742d36040694bf1bf1dbaf14cc3ac293269e2f2e9ad2f797d2e9`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 1.3 MB (1289203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5e6769fc1db6391289bd52f74bedc3848963117a9b826b307c9b6ccf076369d`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 17.4 KB (17444 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine3.23` - linux; ppc64le

```console
$ docker pull irssi@sha256:e0136ba60195f7213a6263c33992585b619aac233d5e01fc258b1ada0a361af6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21223439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b96fd502d118d3bb9211ee6c311f182f6e00fd31a9dbb8a7706942d7a53c859e`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:47 GMT
ADD alpine-minirootfs-3.23.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:47 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:32:46 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 21:32:47 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 21:32:47 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 21:32:47 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 21:32:47 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 21:33:11 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 21:33:12 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 21:33:12 GMT
USER user
# Thu, 05 Nov 2026 21:33:12 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6f9768cc5f6423f8942751565e49e2e8feab6597d57ab26efd88d8959ad0f0f5`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3819006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aca130ba2e0da33a5196b85f90cfdecd19a459d839ebf572009efd76fffdda6`  
		Last Modified: Thu, 05 Nov 2026 21:33:25 GMT  
		Size: 11.0 MB (11039500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc1bb579f9c86a2f820581c1ddaf552bb05a70f51cbaf4c327f4d4d645091b9f`  
		Last Modified: Thu, 05 Nov 2026 21:33:24 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb660c8cf836dbdba17286858831b90a95c9bb655cc12569d5e0ef02d5b864f1`  
		Last Modified: Thu, 05 Nov 2026 21:33:25 GMT  
		Size: 6.4 MB (6363947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:710fa4464bf8878fb26fa3512858e97f096cc16b9b01e17461ca5e822af59399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2bc021c224d7a6c2b73c0db962a3fc3790e5ffa9bc6469c7a6c64234c98f3af`

```dockerfile
```

-	Layers:
	-	`sha256:049a8f8f79f429d7052c3b0f2363c659c3f846881635b38d8ed477f4e7f6552a`  
		Last Modified: Thu, 05 Nov 2026 21:33:24 GMT  
		Size: 1.3 MB (1288655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abc5a12c3b21650d222f92caa384d017c822d820fa0ef33e172f3cfd2ac91a2d`  
		Last Modified: Thu, 05 Nov 2026 21:33:24 GMT  
		Size: 17.6 KB (17572 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine3.23` - linux; riscv64

```console
$ docker pull irssi@sha256:70515621b1f7005a688f3eb0c9f199fdb05dd2e06cf5805355a5e6f9fe386a36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19948006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ce8a14b82879cf28712edd7bd98eae1fa334ba9636859d3a5fb774c2923ce2`
-	Default Command: `["irssi"]`

```dockerfile
# Sun, 08 Nov 2026 12:36:05 GMT
ADD alpine-minirootfs-3.23.8-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:36:05 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 01:00:49 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Tue, 10 Nov 2026 01:00:50 GMT
ENV HOME=/home/user
# Tue, 10 Nov 2026 01:00:50 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 10 Nov 2026 01:00:50 GMT
ENV LANG=C.UTF-8
# Tue, 10 Nov 2026 01:00:50 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 10 Nov 2026 01:04:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Tue, 10 Nov 2026 01:04:48 GMT
WORKDIR /home/user
# Tue, 10 Nov 2026 01:04:48 GMT
USER user
# Tue, 10 Nov 2026 01:04:48 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:40d8941112ffcb85e567141e79f094eb8ab795e6e171c6548ddc812cd9b19486`  
		Last Modified: Sun, 08 Nov 2026 12:36:40 GMT  
		Size: 3.6 MB (3580129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f90c86181fbd68092541cb842693653d896afd7d7376cfb2fb915d4e883bbb8`  
		Last Modified: Tue, 10 Nov 2026 01:05:52 GMT  
		Size: 10.2 MB (10248012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b1dc191b1922684b589438ddb0772e0d8814c6e7e03a05efbb0048a7c847c6`  
		Last Modified: Tue, 10 Nov 2026 01:05:50 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c0bb63007a3faed438c3a92f41b62f5559ec77904c35a466be7183c9d7017f`  
		Last Modified: Tue, 10 Nov 2026 01:05:52 GMT  
		Size: 6.1 MB (6118881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:f3220f61f3a2b63cfb83c2aa3a039471357c879c56950ee454d72b079a2ffeb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddea7a2fc0df722ebde9cf2fafa41d3718945ae0781c10c1933ff42c88ba434e`

```dockerfile
```

-	Layers:
	-	`sha256:055473ab57cb90aa50a23fa030f322a834e6de412f00c3994c8e3b5ac0f00dcb`  
		Last Modified: Tue, 10 Nov 2026 01:05:50 GMT  
		Size: 1.3 MB (1288645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ababdabb5fc4283d36e6938af191f89d433d533fe7a5ee107227a2c61dfed58`  
		Last Modified: Tue, 10 Nov 2026 01:05:50 GMT  
		Size: 17.6 KB (17570 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine3.23` - linux; s390x

```console
$ docker pull irssi@sha256:72d543b1bdd2bc361bdbb7e1c37a04c40dbc98e2f5d75ca43508e3d6465be9f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21289259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cf20a46d6ccf7fe1ab269f1d33736de96a1742797a2bea78c31ee1df96968f0`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.23.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:21 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:16:22 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:16:22 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:16:22 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:16:22 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:16:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:16:36 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:16:36 GMT
USER user
# Thu, 05 Nov 2026 18:16:36 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f31bb69faaf3a010059c4f255f2a9e2738683be277999f627a4cd72325be9271`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.7 MB (3718347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98075b8354a00af8cd754f659acdeb71e63b663094afefc5f3e3d5826b41bba8`  
		Last Modified: Thu, 05 Nov 2026 18:16:48 GMT  
		Size: 11.4 MB (11364945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d82c65930b81ebdd0b42b966ef8c33baf21d01c0da3ce19f2bcf3520f7165fb`  
		Last Modified: Thu, 05 Nov 2026 18:16:48 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd80407b4d39455a636b3ad42ffa1c7e42fb3933ad132949ef163590e5cc54ac`  
		Last Modified: Thu, 05 Nov 2026 18:16:48 GMT  
		Size: 6.2 MB (6204981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:1038b62ab49bd4e651c9339e27203f780644bd3829e97bab3eefd33ccdea0e0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:470a73da7320635c4bb1f055661cad03623d59e9cf3a3d4285ff76bf84990164`

```dockerfile
```

-	Layers:
	-	`sha256:15348a0e166d7840dcb90d22f9aef68e8ef70c496e845cd7667d338c7bf2a2c5`  
		Last Modified: Thu, 05 Nov 2026 18:16:48 GMT  
		Size: 1.3 MB (1288597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e522bf53ac5c040ff0ef857951718702fcb095bcc3d91bbff9ca3efc235dde35`  
		Last Modified: Thu, 05 Nov 2026 18:16:47 GMT  
		Size: 17.5 KB (17498 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1.4-trixie`

```console
$ docker pull irssi@sha256:21f55a0202af8d72c5b461c18d1923a71d443f4684efb8c4eac2d96e170d60f3
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
$ docker pull irssi@sha256:7b15c38df72dda518438177789d682cfd8d17d7b7594cbde3e04eb20a299656d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53948745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:694fa8d2229b6990d1e41c5ee35b0b484eb01fdcf222b64f9476084b0224bb1a`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:14:45 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:14:45 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:14:45 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:14:45 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:15:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:15:25 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:15:25 GMT
USER user
# Tue, 24 Nov 2026 04:15:25 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4163f095785a7400056a9db093405098957293a4dedade7fa1f13b49a913886b`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 19.2 MB (19233804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bddb90087b0ee70ccee4f7487f3432bc43b838ea6abded1eb5d5ddb82ccf70ae`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 3.3 KB (3325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:046dd3d4e3fd8a2eb4efb305d7e2fc39c36fe0514255ada3fa205c26997f1400`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 4.9 MB (4869402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:82e47ea872540ea8c85771064a983bf05844eecad18e4c91a387f76cd19c3224
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6264fed2114e9b18838d9625575ce6e44b22868346984b87fa8294d3d1826e25`

```dockerfile
```

-	Layers:
	-	`sha256:7f06da72a1b04ed9d899bd045574351277958197e28b480af78c31af7d40fdf0`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 5.6 MB (5595848 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2131319c69565da6aae551d42e74ea5c0872d8fe507e1c213e373268bd213f9`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; arm variant v5

```console
$ docker pull irssi@sha256:eb153dcc12989ac5be3816464fed644952e6619f36005edd4425664d856be802
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (51038784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b07f47a5f5bc7eee3d431c103990e258453a60c0743e9c834d3d100818fa9837`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:13:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:13:17 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 07:13:17 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 07:13:17 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:13:17 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 07:14:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Thu, 05 Nov 2026 07:14:06 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 07:14:06 GMT
USER user
# Thu, 05 Nov 2026 07:14:06 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94fab4177c1dfeb473ac657143cdd25b1216f7ce13c970d8112525307d15acfa`  
		Last Modified: Thu, 05 Nov 2026 07:14:18 GMT  
		Size: 18.3 MB (18304831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d4194f84be496cb54fea5d16441d45cf82e055e2bccd1fb90bccc44e54c1a8d`  
		Last Modified: Thu, 05 Nov 2026 07:14:17 GMT  
		Size: 3.3 KB (3327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:674730fc0c383a457de7dae2f60e6bb962e42ecf0d09ef112620bc5ce41708f9`  
		Last Modified: Thu, 05 Nov 2026 07:14:18 GMT  
		Size: 4.7 MB (4710984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:121dcd1e72b452949384bcc968376f1fbc4dd9cdc7c0bcd95e1f3eb37230573b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5612140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea617290a9f3600bac75e5902477d7bf94c303ea3eef1d7c1c1964ff71b44ea8`

```dockerfile
```

-	Layers:
	-	`sha256:d311083c31a5974a65689a2aec4610671222d1bf7c7d4918926016b6eb4cf58e`  
		Last Modified: Thu, 05 Nov 2026 07:14:18 GMT  
		Size: 5.6 MB (5593351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:396afaeabb57df6c3302cbe0a6e1418de93141bae973cb7e030967f89b1979e1`  
		Last Modified: Thu, 05 Nov 2026 07:14:17 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; arm variant v7

```console
$ docker pull irssi@sha256:e1bf1212a5e93e6c44ab07261066b0f4cd0b5c84f4f54e947aa6a34b5e4d1b85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48762576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3862d1f27b2a927452327b4cea4a69965096b2c7840fece3aa05e254c2045f4`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:20:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:20:13 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:20:13 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:20:13 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:20:13 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:20:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:20:55 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:20:55 GMT
USER user
# Tue, 24 Nov 2026 04:20:55 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b68b6f18cfebee93ffa901a17bb41e5dafbdd2dd07727a8fb5f2a0fbb17e4bd3`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 17.9 MB (17935385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7550455594fcfa52fe32a1cca8e6455a295e92b00081d1d47699392f840a75a`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:816e64db09dacbca2882225fc541a2a06b0d1e526e519ca98c0c93492e4af5ac`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 4.6 MB (4561371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:65ef887f995bcca37fe42b7ba4bde3d35e7d4e3722ec673f5421112ecb6b8e05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5615208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abd82f57b918d4463cf4dbc531e4a828196bb9e2c025ee53d6f8767e23948208`

```dockerfile
```

-	Layers:
	-	`sha256:cbff29ef1efa4ba10c1f237af9a401a850e1f5e924b257c75123687f216bf15c`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 5.6 MB (5596419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b4e69a6cd48bd4fc33136cee98bb9907eabe9ab8c43974506398e126a3210af`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:cdf6d721b4b6ab7d2f343208685bcac0d6ac6b6db2cf66f67a031f47ae04f9ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54058474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc04c3f235c43312613f005eed1b3cde8fb7966fdc0e79074261ce388cee624`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:14:48 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:14:48 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:14:48 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:14:48 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:15:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:15:25 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:15:25 GMT
USER user
# Tue, 24 Nov 2026 04:15:25 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1a84782dc5f2cd0146695bb2db9ef797364f2cf65b26c341d6c904eb105ee98`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 19.1 MB (19074969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:782647b4751588d53e9a6ea5ccfe3a7305bcbcc8114bcac6154e5fd0ee41a4ec`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:732424b924ec579490991a4aeb6d173cc02b2953ddaf2b312bd7980efcf43097`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 4.8 MB (4782111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:a93d578b5f5fbd52939ae483e6a75fe6bf16519e97e7e8f7e86bc8283d9f2121
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5621157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:040264ef51f0c59ac4f52d631dd9712f2e35212ad41e10d9fa73dca5b7e885c6`

```dockerfile
```

-	Layers:
	-	`sha256:94abf7e8b65f8e9da980d67329e4daca999990f9960ca6b05c66747fe8028660`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 5.6 MB (5602324 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8098ad63c83e8d0bc65b00fc4f42e29e299291f3033aa91f02734a4d31fe75f5`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; 386

```console
$ docker pull irssi@sha256:cb8bd42e30ac32b94e2f08719b590b16205c5fb4035d3231cc5a5b7d0c4b881a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54988559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b9fa2b3847ba141082182c759079f298f46130b3b3c2ca3ccfeb59bc006dbd0`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:14:12 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:14:12 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:14:12 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:14:12 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:14:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:14:53 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:14:53 GMT
USER user
# Tue, 24 Nov 2026 04:14:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:7fb9e5f471a439ab129e9fe258623bccb6c4da1d0313890202b55fd6b5839533`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 31.4 MB (31357919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34a950215307bf93554e724526a44e85993dae1c806fa8ae754287027482f540`  
		Last Modified: Tue, 24 Nov 2026 04:15:03 GMT  
		Size: 18.8 MB (18757461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea8f6101a0a5f007a8a95653053b98c972c43930817bace83573564596cae540`  
		Last Modified: Tue, 24 Nov 2026 04:15:03 GMT  
		Size: 3.3 KB (3327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff87df54bb9fa2736a5e49e342b600ae0a110d7e683aa75c0f2e54bce4b3ab6c`  
		Last Modified: Tue, 24 Nov 2026 04:15:03 GMT  
		Size: 4.9 MB (4869820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:3cc0a1dd9a9c3c0051fb481cda2ef84c99a1580e9141de21a403004bad734b29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5610565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18779fe01808861ad766c36f499ed2f055c5c85009b6d0740411d7895eed02f7`

```dockerfile
```

-	Layers:
	-	`sha256:8ba580f57cb2605c7702fed4a32e996833535c6134dae9b4beee22b4b4c25683`  
		Last Modified: Tue, 24 Nov 2026 04:15:03 GMT  
		Size: 5.6 MB (5591971 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a72dc7c8c6e351e2319bcf458af09973e7a24dd46de69bf16d77a492ae7170b`  
		Last Modified: Tue, 24 Nov 2026 04:15:02 GMT  
		Size: 18.6 KB (18594 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; ppc64le

```console
$ docker pull irssi@sha256:aa124609203a3a98fa1ceae427debd64e11c46e6f2d7ff17e7a49253c6cb27b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58324628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34dbdec57a8ee457db715bceb612aea0a3a79c6bd18190017018f5b8f8c98e18`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:24:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:24:15 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:24:15 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:24:15 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:24:15 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:25:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:25:43 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:25:43 GMT
USER user
# Tue, 24 Nov 2026 04:25:43 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6d599ee149161123db04af161af351247dbcd557ec08f78d82de0c89b6844f6c`  
		Last Modified: Tue, 24 Nov 2026 03:42:42 GMT  
		Size: 33.7 MB (33652639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d40040ff7c924fd070789a90df56f27eab4e574660c268dd423f48d3ceda7de`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 19.6 MB (19568633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af5b568fa79d5599705b5c17e19d295c5202197478716c9c8a14d9bba9735a46`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 3.3 KB (3325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:675e1e37181eef3ad607cb7892abbb5c394a3a33236be06b98e6a488d3d376e6`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 5.1 MB (5099999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:0949eb88547835e917a0afa69c6898c92ebd0c63e31fcf8b663851ae15376f71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5621602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:467625068771cd8c74b3cf51595af73868383680f50dcc2da480ced2e660cba0`

```dockerfile
```

-	Layers:
	-	`sha256:92bb1fefc5b5546dc8580b76650ce375b8d68e957503d95472377c8ea2043ff3`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 5.6 MB (5602879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72c23bb743a8d46747a814e5975f9097a066f144d600fd6abbf099ee4e05b7d0`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; riscv64

```console
$ docker pull irssi@sha256:fd758385a4b02c9d9e80d13998c8860b85685e47787f20a8e992a1f9d1a6a62a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51782249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fe3a44e915e81dd11aa7eef4592fde6fd4701a0681e1fcbdb3aa2992d830d8d`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 11:31:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 11:31:44 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 11:31:44 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 11:31:44 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 11:31:44 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 11:38:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Thu, 05 Nov 2026 11:38:53 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 11:38:53 GMT
USER user
# Thu, 05 Nov 2026 11:38:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9c2319a355ee4f65c20948fbe6e7dc4455455e24645204a22968523fae6b960`  
		Last Modified: Thu, 05 Nov 2026 11:41:02 GMT  
		Size: 18.6 MB (18570110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21c11a51c8760fd49dd499654c23f4172be4f0438e97703bff3b5d3e8130308e`  
		Last Modified: Thu, 05 Nov 2026 11:40:58 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2cb1f292825bf90d712819ceab2bf4d161ade4accb46ddb8070e3dc4b52041b`  
		Last Modified: Thu, 05 Nov 2026 11:41:00 GMT  
		Size: 4.9 MB (4862595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:8b397c081745fa12207cc2d4d68467baedf0fff0a6876209383eade4f40a10f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5605827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b36a001cd2ef7a0248a66e36d738e21a200313277e2968099de58e8bff77e5c2`

```dockerfile
```

-	Layers:
	-	`sha256:0bbc69528478fb204c597c5a81cfbe7e096101162374ac51dea8bca1244e9132`  
		Last Modified: Thu, 05 Nov 2026 11:41:00 GMT  
		Size: 5.6 MB (5587105 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:391674e9cd31f49507193d4cf927463c8efe5e03255c0f82914ab3cbbceea723`  
		Last Modified: Thu, 05 Nov 2026 11:40:58 GMT  
		Size: 18.7 KB (18722 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; s390x

```console
$ docker pull irssi@sha256:c99740094bb8fc3a42fe39a0df1d90c249341718e2531b8ee66d2ff5e37557b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54621603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cf62b7d7530301bf10e970850994b086459bfdda74a948cd236bafe4489b5c5`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:15:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:15:02 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 07:15:02 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 07:15:02 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:15:02 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 07:15:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Thu, 05 Nov 2026 07:15:41 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 07:15:41 GMT
USER user
# Thu, 05 Nov 2026 07:15:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56d570360718c12df13fb3403ebeeda60ad5cbd6ebe703ea5bfe0782b4c5f1ea`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 19.8 MB (19785679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec74ec51933f3b95a7dee95f4010c37c659cc34b70a7259650c96509ff57739`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 3.3 KB (3335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d163cf2a08ccfc0964f43337f0de3907c7b95345892d57206d45abeb4fab0c8`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 4.9 MB (4908440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:b668601dc63bea1aaf21eb394cb35899e97ec155269b081c7b1611f5cae7cff6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5615357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3240edcbc9b69bb78f17b066d101e992f5d1b2698c631b499dc9d5fe1f7c3a54`

```dockerfile
```

-	Layers:
	-	`sha256:b3ee1717ede5dd9c1d66ce2a188d0b16069dc0efd1d5805b7aecee0bfe4ebb56`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 5.6 MB (5596707 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f7dc624e297c33de874aba098bf70a12156b8003603defc82203e66703c5594`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 18.6 KB (18650 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1.4.5`

```console
$ docker pull irssi@sha256:21f55a0202af8d72c5b461c18d1923a71d443f4684efb8c4eac2d96e170d60f3
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
$ docker pull irssi@sha256:7b15c38df72dda518438177789d682cfd8d17d7b7594cbde3e04eb20a299656d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53948745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:694fa8d2229b6990d1e41c5ee35b0b484eb01fdcf222b64f9476084b0224bb1a`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:14:45 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:14:45 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:14:45 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:14:45 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:15:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:15:25 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:15:25 GMT
USER user
# Tue, 24 Nov 2026 04:15:25 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4163f095785a7400056a9db093405098957293a4dedade7fa1f13b49a913886b`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 19.2 MB (19233804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bddb90087b0ee70ccee4f7487f3432bc43b838ea6abded1eb5d5ddb82ccf70ae`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 3.3 KB (3325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:046dd3d4e3fd8a2eb4efb305d7e2fc39c36fe0514255ada3fa205c26997f1400`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 4.9 MB (4869402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:82e47ea872540ea8c85771064a983bf05844eecad18e4c91a387f76cd19c3224
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6264fed2114e9b18838d9625575ce6e44b22868346984b87fa8294d3d1826e25`

```dockerfile
```

-	Layers:
	-	`sha256:7f06da72a1b04ed9d899bd045574351277958197e28b480af78c31af7d40fdf0`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 5.6 MB (5595848 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2131319c69565da6aae551d42e74ea5c0872d8fe507e1c213e373268bd213f9`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; arm variant v5

```console
$ docker pull irssi@sha256:eb153dcc12989ac5be3816464fed644952e6619f36005edd4425664d856be802
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (51038784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b07f47a5f5bc7eee3d431c103990e258453a60c0743e9c834d3d100818fa9837`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:13:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:13:17 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 07:13:17 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 07:13:17 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:13:17 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 07:14:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Thu, 05 Nov 2026 07:14:06 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 07:14:06 GMT
USER user
# Thu, 05 Nov 2026 07:14:06 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94fab4177c1dfeb473ac657143cdd25b1216f7ce13c970d8112525307d15acfa`  
		Last Modified: Thu, 05 Nov 2026 07:14:18 GMT  
		Size: 18.3 MB (18304831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d4194f84be496cb54fea5d16441d45cf82e055e2bccd1fb90bccc44e54c1a8d`  
		Last Modified: Thu, 05 Nov 2026 07:14:17 GMT  
		Size: 3.3 KB (3327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:674730fc0c383a457de7dae2f60e6bb962e42ecf0d09ef112620bc5ce41708f9`  
		Last Modified: Thu, 05 Nov 2026 07:14:18 GMT  
		Size: 4.7 MB (4710984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:121dcd1e72b452949384bcc968376f1fbc4dd9cdc7c0bcd95e1f3eb37230573b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5612140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea617290a9f3600bac75e5902477d7bf94c303ea3eef1d7c1c1964ff71b44ea8`

```dockerfile
```

-	Layers:
	-	`sha256:d311083c31a5974a65689a2aec4610671222d1bf7c7d4918926016b6eb4cf58e`  
		Last Modified: Thu, 05 Nov 2026 07:14:18 GMT  
		Size: 5.6 MB (5593351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:396afaeabb57df6c3302cbe0a6e1418de93141bae973cb7e030967f89b1979e1`  
		Last Modified: Thu, 05 Nov 2026 07:14:17 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; arm variant v7

```console
$ docker pull irssi@sha256:e1bf1212a5e93e6c44ab07261066b0f4cd0b5c84f4f54e947aa6a34b5e4d1b85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48762576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3862d1f27b2a927452327b4cea4a69965096b2c7840fece3aa05e254c2045f4`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:20:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:20:13 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:20:13 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:20:13 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:20:13 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:20:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:20:55 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:20:55 GMT
USER user
# Tue, 24 Nov 2026 04:20:55 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b68b6f18cfebee93ffa901a17bb41e5dafbdd2dd07727a8fb5f2a0fbb17e4bd3`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 17.9 MB (17935385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7550455594fcfa52fe32a1cca8e6455a295e92b00081d1d47699392f840a75a`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:816e64db09dacbca2882225fc541a2a06b0d1e526e519ca98c0c93492e4af5ac`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 4.6 MB (4561371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:65ef887f995bcca37fe42b7ba4bde3d35e7d4e3722ec673f5421112ecb6b8e05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5615208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abd82f57b918d4463cf4dbc531e4a828196bb9e2c025ee53d6f8767e23948208`

```dockerfile
```

-	Layers:
	-	`sha256:cbff29ef1efa4ba10c1f237af9a401a850e1f5e924b257c75123687f216bf15c`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 5.6 MB (5596419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b4e69a6cd48bd4fc33136cee98bb9907eabe9ab8c43974506398e126a3210af`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:cdf6d721b4b6ab7d2f343208685bcac0d6ac6b6db2cf66f67a031f47ae04f9ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54058474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc04c3f235c43312613f005eed1b3cde8fb7966fdc0e79074261ce388cee624`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:14:48 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:14:48 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:14:48 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:14:48 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:15:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:15:25 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:15:25 GMT
USER user
# Tue, 24 Nov 2026 04:15:25 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1a84782dc5f2cd0146695bb2db9ef797364f2cf65b26c341d6c904eb105ee98`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 19.1 MB (19074969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:782647b4751588d53e9a6ea5ccfe3a7305bcbcc8114bcac6154e5fd0ee41a4ec`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:732424b924ec579490991a4aeb6d173cc02b2953ddaf2b312bd7980efcf43097`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 4.8 MB (4782111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:a93d578b5f5fbd52939ae483e6a75fe6bf16519e97e7e8f7e86bc8283d9f2121
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5621157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:040264ef51f0c59ac4f52d631dd9712f2e35212ad41e10d9fa73dca5b7e885c6`

```dockerfile
```

-	Layers:
	-	`sha256:94abf7e8b65f8e9da980d67329e4daca999990f9960ca6b05c66747fe8028660`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 5.6 MB (5602324 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8098ad63c83e8d0bc65b00fc4f42e29e299291f3033aa91f02734a4d31fe75f5`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; 386

```console
$ docker pull irssi@sha256:cb8bd42e30ac32b94e2f08719b590b16205c5fb4035d3231cc5a5b7d0c4b881a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54988559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b9fa2b3847ba141082182c759079f298f46130b3b3c2ca3ccfeb59bc006dbd0`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:14:12 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:14:12 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:14:12 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:14:12 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:14:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:14:53 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:14:53 GMT
USER user
# Tue, 24 Nov 2026 04:14:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:7fb9e5f471a439ab129e9fe258623bccb6c4da1d0313890202b55fd6b5839533`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 31.4 MB (31357919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34a950215307bf93554e724526a44e85993dae1c806fa8ae754287027482f540`  
		Last Modified: Tue, 24 Nov 2026 04:15:03 GMT  
		Size: 18.8 MB (18757461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea8f6101a0a5f007a8a95653053b98c972c43930817bace83573564596cae540`  
		Last Modified: Tue, 24 Nov 2026 04:15:03 GMT  
		Size: 3.3 KB (3327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff87df54bb9fa2736a5e49e342b600ae0a110d7e683aa75c0f2e54bce4b3ab6c`  
		Last Modified: Tue, 24 Nov 2026 04:15:03 GMT  
		Size: 4.9 MB (4869820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:3cc0a1dd9a9c3c0051fb481cda2ef84c99a1580e9141de21a403004bad734b29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5610565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18779fe01808861ad766c36f499ed2f055c5c85009b6d0740411d7895eed02f7`

```dockerfile
```

-	Layers:
	-	`sha256:8ba580f57cb2605c7702fed4a32e996833535c6134dae9b4beee22b4b4c25683`  
		Last Modified: Tue, 24 Nov 2026 04:15:03 GMT  
		Size: 5.6 MB (5591971 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a72dc7c8c6e351e2319bcf458af09973e7a24dd46de69bf16d77a492ae7170b`  
		Last Modified: Tue, 24 Nov 2026 04:15:02 GMT  
		Size: 18.6 KB (18594 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; ppc64le

```console
$ docker pull irssi@sha256:aa124609203a3a98fa1ceae427debd64e11c46e6f2d7ff17e7a49253c6cb27b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58324628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34dbdec57a8ee457db715bceb612aea0a3a79c6bd18190017018f5b8f8c98e18`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:24:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:24:15 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:24:15 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:24:15 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:24:15 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:25:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:25:43 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:25:43 GMT
USER user
# Tue, 24 Nov 2026 04:25:43 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6d599ee149161123db04af161af351247dbcd557ec08f78d82de0c89b6844f6c`  
		Last Modified: Tue, 24 Nov 2026 03:42:42 GMT  
		Size: 33.7 MB (33652639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d40040ff7c924fd070789a90df56f27eab4e574660c268dd423f48d3ceda7de`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 19.6 MB (19568633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af5b568fa79d5599705b5c17e19d295c5202197478716c9c8a14d9bba9735a46`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 3.3 KB (3325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:675e1e37181eef3ad607cb7892abbb5c394a3a33236be06b98e6a488d3d376e6`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 5.1 MB (5099999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:0949eb88547835e917a0afa69c6898c92ebd0c63e31fcf8b663851ae15376f71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5621602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:467625068771cd8c74b3cf51595af73868383680f50dcc2da480ced2e660cba0`

```dockerfile
```

-	Layers:
	-	`sha256:92bb1fefc5b5546dc8580b76650ce375b8d68e957503d95472377c8ea2043ff3`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 5.6 MB (5602879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72c23bb743a8d46747a814e5975f9097a066f144d600fd6abbf099ee4e05b7d0`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; riscv64

```console
$ docker pull irssi@sha256:fd758385a4b02c9d9e80d13998c8860b85685e47787f20a8e992a1f9d1a6a62a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51782249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fe3a44e915e81dd11aa7eef4592fde6fd4701a0681e1fcbdb3aa2992d830d8d`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 11:31:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 11:31:44 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 11:31:44 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 11:31:44 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 11:31:44 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 11:38:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Thu, 05 Nov 2026 11:38:53 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 11:38:53 GMT
USER user
# Thu, 05 Nov 2026 11:38:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9c2319a355ee4f65c20948fbe6e7dc4455455e24645204a22968523fae6b960`  
		Last Modified: Thu, 05 Nov 2026 11:41:02 GMT  
		Size: 18.6 MB (18570110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21c11a51c8760fd49dd499654c23f4172be4f0438e97703bff3b5d3e8130308e`  
		Last Modified: Thu, 05 Nov 2026 11:40:58 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2cb1f292825bf90d712819ceab2bf4d161ade4accb46ddb8070e3dc4b52041b`  
		Last Modified: Thu, 05 Nov 2026 11:41:00 GMT  
		Size: 4.9 MB (4862595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:8b397c081745fa12207cc2d4d68467baedf0fff0a6876209383eade4f40a10f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5605827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b36a001cd2ef7a0248a66e36d738e21a200313277e2968099de58e8bff77e5c2`

```dockerfile
```

-	Layers:
	-	`sha256:0bbc69528478fb204c597c5a81cfbe7e096101162374ac51dea8bca1244e9132`  
		Last Modified: Thu, 05 Nov 2026 11:41:00 GMT  
		Size: 5.6 MB (5587105 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:391674e9cd31f49507193d4cf927463c8efe5e03255c0f82914ab3cbbceea723`  
		Last Modified: Thu, 05 Nov 2026 11:40:58 GMT  
		Size: 18.7 KB (18722 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; s390x

```console
$ docker pull irssi@sha256:c99740094bb8fc3a42fe39a0df1d90c249341718e2531b8ee66d2ff5e37557b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54621603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cf62b7d7530301bf10e970850994b086459bfdda74a948cd236bafe4489b5c5`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:15:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:15:02 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 07:15:02 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 07:15:02 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:15:02 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 07:15:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Thu, 05 Nov 2026 07:15:41 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 07:15:41 GMT
USER user
# Thu, 05 Nov 2026 07:15:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56d570360718c12df13fb3403ebeeda60ad5cbd6ebe703ea5bfe0782b4c5f1ea`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 19.8 MB (19785679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec74ec51933f3b95a7dee95f4010c37c659cc34b70a7259650c96509ff57739`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 3.3 KB (3335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d163cf2a08ccfc0964f43337f0de3907c7b95345892d57206d45abeb4fab0c8`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 4.9 MB (4908440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:b668601dc63bea1aaf21eb394cb35899e97ec155269b081c7b1611f5cae7cff6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5615357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3240edcbc9b69bb78f17b066d101e992f5d1b2698c631b499dc9d5fe1f7c3a54`

```dockerfile
```

-	Layers:
	-	`sha256:b3ee1717ede5dd9c1d66ce2a188d0b16069dc0efd1d5805b7aecee0bfe4ebb56`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 5.6 MB (5596707 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f7dc624e297c33de874aba098bf70a12156b8003603defc82203e66703c5594`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 18.6 KB (18650 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1.4.5-alpine`

```console
$ docker pull irssi@sha256:62fbc3514f8ef0bf587137800856ee4dffbfaddf6ca8402501698a6491e3205d
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
$ docker pull irssi@sha256:10682944689d0bac10ff3de89c039609a3681d6617f04efe8825c78f8627eddd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20737030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7773520a95b316f4c62a1bdc7cfeed99cea83695b4dcc001fec54eb47413403e`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:56:10 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:56:10 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:56:10 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:56:10 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:56:10 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:56:23 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:56:23 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:56:23 GMT
USER user
# Thu, 05 Nov 2026 18:56:23 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153eb96a9b5dc9565f557c5c5f7222a7c97681e0610b74c949b59796f035ed08`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 10.8 MB (10815513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24281d2acaac72631003e68f6dd533dee76d6331e278182196edbad294f84965`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df7a0f14676f6da8bd15597a6551a78fa020761ba69af7b612210fd643ddb36`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 6.1 MB (6067943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:6f97a389d6ddc5adf3b3ee6ab67608a9de87266a9088c23446d8151c5f26fc2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b40a4574d537c018153d004dc4096cb0bc60c32b0712bf2c6d0bffb0f3a5f50b`

```dockerfile
```

-	Layers:
	-	`sha256:dab5f1c3d4c9120402c206e895bf05523e83e1e522f5ed83451d0a9b1ea40366`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 1.3 MB (1289248 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f455d1c5c8a75f18e093d4ec5efaa0d3eadd6d062703fb1258a38e2d3f0f14fb`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 17.5 KB (17498 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine` - linux; arm variant v6

```console
$ docker pull irssi@sha256:e9940753f49622f53fefa43723986bd654936a0435de06e08034aea06af0dd8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19480325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:169aa2e733fe5fde2822935396b616ee295002f3242e36ef32678347fe8bbfd4`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:01 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:19:01 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:19:01 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:19:01 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:19:01 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:19:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:19:17 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:19:17 GMT
USER user
# Thu, 05 Nov 2026 18:19:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:010e3505d8b0122aadb8b0d0b5e2fac89a1c6ea0bddbbb19d5ebe0ab095e5fb6`  
		Last Modified: Thu, 05 Nov 2026 18:19:23 GMT  
		Size: 10.0 MB (10025762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5864cd691741211885c86f434f91180255f33f38b737be953a2278ad263552bc`  
		Last Modified: Thu, 05 Nov 2026 18:19:22 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914ba4b363da5fc964a4b0813a887a729a99d5e27c1c13ea86ab456605478e9a`  
		Last Modified: Thu, 05 Nov 2026 18:19:23 GMT  
		Size: 5.9 MB (5895325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:9d57c895bd73dbe39627f16b7135eee83efd300a7b2b56ea07b87bc982597400
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 KB (17422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de1d9730b7b2adb55d4570e355d168e60b04084ca5e55f08c8a8ae4b573059c4`

```dockerfile
```

-	Layers:
	-	`sha256:26ab2839e9fe07c6a50eae7f349e1f27a440355aab740c4f175d2adcc7c4f97a`  
		Last Modified: Thu, 05 Nov 2026 18:19:22 GMT  
		Size: 17.4 KB (17422 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine` - linux; arm variant v7

```console
$ docker pull irssi@sha256:d9abe7a8abb266bbf575c5f1f30b96d622bb8f58b9030a09494cff9e182c6c3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18770756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2a75c7bfa7b3714cbaf10607a64a4cfedd729a31299ff3adeef47873972602a`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:17 GMT
ADD alpine-minirootfs-3.23.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:17 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:18:30 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:18:30 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:18:30 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:18:30 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:18:30 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:18:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:18:47 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:18:47 GMT
USER user
# Thu, 05 Nov 2026 18:18:47 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2715a345c82dd389382733a6d4282bdbb8950eed4bdb95c4a8e332b6b5d8adf5`  
		Last Modified: Thu, 05 Nov 2026 18:01:23 GMT  
		Size: 3.3 MB (3266828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea5432e6ab0500a7b2737280cfb74cda74139ce5a4f3a224b229bf12b413d85`  
		Last Modified: Thu, 05 Nov 2026 18:18:55 GMT  
		Size: 9.9 MB (9859395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a8a641cfb83b11ab5c8b97d83677380490ef303667f41735931f552b8ecdd8f`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209b5ffae4c8d90d9762885384e0b0f0ce71a005858f9e8a9fb4d8eae9639355`  
		Last Modified: Thu, 05 Nov 2026 18:18:55 GMT  
		Size: 5.6 MB (5643548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:63752f1ba387f3326217f4d82afa72d3c726cd32807659b39695ff6d5045e656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1309290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415f4add2f905e745c3497e5cf774c0482952267511c39b7da528b0f8f6905ee`

```dockerfile
```

-	Layers:
	-	`sha256:4a25585cadfff889ac0f34f9bde8009f5d98a5e84c8f37c7ee9fc4d68c2eac8b`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 1.3 MB (1291656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d714a48df0d2612d4f40390d953d9df3b679b6a161cab4b6219ef211b78053e5`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 17.6 KB (17634 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:6de2ad42d89c559426498e7483c1db0abf023694abf0275757ba723fd09aef7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20879484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f2f910b7a141b009fd6ce3e946f30adc985da47cd52078d15855fed8136c00f`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:51:49 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:51:50 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:51:50 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:51:50 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:51:50 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:52:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:52:02 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:52:02 GMT
USER user
# Thu, 05 Nov 2026 18:52:02 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5638efab2b4eaba0b025282b404bbd862223b1712ffc08be8ef3d81227755f8`  
		Last Modified: Thu, 05 Nov 2026 18:52:09 GMT  
		Size: 10.7 MB (10749440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4317a1f912d9d7d65d54d4531a6b486669cae379ffef4fa87439ec8a235306e`  
		Last Modified: Thu, 05 Nov 2026 18:52:08 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93bd37bb7508085789e03c8049ef43da625cafb166d2d06d3fe40e0a4f09328`  
		Last Modified: Thu, 05 Nov 2026 18:52:09 GMT  
		Size: 5.9 MB (5938838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:cebbec75f69919364d547da5dc8aee60c12a3d17f18dfb37688ada116bacfbf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad59022be4a9e5ff0f3cddd444f22a0dd593d613fbea4e721c24ef9a0fbc814a`

```dockerfile
```

-	Layers:
	-	`sha256:8ca9ae37854cc7aecae581d442e5cc8052f13a827662d8a63619e3f0a40f328f`  
		Last Modified: Thu, 05 Nov 2026 18:52:08 GMT  
		Size: 1.3 MB (1288702 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:defc35eed1069d29f57053568ade3e7d90ddab09d2528c781a12fa1287a05684`  
		Last Modified: Thu, 05 Nov 2026 18:52:09 GMT  
		Size: 17.7 KB (17682 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine` - linux; 386

```console
$ docker pull irssi@sha256:728437aee988d9d937d5ef62367c260d9cb7c93533a4b34004b4c54164d34359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20174407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6db4feae906072daac04e6710dec0d239f60d4809479d0b709fa206cc560af1f`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:03 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:16:03 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:16:03 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:16:03 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:16:03 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:16:21 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:16:21 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:16:21 GMT
USER user
# Thu, 05 Nov 2026 18:16:21 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40518fdd37d486420a6285f46f48189c5d30158d971d837be9177f2d5403cf70`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 10.3 MB (10349718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24ebdbd0e0933ec8446d913f38739a34833c377aa1b658aa8fc2117073c3fade`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9073c9219b05a2aa18308c501b6f4657b6a8b596aff9aca2ac23472982fe34e`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 6.1 MB (6145124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:def7a127dad963b178d0eddcab5a02a4d864f8ab9a96cd133fce8e7a6e6274f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5782ac570c48b3c5d63277469ba727fd310bb9fe34391f4640cafe249a18b3e`

```dockerfile
```

-	Layers:
	-	`sha256:c9f42695ab2c742d36040694bf1bf1dbaf14cc3ac293269e2f2e9ad2f797d2e9`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 1.3 MB (1289203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5e6769fc1db6391289bd52f74bedc3848963117a9b826b307c9b6ccf076369d`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 17.4 KB (17444 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine` - linux; ppc64le

```console
$ docker pull irssi@sha256:e0136ba60195f7213a6263c33992585b619aac233d5e01fc258b1ada0a361af6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21223439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b96fd502d118d3bb9211ee6c311f182f6e00fd31a9dbb8a7706942d7a53c859e`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:47 GMT
ADD alpine-minirootfs-3.23.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:47 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:32:46 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 21:32:47 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 21:32:47 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 21:32:47 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 21:32:47 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 21:33:11 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 21:33:12 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 21:33:12 GMT
USER user
# Thu, 05 Nov 2026 21:33:12 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6f9768cc5f6423f8942751565e49e2e8feab6597d57ab26efd88d8959ad0f0f5`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3819006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aca130ba2e0da33a5196b85f90cfdecd19a459d839ebf572009efd76fffdda6`  
		Last Modified: Thu, 05 Nov 2026 21:33:25 GMT  
		Size: 11.0 MB (11039500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc1bb579f9c86a2f820581c1ddaf552bb05a70f51cbaf4c327f4d4d645091b9f`  
		Last Modified: Thu, 05 Nov 2026 21:33:24 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb660c8cf836dbdba17286858831b90a95c9bb655cc12569d5e0ef02d5b864f1`  
		Last Modified: Thu, 05 Nov 2026 21:33:25 GMT  
		Size: 6.4 MB (6363947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:710fa4464bf8878fb26fa3512858e97f096cc16b9b01e17461ca5e822af59399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2bc021c224d7a6c2b73c0db962a3fc3790e5ffa9bc6469c7a6c64234c98f3af`

```dockerfile
```

-	Layers:
	-	`sha256:049a8f8f79f429d7052c3b0f2363c659c3f846881635b38d8ed477f4e7f6552a`  
		Last Modified: Thu, 05 Nov 2026 21:33:24 GMT  
		Size: 1.3 MB (1288655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abc5a12c3b21650d222f92caa384d017c822d820fa0ef33e172f3cfd2ac91a2d`  
		Last Modified: Thu, 05 Nov 2026 21:33:24 GMT  
		Size: 17.6 KB (17572 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine` - linux; riscv64

```console
$ docker pull irssi@sha256:70515621b1f7005a688f3eb0c9f199fdb05dd2e06cf5805355a5e6f9fe386a36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19948006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ce8a14b82879cf28712edd7bd98eae1fa334ba9636859d3a5fb774c2923ce2`
-	Default Command: `["irssi"]`

```dockerfile
# Sun, 08 Nov 2026 12:36:05 GMT
ADD alpine-minirootfs-3.23.8-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:36:05 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 01:00:49 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Tue, 10 Nov 2026 01:00:50 GMT
ENV HOME=/home/user
# Tue, 10 Nov 2026 01:00:50 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 10 Nov 2026 01:00:50 GMT
ENV LANG=C.UTF-8
# Tue, 10 Nov 2026 01:00:50 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 10 Nov 2026 01:04:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Tue, 10 Nov 2026 01:04:48 GMT
WORKDIR /home/user
# Tue, 10 Nov 2026 01:04:48 GMT
USER user
# Tue, 10 Nov 2026 01:04:48 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:40d8941112ffcb85e567141e79f094eb8ab795e6e171c6548ddc812cd9b19486`  
		Last Modified: Sun, 08 Nov 2026 12:36:40 GMT  
		Size: 3.6 MB (3580129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f90c86181fbd68092541cb842693653d896afd7d7376cfb2fb915d4e883bbb8`  
		Last Modified: Tue, 10 Nov 2026 01:05:52 GMT  
		Size: 10.2 MB (10248012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b1dc191b1922684b589438ddb0772e0d8814c6e7e03a05efbb0048a7c847c6`  
		Last Modified: Tue, 10 Nov 2026 01:05:50 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c0bb63007a3faed438c3a92f41b62f5559ec77904c35a466be7183c9d7017f`  
		Last Modified: Tue, 10 Nov 2026 01:05:52 GMT  
		Size: 6.1 MB (6118881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:f3220f61f3a2b63cfb83c2aa3a039471357c879c56950ee454d72b079a2ffeb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddea7a2fc0df722ebde9cf2fafa41d3718945ae0781c10c1933ff42c88ba434e`

```dockerfile
```

-	Layers:
	-	`sha256:055473ab57cb90aa50a23fa030f322a834e6de412f00c3994c8e3b5ac0f00dcb`  
		Last Modified: Tue, 10 Nov 2026 01:05:50 GMT  
		Size: 1.3 MB (1288645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ababdabb5fc4283d36e6938af191f89d433d533fe7a5ee107227a2c61dfed58`  
		Last Modified: Tue, 10 Nov 2026 01:05:50 GMT  
		Size: 17.6 KB (17570 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine` - linux; s390x

```console
$ docker pull irssi@sha256:72d543b1bdd2bc361bdbb7e1c37a04c40dbc98e2f5d75ca43508e3d6465be9f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21289259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cf20a46d6ccf7fe1ab269f1d33736de96a1742797a2bea78c31ee1df96968f0`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.23.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:21 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:16:22 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:16:22 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:16:22 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:16:22 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:16:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:16:36 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:16:36 GMT
USER user
# Thu, 05 Nov 2026 18:16:36 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f31bb69faaf3a010059c4f255f2a9e2738683be277999f627a4cd72325be9271`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.7 MB (3718347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98075b8354a00af8cd754f659acdeb71e63b663094afefc5f3e3d5826b41bba8`  
		Last Modified: Thu, 05 Nov 2026 18:16:48 GMT  
		Size: 11.4 MB (11364945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d82c65930b81ebdd0b42b966ef8c33baf21d01c0da3ce19f2bcf3520f7165fb`  
		Last Modified: Thu, 05 Nov 2026 18:16:48 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd80407b4d39455a636b3ad42ffa1c7e42fb3933ad132949ef163590e5cc54ac`  
		Last Modified: Thu, 05 Nov 2026 18:16:48 GMT  
		Size: 6.2 MB (6204981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:1038b62ab49bd4e651c9339e27203f780644bd3829e97bab3eefd33ccdea0e0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:470a73da7320635c4bb1f055661cad03623d59e9cf3a3d4285ff76bf84990164`

```dockerfile
```

-	Layers:
	-	`sha256:15348a0e166d7840dcb90d22f9aef68e8ef70c496e845cd7667d338c7bf2a2c5`  
		Last Modified: Thu, 05 Nov 2026 18:16:48 GMT  
		Size: 1.3 MB (1288597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e522bf53ac5c040ff0ef857951718702fcb095bcc3d91bbff9ca3efc235dde35`  
		Last Modified: Thu, 05 Nov 2026 18:16:47 GMT  
		Size: 17.5 KB (17498 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1.4.5-alpine3.23`

```console
$ docker pull irssi@sha256:62fbc3514f8ef0bf587137800856ee4dffbfaddf6ca8402501698a6491e3205d
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
$ docker pull irssi@sha256:10682944689d0bac10ff3de89c039609a3681d6617f04efe8825c78f8627eddd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20737030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7773520a95b316f4c62a1bdc7cfeed99cea83695b4dcc001fec54eb47413403e`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:56:10 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:56:10 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:56:10 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:56:10 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:56:10 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:56:23 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:56:23 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:56:23 GMT
USER user
# Thu, 05 Nov 2026 18:56:23 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153eb96a9b5dc9565f557c5c5f7222a7c97681e0610b74c949b59796f035ed08`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 10.8 MB (10815513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24281d2acaac72631003e68f6dd533dee76d6331e278182196edbad294f84965`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df7a0f14676f6da8bd15597a6551a78fa020761ba69af7b612210fd643ddb36`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 6.1 MB (6067943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:6f97a389d6ddc5adf3b3ee6ab67608a9de87266a9088c23446d8151c5f26fc2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b40a4574d537c018153d004dc4096cb0bc60c32b0712bf2c6d0bffb0f3a5f50b`

```dockerfile
```

-	Layers:
	-	`sha256:dab5f1c3d4c9120402c206e895bf05523e83e1e522f5ed83451d0a9b1ea40366`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 1.3 MB (1289248 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f455d1c5c8a75f18e093d4ec5efaa0d3eadd6d062703fb1258a38e2d3f0f14fb`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 17.5 KB (17498 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine3.23` - linux; arm variant v6

```console
$ docker pull irssi@sha256:e9940753f49622f53fefa43723986bd654936a0435de06e08034aea06af0dd8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19480325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:169aa2e733fe5fde2822935396b616ee295002f3242e36ef32678347fe8bbfd4`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:01 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:19:01 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:19:01 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:19:01 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:19:01 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:19:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:19:17 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:19:17 GMT
USER user
# Thu, 05 Nov 2026 18:19:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:010e3505d8b0122aadb8b0d0b5e2fac89a1c6ea0bddbbb19d5ebe0ab095e5fb6`  
		Last Modified: Thu, 05 Nov 2026 18:19:23 GMT  
		Size: 10.0 MB (10025762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5864cd691741211885c86f434f91180255f33f38b737be953a2278ad263552bc`  
		Last Modified: Thu, 05 Nov 2026 18:19:22 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914ba4b363da5fc964a4b0813a887a729a99d5e27c1c13ea86ab456605478e9a`  
		Last Modified: Thu, 05 Nov 2026 18:19:23 GMT  
		Size: 5.9 MB (5895325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:9d57c895bd73dbe39627f16b7135eee83efd300a7b2b56ea07b87bc982597400
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 KB (17422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de1d9730b7b2adb55d4570e355d168e60b04084ca5e55f08c8a8ae4b573059c4`

```dockerfile
```

-	Layers:
	-	`sha256:26ab2839e9fe07c6a50eae7f349e1f27a440355aab740c4f175d2adcc7c4f97a`  
		Last Modified: Thu, 05 Nov 2026 18:19:22 GMT  
		Size: 17.4 KB (17422 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine3.23` - linux; arm variant v7

```console
$ docker pull irssi@sha256:d9abe7a8abb266bbf575c5f1f30b96d622bb8f58b9030a09494cff9e182c6c3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18770756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2a75c7bfa7b3714cbaf10607a64a4cfedd729a31299ff3adeef47873972602a`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:17 GMT
ADD alpine-minirootfs-3.23.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:17 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:18:30 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:18:30 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:18:30 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:18:30 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:18:30 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:18:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:18:47 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:18:47 GMT
USER user
# Thu, 05 Nov 2026 18:18:47 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2715a345c82dd389382733a6d4282bdbb8950eed4bdb95c4a8e332b6b5d8adf5`  
		Last Modified: Thu, 05 Nov 2026 18:01:23 GMT  
		Size: 3.3 MB (3266828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea5432e6ab0500a7b2737280cfb74cda74139ce5a4f3a224b229bf12b413d85`  
		Last Modified: Thu, 05 Nov 2026 18:18:55 GMT  
		Size: 9.9 MB (9859395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a8a641cfb83b11ab5c8b97d83677380490ef303667f41735931f552b8ecdd8f`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209b5ffae4c8d90d9762885384e0b0f0ce71a005858f9e8a9fb4d8eae9639355`  
		Last Modified: Thu, 05 Nov 2026 18:18:55 GMT  
		Size: 5.6 MB (5643548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:63752f1ba387f3326217f4d82afa72d3c726cd32807659b39695ff6d5045e656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1309290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415f4add2f905e745c3497e5cf774c0482952267511c39b7da528b0f8f6905ee`

```dockerfile
```

-	Layers:
	-	`sha256:4a25585cadfff889ac0f34f9bde8009f5d98a5e84c8f37c7ee9fc4d68c2eac8b`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 1.3 MB (1291656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d714a48df0d2612d4f40390d953d9df3b679b6a161cab4b6219ef211b78053e5`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 17.6 KB (17634 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:6de2ad42d89c559426498e7483c1db0abf023694abf0275757ba723fd09aef7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20879484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f2f910b7a141b009fd6ce3e946f30adc985da47cd52078d15855fed8136c00f`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:51:49 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:51:50 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:51:50 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:51:50 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:51:50 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:52:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:52:02 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:52:02 GMT
USER user
# Thu, 05 Nov 2026 18:52:02 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5638efab2b4eaba0b025282b404bbd862223b1712ffc08be8ef3d81227755f8`  
		Last Modified: Thu, 05 Nov 2026 18:52:09 GMT  
		Size: 10.7 MB (10749440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4317a1f912d9d7d65d54d4531a6b486669cae379ffef4fa87439ec8a235306e`  
		Last Modified: Thu, 05 Nov 2026 18:52:08 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93bd37bb7508085789e03c8049ef43da625cafb166d2d06d3fe40e0a4f09328`  
		Last Modified: Thu, 05 Nov 2026 18:52:09 GMT  
		Size: 5.9 MB (5938838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:cebbec75f69919364d547da5dc8aee60c12a3d17f18dfb37688ada116bacfbf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad59022be4a9e5ff0f3cddd444f22a0dd593d613fbea4e721c24ef9a0fbc814a`

```dockerfile
```

-	Layers:
	-	`sha256:8ca9ae37854cc7aecae581d442e5cc8052f13a827662d8a63619e3f0a40f328f`  
		Last Modified: Thu, 05 Nov 2026 18:52:08 GMT  
		Size: 1.3 MB (1288702 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:defc35eed1069d29f57053568ade3e7d90ddab09d2528c781a12fa1287a05684`  
		Last Modified: Thu, 05 Nov 2026 18:52:09 GMT  
		Size: 17.7 KB (17682 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine3.23` - linux; 386

```console
$ docker pull irssi@sha256:728437aee988d9d937d5ef62367c260d9cb7c93533a4b34004b4c54164d34359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20174407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6db4feae906072daac04e6710dec0d239f60d4809479d0b709fa206cc560af1f`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:03 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:16:03 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:16:03 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:16:03 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:16:03 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:16:21 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:16:21 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:16:21 GMT
USER user
# Thu, 05 Nov 2026 18:16:21 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40518fdd37d486420a6285f46f48189c5d30158d971d837be9177f2d5403cf70`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 10.3 MB (10349718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24ebdbd0e0933ec8446d913f38739a34833c377aa1b658aa8fc2117073c3fade`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9073c9219b05a2aa18308c501b6f4657b6a8b596aff9aca2ac23472982fe34e`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 6.1 MB (6145124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:def7a127dad963b178d0eddcab5a02a4d864f8ab9a96cd133fce8e7a6e6274f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5782ac570c48b3c5d63277469ba727fd310bb9fe34391f4640cafe249a18b3e`

```dockerfile
```

-	Layers:
	-	`sha256:c9f42695ab2c742d36040694bf1bf1dbaf14cc3ac293269e2f2e9ad2f797d2e9`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 1.3 MB (1289203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5e6769fc1db6391289bd52f74bedc3848963117a9b826b307c9b6ccf076369d`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 17.4 KB (17444 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine3.23` - linux; ppc64le

```console
$ docker pull irssi@sha256:e0136ba60195f7213a6263c33992585b619aac233d5e01fc258b1ada0a361af6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21223439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b96fd502d118d3bb9211ee6c311f182f6e00fd31a9dbb8a7706942d7a53c859e`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:47 GMT
ADD alpine-minirootfs-3.23.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:47 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:32:46 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 21:32:47 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 21:32:47 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 21:32:47 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 21:32:47 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 21:33:11 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 21:33:12 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 21:33:12 GMT
USER user
# Thu, 05 Nov 2026 21:33:12 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6f9768cc5f6423f8942751565e49e2e8feab6597d57ab26efd88d8959ad0f0f5`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3819006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aca130ba2e0da33a5196b85f90cfdecd19a459d839ebf572009efd76fffdda6`  
		Last Modified: Thu, 05 Nov 2026 21:33:25 GMT  
		Size: 11.0 MB (11039500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc1bb579f9c86a2f820581c1ddaf552bb05a70f51cbaf4c327f4d4d645091b9f`  
		Last Modified: Thu, 05 Nov 2026 21:33:24 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb660c8cf836dbdba17286858831b90a95c9bb655cc12569d5e0ef02d5b864f1`  
		Last Modified: Thu, 05 Nov 2026 21:33:25 GMT  
		Size: 6.4 MB (6363947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:710fa4464bf8878fb26fa3512858e97f096cc16b9b01e17461ca5e822af59399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2bc021c224d7a6c2b73c0db962a3fc3790e5ffa9bc6469c7a6c64234c98f3af`

```dockerfile
```

-	Layers:
	-	`sha256:049a8f8f79f429d7052c3b0f2363c659c3f846881635b38d8ed477f4e7f6552a`  
		Last Modified: Thu, 05 Nov 2026 21:33:24 GMT  
		Size: 1.3 MB (1288655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abc5a12c3b21650d222f92caa384d017c822d820fa0ef33e172f3cfd2ac91a2d`  
		Last Modified: Thu, 05 Nov 2026 21:33:24 GMT  
		Size: 17.6 KB (17572 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine3.23` - linux; riscv64

```console
$ docker pull irssi@sha256:70515621b1f7005a688f3eb0c9f199fdb05dd2e06cf5805355a5e6f9fe386a36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19948006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ce8a14b82879cf28712edd7bd98eae1fa334ba9636859d3a5fb774c2923ce2`
-	Default Command: `["irssi"]`

```dockerfile
# Sun, 08 Nov 2026 12:36:05 GMT
ADD alpine-minirootfs-3.23.8-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:36:05 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 01:00:49 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Tue, 10 Nov 2026 01:00:50 GMT
ENV HOME=/home/user
# Tue, 10 Nov 2026 01:00:50 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 10 Nov 2026 01:00:50 GMT
ENV LANG=C.UTF-8
# Tue, 10 Nov 2026 01:00:50 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 10 Nov 2026 01:04:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Tue, 10 Nov 2026 01:04:48 GMT
WORKDIR /home/user
# Tue, 10 Nov 2026 01:04:48 GMT
USER user
# Tue, 10 Nov 2026 01:04:48 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:40d8941112ffcb85e567141e79f094eb8ab795e6e171c6548ddc812cd9b19486`  
		Last Modified: Sun, 08 Nov 2026 12:36:40 GMT  
		Size: 3.6 MB (3580129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f90c86181fbd68092541cb842693653d896afd7d7376cfb2fb915d4e883bbb8`  
		Last Modified: Tue, 10 Nov 2026 01:05:52 GMT  
		Size: 10.2 MB (10248012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b1dc191b1922684b589438ddb0772e0d8814c6e7e03a05efbb0048a7c847c6`  
		Last Modified: Tue, 10 Nov 2026 01:05:50 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c0bb63007a3faed438c3a92f41b62f5559ec77904c35a466be7183c9d7017f`  
		Last Modified: Tue, 10 Nov 2026 01:05:52 GMT  
		Size: 6.1 MB (6118881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:f3220f61f3a2b63cfb83c2aa3a039471357c879c56950ee454d72b079a2ffeb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddea7a2fc0df722ebde9cf2fafa41d3718945ae0781c10c1933ff42c88ba434e`

```dockerfile
```

-	Layers:
	-	`sha256:055473ab57cb90aa50a23fa030f322a834e6de412f00c3994c8e3b5ac0f00dcb`  
		Last Modified: Tue, 10 Nov 2026 01:05:50 GMT  
		Size: 1.3 MB (1288645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ababdabb5fc4283d36e6938af191f89d433d533fe7a5ee107227a2c61dfed58`  
		Last Modified: Tue, 10 Nov 2026 01:05:50 GMT  
		Size: 17.6 KB (17570 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine3.23` - linux; s390x

```console
$ docker pull irssi@sha256:72d543b1bdd2bc361bdbb7e1c37a04c40dbc98e2f5d75ca43508e3d6465be9f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21289259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cf20a46d6ccf7fe1ab269f1d33736de96a1742797a2bea78c31ee1df96968f0`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.23.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:21 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:16:22 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:16:22 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:16:22 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:16:22 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:16:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:16:36 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:16:36 GMT
USER user
# Thu, 05 Nov 2026 18:16:36 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f31bb69faaf3a010059c4f255f2a9e2738683be277999f627a4cd72325be9271`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.7 MB (3718347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98075b8354a00af8cd754f659acdeb71e63b663094afefc5f3e3d5826b41bba8`  
		Last Modified: Thu, 05 Nov 2026 18:16:48 GMT  
		Size: 11.4 MB (11364945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d82c65930b81ebdd0b42b966ef8c33baf21d01c0da3ce19f2bcf3520f7165fb`  
		Last Modified: Thu, 05 Nov 2026 18:16:48 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd80407b4d39455a636b3ad42ffa1c7e42fb3933ad132949ef163590e5cc54ac`  
		Last Modified: Thu, 05 Nov 2026 18:16:48 GMT  
		Size: 6.2 MB (6204981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:1038b62ab49bd4e651c9339e27203f780644bd3829e97bab3eefd33ccdea0e0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:470a73da7320635c4bb1f055661cad03623d59e9cf3a3d4285ff76bf84990164`

```dockerfile
```

-	Layers:
	-	`sha256:15348a0e166d7840dcb90d22f9aef68e8ef70c496e845cd7667d338c7bf2a2c5`  
		Last Modified: Thu, 05 Nov 2026 18:16:48 GMT  
		Size: 1.3 MB (1288597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e522bf53ac5c040ff0ef857951718702fcb095bcc3d91bbff9ca3efc235dde35`  
		Last Modified: Thu, 05 Nov 2026 18:16:47 GMT  
		Size: 17.5 KB (17498 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1.4.5-trixie`

```console
$ docker pull irssi@sha256:21f55a0202af8d72c5b461c18d1923a71d443f4684efb8c4eac2d96e170d60f3
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
$ docker pull irssi@sha256:7b15c38df72dda518438177789d682cfd8d17d7b7594cbde3e04eb20a299656d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53948745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:694fa8d2229b6990d1e41c5ee35b0b484eb01fdcf222b64f9476084b0224bb1a`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:14:45 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:14:45 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:14:45 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:14:45 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:15:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:15:25 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:15:25 GMT
USER user
# Tue, 24 Nov 2026 04:15:25 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4163f095785a7400056a9db093405098957293a4dedade7fa1f13b49a913886b`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 19.2 MB (19233804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bddb90087b0ee70ccee4f7487f3432bc43b838ea6abded1eb5d5ddb82ccf70ae`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 3.3 KB (3325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:046dd3d4e3fd8a2eb4efb305d7e2fc39c36fe0514255ada3fa205c26997f1400`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 4.9 MB (4869402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:82e47ea872540ea8c85771064a983bf05844eecad18e4c91a387f76cd19c3224
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6264fed2114e9b18838d9625575ce6e44b22868346984b87fa8294d3d1826e25`

```dockerfile
```

-	Layers:
	-	`sha256:7f06da72a1b04ed9d899bd045574351277958197e28b480af78c31af7d40fdf0`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 5.6 MB (5595848 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2131319c69565da6aae551d42e74ea5c0872d8fe507e1c213e373268bd213f9`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; arm variant v5

```console
$ docker pull irssi@sha256:eb153dcc12989ac5be3816464fed644952e6619f36005edd4425664d856be802
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (51038784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b07f47a5f5bc7eee3d431c103990e258453a60c0743e9c834d3d100818fa9837`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:13:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:13:17 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 07:13:17 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 07:13:17 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:13:17 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 07:14:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Thu, 05 Nov 2026 07:14:06 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 07:14:06 GMT
USER user
# Thu, 05 Nov 2026 07:14:06 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94fab4177c1dfeb473ac657143cdd25b1216f7ce13c970d8112525307d15acfa`  
		Last Modified: Thu, 05 Nov 2026 07:14:18 GMT  
		Size: 18.3 MB (18304831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d4194f84be496cb54fea5d16441d45cf82e055e2bccd1fb90bccc44e54c1a8d`  
		Last Modified: Thu, 05 Nov 2026 07:14:17 GMT  
		Size: 3.3 KB (3327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:674730fc0c383a457de7dae2f60e6bb962e42ecf0d09ef112620bc5ce41708f9`  
		Last Modified: Thu, 05 Nov 2026 07:14:18 GMT  
		Size: 4.7 MB (4710984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:121dcd1e72b452949384bcc968376f1fbc4dd9cdc7c0bcd95e1f3eb37230573b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5612140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea617290a9f3600bac75e5902477d7bf94c303ea3eef1d7c1c1964ff71b44ea8`

```dockerfile
```

-	Layers:
	-	`sha256:d311083c31a5974a65689a2aec4610671222d1bf7c7d4918926016b6eb4cf58e`  
		Last Modified: Thu, 05 Nov 2026 07:14:18 GMT  
		Size: 5.6 MB (5593351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:396afaeabb57df6c3302cbe0a6e1418de93141bae973cb7e030967f89b1979e1`  
		Last Modified: Thu, 05 Nov 2026 07:14:17 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; arm variant v7

```console
$ docker pull irssi@sha256:e1bf1212a5e93e6c44ab07261066b0f4cd0b5c84f4f54e947aa6a34b5e4d1b85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48762576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3862d1f27b2a927452327b4cea4a69965096b2c7840fece3aa05e254c2045f4`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:20:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:20:13 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:20:13 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:20:13 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:20:13 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:20:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:20:55 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:20:55 GMT
USER user
# Tue, 24 Nov 2026 04:20:55 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b68b6f18cfebee93ffa901a17bb41e5dafbdd2dd07727a8fb5f2a0fbb17e4bd3`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 17.9 MB (17935385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7550455594fcfa52fe32a1cca8e6455a295e92b00081d1d47699392f840a75a`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:816e64db09dacbca2882225fc541a2a06b0d1e526e519ca98c0c93492e4af5ac`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 4.6 MB (4561371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:65ef887f995bcca37fe42b7ba4bde3d35e7d4e3722ec673f5421112ecb6b8e05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5615208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abd82f57b918d4463cf4dbc531e4a828196bb9e2c025ee53d6f8767e23948208`

```dockerfile
```

-	Layers:
	-	`sha256:cbff29ef1efa4ba10c1f237af9a401a850e1f5e924b257c75123687f216bf15c`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 5.6 MB (5596419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b4e69a6cd48bd4fc33136cee98bb9907eabe9ab8c43974506398e126a3210af`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:cdf6d721b4b6ab7d2f343208685bcac0d6ac6b6db2cf66f67a031f47ae04f9ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54058474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc04c3f235c43312613f005eed1b3cde8fb7966fdc0e79074261ce388cee624`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:14:48 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:14:48 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:14:48 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:14:48 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:15:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:15:25 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:15:25 GMT
USER user
# Tue, 24 Nov 2026 04:15:25 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1a84782dc5f2cd0146695bb2db9ef797364f2cf65b26c341d6c904eb105ee98`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 19.1 MB (19074969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:782647b4751588d53e9a6ea5ccfe3a7305bcbcc8114bcac6154e5fd0ee41a4ec`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:732424b924ec579490991a4aeb6d173cc02b2953ddaf2b312bd7980efcf43097`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 4.8 MB (4782111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:a93d578b5f5fbd52939ae483e6a75fe6bf16519e97e7e8f7e86bc8283d9f2121
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5621157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:040264ef51f0c59ac4f52d631dd9712f2e35212ad41e10d9fa73dca5b7e885c6`

```dockerfile
```

-	Layers:
	-	`sha256:94abf7e8b65f8e9da980d67329e4daca999990f9960ca6b05c66747fe8028660`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 5.6 MB (5602324 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8098ad63c83e8d0bc65b00fc4f42e29e299291f3033aa91f02734a4d31fe75f5`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; 386

```console
$ docker pull irssi@sha256:cb8bd42e30ac32b94e2f08719b590b16205c5fb4035d3231cc5a5b7d0c4b881a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54988559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b9fa2b3847ba141082182c759079f298f46130b3b3c2ca3ccfeb59bc006dbd0`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:14:12 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:14:12 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:14:12 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:14:12 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:14:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:14:53 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:14:53 GMT
USER user
# Tue, 24 Nov 2026 04:14:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:7fb9e5f471a439ab129e9fe258623bccb6c4da1d0313890202b55fd6b5839533`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 31.4 MB (31357919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34a950215307bf93554e724526a44e85993dae1c806fa8ae754287027482f540`  
		Last Modified: Tue, 24 Nov 2026 04:15:03 GMT  
		Size: 18.8 MB (18757461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea8f6101a0a5f007a8a95653053b98c972c43930817bace83573564596cae540`  
		Last Modified: Tue, 24 Nov 2026 04:15:03 GMT  
		Size: 3.3 KB (3327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff87df54bb9fa2736a5e49e342b600ae0a110d7e683aa75c0f2e54bce4b3ab6c`  
		Last Modified: Tue, 24 Nov 2026 04:15:03 GMT  
		Size: 4.9 MB (4869820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:3cc0a1dd9a9c3c0051fb481cda2ef84c99a1580e9141de21a403004bad734b29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5610565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18779fe01808861ad766c36f499ed2f055c5c85009b6d0740411d7895eed02f7`

```dockerfile
```

-	Layers:
	-	`sha256:8ba580f57cb2605c7702fed4a32e996833535c6134dae9b4beee22b4b4c25683`  
		Last Modified: Tue, 24 Nov 2026 04:15:03 GMT  
		Size: 5.6 MB (5591971 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a72dc7c8c6e351e2319bcf458af09973e7a24dd46de69bf16d77a492ae7170b`  
		Last Modified: Tue, 24 Nov 2026 04:15:02 GMT  
		Size: 18.6 KB (18594 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; ppc64le

```console
$ docker pull irssi@sha256:aa124609203a3a98fa1ceae427debd64e11c46e6f2d7ff17e7a49253c6cb27b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58324628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34dbdec57a8ee457db715bceb612aea0a3a79c6bd18190017018f5b8f8c98e18`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:24:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:24:15 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:24:15 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:24:15 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:24:15 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:25:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:25:43 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:25:43 GMT
USER user
# Tue, 24 Nov 2026 04:25:43 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6d599ee149161123db04af161af351247dbcd557ec08f78d82de0c89b6844f6c`  
		Last Modified: Tue, 24 Nov 2026 03:42:42 GMT  
		Size: 33.7 MB (33652639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d40040ff7c924fd070789a90df56f27eab4e574660c268dd423f48d3ceda7de`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 19.6 MB (19568633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af5b568fa79d5599705b5c17e19d295c5202197478716c9c8a14d9bba9735a46`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 3.3 KB (3325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:675e1e37181eef3ad607cb7892abbb5c394a3a33236be06b98e6a488d3d376e6`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 5.1 MB (5099999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:0949eb88547835e917a0afa69c6898c92ebd0c63e31fcf8b663851ae15376f71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5621602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:467625068771cd8c74b3cf51595af73868383680f50dcc2da480ced2e660cba0`

```dockerfile
```

-	Layers:
	-	`sha256:92bb1fefc5b5546dc8580b76650ce375b8d68e957503d95472377c8ea2043ff3`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 5.6 MB (5602879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72c23bb743a8d46747a814e5975f9097a066f144d600fd6abbf099ee4e05b7d0`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; riscv64

```console
$ docker pull irssi@sha256:fd758385a4b02c9d9e80d13998c8860b85685e47787f20a8e992a1f9d1a6a62a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51782249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fe3a44e915e81dd11aa7eef4592fde6fd4701a0681e1fcbdb3aa2992d830d8d`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 11:31:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 11:31:44 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 11:31:44 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 11:31:44 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 11:31:44 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 11:38:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Thu, 05 Nov 2026 11:38:53 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 11:38:53 GMT
USER user
# Thu, 05 Nov 2026 11:38:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9c2319a355ee4f65c20948fbe6e7dc4455455e24645204a22968523fae6b960`  
		Last Modified: Thu, 05 Nov 2026 11:41:02 GMT  
		Size: 18.6 MB (18570110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21c11a51c8760fd49dd499654c23f4172be4f0438e97703bff3b5d3e8130308e`  
		Last Modified: Thu, 05 Nov 2026 11:40:58 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2cb1f292825bf90d712819ceab2bf4d161ade4accb46ddb8070e3dc4b52041b`  
		Last Modified: Thu, 05 Nov 2026 11:41:00 GMT  
		Size: 4.9 MB (4862595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:8b397c081745fa12207cc2d4d68467baedf0fff0a6876209383eade4f40a10f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5605827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b36a001cd2ef7a0248a66e36d738e21a200313277e2968099de58e8bff77e5c2`

```dockerfile
```

-	Layers:
	-	`sha256:0bbc69528478fb204c597c5a81cfbe7e096101162374ac51dea8bca1244e9132`  
		Last Modified: Thu, 05 Nov 2026 11:41:00 GMT  
		Size: 5.6 MB (5587105 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:391674e9cd31f49507193d4cf927463c8efe5e03255c0f82914ab3cbbceea723`  
		Last Modified: Thu, 05 Nov 2026 11:40:58 GMT  
		Size: 18.7 KB (18722 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; s390x

```console
$ docker pull irssi@sha256:c99740094bb8fc3a42fe39a0df1d90c249341718e2531b8ee66d2ff5e37557b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54621603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cf62b7d7530301bf10e970850994b086459bfdda74a948cd236bafe4489b5c5`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:15:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:15:02 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 07:15:02 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 07:15:02 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:15:02 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 07:15:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Thu, 05 Nov 2026 07:15:41 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 07:15:41 GMT
USER user
# Thu, 05 Nov 2026 07:15:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56d570360718c12df13fb3403ebeeda60ad5cbd6ebe703ea5bfe0782b4c5f1ea`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 19.8 MB (19785679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec74ec51933f3b95a7dee95f4010c37c659cc34b70a7259650c96509ff57739`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 3.3 KB (3335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d163cf2a08ccfc0964f43337f0de3907c7b95345892d57206d45abeb4fab0c8`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 4.9 MB (4908440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:b668601dc63bea1aaf21eb394cb35899e97ec155269b081c7b1611f5cae7cff6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5615357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3240edcbc9b69bb78f17b066d101e992f5d1b2698c631b499dc9d5fe1f7c3a54`

```dockerfile
```

-	Layers:
	-	`sha256:b3ee1717ede5dd9c1d66ce2a188d0b16069dc0efd1d5805b7aecee0bfe4ebb56`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 5.6 MB (5596707 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f7dc624e297c33de874aba098bf70a12156b8003603defc82203e66703c5594`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 18.6 KB (18650 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:alpine`

```console
$ docker pull irssi@sha256:62fbc3514f8ef0bf587137800856ee4dffbfaddf6ca8402501698a6491e3205d
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
$ docker pull irssi@sha256:10682944689d0bac10ff3de89c039609a3681d6617f04efe8825c78f8627eddd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20737030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7773520a95b316f4c62a1bdc7cfeed99cea83695b4dcc001fec54eb47413403e`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:56:10 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:56:10 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:56:10 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:56:10 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:56:10 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:56:23 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:56:23 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:56:23 GMT
USER user
# Thu, 05 Nov 2026 18:56:23 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153eb96a9b5dc9565f557c5c5f7222a7c97681e0610b74c949b59796f035ed08`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 10.8 MB (10815513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24281d2acaac72631003e68f6dd533dee76d6331e278182196edbad294f84965`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df7a0f14676f6da8bd15597a6551a78fa020761ba69af7b612210fd643ddb36`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 6.1 MB (6067943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:6f97a389d6ddc5adf3b3ee6ab67608a9de87266a9088c23446d8151c5f26fc2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b40a4574d537c018153d004dc4096cb0bc60c32b0712bf2c6d0bffb0f3a5f50b`

```dockerfile
```

-	Layers:
	-	`sha256:dab5f1c3d4c9120402c206e895bf05523e83e1e522f5ed83451d0a9b1ea40366`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 1.3 MB (1289248 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f455d1c5c8a75f18e093d4ec5efaa0d3eadd6d062703fb1258a38e2d3f0f14fb`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 17.5 KB (17498 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine` - linux; arm variant v6

```console
$ docker pull irssi@sha256:e9940753f49622f53fefa43723986bd654936a0435de06e08034aea06af0dd8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19480325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:169aa2e733fe5fde2822935396b616ee295002f3242e36ef32678347fe8bbfd4`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:01 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:19:01 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:19:01 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:19:01 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:19:01 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:19:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:19:17 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:19:17 GMT
USER user
# Thu, 05 Nov 2026 18:19:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:010e3505d8b0122aadb8b0d0b5e2fac89a1c6ea0bddbbb19d5ebe0ab095e5fb6`  
		Last Modified: Thu, 05 Nov 2026 18:19:23 GMT  
		Size: 10.0 MB (10025762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5864cd691741211885c86f434f91180255f33f38b737be953a2278ad263552bc`  
		Last Modified: Thu, 05 Nov 2026 18:19:22 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914ba4b363da5fc964a4b0813a887a729a99d5e27c1c13ea86ab456605478e9a`  
		Last Modified: Thu, 05 Nov 2026 18:19:23 GMT  
		Size: 5.9 MB (5895325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:9d57c895bd73dbe39627f16b7135eee83efd300a7b2b56ea07b87bc982597400
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 KB (17422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de1d9730b7b2adb55d4570e355d168e60b04084ca5e55f08c8a8ae4b573059c4`

```dockerfile
```

-	Layers:
	-	`sha256:26ab2839e9fe07c6a50eae7f349e1f27a440355aab740c4f175d2adcc7c4f97a`  
		Last Modified: Thu, 05 Nov 2026 18:19:22 GMT  
		Size: 17.4 KB (17422 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine` - linux; arm variant v7

```console
$ docker pull irssi@sha256:d9abe7a8abb266bbf575c5f1f30b96d622bb8f58b9030a09494cff9e182c6c3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18770756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2a75c7bfa7b3714cbaf10607a64a4cfedd729a31299ff3adeef47873972602a`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:17 GMT
ADD alpine-minirootfs-3.23.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:17 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:18:30 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:18:30 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:18:30 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:18:30 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:18:30 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:18:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:18:47 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:18:47 GMT
USER user
# Thu, 05 Nov 2026 18:18:47 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2715a345c82dd389382733a6d4282bdbb8950eed4bdb95c4a8e332b6b5d8adf5`  
		Last Modified: Thu, 05 Nov 2026 18:01:23 GMT  
		Size: 3.3 MB (3266828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea5432e6ab0500a7b2737280cfb74cda74139ce5a4f3a224b229bf12b413d85`  
		Last Modified: Thu, 05 Nov 2026 18:18:55 GMT  
		Size: 9.9 MB (9859395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a8a641cfb83b11ab5c8b97d83677380490ef303667f41735931f552b8ecdd8f`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209b5ffae4c8d90d9762885384e0b0f0ce71a005858f9e8a9fb4d8eae9639355`  
		Last Modified: Thu, 05 Nov 2026 18:18:55 GMT  
		Size: 5.6 MB (5643548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:63752f1ba387f3326217f4d82afa72d3c726cd32807659b39695ff6d5045e656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1309290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415f4add2f905e745c3497e5cf774c0482952267511c39b7da528b0f8f6905ee`

```dockerfile
```

-	Layers:
	-	`sha256:4a25585cadfff889ac0f34f9bde8009f5d98a5e84c8f37c7ee9fc4d68c2eac8b`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 1.3 MB (1291656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d714a48df0d2612d4f40390d953d9df3b679b6a161cab4b6219ef211b78053e5`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 17.6 KB (17634 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:6de2ad42d89c559426498e7483c1db0abf023694abf0275757ba723fd09aef7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20879484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f2f910b7a141b009fd6ce3e946f30adc985da47cd52078d15855fed8136c00f`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:51:49 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:51:50 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:51:50 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:51:50 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:51:50 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:52:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:52:02 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:52:02 GMT
USER user
# Thu, 05 Nov 2026 18:52:02 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5638efab2b4eaba0b025282b404bbd862223b1712ffc08be8ef3d81227755f8`  
		Last Modified: Thu, 05 Nov 2026 18:52:09 GMT  
		Size: 10.7 MB (10749440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4317a1f912d9d7d65d54d4531a6b486669cae379ffef4fa87439ec8a235306e`  
		Last Modified: Thu, 05 Nov 2026 18:52:08 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93bd37bb7508085789e03c8049ef43da625cafb166d2d06d3fe40e0a4f09328`  
		Last Modified: Thu, 05 Nov 2026 18:52:09 GMT  
		Size: 5.9 MB (5938838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:cebbec75f69919364d547da5dc8aee60c12a3d17f18dfb37688ada116bacfbf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad59022be4a9e5ff0f3cddd444f22a0dd593d613fbea4e721c24ef9a0fbc814a`

```dockerfile
```

-	Layers:
	-	`sha256:8ca9ae37854cc7aecae581d442e5cc8052f13a827662d8a63619e3f0a40f328f`  
		Last Modified: Thu, 05 Nov 2026 18:52:08 GMT  
		Size: 1.3 MB (1288702 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:defc35eed1069d29f57053568ade3e7d90ddab09d2528c781a12fa1287a05684`  
		Last Modified: Thu, 05 Nov 2026 18:52:09 GMT  
		Size: 17.7 KB (17682 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine` - linux; 386

```console
$ docker pull irssi@sha256:728437aee988d9d937d5ef62367c260d9cb7c93533a4b34004b4c54164d34359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20174407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6db4feae906072daac04e6710dec0d239f60d4809479d0b709fa206cc560af1f`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:03 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:16:03 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:16:03 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:16:03 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:16:03 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:16:21 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:16:21 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:16:21 GMT
USER user
# Thu, 05 Nov 2026 18:16:21 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40518fdd37d486420a6285f46f48189c5d30158d971d837be9177f2d5403cf70`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 10.3 MB (10349718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24ebdbd0e0933ec8446d913f38739a34833c377aa1b658aa8fc2117073c3fade`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9073c9219b05a2aa18308c501b6f4657b6a8b596aff9aca2ac23472982fe34e`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 6.1 MB (6145124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:def7a127dad963b178d0eddcab5a02a4d864f8ab9a96cd133fce8e7a6e6274f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5782ac570c48b3c5d63277469ba727fd310bb9fe34391f4640cafe249a18b3e`

```dockerfile
```

-	Layers:
	-	`sha256:c9f42695ab2c742d36040694bf1bf1dbaf14cc3ac293269e2f2e9ad2f797d2e9`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 1.3 MB (1289203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5e6769fc1db6391289bd52f74bedc3848963117a9b826b307c9b6ccf076369d`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 17.4 KB (17444 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine` - linux; ppc64le

```console
$ docker pull irssi@sha256:e0136ba60195f7213a6263c33992585b619aac233d5e01fc258b1ada0a361af6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21223439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b96fd502d118d3bb9211ee6c311f182f6e00fd31a9dbb8a7706942d7a53c859e`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:47 GMT
ADD alpine-minirootfs-3.23.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:47 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:32:46 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 21:32:47 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 21:32:47 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 21:32:47 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 21:32:47 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 21:33:11 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 21:33:12 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 21:33:12 GMT
USER user
# Thu, 05 Nov 2026 21:33:12 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6f9768cc5f6423f8942751565e49e2e8feab6597d57ab26efd88d8959ad0f0f5`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3819006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aca130ba2e0da33a5196b85f90cfdecd19a459d839ebf572009efd76fffdda6`  
		Last Modified: Thu, 05 Nov 2026 21:33:25 GMT  
		Size: 11.0 MB (11039500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc1bb579f9c86a2f820581c1ddaf552bb05a70f51cbaf4c327f4d4d645091b9f`  
		Last Modified: Thu, 05 Nov 2026 21:33:24 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb660c8cf836dbdba17286858831b90a95c9bb655cc12569d5e0ef02d5b864f1`  
		Last Modified: Thu, 05 Nov 2026 21:33:25 GMT  
		Size: 6.4 MB (6363947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:710fa4464bf8878fb26fa3512858e97f096cc16b9b01e17461ca5e822af59399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2bc021c224d7a6c2b73c0db962a3fc3790e5ffa9bc6469c7a6c64234c98f3af`

```dockerfile
```

-	Layers:
	-	`sha256:049a8f8f79f429d7052c3b0f2363c659c3f846881635b38d8ed477f4e7f6552a`  
		Last Modified: Thu, 05 Nov 2026 21:33:24 GMT  
		Size: 1.3 MB (1288655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abc5a12c3b21650d222f92caa384d017c822d820fa0ef33e172f3cfd2ac91a2d`  
		Last Modified: Thu, 05 Nov 2026 21:33:24 GMT  
		Size: 17.6 KB (17572 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine` - linux; riscv64

```console
$ docker pull irssi@sha256:70515621b1f7005a688f3eb0c9f199fdb05dd2e06cf5805355a5e6f9fe386a36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19948006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ce8a14b82879cf28712edd7bd98eae1fa334ba9636859d3a5fb774c2923ce2`
-	Default Command: `["irssi"]`

```dockerfile
# Sun, 08 Nov 2026 12:36:05 GMT
ADD alpine-minirootfs-3.23.8-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:36:05 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 01:00:49 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Tue, 10 Nov 2026 01:00:50 GMT
ENV HOME=/home/user
# Tue, 10 Nov 2026 01:00:50 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 10 Nov 2026 01:00:50 GMT
ENV LANG=C.UTF-8
# Tue, 10 Nov 2026 01:00:50 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 10 Nov 2026 01:04:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Tue, 10 Nov 2026 01:04:48 GMT
WORKDIR /home/user
# Tue, 10 Nov 2026 01:04:48 GMT
USER user
# Tue, 10 Nov 2026 01:04:48 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:40d8941112ffcb85e567141e79f094eb8ab795e6e171c6548ddc812cd9b19486`  
		Last Modified: Sun, 08 Nov 2026 12:36:40 GMT  
		Size: 3.6 MB (3580129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f90c86181fbd68092541cb842693653d896afd7d7376cfb2fb915d4e883bbb8`  
		Last Modified: Tue, 10 Nov 2026 01:05:52 GMT  
		Size: 10.2 MB (10248012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b1dc191b1922684b589438ddb0772e0d8814c6e7e03a05efbb0048a7c847c6`  
		Last Modified: Tue, 10 Nov 2026 01:05:50 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c0bb63007a3faed438c3a92f41b62f5559ec77904c35a466be7183c9d7017f`  
		Last Modified: Tue, 10 Nov 2026 01:05:52 GMT  
		Size: 6.1 MB (6118881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:f3220f61f3a2b63cfb83c2aa3a039471357c879c56950ee454d72b079a2ffeb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddea7a2fc0df722ebde9cf2fafa41d3718945ae0781c10c1933ff42c88ba434e`

```dockerfile
```

-	Layers:
	-	`sha256:055473ab57cb90aa50a23fa030f322a834e6de412f00c3994c8e3b5ac0f00dcb`  
		Last Modified: Tue, 10 Nov 2026 01:05:50 GMT  
		Size: 1.3 MB (1288645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ababdabb5fc4283d36e6938af191f89d433d533fe7a5ee107227a2c61dfed58`  
		Last Modified: Tue, 10 Nov 2026 01:05:50 GMT  
		Size: 17.6 KB (17570 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine` - linux; s390x

```console
$ docker pull irssi@sha256:72d543b1bdd2bc361bdbb7e1c37a04c40dbc98e2f5d75ca43508e3d6465be9f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21289259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cf20a46d6ccf7fe1ab269f1d33736de96a1742797a2bea78c31ee1df96968f0`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.23.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:21 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:16:22 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:16:22 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:16:22 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:16:22 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:16:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:16:36 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:16:36 GMT
USER user
# Thu, 05 Nov 2026 18:16:36 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f31bb69faaf3a010059c4f255f2a9e2738683be277999f627a4cd72325be9271`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.7 MB (3718347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98075b8354a00af8cd754f659acdeb71e63b663094afefc5f3e3d5826b41bba8`  
		Last Modified: Thu, 05 Nov 2026 18:16:48 GMT  
		Size: 11.4 MB (11364945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d82c65930b81ebdd0b42b966ef8c33baf21d01c0da3ce19f2bcf3520f7165fb`  
		Last Modified: Thu, 05 Nov 2026 18:16:48 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd80407b4d39455a636b3ad42ffa1c7e42fb3933ad132949ef163590e5cc54ac`  
		Last Modified: Thu, 05 Nov 2026 18:16:48 GMT  
		Size: 6.2 MB (6204981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:1038b62ab49bd4e651c9339e27203f780644bd3829e97bab3eefd33ccdea0e0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:470a73da7320635c4bb1f055661cad03623d59e9cf3a3d4285ff76bf84990164`

```dockerfile
```

-	Layers:
	-	`sha256:15348a0e166d7840dcb90d22f9aef68e8ef70c496e845cd7667d338c7bf2a2c5`  
		Last Modified: Thu, 05 Nov 2026 18:16:48 GMT  
		Size: 1.3 MB (1288597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e522bf53ac5c040ff0ef857951718702fcb095bcc3d91bbff9ca3efc235dde35`  
		Last Modified: Thu, 05 Nov 2026 18:16:47 GMT  
		Size: 17.5 KB (17498 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:alpine3.23`

```console
$ docker pull irssi@sha256:62fbc3514f8ef0bf587137800856ee4dffbfaddf6ca8402501698a6491e3205d
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
$ docker pull irssi@sha256:10682944689d0bac10ff3de89c039609a3681d6617f04efe8825c78f8627eddd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20737030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7773520a95b316f4c62a1bdc7cfeed99cea83695b4dcc001fec54eb47413403e`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:56:10 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:56:10 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:56:10 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:56:10 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:56:10 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:56:23 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:56:23 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:56:23 GMT
USER user
# Thu, 05 Nov 2026 18:56:23 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153eb96a9b5dc9565f557c5c5f7222a7c97681e0610b74c949b59796f035ed08`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 10.8 MB (10815513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24281d2acaac72631003e68f6dd533dee76d6331e278182196edbad294f84965`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df7a0f14676f6da8bd15597a6551a78fa020761ba69af7b612210fd643ddb36`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 6.1 MB (6067943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:6f97a389d6ddc5adf3b3ee6ab67608a9de87266a9088c23446d8151c5f26fc2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b40a4574d537c018153d004dc4096cb0bc60c32b0712bf2c6d0bffb0f3a5f50b`

```dockerfile
```

-	Layers:
	-	`sha256:dab5f1c3d4c9120402c206e895bf05523e83e1e522f5ed83451d0a9b1ea40366`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 1.3 MB (1289248 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f455d1c5c8a75f18e093d4ec5efaa0d3eadd6d062703fb1258a38e2d3f0f14fb`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 17.5 KB (17498 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine3.23` - linux; arm variant v6

```console
$ docker pull irssi@sha256:e9940753f49622f53fefa43723986bd654936a0435de06e08034aea06af0dd8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19480325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:169aa2e733fe5fde2822935396b616ee295002f3242e36ef32678347fe8bbfd4`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:01 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:19:01 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:19:01 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:19:01 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:19:01 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:19:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:19:17 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:19:17 GMT
USER user
# Thu, 05 Nov 2026 18:19:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:010e3505d8b0122aadb8b0d0b5e2fac89a1c6ea0bddbbb19d5ebe0ab095e5fb6`  
		Last Modified: Thu, 05 Nov 2026 18:19:23 GMT  
		Size: 10.0 MB (10025762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5864cd691741211885c86f434f91180255f33f38b737be953a2278ad263552bc`  
		Last Modified: Thu, 05 Nov 2026 18:19:22 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914ba4b363da5fc964a4b0813a887a729a99d5e27c1c13ea86ab456605478e9a`  
		Last Modified: Thu, 05 Nov 2026 18:19:23 GMT  
		Size: 5.9 MB (5895325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:9d57c895bd73dbe39627f16b7135eee83efd300a7b2b56ea07b87bc982597400
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 KB (17422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de1d9730b7b2adb55d4570e355d168e60b04084ca5e55f08c8a8ae4b573059c4`

```dockerfile
```

-	Layers:
	-	`sha256:26ab2839e9fe07c6a50eae7f349e1f27a440355aab740c4f175d2adcc7c4f97a`  
		Last Modified: Thu, 05 Nov 2026 18:19:22 GMT  
		Size: 17.4 KB (17422 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine3.23` - linux; arm variant v7

```console
$ docker pull irssi@sha256:d9abe7a8abb266bbf575c5f1f30b96d622bb8f58b9030a09494cff9e182c6c3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18770756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2a75c7bfa7b3714cbaf10607a64a4cfedd729a31299ff3adeef47873972602a`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:17 GMT
ADD alpine-minirootfs-3.23.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:17 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:18:30 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:18:30 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:18:30 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:18:30 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:18:30 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:18:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:18:47 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:18:47 GMT
USER user
# Thu, 05 Nov 2026 18:18:47 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2715a345c82dd389382733a6d4282bdbb8950eed4bdb95c4a8e332b6b5d8adf5`  
		Last Modified: Thu, 05 Nov 2026 18:01:23 GMT  
		Size: 3.3 MB (3266828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea5432e6ab0500a7b2737280cfb74cda74139ce5a4f3a224b229bf12b413d85`  
		Last Modified: Thu, 05 Nov 2026 18:18:55 GMT  
		Size: 9.9 MB (9859395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a8a641cfb83b11ab5c8b97d83677380490ef303667f41735931f552b8ecdd8f`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209b5ffae4c8d90d9762885384e0b0f0ce71a005858f9e8a9fb4d8eae9639355`  
		Last Modified: Thu, 05 Nov 2026 18:18:55 GMT  
		Size: 5.6 MB (5643548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:63752f1ba387f3326217f4d82afa72d3c726cd32807659b39695ff6d5045e656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1309290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415f4add2f905e745c3497e5cf774c0482952267511c39b7da528b0f8f6905ee`

```dockerfile
```

-	Layers:
	-	`sha256:4a25585cadfff889ac0f34f9bde8009f5d98a5e84c8f37c7ee9fc4d68c2eac8b`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 1.3 MB (1291656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d714a48df0d2612d4f40390d953d9df3b679b6a161cab4b6219ef211b78053e5`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 17.6 KB (17634 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine3.23` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:6de2ad42d89c559426498e7483c1db0abf023694abf0275757ba723fd09aef7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20879484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f2f910b7a141b009fd6ce3e946f30adc985da47cd52078d15855fed8136c00f`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:51:49 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:51:50 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:51:50 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:51:50 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:51:50 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:52:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:52:02 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:52:02 GMT
USER user
# Thu, 05 Nov 2026 18:52:02 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5638efab2b4eaba0b025282b404bbd862223b1712ffc08be8ef3d81227755f8`  
		Last Modified: Thu, 05 Nov 2026 18:52:09 GMT  
		Size: 10.7 MB (10749440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4317a1f912d9d7d65d54d4531a6b486669cae379ffef4fa87439ec8a235306e`  
		Last Modified: Thu, 05 Nov 2026 18:52:08 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93bd37bb7508085789e03c8049ef43da625cafb166d2d06d3fe40e0a4f09328`  
		Last Modified: Thu, 05 Nov 2026 18:52:09 GMT  
		Size: 5.9 MB (5938838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:cebbec75f69919364d547da5dc8aee60c12a3d17f18dfb37688ada116bacfbf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad59022be4a9e5ff0f3cddd444f22a0dd593d613fbea4e721c24ef9a0fbc814a`

```dockerfile
```

-	Layers:
	-	`sha256:8ca9ae37854cc7aecae581d442e5cc8052f13a827662d8a63619e3f0a40f328f`  
		Last Modified: Thu, 05 Nov 2026 18:52:08 GMT  
		Size: 1.3 MB (1288702 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:defc35eed1069d29f57053568ade3e7d90ddab09d2528c781a12fa1287a05684`  
		Last Modified: Thu, 05 Nov 2026 18:52:09 GMT  
		Size: 17.7 KB (17682 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine3.23` - linux; 386

```console
$ docker pull irssi@sha256:728437aee988d9d937d5ef62367c260d9cb7c93533a4b34004b4c54164d34359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20174407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6db4feae906072daac04e6710dec0d239f60d4809479d0b709fa206cc560af1f`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:03 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:16:03 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:16:03 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:16:03 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:16:03 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:16:21 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:16:21 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:16:21 GMT
USER user
# Thu, 05 Nov 2026 18:16:21 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40518fdd37d486420a6285f46f48189c5d30158d971d837be9177f2d5403cf70`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 10.3 MB (10349718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24ebdbd0e0933ec8446d913f38739a34833c377aa1b658aa8fc2117073c3fade`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9073c9219b05a2aa18308c501b6f4657b6a8b596aff9aca2ac23472982fe34e`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 6.1 MB (6145124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:def7a127dad963b178d0eddcab5a02a4d864f8ab9a96cd133fce8e7a6e6274f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5782ac570c48b3c5d63277469ba727fd310bb9fe34391f4640cafe249a18b3e`

```dockerfile
```

-	Layers:
	-	`sha256:c9f42695ab2c742d36040694bf1bf1dbaf14cc3ac293269e2f2e9ad2f797d2e9`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 1.3 MB (1289203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5e6769fc1db6391289bd52f74bedc3848963117a9b826b307c9b6ccf076369d`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 17.4 KB (17444 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine3.23` - linux; ppc64le

```console
$ docker pull irssi@sha256:e0136ba60195f7213a6263c33992585b619aac233d5e01fc258b1ada0a361af6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21223439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b96fd502d118d3bb9211ee6c311f182f6e00fd31a9dbb8a7706942d7a53c859e`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:47 GMT
ADD alpine-minirootfs-3.23.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:47 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:32:46 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 21:32:47 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 21:32:47 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 21:32:47 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 21:32:47 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 21:33:11 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 21:33:12 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 21:33:12 GMT
USER user
# Thu, 05 Nov 2026 21:33:12 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6f9768cc5f6423f8942751565e49e2e8feab6597d57ab26efd88d8959ad0f0f5`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3819006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aca130ba2e0da33a5196b85f90cfdecd19a459d839ebf572009efd76fffdda6`  
		Last Modified: Thu, 05 Nov 2026 21:33:25 GMT  
		Size: 11.0 MB (11039500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc1bb579f9c86a2f820581c1ddaf552bb05a70f51cbaf4c327f4d4d645091b9f`  
		Last Modified: Thu, 05 Nov 2026 21:33:24 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb660c8cf836dbdba17286858831b90a95c9bb655cc12569d5e0ef02d5b864f1`  
		Last Modified: Thu, 05 Nov 2026 21:33:25 GMT  
		Size: 6.4 MB (6363947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:710fa4464bf8878fb26fa3512858e97f096cc16b9b01e17461ca5e822af59399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2bc021c224d7a6c2b73c0db962a3fc3790e5ffa9bc6469c7a6c64234c98f3af`

```dockerfile
```

-	Layers:
	-	`sha256:049a8f8f79f429d7052c3b0f2363c659c3f846881635b38d8ed477f4e7f6552a`  
		Last Modified: Thu, 05 Nov 2026 21:33:24 GMT  
		Size: 1.3 MB (1288655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abc5a12c3b21650d222f92caa384d017c822d820fa0ef33e172f3cfd2ac91a2d`  
		Last Modified: Thu, 05 Nov 2026 21:33:24 GMT  
		Size: 17.6 KB (17572 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine3.23` - linux; riscv64

```console
$ docker pull irssi@sha256:70515621b1f7005a688f3eb0c9f199fdb05dd2e06cf5805355a5e6f9fe386a36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19948006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ce8a14b82879cf28712edd7bd98eae1fa334ba9636859d3a5fb774c2923ce2`
-	Default Command: `["irssi"]`

```dockerfile
# Sun, 08 Nov 2026 12:36:05 GMT
ADD alpine-minirootfs-3.23.8-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:36:05 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 01:00:49 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Tue, 10 Nov 2026 01:00:50 GMT
ENV HOME=/home/user
# Tue, 10 Nov 2026 01:00:50 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 10 Nov 2026 01:00:50 GMT
ENV LANG=C.UTF-8
# Tue, 10 Nov 2026 01:00:50 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 10 Nov 2026 01:04:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Tue, 10 Nov 2026 01:04:48 GMT
WORKDIR /home/user
# Tue, 10 Nov 2026 01:04:48 GMT
USER user
# Tue, 10 Nov 2026 01:04:48 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:40d8941112ffcb85e567141e79f094eb8ab795e6e171c6548ddc812cd9b19486`  
		Last Modified: Sun, 08 Nov 2026 12:36:40 GMT  
		Size: 3.6 MB (3580129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f90c86181fbd68092541cb842693653d896afd7d7376cfb2fb915d4e883bbb8`  
		Last Modified: Tue, 10 Nov 2026 01:05:52 GMT  
		Size: 10.2 MB (10248012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b1dc191b1922684b589438ddb0772e0d8814c6e7e03a05efbb0048a7c847c6`  
		Last Modified: Tue, 10 Nov 2026 01:05:50 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c0bb63007a3faed438c3a92f41b62f5559ec77904c35a466be7183c9d7017f`  
		Last Modified: Tue, 10 Nov 2026 01:05:52 GMT  
		Size: 6.1 MB (6118881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:f3220f61f3a2b63cfb83c2aa3a039471357c879c56950ee454d72b079a2ffeb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddea7a2fc0df722ebde9cf2fafa41d3718945ae0781c10c1933ff42c88ba434e`

```dockerfile
```

-	Layers:
	-	`sha256:055473ab57cb90aa50a23fa030f322a834e6de412f00c3994c8e3b5ac0f00dcb`  
		Last Modified: Tue, 10 Nov 2026 01:05:50 GMT  
		Size: 1.3 MB (1288645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ababdabb5fc4283d36e6938af191f89d433d533fe7a5ee107227a2c61dfed58`  
		Last Modified: Tue, 10 Nov 2026 01:05:50 GMT  
		Size: 17.6 KB (17570 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine3.23` - linux; s390x

```console
$ docker pull irssi@sha256:72d543b1bdd2bc361bdbb7e1c37a04c40dbc98e2f5d75ca43508e3d6465be9f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21289259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cf20a46d6ccf7fe1ab269f1d33736de96a1742797a2bea78c31ee1df96968f0`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.23.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:21 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:16:22 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:16:22 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:16:22 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:16:22 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:16:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:16:36 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:16:36 GMT
USER user
# Thu, 05 Nov 2026 18:16:36 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f31bb69faaf3a010059c4f255f2a9e2738683be277999f627a4cd72325be9271`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.7 MB (3718347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98075b8354a00af8cd754f659acdeb71e63b663094afefc5f3e3d5826b41bba8`  
		Last Modified: Thu, 05 Nov 2026 18:16:48 GMT  
		Size: 11.4 MB (11364945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d82c65930b81ebdd0b42b966ef8c33baf21d01c0da3ce19f2bcf3520f7165fb`  
		Last Modified: Thu, 05 Nov 2026 18:16:48 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd80407b4d39455a636b3ad42ffa1c7e42fb3933ad132949ef163590e5cc54ac`  
		Last Modified: Thu, 05 Nov 2026 18:16:48 GMT  
		Size: 6.2 MB (6204981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:1038b62ab49bd4e651c9339e27203f780644bd3829e97bab3eefd33ccdea0e0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:470a73da7320635c4bb1f055661cad03623d59e9cf3a3d4285ff76bf84990164`

```dockerfile
```

-	Layers:
	-	`sha256:15348a0e166d7840dcb90d22f9aef68e8ef70c496e845cd7667d338c7bf2a2c5`  
		Last Modified: Thu, 05 Nov 2026 18:16:48 GMT  
		Size: 1.3 MB (1288597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e522bf53ac5c040ff0ef857951718702fcb095bcc3d91bbff9ca3efc235dde35`  
		Last Modified: Thu, 05 Nov 2026 18:16:47 GMT  
		Size: 17.5 KB (17498 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:latest`

```console
$ docker pull irssi@sha256:21f55a0202af8d72c5b461c18d1923a71d443f4684efb8c4eac2d96e170d60f3
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
$ docker pull irssi@sha256:7b15c38df72dda518438177789d682cfd8d17d7b7594cbde3e04eb20a299656d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53948745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:694fa8d2229b6990d1e41c5ee35b0b484eb01fdcf222b64f9476084b0224bb1a`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:14:45 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:14:45 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:14:45 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:14:45 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:15:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:15:25 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:15:25 GMT
USER user
# Tue, 24 Nov 2026 04:15:25 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4163f095785a7400056a9db093405098957293a4dedade7fa1f13b49a913886b`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 19.2 MB (19233804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bddb90087b0ee70ccee4f7487f3432bc43b838ea6abded1eb5d5ddb82ccf70ae`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 3.3 KB (3325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:046dd3d4e3fd8a2eb4efb305d7e2fc39c36fe0514255ada3fa205c26997f1400`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 4.9 MB (4869402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:82e47ea872540ea8c85771064a983bf05844eecad18e4c91a387f76cd19c3224
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6264fed2114e9b18838d9625575ce6e44b22868346984b87fa8294d3d1826e25`

```dockerfile
```

-	Layers:
	-	`sha256:7f06da72a1b04ed9d899bd045574351277958197e28b480af78c31af7d40fdf0`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 5.6 MB (5595848 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2131319c69565da6aae551d42e74ea5c0872d8fe507e1c213e373268bd213f9`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; arm variant v5

```console
$ docker pull irssi@sha256:eb153dcc12989ac5be3816464fed644952e6619f36005edd4425664d856be802
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (51038784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b07f47a5f5bc7eee3d431c103990e258453a60c0743e9c834d3d100818fa9837`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:13:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:13:17 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 07:13:17 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 07:13:17 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:13:17 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 07:14:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Thu, 05 Nov 2026 07:14:06 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 07:14:06 GMT
USER user
# Thu, 05 Nov 2026 07:14:06 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94fab4177c1dfeb473ac657143cdd25b1216f7ce13c970d8112525307d15acfa`  
		Last Modified: Thu, 05 Nov 2026 07:14:18 GMT  
		Size: 18.3 MB (18304831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d4194f84be496cb54fea5d16441d45cf82e055e2bccd1fb90bccc44e54c1a8d`  
		Last Modified: Thu, 05 Nov 2026 07:14:17 GMT  
		Size: 3.3 KB (3327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:674730fc0c383a457de7dae2f60e6bb962e42ecf0d09ef112620bc5ce41708f9`  
		Last Modified: Thu, 05 Nov 2026 07:14:18 GMT  
		Size: 4.7 MB (4710984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:121dcd1e72b452949384bcc968376f1fbc4dd9cdc7c0bcd95e1f3eb37230573b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5612140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea617290a9f3600bac75e5902477d7bf94c303ea3eef1d7c1c1964ff71b44ea8`

```dockerfile
```

-	Layers:
	-	`sha256:d311083c31a5974a65689a2aec4610671222d1bf7c7d4918926016b6eb4cf58e`  
		Last Modified: Thu, 05 Nov 2026 07:14:18 GMT  
		Size: 5.6 MB (5593351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:396afaeabb57df6c3302cbe0a6e1418de93141bae973cb7e030967f89b1979e1`  
		Last Modified: Thu, 05 Nov 2026 07:14:17 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; arm variant v7

```console
$ docker pull irssi@sha256:e1bf1212a5e93e6c44ab07261066b0f4cd0b5c84f4f54e947aa6a34b5e4d1b85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48762576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3862d1f27b2a927452327b4cea4a69965096b2c7840fece3aa05e254c2045f4`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:20:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:20:13 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:20:13 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:20:13 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:20:13 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:20:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:20:55 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:20:55 GMT
USER user
# Tue, 24 Nov 2026 04:20:55 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b68b6f18cfebee93ffa901a17bb41e5dafbdd2dd07727a8fb5f2a0fbb17e4bd3`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 17.9 MB (17935385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7550455594fcfa52fe32a1cca8e6455a295e92b00081d1d47699392f840a75a`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:816e64db09dacbca2882225fc541a2a06b0d1e526e519ca98c0c93492e4af5ac`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 4.6 MB (4561371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:65ef887f995bcca37fe42b7ba4bde3d35e7d4e3722ec673f5421112ecb6b8e05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5615208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abd82f57b918d4463cf4dbc531e4a828196bb9e2c025ee53d6f8767e23948208`

```dockerfile
```

-	Layers:
	-	`sha256:cbff29ef1efa4ba10c1f237af9a401a850e1f5e924b257c75123687f216bf15c`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 5.6 MB (5596419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b4e69a6cd48bd4fc33136cee98bb9907eabe9ab8c43974506398e126a3210af`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:cdf6d721b4b6ab7d2f343208685bcac0d6ac6b6db2cf66f67a031f47ae04f9ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54058474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc04c3f235c43312613f005eed1b3cde8fb7966fdc0e79074261ce388cee624`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:14:48 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:14:48 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:14:48 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:14:48 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:15:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:15:25 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:15:25 GMT
USER user
# Tue, 24 Nov 2026 04:15:25 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1a84782dc5f2cd0146695bb2db9ef797364f2cf65b26c341d6c904eb105ee98`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 19.1 MB (19074969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:782647b4751588d53e9a6ea5ccfe3a7305bcbcc8114bcac6154e5fd0ee41a4ec`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:732424b924ec579490991a4aeb6d173cc02b2953ddaf2b312bd7980efcf43097`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 4.8 MB (4782111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:a93d578b5f5fbd52939ae483e6a75fe6bf16519e97e7e8f7e86bc8283d9f2121
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5621157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:040264ef51f0c59ac4f52d631dd9712f2e35212ad41e10d9fa73dca5b7e885c6`

```dockerfile
```

-	Layers:
	-	`sha256:94abf7e8b65f8e9da980d67329e4daca999990f9960ca6b05c66747fe8028660`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 5.6 MB (5602324 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8098ad63c83e8d0bc65b00fc4f42e29e299291f3033aa91f02734a4d31fe75f5`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; 386

```console
$ docker pull irssi@sha256:cb8bd42e30ac32b94e2f08719b590b16205c5fb4035d3231cc5a5b7d0c4b881a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54988559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b9fa2b3847ba141082182c759079f298f46130b3b3c2ca3ccfeb59bc006dbd0`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:14:12 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:14:12 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:14:12 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:14:12 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:14:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:14:53 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:14:53 GMT
USER user
# Tue, 24 Nov 2026 04:14:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:7fb9e5f471a439ab129e9fe258623bccb6c4da1d0313890202b55fd6b5839533`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 31.4 MB (31357919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34a950215307bf93554e724526a44e85993dae1c806fa8ae754287027482f540`  
		Last Modified: Tue, 24 Nov 2026 04:15:03 GMT  
		Size: 18.8 MB (18757461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea8f6101a0a5f007a8a95653053b98c972c43930817bace83573564596cae540`  
		Last Modified: Tue, 24 Nov 2026 04:15:03 GMT  
		Size: 3.3 KB (3327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff87df54bb9fa2736a5e49e342b600ae0a110d7e683aa75c0f2e54bce4b3ab6c`  
		Last Modified: Tue, 24 Nov 2026 04:15:03 GMT  
		Size: 4.9 MB (4869820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:3cc0a1dd9a9c3c0051fb481cda2ef84c99a1580e9141de21a403004bad734b29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5610565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18779fe01808861ad766c36f499ed2f055c5c85009b6d0740411d7895eed02f7`

```dockerfile
```

-	Layers:
	-	`sha256:8ba580f57cb2605c7702fed4a32e996833535c6134dae9b4beee22b4b4c25683`  
		Last Modified: Tue, 24 Nov 2026 04:15:03 GMT  
		Size: 5.6 MB (5591971 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a72dc7c8c6e351e2319bcf458af09973e7a24dd46de69bf16d77a492ae7170b`  
		Last Modified: Tue, 24 Nov 2026 04:15:02 GMT  
		Size: 18.6 KB (18594 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; ppc64le

```console
$ docker pull irssi@sha256:aa124609203a3a98fa1ceae427debd64e11c46e6f2d7ff17e7a49253c6cb27b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58324628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34dbdec57a8ee457db715bceb612aea0a3a79c6bd18190017018f5b8f8c98e18`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:24:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:24:15 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:24:15 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:24:15 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:24:15 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:25:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:25:43 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:25:43 GMT
USER user
# Tue, 24 Nov 2026 04:25:43 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6d599ee149161123db04af161af351247dbcd557ec08f78d82de0c89b6844f6c`  
		Last Modified: Tue, 24 Nov 2026 03:42:42 GMT  
		Size: 33.7 MB (33652639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d40040ff7c924fd070789a90df56f27eab4e574660c268dd423f48d3ceda7de`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 19.6 MB (19568633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af5b568fa79d5599705b5c17e19d295c5202197478716c9c8a14d9bba9735a46`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 3.3 KB (3325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:675e1e37181eef3ad607cb7892abbb5c394a3a33236be06b98e6a488d3d376e6`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 5.1 MB (5099999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:0949eb88547835e917a0afa69c6898c92ebd0c63e31fcf8b663851ae15376f71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5621602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:467625068771cd8c74b3cf51595af73868383680f50dcc2da480ced2e660cba0`

```dockerfile
```

-	Layers:
	-	`sha256:92bb1fefc5b5546dc8580b76650ce375b8d68e957503d95472377c8ea2043ff3`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 5.6 MB (5602879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72c23bb743a8d46747a814e5975f9097a066f144d600fd6abbf099ee4e05b7d0`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; riscv64

```console
$ docker pull irssi@sha256:fd758385a4b02c9d9e80d13998c8860b85685e47787f20a8e992a1f9d1a6a62a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51782249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fe3a44e915e81dd11aa7eef4592fde6fd4701a0681e1fcbdb3aa2992d830d8d`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 11:31:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 11:31:44 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 11:31:44 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 11:31:44 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 11:31:44 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 11:38:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Thu, 05 Nov 2026 11:38:53 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 11:38:53 GMT
USER user
# Thu, 05 Nov 2026 11:38:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9c2319a355ee4f65c20948fbe6e7dc4455455e24645204a22968523fae6b960`  
		Last Modified: Thu, 05 Nov 2026 11:41:02 GMT  
		Size: 18.6 MB (18570110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21c11a51c8760fd49dd499654c23f4172be4f0438e97703bff3b5d3e8130308e`  
		Last Modified: Thu, 05 Nov 2026 11:40:58 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2cb1f292825bf90d712819ceab2bf4d161ade4accb46ddb8070e3dc4b52041b`  
		Last Modified: Thu, 05 Nov 2026 11:41:00 GMT  
		Size: 4.9 MB (4862595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:8b397c081745fa12207cc2d4d68467baedf0fff0a6876209383eade4f40a10f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5605827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b36a001cd2ef7a0248a66e36d738e21a200313277e2968099de58e8bff77e5c2`

```dockerfile
```

-	Layers:
	-	`sha256:0bbc69528478fb204c597c5a81cfbe7e096101162374ac51dea8bca1244e9132`  
		Last Modified: Thu, 05 Nov 2026 11:41:00 GMT  
		Size: 5.6 MB (5587105 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:391674e9cd31f49507193d4cf927463c8efe5e03255c0f82914ab3cbbceea723`  
		Last Modified: Thu, 05 Nov 2026 11:40:58 GMT  
		Size: 18.7 KB (18722 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; s390x

```console
$ docker pull irssi@sha256:c99740094bb8fc3a42fe39a0df1d90c249341718e2531b8ee66d2ff5e37557b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54621603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cf62b7d7530301bf10e970850994b086459bfdda74a948cd236bafe4489b5c5`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:15:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:15:02 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 07:15:02 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 07:15:02 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:15:02 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 07:15:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Thu, 05 Nov 2026 07:15:41 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 07:15:41 GMT
USER user
# Thu, 05 Nov 2026 07:15:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56d570360718c12df13fb3403ebeeda60ad5cbd6ebe703ea5bfe0782b4c5f1ea`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 19.8 MB (19785679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec74ec51933f3b95a7dee95f4010c37c659cc34b70a7259650c96509ff57739`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 3.3 KB (3335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d163cf2a08ccfc0964f43337f0de3907c7b95345892d57206d45abeb4fab0c8`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 4.9 MB (4908440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:b668601dc63bea1aaf21eb394cb35899e97ec155269b081c7b1611f5cae7cff6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5615357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3240edcbc9b69bb78f17b066d101e992f5d1b2698c631b499dc9d5fe1f7c3a54`

```dockerfile
```

-	Layers:
	-	`sha256:b3ee1717ede5dd9c1d66ce2a188d0b16069dc0efd1d5805b7aecee0bfe4ebb56`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 5.6 MB (5596707 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f7dc624e297c33de874aba098bf70a12156b8003603defc82203e66703c5594`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 18.6 KB (18650 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:trixie`

```console
$ docker pull irssi@sha256:21f55a0202af8d72c5b461c18d1923a71d443f4684efb8c4eac2d96e170d60f3
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
$ docker pull irssi@sha256:7b15c38df72dda518438177789d682cfd8d17d7b7594cbde3e04eb20a299656d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53948745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:694fa8d2229b6990d1e41c5ee35b0b484eb01fdcf222b64f9476084b0224bb1a`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:14:45 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:14:45 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:14:45 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:14:45 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:15:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:15:25 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:15:25 GMT
USER user
# Tue, 24 Nov 2026 04:15:25 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4163f095785a7400056a9db093405098957293a4dedade7fa1f13b49a913886b`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 19.2 MB (19233804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bddb90087b0ee70ccee4f7487f3432bc43b838ea6abded1eb5d5ddb82ccf70ae`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 3.3 KB (3325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:046dd3d4e3fd8a2eb4efb305d7e2fc39c36fe0514255ada3fa205c26997f1400`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 4.9 MB (4869402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:82e47ea872540ea8c85771064a983bf05844eecad18e4c91a387f76cd19c3224
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6264fed2114e9b18838d9625575ce6e44b22868346984b87fa8294d3d1826e25`

```dockerfile
```

-	Layers:
	-	`sha256:7f06da72a1b04ed9d899bd045574351277958197e28b480af78c31af7d40fdf0`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 5.6 MB (5595848 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2131319c69565da6aae551d42e74ea5c0872d8fe507e1c213e373268bd213f9`  
		Last Modified: Tue, 24 Nov 2026 04:15:35 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; arm variant v5

```console
$ docker pull irssi@sha256:eb153dcc12989ac5be3816464fed644952e6619f36005edd4425664d856be802
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (51038784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b07f47a5f5bc7eee3d431c103990e258453a60c0743e9c834d3d100818fa9837`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:13:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:13:17 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 07:13:17 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 07:13:17 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:13:17 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 07:14:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Thu, 05 Nov 2026 07:14:06 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 07:14:06 GMT
USER user
# Thu, 05 Nov 2026 07:14:06 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94fab4177c1dfeb473ac657143cdd25b1216f7ce13c970d8112525307d15acfa`  
		Last Modified: Thu, 05 Nov 2026 07:14:18 GMT  
		Size: 18.3 MB (18304831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d4194f84be496cb54fea5d16441d45cf82e055e2bccd1fb90bccc44e54c1a8d`  
		Last Modified: Thu, 05 Nov 2026 07:14:17 GMT  
		Size: 3.3 KB (3327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:674730fc0c383a457de7dae2f60e6bb962e42ecf0d09ef112620bc5ce41708f9`  
		Last Modified: Thu, 05 Nov 2026 07:14:18 GMT  
		Size: 4.7 MB (4710984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:121dcd1e72b452949384bcc968376f1fbc4dd9cdc7c0bcd95e1f3eb37230573b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5612140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea617290a9f3600bac75e5902477d7bf94c303ea3eef1d7c1c1964ff71b44ea8`

```dockerfile
```

-	Layers:
	-	`sha256:d311083c31a5974a65689a2aec4610671222d1bf7c7d4918926016b6eb4cf58e`  
		Last Modified: Thu, 05 Nov 2026 07:14:18 GMT  
		Size: 5.6 MB (5593351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:396afaeabb57df6c3302cbe0a6e1418de93141bae973cb7e030967f89b1979e1`  
		Last Modified: Thu, 05 Nov 2026 07:14:17 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; arm variant v7

```console
$ docker pull irssi@sha256:e1bf1212a5e93e6c44ab07261066b0f4cd0b5c84f4f54e947aa6a34b5e4d1b85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48762576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3862d1f27b2a927452327b4cea4a69965096b2c7840fece3aa05e254c2045f4`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:20:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:20:13 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:20:13 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:20:13 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:20:13 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:20:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:20:55 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:20:55 GMT
USER user
# Tue, 24 Nov 2026 04:20:55 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b68b6f18cfebee93ffa901a17bb41e5dafbdd2dd07727a8fb5f2a0fbb17e4bd3`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 17.9 MB (17935385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7550455594fcfa52fe32a1cca8e6455a295e92b00081d1d47699392f840a75a`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:816e64db09dacbca2882225fc541a2a06b0d1e526e519ca98c0c93492e4af5ac`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 4.6 MB (4561371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:65ef887f995bcca37fe42b7ba4bde3d35e7d4e3722ec673f5421112ecb6b8e05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5615208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abd82f57b918d4463cf4dbc531e4a828196bb9e2c025ee53d6f8767e23948208`

```dockerfile
```

-	Layers:
	-	`sha256:cbff29ef1efa4ba10c1f237af9a401a850e1f5e924b257c75123687f216bf15c`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 5.6 MB (5596419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b4e69a6cd48bd4fc33136cee98bb9907eabe9ab8c43974506398e126a3210af`  
		Last Modified: Tue, 24 Nov 2026 04:21:05 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:cdf6d721b4b6ab7d2f343208685bcac0d6ac6b6db2cf66f67a031f47ae04f9ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54058474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc04c3f235c43312613f005eed1b3cde8fb7966fdc0e79074261ce388cee624`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:14:48 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:14:48 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:14:48 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:14:48 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:15:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:15:25 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:15:25 GMT
USER user
# Tue, 24 Nov 2026 04:15:25 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1a84782dc5f2cd0146695bb2db9ef797364f2cf65b26c341d6c904eb105ee98`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 19.1 MB (19074969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:782647b4751588d53e9a6ea5ccfe3a7305bcbcc8114bcac6154e5fd0ee41a4ec`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:732424b924ec579490991a4aeb6d173cc02b2953ddaf2b312bd7980efcf43097`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 4.8 MB (4782111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:a93d578b5f5fbd52939ae483e6a75fe6bf16519e97e7e8f7e86bc8283d9f2121
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5621157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:040264ef51f0c59ac4f52d631dd9712f2e35212ad41e10d9fa73dca5b7e885c6`

```dockerfile
```

-	Layers:
	-	`sha256:94abf7e8b65f8e9da980d67329e4daca999990f9960ca6b05c66747fe8028660`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 5.6 MB (5602324 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8098ad63c83e8d0bc65b00fc4f42e29e299291f3033aa91f02734a4d31fe75f5`  
		Last Modified: Tue, 24 Nov 2026 04:15:36 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; 386

```console
$ docker pull irssi@sha256:cb8bd42e30ac32b94e2f08719b590b16205c5fb4035d3231cc5a5b7d0c4b881a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54988559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b9fa2b3847ba141082182c759079f298f46130b3b3c2ca3ccfeb59bc006dbd0`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:14:12 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:14:12 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:14:12 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:14:12 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:14:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:14:53 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:14:53 GMT
USER user
# Tue, 24 Nov 2026 04:14:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:7fb9e5f471a439ab129e9fe258623bccb6c4da1d0313890202b55fd6b5839533`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 31.4 MB (31357919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34a950215307bf93554e724526a44e85993dae1c806fa8ae754287027482f540`  
		Last Modified: Tue, 24 Nov 2026 04:15:03 GMT  
		Size: 18.8 MB (18757461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea8f6101a0a5f007a8a95653053b98c972c43930817bace83573564596cae540`  
		Last Modified: Tue, 24 Nov 2026 04:15:03 GMT  
		Size: 3.3 KB (3327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff87df54bb9fa2736a5e49e342b600ae0a110d7e683aa75c0f2e54bce4b3ab6c`  
		Last Modified: Tue, 24 Nov 2026 04:15:03 GMT  
		Size: 4.9 MB (4869820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:3cc0a1dd9a9c3c0051fb481cda2ef84c99a1580e9141de21a403004bad734b29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5610565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18779fe01808861ad766c36f499ed2f055c5c85009b6d0740411d7895eed02f7`

```dockerfile
```

-	Layers:
	-	`sha256:8ba580f57cb2605c7702fed4a32e996833535c6134dae9b4beee22b4b4c25683`  
		Last Modified: Tue, 24 Nov 2026 04:15:03 GMT  
		Size: 5.6 MB (5591971 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a72dc7c8c6e351e2319bcf458af09973e7a24dd46de69bf16d77a492ae7170b`  
		Last Modified: Tue, 24 Nov 2026 04:15:02 GMT  
		Size: 18.6 KB (18594 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; ppc64le

```console
$ docker pull irssi@sha256:aa124609203a3a98fa1ceae427debd64e11c46e6f2d7ff17e7a49253c6cb27b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58324628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34dbdec57a8ee457db715bceb612aea0a3a79c6bd18190017018f5b8f8c98e18`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:24:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:24:15 GMT
ENV HOME=/home/user
# Tue, 24 Nov 2026 04:24:15 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 24 Nov 2026 04:24:15 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:24:15 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 24 Nov 2026 04:25:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 24 Nov 2026 04:25:43 GMT
WORKDIR /home/user
# Tue, 24 Nov 2026 04:25:43 GMT
USER user
# Tue, 24 Nov 2026 04:25:43 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6d599ee149161123db04af161af351247dbcd557ec08f78d82de0c89b6844f6c`  
		Last Modified: Tue, 24 Nov 2026 03:42:42 GMT  
		Size: 33.7 MB (33652639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d40040ff7c924fd070789a90df56f27eab4e574660c268dd423f48d3ceda7de`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 19.6 MB (19568633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af5b568fa79d5599705b5c17e19d295c5202197478716c9c8a14d9bba9735a46`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 3.3 KB (3325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:675e1e37181eef3ad607cb7892abbb5c394a3a33236be06b98e6a488d3d376e6`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 5.1 MB (5099999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:0949eb88547835e917a0afa69c6898c92ebd0c63e31fcf8b663851ae15376f71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5621602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:467625068771cd8c74b3cf51595af73868383680f50dcc2da480ced2e660cba0`

```dockerfile
```

-	Layers:
	-	`sha256:92bb1fefc5b5546dc8580b76650ce375b8d68e957503d95472377c8ea2043ff3`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 5.6 MB (5602879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72c23bb743a8d46747a814e5975f9097a066f144d600fd6abbf099ee4e05b7d0`  
		Last Modified: Tue, 24 Nov 2026 04:26:03 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; riscv64

```console
$ docker pull irssi@sha256:fd758385a4b02c9d9e80d13998c8860b85685e47787f20a8e992a1f9d1a6a62a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51782249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fe3a44e915e81dd11aa7eef4592fde6fd4701a0681e1fcbdb3aa2992d830d8d`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 11:31:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 11:31:44 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 11:31:44 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 11:31:44 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 11:31:44 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 11:38:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Thu, 05 Nov 2026 11:38:53 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 11:38:53 GMT
USER user
# Thu, 05 Nov 2026 11:38:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9c2319a355ee4f65c20948fbe6e7dc4455455e24645204a22968523fae6b960`  
		Last Modified: Thu, 05 Nov 2026 11:41:02 GMT  
		Size: 18.6 MB (18570110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21c11a51c8760fd49dd499654c23f4172be4f0438e97703bff3b5d3e8130308e`  
		Last Modified: Thu, 05 Nov 2026 11:40:58 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2cb1f292825bf90d712819ceab2bf4d161ade4accb46ddb8070e3dc4b52041b`  
		Last Modified: Thu, 05 Nov 2026 11:41:00 GMT  
		Size: 4.9 MB (4862595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:8b397c081745fa12207cc2d4d68467baedf0fff0a6876209383eade4f40a10f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5605827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b36a001cd2ef7a0248a66e36d738e21a200313277e2968099de58e8bff77e5c2`

```dockerfile
```

-	Layers:
	-	`sha256:0bbc69528478fb204c597c5a81cfbe7e096101162374ac51dea8bca1244e9132`  
		Last Modified: Thu, 05 Nov 2026 11:41:00 GMT  
		Size: 5.6 MB (5587105 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:391674e9cd31f49507193d4cf927463c8efe5e03255c0f82914ab3cbbceea723`  
		Last Modified: Thu, 05 Nov 2026 11:40:58 GMT  
		Size: 18.7 KB (18722 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; s390x

```console
$ docker pull irssi@sha256:c99740094bb8fc3a42fe39a0df1d90c249341718e2531b8ee66d2ff5e37557b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54621603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cf62b7d7530301bf10e970850994b086459bfdda74a948cd236bafe4489b5c5`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:15:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:15:02 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 07:15:02 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 07:15:02 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:15:02 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 07:15:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Thu, 05 Nov 2026 07:15:41 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 07:15:41 GMT
USER user
# Thu, 05 Nov 2026 07:15:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56d570360718c12df13fb3403ebeeda60ad5cbd6ebe703ea5bfe0782b4c5f1ea`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 19.8 MB (19785679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec74ec51933f3b95a7dee95f4010c37c659cc34b70a7259650c96509ff57739`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 3.3 KB (3335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d163cf2a08ccfc0964f43337f0de3907c7b95345892d57206d45abeb4fab0c8`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 4.9 MB (4908440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:b668601dc63bea1aaf21eb394cb35899e97ec155269b081c7b1611f5cae7cff6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5615357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3240edcbc9b69bb78f17b066d101e992f5d1b2698c631b499dc9d5fe1f7c3a54`

```dockerfile
```

-	Layers:
	-	`sha256:b3ee1717ede5dd9c1d66ce2a188d0b16069dc0efd1d5805b7aecee0bfe4ebb56`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 5.6 MB (5596707 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f7dc624e297c33de874aba098bf70a12156b8003603defc82203e66703c5594`  
		Last Modified: Thu, 05 Nov 2026 07:15:55 GMT  
		Size: 18.6 KB (18650 bytes)  
		MIME: application/vnd.in-toto+json
