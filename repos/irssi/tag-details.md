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
$ docker pull irssi@sha256:b038a7b97ebbd68d6cd0896f9ad14fe6d6c0e28c63c14a2af54e4dd3e67649e7
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
$ docker pull irssi@sha256:88ac449edff20f0e8c803008db91f2f3d73a8e79360508e668bfdf3932f7e8f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53872326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdc4127c3e7c7d502478df2b2790aec74cc60d3a0ddadb3110b6e6f0596976c7`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:20:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:16 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:20:16 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:20:16 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:20:16 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:20:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:20:55 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:20:55 GMT
USER user
# Wed, 05 Aug 2026 00:20:55 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271271bc702f2406e88c6f6aff91437e500ef6529c4bbc8070dc3e2bf4877f9b`  
		Last Modified: Wed, 05 Aug 2026 00:21:06 GMT  
		Size: 19.2 MB (19220474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7135907a300e58c78a0aa5748b6edba93388509fcdb6434a62af062bbddb1f7`  
		Last Modified: Wed, 05 Aug 2026 00:21:05 GMT  
		Size: 3.3 KB (3331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:403e4ea3d2f99cd8f5e56967ecdedd088dea3835d7cc82d62592d51aaaa69e30`  
		Last Modified: Wed, 05 Aug 2026 00:21:05 GMT  
		Size: 4.9 MB (4867724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:fc0d4ab9a37fa9f22696e6cb014074d650ae9aa84829c5dba0fd03763548c544
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3d1a0f331ab2453ee89d2693c0f42272139054ddcb668a3ddb13b6d83583b43`

```dockerfile
```

-	Layers:
	-	`sha256:855d33255f00ba02d199ce459facc78fa65ab121a41dd03586869ace26e06620`  
		Last Modified: Wed, 05 Aug 2026 00:21:05 GMT  
		Size: 5.6 MB (5588615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:787f79a91db8d03af4563929fcb7ac1714220bdfd77eaaa1c10b139684e49125`  
		Last Modified: Wed, 05 Aug 2026 00:21:05 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; arm variant v5

```console
$ docker pull irssi@sha256:dade6c1b2cdf04cc26602accd707c1ec0a1e7d948ad41f42173620f472094912
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50955812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6faff06c4385b68ab41fc736471e5cf824ad78dce68cdb2ee421c6e36e974e28`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:16:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:16:22 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:16:22 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:16:22 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:16:22 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:17:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:17:11 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:17:11 GMT
USER user
# Wed, 05 Aug 2026 00:17:11 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3288ef7cbcd33f5e8a48f632d7b69b99c94be153a765f6d1294c440abe19b455`  
		Last Modified: Wed, 05 Aug 2026 00:17:22 GMT  
		Size: 18.3 MB (18287297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ad46939f7ea4ba3491d5a58b6557d723792958727f877f7d4b02dad2d5e794a`  
		Last Modified: Wed, 05 Aug 2026 00:17:21 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e680b202e1ad6033d738e913b514b49c2d2f0165746c400b5cf609075641963f`  
		Last Modified: Wed, 05 Aug 2026 00:17:22 GMT  
		Size: 4.7 MB (4710437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:3d7e4ce573884db819709f807ce3fdd3a0c7b2724048c447fff366b811dd8ea7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5604953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9c2558f1e6576faf735fa1d2824dcdfbdd984742649f32eb5da19436427ea0`

```dockerfile
```

-	Layers:
	-	`sha256:4f8ce29df3e85f374810227e3518fcc0e04a89a43768cce76f4c42d28ec98a77`  
		Last Modified: Wed, 05 Aug 2026 00:17:22 GMT  
		Size: 5.6 MB (5586164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d336f344aa70a3816750c040ee6f8d2f966c5362fb254853b71a0ff81e79d003`  
		Last Modified: Wed, 05 Aug 2026 00:17:21 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; arm variant v7

```console
$ docker pull irssi@sha256:976b2bd1e2e305cbe928ed4625989322e2fa440fee538d9f45ec4c747c342b1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48679499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a28657fb120cbc0b0cb86d54c19013884d499a7e5b7e687b996e509b30f4edf`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:20:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:18 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:20:18 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:20:18 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:20:18 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:21:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:21:00 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:21:00 GMT
USER user
# Wed, 05 Aug 2026 00:21:00 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe35b7825d541451ac53e9cc1fa6522e84e66b0c55ddc7e54a0a469ffffb8085`  
		Last Modified: Wed, 05 Aug 2026 00:21:11 GMT  
		Size: 17.9 MB (17909892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85482d0d25aca045461cb7878be4ff3d9448b6897cdb1cc40481b06e573c0042`  
		Last Modified: Wed, 05 Aug 2026 00:21:10 GMT  
		Size: 3.3 KB (3331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:015a302f9a2ea8592db9bfba8291e1ea857df395396e9e71a0e6e5750c340b82`  
		Last Modified: Wed, 05 Aug 2026 00:21:10 GMT  
		Size: 4.6 MB (4559872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:0d7cf4e349aac243d0887d6906df43340aa9be493c9316512ffdd399d77afbb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a21aa3cc7d4f39282c9806b80f7bd838f1d82a9097875e8e8cef8ea1b4f9e5c`

```dockerfile
```

-	Layers:
	-	`sha256:80e30b6f9612ae6bf0fc13ea50460522f190117db7640b3d3f0dfe64f1d9c637`  
		Last Modified: Wed, 05 Aug 2026 00:21:11 GMT  
		Size: 5.6 MB (5589186 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:764da70b6435112478bd1550e5b0079e7a841c7ad1e8457ac84456d6b72e48ef`  
		Last Modified: Wed, 05 Aug 2026 00:21:10 GMT  
		Size: 18.8 KB (18788 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:006664b18787ff67e84b4ff06fe3ba71d9b7670ac0059d658f23e53c5dfac24c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53974848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:988a519cef16a5a38b598ea60f64d81a0a25484d99a5bb033ade769a03015c81`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:20:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:10 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:20:10 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:20:10 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:20:10 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:20:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:20:50 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:20:50 GMT
USER user
# Wed, 05 Aug 2026 00:20:50 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da5d05588dd492298cbdef0d04db875d88a559a4b914bc69bad22098cea142b`  
		Last Modified: Wed, 05 Aug 2026 00:21:01 GMT  
		Size: 19.0 MB (19045659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa2267a6352ee880b1a47244bb5baf3c0dbab563ca60a061a0f878fd02bb64b`  
		Last Modified: Wed, 05 Aug 2026 00:21:00 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84f70d537bb1695651d35659edc6f3a87a46f39858a41f62d42b711037537997`  
		Last Modified: Wed, 05 Aug 2026 00:21:01 GMT  
		Size: 4.8 MB (4782214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:1814d849b326a2294bc0a4e9f0f6fe5b829f172ce1dea4eb5ef4dbc5ce67ee67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5613924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:966954fbc8d1921c8141cac025ec192b2e361cb9a700412bf1259f083e2fd5f4`

```dockerfile
```

-	Layers:
	-	`sha256:2f43d3c0741467f40a1bc9f169fcec871d68a38c23ae7c548d878e4e2ab243b0`  
		Last Modified: Wed, 05 Aug 2026 00:21:01 GMT  
		Size: 5.6 MB (5595091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c298c1a9a7c686e2e28a240468d547f033cdf0e33ed662f67dd4ab60baafe4a`  
		Last Modified: Wed, 05 Aug 2026 00:21:00 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; 386

```console
$ docker pull irssi@sha256:b24d18be69602da2817b66247978927f94f1a0ea669bd304156dcb5eafb79e07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54904544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ba4504932396ae4d9390cec63710b9e45c275996e0ca4a992b07aa4e86ee61e`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:16:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:16:40 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:16:40 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:16:40 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:16:40 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:17:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:17:23 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:17:23 GMT
USER user
# Wed, 05 Aug 2026 00:17:23 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aab4dfcc98de0086c8cb558a5684343a5e42415f92b727fe6fb333daeef754f1`  
		Last Modified: Wed, 05 Aug 2026 00:17:34 GMT  
		Size: 18.7 MB (18735893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d41c341a32f59c47357ebdb77ac06360969873596530b6714df220f216575979`  
		Last Modified: Wed, 05 Aug 2026 00:17:33 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04fdb0c25ada8216283275ec81a7c6104e06ddb3a0fccebc3af0038010bc87d1`  
		Last Modified: Wed, 05 Aug 2026 00:17:34 GMT  
		Size: 4.9 MB (4869016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:e19fbe494e6e8f794e25efacdbe7607d6a2d9ed7f971b3943975c30c2906d4f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b20098d58ba8ef35ae376ce06c36563239a016bb5f3acf615e8395ae7e353582`

```dockerfile
```

-	Layers:
	-	`sha256:d53d4bf9e593c61469f3d3da6c77939259e0a6207d625a92d71eb4b72e0e97b2`  
		Last Modified: Wed, 05 Aug 2026 00:17:33 GMT  
		Size: 5.6 MB (5584738 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1646054a3091d3729493f8d3cb49227326440d6b879b619f36f3748999a0c413`  
		Last Modified: Wed, 05 Aug 2026 00:17:33 GMT  
		Size: 18.6 KB (18595 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; ppc64le

```console
$ docker pull irssi@sha256:9d1d37186c98418e5fd3f43e4869c03e6827b2bf0c585f21e4915ee22d3ee328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.2 MB (58247661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f02ab477679506f054880fab4371cb7d6728042ff93bb22d9f33f45214f6033e`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:24:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:24:46 GMT
ENV HOME=/home/user
# Tue, 14 Jul 2026 01:24:46 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 14 Jul 2026 01:24:46 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:24:46 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 14 Jul 2026 01:26:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 14 Jul 2026 01:26:19 GMT
WORKDIR /home/user
# Tue, 14 Jul 2026 01:26:19 GMT
USER user
# Tue, 14 Jul 2026 01:26:19 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91b2bc8a63235ea0c83712afd0f018de86b2c3ba23d4d4014a244555eaff0056`  
		Last Modified: Tue, 14 Jul 2026 01:26:38 GMT  
		Size: 19.5 MB (19544153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fa4d481ea50d4fd04998f233aeb33356e770f8bacf59f3c11f4d254e618b092`  
		Last Modified: Tue, 14 Jul 2026 01:26:37 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50916a44aa90aa1b202e56a642d337587dbde369c8303118502ed62a93eee7c3`  
		Last Modified: Tue, 14 Jul 2026 01:26:38 GMT  
		Size: 5.1 MB (5098669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:8fdd41a9751c3ca11038503bba5e563e1636a85234c340909a6debbf3a2053b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cdd942dc7d20da1d0fe594b6053c634d4eab54993dfb3a7d62b93cd5aa16d1c`

```dockerfile
```

-	Layers:
	-	`sha256:96221a0cf251da1d4218fc35b94fb588fa7c7d114681fe384964e07d01ef3dd5`  
		Last Modified: Tue, 14 Jul 2026 01:26:38 GMT  
		Size: 5.6 MB (5595646 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:917d7eb9fc955d0553e571fe58050295b2fd2c72c19ae8fded90029700679f04`  
		Last Modified: Tue, 14 Jul 2026 01:26:38 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; riscv64

```console
$ docker pull irssi@sha256:48c8394b465d62125c037b46030dafdde237557d90e91fa08bb5fb142646e8bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51706138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c11175ee96eac0863d0b1ea64902bb9b015621a9ef6c4498368f522159b3a7cb`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:39:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:39:04 GMT
ENV HOME=/home/user
# Tue, 14 Jul 2026 03:39:04 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 14 Jul 2026 03:39:04 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 03:39:04 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 14 Jul 2026 03:46:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 14 Jul 2026 03:46:01 GMT
WORKDIR /home/user
# Tue, 14 Jul 2026 03:46:01 GMT
USER user
# Tue, 14 Jul 2026 03:46:01 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1340e0d7069bd261cc83414875fd3f5588fdf40b277fb417450062d24d225cc0`  
		Last Modified: Tue, 14 Jul 2026 03:47:56 GMT  
		Size: 18.6 MB (18563174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ad2ac628019e1a86aca9c40ba6d59372dcc5f3e9150028043e7d4372747f14a`  
		Last Modified: Tue, 14 Jul 2026 03:47:52 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54442680d526394b95a078b54a9ecbf769c3810f95956bfc9e3e5b726d76ae79`  
		Last Modified: Tue, 14 Jul 2026 03:47:54 GMT  
		Size: 4.9 MB (4861401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:18d890db80b611c34cab61fcff0b3b3f248cbf0ef919d7a69502d47187ef936d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5598641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1858b304f7f3010a69381c8c8b81ee106dc13a91d34437d49af9378a2af83f95`

```dockerfile
```

-	Layers:
	-	`sha256:8536b987b7d4713eda56395f1ab2872b69265248ce4241103688e63726e2c7cb`  
		Last Modified: Tue, 14 Jul 2026 03:47:54 GMT  
		Size: 5.6 MB (5579918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3932587e0eee660c2d5695aed2be4bc10356bdc502a3b9c330d3b0dc41845a0c`  
		Last Modified: Tue, 14 Jul 2026 03:47:52 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; s390x

```console
$ docker pull irssi@sha256:6aa556bba2647bcc275c90eacf32f222181af51adef365c2f2253e99947fb08d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54524654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45eaf4e1ba8b6a88808ddb289fc11264f59f6d292752677575df587a5aad9489`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:18:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:18:48 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:18:48 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:18:48 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:18:48 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:19:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:19:31 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:19:31 GMT
USER user
# Wed, 05 Aug 2026 00:19:31 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d2f2824e49cc223d89d03a61664c61ba3ef5a4cca75f6b6be1b8dcaa1e98618`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
		Size: 19.8 MB (19767619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3488e75adb3b9aece76dd45b9cb2180a2bd5d44753515289a7aded7bff2a6131`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
		Size: 3.3 KB (3339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5adb9c4683d3552d27e6fe91e62b50b54a10cc1569eae0ac3ad9876fc0ef675e`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
		Size: 4.9 MB (4907091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:5115e7be7f359d3dba2b99f545b7b6ed54af790470f570ef433018504a92b6d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:015455bdb27e2bf9b7cdb36b888f73209a402874fbfe428d98a0825d1afac968`

```dockerfile
```

-	Layers:
	-	`sha256:68428449f94578f6e3e501cffdce2a649d78a1812bd73f98e7b0589c92c39b84`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
		Size: 5.6 MB (5589520 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7eb746569f84030c3ade08e996d7dd6be735beeac107565467655025efc86cf`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
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
$ docker pull irssi@sha256:b038a7b97ebbd68d6cd0896f9ad14fe6d6c0e28c63c14a2af54e4dd3e67649e7
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
$ docker pull irssi@sha256:88ac449edff20f0e8c803008db91f2f3d73a8e79360508e668bfdf3932f7e8f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53872326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdc4127c3e7c7d502478df2b2790aec74cc60d3a0ddadb3110b6e6f0596976c7`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:20:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:16 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:20:16 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:20:16 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:20:16 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:20:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:20:55 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:20:55 GMT
USER user
# Wed, 05 Aug 2026 00:20:55 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271271bc702f2406e88c6f6aff91437e500ef6529c4bbc8070dc3e2bf4877f9b`  
		Last Modified: Wed, 05 Aug 2026 00:21:06 GMT  
		Size: 19.2 MB (19220474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7135907a300e58c78a0aa5748b6edba93388509fcdb6434a62af062bbddb1f7`  
		Last Modified: Wed, 05 Aug 2026 00:21:05 GMT  
		Size: 3.3 KB (3331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:403e4ea3d2f99cd8f5e56967ecdedd088dea3835d7cc82d62592d51aaaa69e30`  
		Last Modified: Wed, 05 Aug 2026 00:21:05 GMT  
		Size: 4.9 MB (4867724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:fc0d4ab9a37fa9f22696e6cb014074d650ae9aa84829c5dba0fd03763548c544
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3d1a0f331ab2453ee89d2693c0f42272139054ddcb668a3ddb13b6d83583b43`

```dockerfile
```

-	Layers:
	-	`sha256:855d33255f00ba02d199ce459facc78fa65ab121a41dd03586869ace26e06620`  
		Last Modified: Wed, 05 Aug 2026 00:21:05 GMT  
		Size: 5.6 MB (5588615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:787f79a91db8d03af4563929fcb7ac1714220bdfd77eaaa1c10b139684e49125`  
		Last Modified: Wed, 05 Aug 2026 00:21:05 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; arm variant v5

```console
$ docker pull irssi@sha256:dade6c1b2cdf04cc26602accd707c1ec0a1e7d948ad41f42173620f472094912
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50955812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6faff06c4385b68ab41fc736471e5cf824ad78dce68cdb2ee421c6e36e974e28`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:16:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:16:22 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:16:22 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:16:22 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:16:22 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:17:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:17:11 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:17:11 GMT
USER user
# Wed, 05 Aug 2026 00:17:11 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3288ef7cbcd33f5e8a48f632d7b69b99c94be153a765f6d1294c440abe19b455`  
		Last Modified: Wed, 05 Aug 2026 00:17:22 GMT  
		Size: 18.3 MB (18287297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ad46939f7ea4ba3491d5a58b6557d723792958727f877f7d4b02dad2d5e794a`  
		Last Modified: Wed, 05 Aug 2026 00:17:21 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e680b202e1ad6033d738e913b514b49c2d2f0165746c400b5cf609075641963f`  
		Last Modified: Wed, 05 Aug 2026 00:17:22 GMT  
		Size: 4.7 MB (4710437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:3d7e4ce573884db819709f807ce3fdd3a0c7b2724048c447fff366b811dd8ea7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5604953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9c2558f1e6576faf735fa1d2824dcdfbdd984742649f32eb5da19436427ea0`

```dockerfile
```

-	Layers:
	-	`sha256:4f8ce29df3e85f374810227e3518fcc0e04a89a43768cce76f4c42d28ec98a77`  
		Last Modified: Wed, 05 Aug 2026 00:17:22 GMT  
		Size: 5.6 MB (5586164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d336f344aa70a3816750c040ee6f8d2f966c5362fb254853b71a0ff81e79d003`  
		Last Modified: Wed, 05 Aug 2026 00:17:21 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; arm variant v7

```console
$ docker pull irssi@sha256:976b2bd1e2e305cbe928ed4625989322e2fa440fee538d9f45ec4c747c342b1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48679499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a28657fb120cbc0b0cb86d54c19013884d499a7e5b7e687b996e509b30f4edf`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:20:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:18 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:20:18 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:20:18 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:20:18 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:21:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:21:00 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:21:00 GMT
USER user
# Wed, 05 Aug 2026 00:21:00 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe35b7825d541451ac53e9cc1fa6522e84e66b0c55ddc7e54a0a469ffffb8085`  
		Last Modified: Wed, 05 Aug 2026 00:21:11 GMT  
		Size: 17.9 MB (17909892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85482d0d25aca045461cb7878be4ff3d9448b6897cdb1cc40481b06e573c0042`  
		Last Modified: Wed, 05 Aug 2026 00:21:10 GMT  
		Size: 3.3 KB (3331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:015a302f9a2ea8592db9bfba8291e1ea857df395396e9e71a0e6e5750c340b82`  
		Last Modified: Wed, 05 Aug 2026 00:21:10 GMT  
		Size: 4.6 MB (4559872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:0d7cf4e349aac243d0887d6906df43340aa9be493c9316512ffdd399d77afbb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a21aa3cc7d4f39282c9806b80f7bd838f1d82a9097875e8e8cef8ea1b4f9e5c`

```dockerfile
```

-	Layers:
	-	`sha256:80e30b6f9612ae6bf0fc13ea50460522f190117db7640b3d3f0dfe64f1d9c637`  
		Last Modified: Wed, 05 Aug 2026 00:21:11 GMT  
		Size: 5.6 MB (5589186 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:764da70b6435112478bd1550e5b0079e7a841c7ad1e8457ac84456d6b72e48ef`  
		Last Modified: Wed, 05 Aug 2026 00:21:10 GMT  
		Size: 18.8 KB (18788 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:006664b18787ff67e84b4ff06fe3ba71d9b7670ac0059d658f23e53c5dfac24c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53974848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:988a519cef16a5a38b598ea60f64d81a0a25484d99a5bb033ade769a03015c81`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:20:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:10 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:20:10 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:20:10 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:20:10 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:20:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:20:50 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:20:50 GMT
USER user
# Wed, 05 Aug 2026 00:20:50 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da5d05588dd492298cbdef0d04db875d88a559a4b914bc69bad22098cea142b`  
		Last Modified: Wed, 05 Aug 2026 00:21:01 GMT  
		Size: 19.0 MB (19045659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa2267a6352ee880b1a47244bb5baf3c0dbab563ca60a061a0f878fd02bb64b`  
		Last Modified: Wed, 05 Aug 2026 00:21:00 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84f70d537bb1695651d35659edc6f3a87a46f39858a41f62d42b711037537997`  
		Last Modified: Wed, 05 Aug 2026 00:21:01 GMT  
		Size: 4.8 MB (4782214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:1814d849b326a2294bc0a4e9f0f6fe5b829f172ce1dea4eb5ef4dbc5ce67ee67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5613924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:966954fbc8d1921c8141cac025ec192b2e361cb9a700412bf1259f083e2fd5f4`

```dockerfile
```

-	Layers:
	-	`sha256:2f43d3c0741467f40a1bc9f169fcec871d68a38c23ae7c548d878e4e2ab243b0`  
		Last Modified: Wed, 05 Aug 2026 00:21:01 GMT  
		Size: 5.6 MB (5595091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c298c1a9a7c686e2e28a240468d547f033cdf0e33ed662f67dd4ab60baafe4a`  
		Last Modified: Wed, 05 Aug 2026 00:21:00 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; 386

```console
$ docker pull irssi@sha256:b24d18be69602da2817b66247978927f94f1a0ea669bd304156dcb5eafb79e07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54904544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ba4504932396ae4d9390cec63710b9e45c275996e0ca4a992b07aa4e86ee61e`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:16:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:16:40 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:16:40 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:16:40 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:16:40 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:17:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:17:23 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:17:23 GMT
USER user
# Wed, 05 Aug 2026 00:17:23 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aab4dfcc98de0086c8cb558a5684343a5e42415f92b727fe6fb333daeef754f1`  
		Last Modified: Wed, 05 Aug 2026 00:17:34 GMT  
		Size: 18.7 MB (18735893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d41c341a32f59c47357ebdb77ac06360969873596530b6714df220f216575979`  
		Last Modified: Wed, 05 Aug 2026 00:17:33 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04fdb0c25ada8216283275ec81a7c6104e06ddb3a0fccebc3af0038010bc87d1`  
		Last Modified: Wed, 05 Aug 2026 00:17:34 GMT  
		Size: 4.9 MB (4869016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:e19fbe494e6e8f794e25efacdbe7607d6a2d9ed7f971b3943975c30c2906d4f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b20098d58ba8ef35ae376ce06c36563239a016bb5f3acf615e8395ae7e353582`

```dockerfile
```

-	Layers:
	-	`sha256:d53d4bf9e593c61469f3d3da6c77939259e0a6207d625a92d71eb4b72e0e97b2`  
		Last Modified: Wed, 05 Aug 2026 00:17:33 GMT  
		Size: 5.6 MB (5584738 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1646054a3091d3729493f8d3cb49227326440d6b879b619f36f3748999a0c413`  
		Last Modified: Wed, 05 Aug 2026 00:17:33 GMT  
		Size: 18.6 KB (18595 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; ppc64le

```console
$ docker pull irssi@sha256:9d1d37186c98418e5fd3f43e4869c03e6827b2bf0c585f21e4915ee22d3ee328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.2 MB (58247661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f02ab477679506f054880fab4371cb7d6728042ff93bb22d9f33f45214f6033e`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:24:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:24:46 GMT
ENV HOME=/home/user
# Tue, 14 Jul 2026 01:24:46 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 14 Jul 2026 01:24:46 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:24:46 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 14 Jul 2026 01:26:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 14 Jul 2026 01:26:19 GMT
WORKDIR /home/user
# Tue, 14 Jul 2026 01:26:19 GMT
USER user
# Tue, 14 Jul 2026 01:26:19 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91b2bc8a63235ea0c83712afd0f018de86b2c3ba23d4d4014a244555eaff0056`  
		Last Modified: Tue, 14 Jul 2026 01:26:38 GMT  
		Size: 19.5 MB (19544153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fa4d481ea50d4fd04998f233aeb33356e770f8bacf59f3c11f4d254e618b092`  
		Last Modified: Tue, 14 Jul 2026 01:26:37 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50916a44aa90aa1b202e56a642d337587dbde369c8303118502ed62a93eee7c3`  
		Last Modified: Tue, 14 Jul 2026 01:26:38 GMT  
		Size: 5.1 MB (5098669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:8fdd41a9751c3ca11038503bba5e563e1636a85234c340909a6debbf3a2053b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cdd942dc7d20da1d0fe594b6053c634d4eab54993dfb3a7d62b93cd5aa16d1c`

```dockerfile
```

-	Layers:
	-	`sha256:96221a0cf251da1d4218fc35b94fb588fa7c7d114681fe384964e07d01ef3dd5`  
		Last Modified: Tue, 14 Jul 2026 01:26:38 GMT  
		Size: 5.6 MB (5595646 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:917d7eb9fc955d0553e571fe58050295b2fd2c72c19ae8fded90029700679f04`  
		Last Modified: Tue, 14 Jul 2026 01:26:38 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; riscv64

```console
$ docker pull irssi@sha256:48c8394b465d62125c037b46030dafdde237557d90e91fa08bb5fb142646e8bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51706138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c11175ee96eac0863d0b1ea64902bb9b015621a9ef6c4498368f522159b3a7cb`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:39:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:39:04 GMT
ENV HOME=/home/user
# Tue, 14 Jul 2026 03:39:04 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 14 Jul 2026 03:39:04 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 03:39:04 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 14 Jul 2026 03:46:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 14 Jul 2026 03:46:01 GMT
WORKDIR /home/user
# Tue, 14 Jul 2026 03:46:01 GMT
USER user
# Tue, 14 Jul 2026 03:46:01 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1340e0d7069bd261cc83414875fd3f5588fdf40b277fb417450062d24d225cc0`  
		Last Modified: Tue, 14 Jul 2026 03:47:56 GMT  
		Size: 18.6 MB (18563174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ad2ac628019e1a86aca9c40ba6d59372dcc5f3e9150028043e7d4372747f14a`  
		Last Modified: Tue, 14 Jul 2026 03:47:52 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54442680d526394b95a078b54a9ecbf769c3810f95956bfc9e3e5b726d76ae79`  
		Last Modified: Tue, 14 Jul 2026 03:47:54 GMT  
		Size: 4.9 MB (4861401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:18d890db80b611c34cab61fcff0b3b3f248cbf0ef919d7a69502d47187ef936d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5598641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1858b304f7f3010a69381c8c8b81ee106dc13a91d34437d49af9378a2af83f95`

```dockerfile
```

-	Layers:
	-	`sha256:8536b987b7d4713eda56395f1ab2872b69265248ce4241103688e63726e2c7cb`  
		Last Modified: Tue, 14 Jul 2026 03:47:54 GMT  
		Size: 5.6 MB (5579918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3932587e0eee660c2d5695aed2be4bc10356bdc502a3b9c330d3b0dc41845a0c`  
		Last Modified: Tue, 14 Jul 2026 03:47:52 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; s390x

```console
$ docker pull irssi@sha256:6aa556bba2647bcc275c90eacf32f222181af51adef365c2f2253e99947fb08d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54524654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45eaf4e1ba8b6a88808ddb289fc11264f59f6d292752677575df587a5aad9489`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:18:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:18:48 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:18:48 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:18:48 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:18:48 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:19:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:19:31 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:19:31 GMT
USER user
# Wed, 05 Aug 2026 00:19:31 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d2f2824e49cc223d89d03a61664c61ba3ef5a4cca75f6b6be1b8dcaa1e98618`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
		Size: 19.8 MB (19767619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3488e75adb3b9aece76dd45b9cb2180a2bd5d44753515289a7aded7bff2a6131`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
		Size: 3.3 KB (3339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5adb9c4683d3552d27e6fe91e62b50b54a10cc1569eae0ac3ad9876fc0ef675e`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
		Size: 4.9 MB (4907091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:5115e7be7f359d3dba2b99f545b7b6ed54af790470f570ef433018504a92b6d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:015455bdb27e2bf9b7cdb36b888f73209a402874fbfe428d98a0825d1afac968`

```dockerfile
```

-	Layers:
	-	`sha256:68428449f94578f6e3e501cffdce2a649d78a1812bd73f98e7b0589c92c39b84`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
		Size: 5.6 MB (5589520 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7eb746569f84030c3ade08e996d7dd6be735beeac107565467655025efc86cf`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1.4`

```console
$ docker pull irssi@sha256:b038a7b97ebbd68d6cd0896f9ad14fe6d6c0e28c63c14a2af54e4dd3e67649e7
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
$ docker pull irssi@sha256:88ac449edff20f0e8c803008db91f2f3d73a8e79360508e668bfdf3932f7e8f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53872326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdc4127c3e7c7d502478df2b2790aec74cc60d3a0ddadb3110b6e6f0596976c7`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:20:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:16 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:20:16 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:20:16 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:20:16 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:20:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:20:55 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:20:55 GMT
USER user
# Wed, 05 Aug 2026 00:20:55 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271271bc702f2406e88c6f6aff91437e500ef6529c4bbc8070dc3e2bf4877f9b`  
		Last Modified: Wed, 05 Aug 2026 00:21:06 GMT  
		Size: 19.2 MB (19220474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7135907a300e58c78a0aa5748b6edba93388509fcdb6434a62af062bbddb1f7`  
		Last Modified: Wed, 05 Aug 2026 00:21:05 GMT  
		Size: 3.3 KB (3331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:403e4ea3d2f99cd8f5e56967ecdedd088dea3835d7cc82d62592d51aaaa69e30`  
		Last Modified: Wed, 05 Aug 2026 00:21:05 GMT  
		Size: 4.9 MB (4867724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:fc0d4ab9a37fa9f22696e6cb014074d650ae9aa84829c5dba0fd03763548c544
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3d1a0f331ab2453ee89d2693c0f42272139054ddcb668a3ddb13b6d83583b43`

```dockerfile
```

-	Layers:
	-	`sha256:855d33255f00ba02d199ce459facc78fa65ab121a41dd03586869ace26e06620`  
		Last Modified: Wed, 05 Aug 2026 00:21:05 GMT  
		Size: 5.6 MB (5588615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:787f79a91db8d03af4563929fcb7ac1714220bdfd77eaaa1c10b139684e49125`  
		Last Modified: Wed, 05 Aug 2026 00:21:05 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; arm variant v5

```console
$ docker pull irssi@sha256:dade6c1b2cdf04cc26602accd707c1ec0a1e7d948ad41f42173620f472094912
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50955812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6faff06c4385b68ab41fc736471e5cf824ad78dce68cdb2ee421c6e36e974e28`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:16:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:16:22 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:16:22 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:16:22 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:16:22 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:17:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:17:11 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:17:11 GMT
USER user
# Wed, 05 Aug 2026 00:17:11 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3288ef7cbcd33f5e8a48f632d7b69b99c94be153a765f6d1294c440abe19b455`  
		Last Modified: Wed, 05 Aug 2026 00:17:22 GMT  
		Size: 18.3 MB (18287297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ad46939f7ea4ba3491d5a58b6557d723792958727f877f7d4b02dad2d5e794a`  
		Last Modified: Wed, 05 Aug 2026 00:17:21 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e680b202e1ad6033d738e913b514b49c2d2f0165746c400b5cf609075641963f`  
		Last Modified: Wed, 05 Aug 2026 00:17:22 GMT  
		Size: 4.7 MB (4710437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:3d7e4ce573884db819709f807ce3fdd3a0c7b2724048c447fff366b811dd8ea7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5604953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9c2558f1e6576faf735fa1d2824dcdfbdd984742649f32eb5da19436427ea0`

```dockerfile
```

-	Layers:
	-	`sha256:4f8ce29df3e85f374810227e3518fcc0e04a89a43768cce76f4c42d28ec98a77`  
		Last Modified: Wed, 05 Aug 2026 00:17:22 GMT  
		Size: 5.6 MB (5586164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d336f344aa70a3816750c040ee6f8d2f966c5362fb254853b71a0ff81e79d003`  
		Last Modified: Wed, 05 Aug 2026 00:17:21 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; arm variant v7

```console
$ docker pull irssi@sha256:976b2bd1e2e305cbe928ed4625989322e2fa440fee538d9f45ec4c747c342b1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48679499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a28657fb120cbc0b0cb86d54c19013884d499a7e5b7e687b996e509b30f4edf`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:20:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:18 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:20:18 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:20:18 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:20:18 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:21:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:21:00 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:21:00 GMT
USER user
# Wed, 05 Aug 2026 00:21:00 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe35b7825d541451ac53e9cc1fa6522e84e66b0c55ddc7e54a0a469ffffb8085`  
		Last Modified: Wed, 05 Aug 2026 00:21:11 GMT  
		Size: 17.9 MB (17909892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85482d0d25aca045461cb7878be4ff3d9448b6897cdb1cc40481b06e573c0042`  
		Last Modified: Wed, 05 Aug 2026 00:21:10 GMT  
		Size: 3.3 KB (3331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:015a302f9a2ea8592db9bfba8291e1ea857df395396e9e71a0e6e5750c340b82`  
		Last Modified: Wed, 05 Aug 2026 00:21:10 GMT  
		Size: 4.6 MB (4559872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:0d7cf4e349aac243d0887d6906df43340aa9be493c9316512ffdd399d77afbb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a21aa3cc7d4f39282c9806b80f7bd838f1d82a9097875e8e8cef8ea1b4f9e5c`

```dockerfile
```

-	Layers:
	-	`sha256:80e30b6f9612ae6bf0fc13ea50460522f190117db7640b3d3f0dfe64f1d9c637`  
		Last Modified: Wed, 05 Aug 2026 00:21:11 GMT  
		Size: 5.6 MB (5589186 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:764da70b6435112478bd1550e5b0079e7a841c7ad1e8457ac84456d6b72e48ef`  
		Last Modified: Wed, 05 Aug 2026 00:21:10 GMT  
		Size: 18.8 KB (18788 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:006664b18787ff67e84b4ff06fe3ba71d9b7670ac0059d658f23e53c5dfac24c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53974848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:988a519cef16a5a38b598ea60f64d81a0a25484d99a5bb033ade769a03015c81`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:20:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:10 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:20:10 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:20:10 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:20:10 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:20:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:20:50 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:20:50 GMT
USER user
# Wed, 05 Aug 2026 00:20:50 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da5d05588dd492298cbdef0d04db875d88a559a4b914bc69bad22098cea142b`  
		Last Modified: Wed, 05 Aug 2026 00:21:01 GMT  
		Size: 19.0 MB (19045659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa2267a6352ee880b1a47244bb5baf3c0dbab563ca60a061a0f878fd02bb64b`  
		Last Modified: Wed, 05 Aug 2026 00:21:00 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84f70d537bb1695651d35659edc6f3a87a46f39858a41f62d42b711037537997`  
		Last Modified: Wed, 05 Aug 2026 00:21:01 GMT  
		Size: 4.8 MB (4782214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:1814d849b326a2294bc0a4e9f0f6fe5b829f172ce1dea4eb5ef4dbc5ce67ee67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5613924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:966954fbc8d1921c8141cac025ec192b2e361cb9a700412bf1259f083e2fd5f4`

```dockerfile
```

-	Layers:
	-	`sha256:2f43d3c0741467f40a1bc9f169fcec871d68a38c23ae7c548d878e4e2ab243b0`  
		Last Modified: Wed, 05 Aug 2026 00:21:01 GMT  
		Size: 5.6 MB (5595091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c298c1a9a7c686e2e28a240468d547f033cdf0e33ed662f67dd4ab60baafe4a`  
		Last Modified: Wed, 05 Aug 2026 00:21:00 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; 386

```console
$ docker pull irssi@sha256:b24d18be69602da2817b66247978927f94f1a0ea669bd304156dcb5eafb79e07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54904544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ba4504932396ae4d9390cec63710b9e45c275996e0ca4a992b07aa4e86ee61e`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:16:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:16:40 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:16:40 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:16:40 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:16:40 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:17:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:17:23 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:17:23 GMT
USER user
# Wed, 05 Aug 2026 00:17:23 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aab4dfcc98de0086c8cb558a5684343a5e42415f92b727fe6fb333daeef754f1`  
		Last Modified: Wed, 05 Aug 2026 00:17:34 GMT  
		Size: 18.7 MB (18735893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d41c341a32f59c47357ebdb77ac06360969873596530b6714df220f216575979`  
		Last Modified: Wed, 05 Aug 2026 00:17:33 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04fdb0c25ada8216283275ec81a7c6104e06ddb3a0fccebc3af0038010bc87d1`  
		Last Modified: Wed, 05 Aug 2026 00:17:34 GMT  
		Size: 4.9 MB (4869016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:e19fbe494e6e8f794e25efacdbe7607d6a2d9ed7f971b3943975c30c2906d4f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b20098d58ba8ef35ae376ce06c36563239a016bb5f3acf615e8395ae7e353582`

```dockerfile
```

-	Layers:
	-	`sha256:d53d4bf9e593c61469f3d3da6c77939259e0a6207d625a92d71eb4b72e0e97b2`  
		Last Modified: Wed, 05 Aug 2026 00:17:33 GMT  
		Size: 5.6 MB (5584738 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1646054a3091d3729493f8d3cb49227326440d6b879b619f36f3748999a0c413`  
		Last Modified: Wed, 05 Aug 2026 00:17:33 GMT  
		Size: 18.6 KB (18595 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; ppc64le

```console
$ docker pull irssi@sha256:9d1d37186c98418e5fd3f43e4869c03e6827b2bf0c585f21e4915ee22d3ee328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.2 MB (58247661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f02ab477679506f054880fab4371cb7d6728042ff93bb22d9f33f45214f6033e`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:24:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:24:46 GMT
ENV HOME=/home/user
# Tue, 14 Jul 2026 01:24:46 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 14 Jul 2026 01:24:46 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:24:46 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 14 Jul 2026 01:26:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 14 Jul 2026 01:26:19 GMT
WORKDIR /home/user
# Tue, 14 Jul 2026 01:26:19 GMT
USER user
# Tue, 14 Jul 2026 01:26:19 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91b2bc8a63235ea0c83712afd0f018de86b2c3ba23d4d4014a244555eaff0056`  
		Last Modified: Tue, 14 Jul 2026 01:26:38 GMT  
		Size: 19.5 MB (19544153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fa4d481ea50d4fd04998f233aeb33356e770f8bacf59f3c11f4d254e618b092`  
		Last Modified: Tue, 14 Jul 2026 01:26:37 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50916a44aa90aa1b202e56a642d337587dbde369c8303118502ed62a93eee7c3`  
		Last Modified: Tue, 14 Jul 2026 01:26:38 GMT  
		Size: 5.1 MB (5098669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:8fdd41a9751c3ca11038503bba5e563e1636a85234c340909a6debbf3a2053b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cdd942dc7d20da1d0fe594b6053c634d4eab54993dfb3a7d62b93cd5aa16d1c`

```dockerfile
```

-	Layers:
	-	`sha256:96221a0cf251da1d4218fc35b94fb588fa7c7d114681fe384964e07d01ef3dd5`  
		Last Modified: Tue, 14 Jul 2026 01:26:38 GMT  
		Size: 5.6 MB (5595646 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:917d7eb9fc955d0553e571fe58050295b2fd2c72c19ae8fded90029700679f04`  
		Last Modified: Tue, 14 Jul 2026 01:26:38 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; riscv64

```console
$ docker pull irssi@sha256:48c8394b465d62125c037b46030dafdde237557d90e91fa08bb5fb142646e8bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51706138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c11175ee96eac0863d0b1ea64902bb9b015621a9ef6c4498368f522159b3a7cb`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:39:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:39:04 GMT
ENV HOME=/home/user
# Tue, 14 Jul 2026 03:39:04 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 14 Jul 2026 03:39:04 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 03:39:04 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 14 Jul 2026 03:46:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 14 Jul 2026 03:46:01 GMT
WORKDIR /home/user
# Tue, 14 Jul 2026 03:46:01 GMT
USER user
# Tue, 14 Jul 2026 03:46:01 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1340e0d7069bd261cc83414875fd3f5588fdf40b277fb417450062d24d225cc0`  
		Last Modified: Tue, 14 Jul 2026 03:47:56 GMT  
		Size: 18.6 MB (18563174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ad2ac628019e1a86aca9c40ba6d59372dcc5f3e9150028043e7d4372747f14a`  
		Last Modified: Tue, 14 Jul 2026 03:47:52 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54442680d526394b95a078b54a9ecbf769c3810f95956bfc9e3e5b726d76ae79`  
		Last Modified: Tue, 14 Jul 2026 03:47:54 GMT  
		Size: 4.9 MB (4861401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:18d890db80b611c34cab61fcff0b3b3f248cbf0ef919d7a69502d47187ef936d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5598641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1858b304f7f3010a69381c8c8b81ee106dc13a91d34437d49af9378a2af83f95`

```dockerfile
```

-	Layers:
	-	`sha256:8536b987b7d4713eda56395f1ab2872b69265248ce4241103688e63726e2c7cb`  
		Last Modified: Tue, 14 Jul 2026 03:47:54 GMT  
		Size: 5.6 MB (5579918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3932587e0eee660c2d5695aed2be4bc10356bdc502a3b9c330d3b0dc41845a0c`  
		Last Modified: Tue, 14 Jul 2026 03:47:52 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; s390x

```console
$ docker pull irssi@sha256:6aa556bba2647bcc275c90eacf32f222181af51adef365c2f2253e99947fb08d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54524654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45eaf4e1ba8b6a88808ddb289fc11264f59f6d292752677575df587a5aad9489`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:18:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:18:48 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:18:48 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:18:48 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:18:48 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:19:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:19:31 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:19:31 GMT
USER user
# Wed, 05 Aug 2026 00:19:31 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d2f2824e49cc223d89d03a61664c61ba3ef5a4cca75f6b6be1b8dcaa1e98618`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
		Size: 19.8 MB (19767619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3488e75adb3b9aece76dd45b9cb2180a2bd5d44753515289a7aded7bff2a6131`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
		Size: 3.3 KB (3339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5adb9c4683d3552d27e6fe91e62b50b54a10cc1569eae0ac3ad9876fc0ef675e`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
		Size: 4.9 MB (4907091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:5115e7be7f359d3dba2b99f545b7b6ed54af790470f570ef433018504a92b6d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:015455bdb27e2bf9b7cdb36b888f73209a402874fbfe428d98a0825d1afac968`

```dockerfile
```

-	Layers:
	-	`sha256:68428449f94578f6e3e501cffdce2a649d78a1812bd73f98e7b0589c92c39b84`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
		Size: 5.6 MB (5589520 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7eb746569f84030c3ade08e996d7dd6be735beeac107565467655025efc86cf`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
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
$ docker pull irssi@sha256:b038a7b97ebbd68d6cd0896f9ad14fe6d6c0e28c63c14a2af54e4dd3e67649e7
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
$ docker pull irssi@sha256:88ac449edff20f0e8c803008db91f2f3d73a8e79360508e668bfdf3932f7e8f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53872326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdc4127c3e7c7d502478df2b2790aec74cc60d3a0ddadb3110b6e6f0596976c7`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:20:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:16 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:20:16 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:20:16 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:20:16 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:20:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:20:55 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:20:55 GMT
USER user
# Wed, 05 Aug 2026 00:20:55 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271271bc702f2406e88c6f6aff91437e500ef6529c4bbc8070dc3e2bf4877f9b`  
		Last Modified: Wed, 05 Aug 2026 00:21:06 GMT  
		Size: 19.2 MB (19220474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7135907a300e58c78a0aa5748b6edba93388509fcdb6434a62af062bbddb1f7`  
		Last Modified: Wed, 05 Aug 2026 00:21:05 GMT  
		Size: 3.3 KB (3331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:403e4ea3d2f99cd8f5e56967ecdedd088dea3835d7cc82d62592d51aaaa69e30`  
		Last Modified: Wed, 05 Aug 2026 00:21:05 GMT  
		Size: 4.9 MB (4867724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:fc0d4ab9a37fa9f22696e6cb014074d650ae9aa84829c5dba0fd03763548c544
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3d1a0f331ab2453ee89d2693c0f42272139054ddcb668a3ddb13b6d83583b43`

```dockerfile
```

-	Layers:
	-	`sha256:855d33255f00ba02d199ce459facc78fa65ab121a41dd03586869ace26e06620`  
		Last Modified: Wed, 05 Aug 2026 00:21:05 GMT  
		Size: 5.6 MB (5588615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:787f79a91db8d03af4563929fcb7ac1714220bdfd77eaaa1c10b139684e49125`  
		Last Modified: Wed, 05 Aug 2026 00:21:05 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; arm variant v5

```console
$ docker pull irssi@sha256:dade6c1b2cdf04cc26602accd707c1ec0a1e7d948ad41f42173620f472094912
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50955812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6faff06c4385b68ab41fc736471e5cf824ad78dce68cdb2ee421c6e36e974e28`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:16:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:16:22 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:16:22 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:16:22 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:16:22 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:17:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:17:11 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:17:11 GMT
USER user
# Wed, 05 Aug 2026 00:17:11 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3288ef7cbcd33f5e8a48f632d7b69b99c94be153a765f6d1294c440abe19b455`  
		Last Modified: Wed, 05 Aug 2026 00:17:22 GMT  
		Size: 18.3 MB (18287297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ad46939f7ea4ba3491d5a58b6557d723792958727f877f7d4b02dad2d5e794a`  
		Last Modified: Wed, 05 Aug 2026 00:17:21 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e680b202e1ad6033d738e913b514b49c2d2f0165746c400b5cf609075641963f`  
		Last Modified: Wed, 05 Aug 2026 00:17:22 GMT  
		Size: 4.7 MB (4710437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:3d7e4ce573884db819709f807ce3fdd3a0c7b2724048c447fff366b811dd8ea7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5604953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9c2558f1e6576faf735fa1d2824dcdfbdd984742649f32eb5da19436427ea0`

```dockerfile
```

-	Layers:
	-	`sha256:4f8ce29df3e85f374810227e3518fcc0e04a89a43768cce76f4c42d28ec98a77`  
		Last Modified: Wed, 05 Aug 2026 00:17:22 GMT  
		Size: 5.6 MB (5586164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d336f344aa70a3816750c040ee6f8d2f966c5362fb254853b71a0ff81e79d003`  
		Last Modified: Wed, 05 Aug 2026 00:17:21 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; arm variant v7

```console
$ docker pull irssi@sha256:976b2bd1e2e305cbe928ed4625989322e2fa440fee538d9f45ec4c747c342b1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48679499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a28657fb120cbc0b0cb86d54c19013884d499a7e5b7e687b996e509b30f4edf`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:20:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:18 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:20:18 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:20:18 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:20:18 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:21:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:21:00 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:21:00 GMT
USER user
# Wed, 05 Aug 2026 00:21:00 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe35b7825d541451ac53e9cc1fa6522e84e66b0c55ddc7e54a0a469ffffb8085`  
		Last Modified: Wed, 05 Aug 2026 00:21:11 GMT  
		Size: 17.9 MB (17909892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85482d0d25aca045461cb7878be4ff3d9448b6897cdb1cc40481b06e573c0042`  
		Last Modified: Wed, 05 Aug 2026 00:21:10 GMT  
		Size: 3.3 KB (3331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:015a302f9a2ea8592db9bfba8291e1ea857df395396e9e71a0e6e5750c340b82`  
		Last Modified: Wed, 05 Aug 2026 00:21:10 GMT  
		Size: 4.6 MB (4559872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:0d7cf4e349aac243d0887d6906df43340aa9be493c9316512ffdd399d77afbb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a21aa3cc7d4f39282c9806b80f7bd838f1d82a9097875e8e8cef8ea1b4f9e5c`

```dockerfile
```

-	Layers:
	-	`sha256:80e30b6f9612ae6bf0fc13ea50460522f190117db7640b3d3f0dfe64f1d9c637`  
		Last Modified: Wed, 05 Aug 2026 00:21:11 GMT  
		Size: 5.6 MB (5589186 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:764da70b6435112478bd1550e5b0079e7a841c7ad1e8457ac84456d6b72e48ef`  
		Last Modified: Wed, 05 Aug 2026 00:21:10 GMT  
		Size: 18.8 KB (18788 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:006664b18787ff67e84b4ff06fe3ba71d9b7670ac0059d658f23e53c5dfac24c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53974848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:988a519cef16a5a38b598ea60f64d81a0a25484d99a5bb033ade769a03015c81`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:20:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:10 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:20:10 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:20:10 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:20:10 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:20:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:20:50 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:20:50 GMT
USER user
# Wed, 05 Aug 2026 00:20:50 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da5d05588dd492298cbdef0d04db875d88a559a4b914bc69bad22098cea142b`  
		Last Modified: Wed, 05 Aug 2026 00:21:01 GMT  
		Size: 19.0 MB (19045659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa2267a6352ee880b1a47244bb5baf3c0dbab563ca60a061a0f878fd02bb64b`  
		Last Modified: Wed, 05 Aug 2026 00:21:00 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84f70d537bb1695651d35659edc6f3a87a46f39858a41f62d42b711037537997`  
		Last Modified: Wed, 05 Aug 2026 00:21:01 GMT  
		Size: 4.8 MB (4782214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:1814d849b326a2294bc0a4e9f0f6fe5b829f172ce1dea4eb5ef4dbc5ce67ee67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5613924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:966954fbc8d1921c8141cac025ec192b2e361cb9a700412bf1259f083e2fd5f4`

```dockerfile
```

-	Layers:
	-	`sha256:2f43d3c0741467f40a1bc9f169fcec871d68a38c23ae7c548d878e4e2ab243b0`  
		Last Modified: Wed, 05 Aug 2026 00:21:01 GMT  
		Size: 5.6 MB (5595091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c298c1a9a7c686e2e28a240468d547f033cdf0e33ed662f67dd4ab60baafe4a`  
		Last Modified: Wed, 05 Aug 2026 00:21:00 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; 386

```console
$ docker pull irssi@sha256:b24d18be69602da2817b66247978927f94f1a0ea669bd304156dcb5eafb79e07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54904544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ba4504932396ae4d9390cec63710b9e45c275996e0ca4a992b07aa4e86ee61e`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:16:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:16:40 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:16:40 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:16:40 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:16:40 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:17:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:17:23 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:17:23 GMT
USER user
# Wed, 05 Aug 2026 00:17:23 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aab4dfcc98de0086c8cb558a5684343a5e42415f92b727fe6fb333daeef754f1`  
		Last Modified: Wed, 05 Aug 2026 00:17:34 GMT  
		Size: 18.7 MB (18735893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d41c341a32f59c47357ebdb77ac06360969873596530b6714df220f216575979`  
		Last Modified: Wed, 05 Aug 2026 00:17:33 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04fdb0c25ada8216283275ec81a7c6104e06ddb3a0fccebc3af0038010bc87d1`  
		Last Modified: Wed, 05 Aug 2026 00:17:34 GMT  
		Size: 4.9 MB (4869016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:e19fbe494e6e8f794e25efacdbe7607d6a2d9ed7f971b3943975c30c2906d4f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b20098d58ba8ef35ae376ce06c36563239a016bb5f3acf615e8395ae7e353582`

```dockerfile
```

-	Layers:
	-	`sha256:d53d4bf9e593c61469f3d3da6c77939259e0a6207d625a92d71eb4b72e0e97b2`  
		Last Modified: Wed, 05 Aug 2026 00:17:33 GMT  
		Size: 5.6 MB (5584738 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1646054a3091d3729493f8d3cb49227326440d6b879b619f36f3748999a0c413`  
		Last Modified: Wed, 05 Aug 2026 00:17:33 GMT  
		Size: 18.6 KB (18595 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; ppc64le

```console
$ docker pull irssi@sha256:9d1d37186c98418e5fd3f43e4869c03e6827b2bf0c585f21e4915ee22d3ee328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.2 MB (58247661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f02ab477679506f054880fab4371cb7d6728042ff93bb22d9f33f45214f6033e`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:24:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:24:46 GMT
ENV HOME=/home/user
# Tue, 14 Jul 2026 01:24:46 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 14 Jul 2026 01:24:46 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:24:46 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 14 Jul 2026 01:26:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 14 Jul 2026 01:26:19 GMT
WORKDIR /home/user
# Tue, 14 Jul 2026 01:26:19 GMT
USER user
# Tue, 14 Jul 2026 01:26:19 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91b2bc8a63235ea0c83712afd0f018de86b2c3ba23d4d4014a244555eaff0056`  
		Last Modified: Tue, 14 Jul 2026 01:26:38 GMT  
		Size: 19.5 MB (19544153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fa4d481ea50d4fd04998f233aeb33356e770f8bacf59f3c11f4d254e618b092`  
		Last Modified: Tue, 14 Jul 2026 01:26:37 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50916a44aa90aa1b202e56a642d337587dbde369c8303118502ed62a93eee7c3`  
		Last Modified: Tue, 14 Jul 2026 01:26:38 GMT  
		Size: 5.1 MB (5098669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:8fdd41a9751c3ca11038503bba5e563e1636a85234c340909a6debbf3a2053b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cdd942dc7d20da1d0fe594b6053c634d4eab54993dfb3a7d62b93cd5aa16d1c`

```dockerfile
```

-	Layers:
	-	`sha256:96221a0cf251da1d4218fc35b94fb588fa7c7d114681fe384964e07d01ef3dd5`  
		Last Modified: Tue, 14 Jul 2026 01:26:38 GMT  
		Size: 5.6 MB (5595646 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:917d7eb9fc955d0553e571fe58050295b2fd2c72c19ae8fded90029700679f04`  
		Last Modified: Tue, 14 Jul 2026 01:26:38 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; riscv64

```console
$ docker pull irssi@sha256:48c8394b465d62125c037b46030dafdde237557d90e91fa08bb5fb142646e8bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51706138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c11175ee96eac0863d0b1ea64902bb9b015621a9ef6c4498368f522159b3a7cb`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:39:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:39:04 GMT
ENV HOME=/home/user
# Tue, 14 Jul 2026 03:39:04 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 14 Jul 2026 03:39:04 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 03:39:04 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 14 Jul 2026 03:46:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 14 Jul 2026 03:46:01 GMT
WORKDIR /home/user
# Tue, 14 Jul 2026 03:46:01 GMT
USER user
# Tue, 14 Jul 2026 03:46:01 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1340e0d7069bd261cc83414875fd3f5588fdf40b277fb417450062d24d225cc0`  
		Last Modified: Tue, 14 Jul 2026 03:47:56 GMT  
		Size: 18.6 MB (18563174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ad2ac628019e1a86aca9c40ba6d59372dcc5f3e9150028043e7d4372747f14a`  
		Last Modified: Tue, 14 Jul 2026 03:47:52 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54442680d526394b95a078b54a9ecbf769c3810f95956bfc9e3e5b726d76ae79`  
		Last Modified: Tue, 14 Jul 2026 03:47:54 GMT  
		Size: 4.9 MB (4861401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:18d890db80b611c34cab61fcff0b3b3f248cbf0ef919d7a69502d47187ef936d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5598641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1858b304f7f3010a69381c8c8b81ee106dc13a91d34437d49af9378a2af83f95`

```dockerfile
```

-	Layers:
	-	`sha256:8536b987b7d4713eda56395f1ab2872b69265248ce4241103688e63726e2c7cb`  
		Last Modified: Tue, 14 Jul 2026 03:47:54 GMT  
		Size: 5.6 MB (5579918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3932587e0eee660c2d5695aed2be4bc10356bdc502a3b9c330d3b0dc41845a0c`  
		Last Modified: Tue, 14 Jul 2026 03:47:52 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; s390x

```console
$ docker pull irssi@sha256:6aa556bba2647bcc275c90eacf32f222181af51adef365c2f2253e99947fb08d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54524654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45eaf4e1ba8b6a88808ddb289fc11264f59f6d292752677575df587a5aad9489`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:18:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:18:48 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:18:48 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:18:48 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:18:48 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:19:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:19:31 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:19:31 GMT
USER user
# Wed, 05 Aug 2026 00:19:31 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d2f2824e49cc223d89d03a61664c61ba3ef5a4cca75f6b6be1b8dcaa1e98618`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
		Size: 19.8 MB (19767619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3488e75adb3b9aece76dd45b9cb2180a2bd5d44753515289a7aded7bff2a6131`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
		Size: 3.3 KB (3339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5adb9c4683d3552d27e6fe91e62b50b54a10cc1569eae0ac3ad9876fc0ef675e`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
		Size: 4.9 MB (4907091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:5115e7be7f359d3dba2b99f545b7b6ed54af790470f570ef433018504a92b6d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:015455bdb27e2bf9b7cdb36b888f73209a402874fbfe428d98a0825d1afac968`

```dockerfile
```

-	Layers:
	-	`sha256:68428449f94578f6e3e501cffdce2a649d78a1812bd73f98e7b0589c92c39b84`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
		Size: 5.6 MB (5589520 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7eb746569f84030c3ade08e996d7dd6be735beeac107565467655025efc86cf`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1.4.5`

```console
$ docker pull irssi@sha256:b038a7b97ebbd68d6cd0896f9ad14fe6d6c0e28c63c14a2af54e4dd3e67649e7
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
$ docker pull irssi@sha256:88ac449edff20f0e8c803008db91f2f3d73a8e79360508e668bfdf3932f7e8f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53872326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdc4127c3e7c7d502478df2b2790aec74cc60d3a0ddadb3110b6e6f0596976c7`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:20:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:16 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:20:16 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:20:16 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:20:16 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:20:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:20:55 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:20:55 GMT
USER user
# Wed, 05 Aug 2026 00:20:55 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271271bc702f2406e88c6f6aff91437e500ef6529c4bbc8070dc3e2bf4877f9b`  
		Last Modified: Wed, 05 Aug 2026 00:21:06 GMT  
		Size: 19.2 MB (19220474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7135907a300e58c78a0aa5748b6edba93388509fcdb6434a62af062bbddb1f7`  
		Last Modified: Wed, 05 Aug 2026 00:21:05 GMT  
		Size: 3.3 KB (3331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:403e4ea3d2f99cd8f5e56967ecdedd088dea3835d7cc82d62592d51aaaa69e30`  
		Last Modified: Wed, 05 Aug 2026 00:21:05 GMT  
		Size: 4.9 MB (4867724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:fc0d4ab9a37fa9f22696e6cb014074d650ae9aa84829c5dba0fd03763548c544
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3d1a0f331ab2453ee89d2693c0f42272139054ddcb668a3ddb13b6d83583b43`

```dockerfile
```

-	Layers:
	-	`sha256:855d33255f00ba02d199ce459facc78fa65ab121a41dd03586869ace26e06620`  
		Last Modified: Wed, 05 Aug 2026 00:21:05 GMT  
		Size: 5.6 MB (5588615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:787f79a91db8d03af4563929fcb7ac1714220bdfd77eaaa1c10b139684e49125`  
		Last Modified: Wed, 05 Aug 2026 00:21:05 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; arm variant v5

```console
$ docker pull irssi@sha256:dade6c1b2cdf04cc26602accd707c1ec0a1e7d948ad41f42173620f472094912
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50955812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6faff06c4385b68ab41fc736471e5cf824ad78dce68cdb2ee421c6e36e974e28`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:16:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:16:22 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:16:22 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:16:22 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:16:22 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:17:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:17:11 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:17:11 GMT
USER user
# Wed, 05 Aug 2026 00:17:11 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3288ef7cbcd33f5e8a48f632d7b69b99c94be153a765f6d1294c440abe19b455`  
		Last Modified: Wed, 05 Aug 2026 00:17:22 GMT  
		Size: 18.3 MB (18287297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ad46939f7ea4ba3491d5a58b6557d723792958727f877f7d4b02dad2d5e794a`  
		Last Modified: Wed, 05 Aug 2026 00:17:21 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e680b202e1ad6033d738e913b514b49c2d2f0165746c400b5cf609075641963f`  
		Last Modified: Wed, 05 Aug 2026 00:17:22 GMT  
		Size: 4.7 MB (4710437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:3d7e4ce573884db819709f807ce3fdd3a0c7b2724048c447fff366b811dd8ea7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5604953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9c2558f1e6576faf735fa1d2824dcdfbdd984742649f32eb5da19436427ea0`

```dockerfile
```

-	Layers:
	-	`sha256:4f8ce29df3e85f374810227e3518fcc0e04a89a43768cce76f4c42d28ec98a77`  
		Last Modified: Wed, 05 Aug 2026 00:17:22 GMT  
		Size: 5.6 MB (5586164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d336f344aa70a3816750c040ee6f8d2f966c5362fb254853b71a0ff81e79d003`  
		Last Modified: Wed, 05 Aug 2026 00:17:21 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; arm variant v7

```console
$ docker pull irssi@sha256:976b2bd1e2e305cbe928ed4625989322e2fa440fee538d9f45ec4c747c342b1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48679499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a28657fb120cbc0b0cb86d54c19013884d499a7e5b7e687b996e509b30f4edf`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:20:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:18 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:20:18 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:20:18 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:20:18 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:21:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:21:00 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:21:00 GMT
USER user
# Wed, 05 Aug 2026 00:21:00 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe35b7825d541451ac53e9cc1fa6522e84e66b0c55ddc7e54a0a469ffffb8085`  
		Last Modified: Wed, 05 Aug 2026 00:21:11 GMT  
		Size: 17.9 MB (17909892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85482d0d25aca045461cb7878be4ff3d9448b6897cdb1cc40481b06e573c0042`  
		Last Modified: Wed, 05 Aug 2026 00:21:10 GMT  
		Size: 3.3 KB (3331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:015a302f9a2ea8592db9bfba8291e1ea857df395396e9e71a0e6e5750c340b82`  
		Last Modified: Wed, 05 Aug 2026 00:21:10 GMT  
		Size: 4.6 MB (4559872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:0d7cf4e349aac243d0887d6906df43340aa9be493c9316512ffdd399d77afbb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a21aa3cc7d4f39282c9806b80f7bd838f1d82a9097875e8e8cef8ea1b4f9e5c`

```dockerfile
```

-	Layers:
	-	`sha256:80e30b6f9612ae6bf0fc13ea50460522f190117db7640b3d3f0dfe64f1d9c637`  
		Last Modified: Wed, 05 Aug 2026 00:21:11 GMT  
		Size: 5.6 MB (5589186 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:764da70b6435112478bd1550e5b0079e7a841c7ad1e8457ac84456d6b72e48ef`  
		Last Modified: Wed, 05 Aug 2026 00:21:10 GMT  
		Size: 18.8 KB (18788 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:006664b18787ff67e84b4ff06fe3ba71d9b7670ac0059d658f23e53c5dfac24c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53974848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:988a519cef16a5a38b598ea60f64d81a0a25484d99a5bb033ade769a03015c81`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:20:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:10 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:20:10 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:20:10 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:20:10 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:20:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:20:50 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:20:50 GMT
USER user
# Wed, 05 Aug 2026 00:20:50 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da5d05588dd492298cbdef0d04db875d88a559a4b914bc69bad22098cea142b`  
		Last Modified: Wed, 05 Aug 2026 00:21:01 GMT  
		Size: 19.0 MB (19045659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa2267a6352ee880b1a47244bb5baf3c0dbab563ca60a061a0f878fd02bb64b`  
		Last Modified: Wed, 05 Aug 2026 00:21:00 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84f70d537bb1695651d35659edc6f3a87a46f39858a41f62d42b711037537997`  
		Last Modified: Wed, 05 Aug 2026 00:21:01 GMT  
		Size: 4.8 MB (4782214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:1814d849b326a2294bc0a4e9f0f6fe5b829f172ce1dea4eb5ef4dbc5ce67ee67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5613924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:966954fbc8d1921c8141cac025ec192b2e361cb9a700412bf1259f083e2fd5f4`

```dockerfile
```

-	Layers:
	-	`sha256:2f43d3c0741467f40a1bc9f169fcec871d68a38c23ae7c548d878e4e2ab243b0`  
		Last Modified: Wed, 05 Aug 2026 00:21:01 GMT  
		Size: 5.6 MB (5595091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c298c1a9a7c686e2e28a240468d547f033cdf0e33ed662f67dd4ab60baafe4a`  
		Last Modified: Wed, 05 Aug 2026 00:21:00 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; 386

```console
$ docker pull irssi@sha256:b24d18be69602da2817b66247978927f94f1a0ea669bd304156dcb5eafb79e07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54904544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ba4504932396ae4d9390cec63710b9e45c275996e0ca4a992b07aa4e86ee61e`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:16:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:16:40 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:16:40 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:16:40 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:16:40 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:17:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:17:23 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:17:23 GMT
USER user
# Wed, 05 Aug 2026 00:17:23 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aab4dfcc98de0086c8cb558a5684343a5e42415f92b727fe6fb333daeef754f1`  
		Last Modified: Wed, 05 Aug 2026 00:17:34 GMT  
		Size: 18.7 MB (18735893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d41c341a32f59c47357ebdb77ac06360969873596530b6714df220f216575979`  
		Last Modified: Wed, 05 Aug 2026 00:17:33 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04fdb0c25ada8216283275ec81a7c6104e06ddb3a0fccebc3af0038010bc87d1`  
		Last Modified: Wed, 05 Aug 2026 00:17:34 GMT  
		Size: 4.9 MB (4869016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:e19fbe494e6e8f794e25efacdbe7607d6a2d9ed7f971b3943975c30c2906d4f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b20098d58ba8ef35ae376ce06c36563239a016bb5f3acf615e8395ae7e353582`

```dockerfile
```

-	Layers:
	-	`sha256:d53d4bf9e593c61469f3d3da6c77939259e0a6207d625a92d71eb4b72e0e97b2`  
		Last Modified: Wed, 05 Aug 2026 00:17:33 GMT  
		Size: 5.6 MB (5584738 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1646054a3091d3729493f8d3cb49227326440d6b879b619f36f3748999a0c413`  
		Last Modified: Wed, 05 Aug 2026 00:17:33 GMT  
		Size: 18.6 KB (18595 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; ppc64le

```console
$ docker pull irssi@sha256:9d1d37186c98418e5fd3f43e4869c03e6827b2bf0c585f21e4915ee22d3ee328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.2 MB (58247661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f02ab477679506f054880fab4371cb7d6728042ff93bb22d9f33f45214f6033e`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:24:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:24:46 GMT
ENV HOME=/home/user
# Tue, 14 Jul 2026 01:24:46 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 14 Jul 2026 01:24:46 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:24:46 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 14 Jul 2026 01:26:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 14 Jul 2026 01:26:19 GMT
WORKDIR /home/user
# Tue, 14 Jul 2026 01:26:19 GMT
USER user
# Tue, 14 Jul 2026 01:26:19 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91b2bc8a63235ea0c83712afd0f018de86b2c3ba23d4d4014a244555eaff0056`  
		Last Modified: Tue, 14 Jul 2026 01:26:38 GMT  
		Size: 19.5 MB (19544153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fa4d481ea50d4fd04998f233aeb33356e770f8bacf59f3c11f4d254e618b092`  
		Last Modified: Tue, 14 Jul 2026 01:26:37 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50916a44aa90aa1b202e56a642d337587dbde369c8303118502ed62a93eee7c3`  
		Last Modified: Tue, 14 Jul 2026 01:26:38 GMT  
		Size: 5.1 MB (5098669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:8fdd41a9751c3ca11038503bba5e563e1636a85234c340909a6debbf3a2053b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cdd942dc7d20da1d0fe594b6053c634d4eab54993dfb3a7d62b93cd5aa16d1c`

```dockerfile
```

-	Layers:
	-	`sha256:96221a0cf251da1d4218fc35b94fb588fa7c7d114681fe384964e07d01ef3dd5`  
		Last Modified: Tue, 14 Jul 2026 01:26:38 GMT  
		Size: 5.6 MB (5595646 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:917d7eb9fc955d0553e571fe58050295b2fd2c72c19ae8fded90029700679f04`  
		Last Modified: Tue, 14 Jul 2026 01:26:38 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; riscv64

```console
$ docker pull irssi@sha256:48c8394b465d62125c037b46030dafdde237557d90e91fa08bb5fb142646e8bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51706138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c11175ee96eac0863d0b1ea64902bb9b015621a9ef6c4498368f522159b3a7cb`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:39:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:39:04 GMT
ENV HOME=/home/user
# Tue, 14 Jul 2026 03:39:04 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 14 Jul 2026 03:39:04 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 03:39:04 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 14 Jul 2026 03:46:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 14 Jul 2026 03:46:01 GMT
WORKDIR /home/user
# Tue, 14 Jul 2026 03:46:01 GMT
USER user
# Tue, 14 Jul 2026 03:46:01 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1340e0d7069bd261cc83414875fd3f5588fdf40b277fb417450062d24d225cc0`  
		Last Modified: Tue, 14 Jul 2026 03:47:56 GMT  
		Size: 18.6 MB (18563174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ad2ac628019e1a86aca9c40ba6d59372dcc5f3e9150028043e7d4372747f14a`  
		Last Modified: Tue, 14 Jul 2026 03:47:52 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54442680d526394b95a078b54a9ecbf769c3810f95956bfc9e3e5b726d76ae79`  
		Last Modified: Tue, 14 Jul 2026 03:47:54 GMT  
		Size: 4.9 MB (4861401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:18d890db80b611c34cab61fcff0b3b3f248cbf0ef919d7a69502d47187ef936d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5598641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1858b304f7f3010a69381c8c8b81ee106dc13a91d34437d49af9378a2af83f95`

```dockerfile
```

-	Layers:
	-	`sha256:8536b987b7d4713eda56395f1ab2872b69265248ce4241103688e63726e2c7cb`  
		Last Modified: Tue, 14 Jul 2026 03:47:54 GMT  
		Size: 5.6 MB (5579918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3932587e0eee660c2d5695aed2be4bc10356bdc502a3b9c330d3b0dc41845a0c`  
		Last Modified: Tue, 14 Jul 2026 03:47:52 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; s390x

```console
$ docker pull irssi@sha256:6aa556bba2647bcc275c90eacf32f222181af51adef365c2f2253e99947fb08d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54524654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45eaf4e1ba8b6a88808ddb289fc11264f59f6d292752677575df587a5aad9489`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:18:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:18:48 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:18:48 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:18:48 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:18:48 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:19:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:19:31 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:19:31 GMT
USER user
# Wed, 05 Aug 2026 00:19:31 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d2f2824e49cc223d89d03a61664c61ba3ef5a4cca75f6b6be1b8dcaa1e98618`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
		Size: 19.8 MB (19767619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3488e75adb3b9aece76dd45b9cb2180a2bd5d44753515289a7aded7bff2a6131`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
		Size: 3.3 KB (3339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5adb9c4683d3552d27e6fe91e62b50b54a10cc1569eae0ac3ad9876fc0ef675e`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
		Size: 4.9 MB (4907091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:5115e7be7f359d3dba2b99f545b7b6ed54af790470f570ef433018504a92b6d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:015455bdb27e2bf9b7cdb36b888f73209a402874fbfe428d98a0825d1afac968`

```dockerfile
```

-	Layers:
	-	`sha256:68428449f94578f6e3e501cffdce2a649d78a1812bd73f98e7b0589c92c39b84`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
		Size: 5.6 MB (5589520 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7eb746569f84030c3ade08e996d7dd6be735beeac107565467655025efc86cf`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
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
$ docker pull irssi@sha256:b038a7b97ebbd68d6cd0896f9ad14fe6d6c0e28c63c14a2af54e4dd3e67649e7
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
$ docker pull irssi@sha256:88ac449edff20f0e8c803008db91f2f3d73a8e79360508e668bfdf3932f7e8f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53872326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdc4127c3e7c7d502478df2b2790aec74cc60d3a0ddadb3110b6e6f0596976c7`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:20:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:16 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:20:16 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:20:16 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:20:16 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:20:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:20:55 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:20:55 GMT
USER user
# Wed, 05 Aug 2026 00:20:55 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271271bc702f2406e88c6f6aff91437e500ef6529c4bbc8070dc3e2bf4877f9b`  
		Last Modified: Wed, 05 Aug 2026 00:21:06 GMT  
		Size: 19.2 MB (19220474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7135907a300e58c78a0aa5748b6edba93388509fcdb6434a62af062bbddb1f7`  
		Last Modified: Wed, 05 Aug 2026 00:21:05 GMT  
		Size: 3.3 KB (3331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:403e4ea3d2f99cd8f5e56967ecdedd088dea3835d7cc82d62592d51aaaa69e30`  
		Last Modified: Wed, 05 Aug 2026 00:21:05 GMT  
		Size: 4.9 MB (4867724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:fc0d4ab9a37fa9f22696e6cb014074d650ae9aa84829c5dba0fd03763548c544
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3d1a0f331ab2453ee89d2693c0f42272139054ddcb668a3ddb13b6d83583b43`

```dockerfile
```

-	Layers:
	-	`sha256:855d33255f00ba02d199ce459facc78fa65ab121a41dd03586869ace26e06620`  
		Last Modified: Wed, 05 Aug 2026 00:21:05 GMT  
		Size: 5.6 MB (5588615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:787f79a91db8d03af4563929fcb7ac1714220bdfd77eaaa1c10b139684e49125`  
		Last Modified: Wed, 05 Aug 2026 00:21:05 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; arm variant v5

```console
$ docker pull irssi@sha256:dade6c1b2cdf04cc26602accd707c1ec0a1e7d948ad41f42173620f472094912
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50955812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6faff06c4385b68ab41fc736471e5cf824ad78dce68cdb2ee421c6e36e974e28`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:16:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:16:22 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:16:22 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:16:22 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:16:22 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:17:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:17:11 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:17:11 GMT
USER user
# Wed, 05 Aug 2026 00:17:11 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3288ef7cbcd33f5e8a48f632d7b69b99c94be153a765f6d1294c440abe19b455`  
		Last Modified: Wed, 05 Aug 2026 00:17:22 GMT  
		Size: 18.3 MB (18287297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ad46939f7ea4ba3491d5a58b6557d723792958727f877f7d4b02dad2d5e794a`  
		Last Modified: Wed, 05 Aug 2026 00:17:21 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e680b202e1ad6033d738e913b514b49c2d2f0165746c400b5cf609075641963f`  
		Last Modified: Wed, 05 Aug 2026 00:17:22 GMT  
		Size: 4.7 MB (4710437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:3d7e4ce573884db819709f807ce3fdd3a0c7b2724048c447fff366b811dd8ea7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5604953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9c2558f1e6576faf735fa1d2824dcdfbdd984742649f32eb5da19436427ea0`

```dockerfile
```

-	Layers:
	-	`sha256:4f8ce29df3e85f374810227e3518fcc0e04a89a43768cce76f4c42d28ec98a77`  
		Last Modified: Wed, 05 Aug 2026 00:17:22 GMT  
		Size: 5.6 MB (5586164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d336f344aa70a3816750c040ee6f8d2f966c5362fb254853b71a0ff81e79d003`  
		Last Modified: Wed, 05 Aug 2026 00:17:21 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; arm variant v7

```console
$ docker pull irssi@sha256:976b2bd1e2e305cbe928ed4625989322e2fa440fee538d9f45ec4c747c342b1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48679499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a28657fb120cbc0b0cb86d54c19013884d499a7e5b7e687b996e509b30f4edf`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:20:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:18 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:20:18 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:20:18 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:20:18 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:21:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:21:00 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:21:00 GMT
USER user
# Wed, 05 Aug 2026 00:21:00 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe35b7825d541451ac53e9cc1fa6522e84e66b0c55ddc7e54a0a469ffffb8085`  
		Last Modified: Wed, 05 Aug 2026 00:21:11 GMT  
		Size: 17.9 MB (17909892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85482d0d25aca045461cb7878be4ff3d9448b6897cdb1cc40481b06e573c0042`  
		Last Modified: Wed, 05 Aug 2026 00:21:10 GMT  
		Size: 3.3 KB (3331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:015a302f9a2ea8592db9bfba8291e1ea857df395396e9e71a0e6e5750c340b82`  
		Last Modified: Wed, 05 Aug 2026 00:21:10 GMT  
		Size: 4.6 MB (4559872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:0d7cf4e349aac243d0887d6906df43340aa9be493c9316512ffdd399d77afbb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a21aa3cc7d4f39282c9806b80f7bd838f1d82a9097875e8e8cef8ea1b4f9e5c`

```dockerfile
```

-	Layers:
	-	`sha256:80e30b6f9612ae6bf0fc13ea50460522f190117db7640b3d3f0dfe64f1d9c637`  
		Last Modified: Wed, 05 Aug 2026 00:21:11 GMT  
		Size: 5.6 MB (5589186 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:764da70b6435112478bd1550e5b0079e7a841c7ad1e8457ac84456d6b72e48ef`  
		Last Modified: Wed, 05 Aug 2026 00:21:10 GMT  
		Size: 18.8 KB (18788 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:006664b18787ff67e84b4ff06fe3ba71d9b7670ac0059d658f23e53c5dfac24c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53974848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:988a519cef16a5a38b598ea60f64d81a0a25484d99a5bb033ade769a03015c81`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:20:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:10 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:20:10 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:20:10 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:20:10 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:20:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:20:50 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:20:50 GMT
USER user
# Wed, 05 Aug 2026 00:20:50 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da5d05588dd492298cbdef0d04db875d88a559a4b914bc69bad22098cea142b`  
		Last Modified: Wed, 05 Aug 2026 00:21:01 GMT  
		Size: 19.0 MB (19045659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa2267a6352ee880b1a47244bb5baf3c0dbab563ca60a061a0f878fd02bb64b`  
		Last Modified: Wed, 05 Aug 2026 00:21:00 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84f70d537bb1695651d35659edc6f3a87a46f39858a41f62d42b711037537997`  
		Last Modified: Wed, 05 Aug 2026 00:21:01 GMT  
		Size: 4.8 MB (4782214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:1814d849b326a2294bc0a4e9f0f6fe5b829f172ce1dea4eb5ef4dbc5ce67ee67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5613924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:966954fbc8d1921c8141cac025ec192b2e361cb9a700412bf1259f083e2fd5f4`

```dockerfile
```

-	Layers:
	-	`sha256:2f43d3c0741467f40a1bc9f169fcec871d68a38c23ae7c548d878e4e2ab243b0`  
		Last Modified: Wed, 05 Aug 2026 00:21:01 GMT  
		Size: 5.6 MB (5595091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c298c1a9a7c686e2e28a240468d547f033cdf0e33ed662f67dd4ab60baafe4a`  
		Last Modified: Wed, 05 Aug 2026 00:21:00 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; 386

```console
$ docker pull irssi@sha256:b24d18be69602da2817b66247978927f94f1a0ea669bd304156dcb5eafb79e07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54904544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ba4504932396ae4d9390cec63710b9e45c275996e0ca4a992b07aa4e86ee61e`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:16:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:16:40 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:16:40 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:16:40 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:16:40 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:17:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:17:23 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:17:23 GMT
USER user
# Wed, 05 Aug 2026 00:17:23 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aab4dfcc98de0086c8cb558a5684343a5e42415f92b727fe6fb333daeef754f1`  
		Last Modified: Wed, 05 Aug 2026 00:17:34 GMT  
		Size: 18.7 MB (18735893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d41c341a32f59c47357ebdb77ac06360969873596530b6714df220f216575979`  
		Last Modified: Wed, 05 Aug 2026 00:17:33 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04fdb0c25ada8216283275ec81a7c6104e06ddb3a0fccebc3af0038010bc87d1`  
		Last Modified: Wed, 05 Aug 2026 00:17:34 GMT  
		Size: 4.9 MB (4869016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:e19fbe494e6e8f794e25efacdbe7607d6a2d9ed7f971b3943975c30c2906d4f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b20098d58ba8ef35ae376ce06c36563239a016bb5f3acf615e8395ae7e353582`

```dockerfile
```

-	Layers:
	-	`sha256:d53d4bf9e593c61469f3d3da6c77939259e0a6207d625a92d71eb4b72e0e97b2`  
		Last Modified: Wed, 05 Aug 2026 00:17:33 GMT  
		Size: 5.6 MB (5584738 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1646054a3091d3729493f8d3cb49227326440d6b879b619f36f3748999a0c413`  
		Last Modified: Wed, 05 Aug 2026 00:17:33 GMT  
		Size: 18.6 KB (18595 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; ppc64le

```console
$ docker pull irssi@sha256:9d1d37186c98418e5fd3f43e4869c03e6827b2bf0c585f21e4915ee22d3ee328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.2 MB (58247661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f02ab477679506f054880fab4371cb7d6728042ff93bb22d9f33f45214f6033e`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:24:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:24:46 GMT
ENV HOME=/home/user
# Tue, 14 Jul 2026 01:24:46 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 14 Jul 2026 01:24:46 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:24:46 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 14 Jul 2026 01:26:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 14 Jul 2026 01:26:19 GMT
WORKDIR /home/user
# Tue, 14 Jul 2026 01:26:19 GMT
USER user
# Tue, 14 Jul 2026 01:26:19 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91b2bc8a63235ea0c83712afd0f018de86b2c3ba23d4d4014a244555eaff0056`  
		Last Modified: Tue, 14 Jul 2026 01:26:38 GMT  
		Size: 19.5 MB (19544153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fa4d481ea50d4fd04998f233aeb33356e770f8bacf59f3c11f4d254e618b092`  
		Last Modified: Tue, 14 Jul 2026 01:26:37 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50916a44aa90aa1b202e56a642d337587dbde369c8303118502ed62a93eee7c3`  
		Last Modified: Tue, 14 Jul 2026 01:26:38 GMT  
		Size: 5.1 MB (5098669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:8fdd41a9751c3ca11038503bba5e563e1636a85234c340909a6debbf3a2053b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cdd942dc7d20da1d0fe594b6053c634d4eab54993dfb3a7d62b93cd5aa16d1c`

```dockerfile
```

-	Layers:
	-	`sha256:96221a0cf251da1d4218fc35b94fb588fa7c7d114681fe384964e07d01ef3dd5`  
		Last Modified: Tue, 14 Jul 2026 01:26:38 GMT  
		Size: 5.6 MB (5595646 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:917d7eb9fc955d0553e571fe58050295b2fd2c72c19ae8fded90029700679f04`  
		Last Modified: Tue, 14 Jul 2026 01:26:38 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; riscv64

```console
$ docker pull irssi@sha256:48c8394b465d62125c037b46030dafdde237557d90e91fa08bb5fb142646e8bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51706138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c11175ee96eac0863d0b1ea64902bb9b015621a9ef6c4498368f522159b3a7cb`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:39:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:39:04 GMT
ENV HOME=/home/user
# Tue, 14 Jul 2026 03:39:04 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 14 Jul 2026 03:39:04 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 03:39:04 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 14 Jul 2026 03:46:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 14 Jul 2026 03:46:01 GMT
WORKDIR /home/user
# Tue, 14 Jul 2026 03:46:01 GMT
USER user
# Tue, 14 Jul 2026 03:46:01 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1340e0d7069bd261cc83414875fd3f5588fdf40b277fb417450062d24d225cc0`  
		Last Modified: Tue, 14 Jul 2026 03:47:56 GMT  
		Size: 18.6 MB (18563174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ad2ac628019e1a86aca9c40ba6d59372dcc5f3e9150028043e7d4372747f14a`  
		Last Modified: Tue, 14 Jul 2026 03:47:52 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54442680d526394b95a078b54a9ecbf769c3810f95956bfc9e3e5b726d76ae79`  
		Last Modified: Tue, 14 Jul 2026 03:47:54 GMT  
		Size: 4.9 MB (4861401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:18d890db80b611c34cab61fcff0b3b3f248cbf0ef919d7a69502d47187ef936d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5598641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1858b304f7f3010a69381c8c8b81ee106dc13a91d34437d49af9378a2af83f95`

```dockerfile
```

-	Layers:
	-	`sha256:8536b987b7d4713eda56395f1ab2872b69265248ce4241103688e63726e2c7cb`  
		Last Modified: Tue, 14 Jul 2026 03:47:54 GMT  
		Size: 5.6 MB (5579918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3932587e0eee660c2d5695aed2be4bc10356bdc502a3b9c330d3b0dc41845a0c`  
		Last Modified: Tue, 14 Jul 2026 03:47:52 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; s390x

```console
$ docker pull irssi@sha256:6aa556bba2647bcc275c90eacf32f222181af51adef365c2f2253e99947fb08d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54524654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45eaf4e1ba8b6a88808ddb289fc11264f59f6d292752677575df587a5aad9489`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:18:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:18:48 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:18:48 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:18:48 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:18:48 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:19:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:19:31 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:19:31 GMT
USER user
# Wed, 05 Aug 2026 00:19:31 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d2f2824e49cc223d89d03a61664c61ba3ef5a4cca75f6b6be1b8dcaa1e98618`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
		Size: 19.8 MB (19767619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3488e75adb3b9aece76dd45b9cb2180a2bd5d44753515289a7aded7bff2a6131`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
		Size: 3.3 KB (3339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5adb9c4683d3552d27e6fe91e62b50b54a10cc1569eae0ac3ad9876fc0ef675e`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
		Size: 4.9 MB (4907091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:5115e7be7f359d3dba2b99f545b7b6ed54af790470f570ef433018504a92b6d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:015455bdb27e2bf9b7cdb36b888f73209a402874fbfe428d98a0825d1afac968`

```dockerfile
```

-	Layers:
	-	`sha256:68428449f94578f6e3e501cffdce2a649d78a1812bd73f98e7b0589c92c39b84`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
		Size: 5.6 MB (5589520 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7eb746569f84030c3ade08e996d7dd6be735beeac107565467655025efc86cf`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
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
$ docker pull irssi@sha256:b038a7b97ebbd68d6cd0896f9ad14fe6d6c0e28c63c14a2af54e4dd3e67649e7
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
$ docker pull irssi@sha256:88ac449edff20f0e8c803008db91f2f3d73a8e79360508e668bfdf3932f7e8f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53872326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdc4127c3e7c7d502478df2b2790aec74cc60d3a0ddadb3110b6e6f0596976c7`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:20:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:16 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:20:16 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:20:16 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:20:16 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:20:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:20:55 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:20:55 GMT
USER user
# Wed, 05 Aug 2026 00:20:55 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271271bc702f2406e88c6f6aff91437e500ef6529c4bbc8070dc3e2bf4877f9b`  
		Last Modified: Wed, 05 Aug 2026 00:21:06 GMT  
		Size: 19.2 MB (19220474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7135907a300e58c78a0aa5748b6edba93388509fcdb6434a62af062bbddb1f7`  
		Last Modified: Wed, 05 Aug 2026 00:21:05 GMT  
		Size: 3.3 KB (3331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:403e4ea3d2f99cd8f5e56967ecdedd088dea3835d7cc82d62592d51aaaa69e30`  
		Last Modified: Wed, 05 Aug 2026 00:21:05 GMT  
		Size: 4.9 MB (4867724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:fc0d4ab9a37fa9f22696e6cb014074d650ae9aa84829c5dba0fd03763548c544
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3d1a0f331ab2453ee89d2693c0f42272139054ddcb668a3ddb13b6d83583b43`

```dockerfile
```

-	Layers:
	-	`sha256:855d33255f00ba02d199ce459facc78fa65ab121a41dd03586869ace26e06620`  
		Last Modified: Wed, 05 Aug 2026 00:21:05 GMT  
		Size: 5.6 MB (5588615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:787f79a91db8d03af4563929fcb7ac1714220bdfd77eaaa1c10b139684e49125`  
		Last Modified: Wed, 05 Aug 2026 00:21:05 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; arm variant v5

```console
$ docker pull irssi@sha256:dade6c1b2cdf04cc26602accd707c1ec0a1e7d948ad41f42173620f472094912
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50955812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6faff06c4385b68ab41fc736471e5cf824ad78dce68cdb2ee421c6e36e974e28`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:16:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:16:22 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:16:22 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:16:22 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:16:22 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:17:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:17:11 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:17:11 GMT
USER user
# Wed, 05 Aug 2026 00:17:11 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3288ef7cbcd33f5e8a48f632d7b69b99c94be153a765f6d1294c440abe19b455`  
		Last Modified: Wed, 05 Aug 2026 00:17:22 GMT  
		Size: 18.3 MB (18287297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ad46939f7ea4ba3491d5a58b6557d723792958727f877f7d4b02dad2d5e794a`  
		Last Modified: Wed, 05 Aug 2026 00:17:21 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e680b202e1ad6033d738e913b514b49c2d2f0165746c400b5cf609075641963f`  
		Last Modified: Wed, 05 Aug 2026 00:17:22 GMT  
		Size: 4.7 MB (4710437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:3d7e4ce573884db819709f807ce3fdd3a0c7b2724048c447fff366b811dd8ea7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5604953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9c2558f1e6576faf735fa1d2824dcdfbdd984742649f32eb5da19436427ea0`

```dockerfile
```

-	Layers:
	-	`sha256:4f8ce29df3e85f374810227e3518fcc0e04a89a43768cce76f4c42d28ec98a77`  
		Last Modified: Wed, 05 Aug 2026 00:17:22 GMT  
		Size: 5.6 MB (5586164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d336f344aa70a3816750c040ee6f8d2f966c5362fb254853b71a0ff81e79d003`  
		Last Modified: Wed, 05 Aug 2026 00:17:21 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; arm variant v7

```console
$ docker pull irssi@sha256:976b2bd1e2e305cbe928ed4625989322e2fa440fee538d9f45ec4c747c342b1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48679499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a28657fb120cbc0b0cb86d54c19013884d499a7e5b7e687b996e509b30f4edf`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:20:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:18 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:20:18 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:20:18 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:20:18 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:21:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:21:00 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:21:00 GMT
USER user
# Wed, 05 Aug 2026 00:21:00 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe35b7825d541451ac53e9cc1fa6522e84e66b0c55ddc7e54a0a469ffffb8085`  
		Last Modified: Wed, 05 Aug 2026 00:21:11 GMT  
		Size: 17.9 MB (17909892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85482d0d25aca045461cb7878be4ff3d9448b6897cdb1cc40481b06e573c0042`  
		Last Modified: Wed, 05 Aug 2026 00:21:10 GMT  
		Size: 3.3 KB (3331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:015a302f9a2ea8592db9bfba8291e1ea857df395396e9e71a0e6e5750c340b82`  
		Last Modified: Wed, 05 Aug 2026 00:21:10 GMT  
		Size: 4.6 MB (4559872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:0d7cf4e349aac243d0887d6906df43340aa9be493c9316512ffdd399d77afbb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a21aa3cc7d4f39282c9806b80f7bd838f1d82a9097875e8e8cef8ea1b4f9e5c`

```dockerfile
```

-	Layers:
	-	`sha256:80e30b6f9612ae6bf0fc13ea50460522f190117db7640b3d3f0dfe64f1d9c637`  
		Last Modified: Wed, 05 Aug 2026 00:21:11 GMT  
		Size: 5.6 MB (5589186 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:764da70b6435112478bd1550e5b0079e7a841c7ad1e8457ac84456d6b72e48ef`  
		Last Modified: Wed, 05 Aug 2026 00:21:10 GMT  
		Size: 18.8 KB (18788 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:006664b18787ff67e84b4ff06fe3ba71d9b7670ac0059d658f23e53c5dfac24c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53974848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:988a519cef16a5a38b598ea60f64d81a0a25484d99a5bb033ade769a03015c81`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:20:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:10 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:20:10 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:20:10 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:20:10 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:20:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:20:50 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:20:50 GMT
USER user
# Wed, 05 Aug 2026 00:20:50 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da5d05588dd492298cbdef0d04db875d88a559a4b914bc69bad22098cea142b`  
		Last Modified: Wed, 05 Aug 2026 00:21:01 GMT  
		Size: 19.0 MB (19045659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa2267a6352ee880b1a47244bb5baf3c0dbab563ca60a061a0f878fd02bb64b`  
		Last Modified: Wed, 05 Aug 2026 00:21:00 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84f70d537bb1695651d35659edc6f3a87a46f39858a41f62d42b711037537997`  
		Last Modified: Wed, 05 Aug 2026 00:21:01 GMT  
		Size: 4.8 MB (4782214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:1814d849b326a2294bc0a4e9f0f6fe5b829f172ce1dea4eb5ef4dbc5ce67ee67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5613924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:966954fbc8d1921c8141cac025ec192b2e361cb9a700412bf1259f083e2fd5f4`

```dockerfile
```

-	Layers:
	-	`sha256:2f43d3c0741467f40a1bc9f169fcec871d68a38c23ae7c548d878e4e2ab243b0`  
		Last Modified: Wed, 05 Aug 2026 00:21:01 GMT  
		Size: 5.6 MB (5595091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c298c1a9a7c686e2e28a240468d547f033cdf0e33ed662f67dd4ab60baafe4a`  
		Last Modified: Wed, 05 Aug 2026 00:21:00 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; 386

```console
$ docker pull irssi@sha256:b24d18be69602da2817b66247978927f94f1a0ea669bd304156dcb5eafb79e07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54904544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ba4504932396ae4d9390cec63710b9e45c275996e0ca4a992b07aa4e86ee61e`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:16:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:16:40 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:16:40 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:16:40 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:16:40 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:17:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:17:23 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:17:23 GMT
USER user
# Wed, 05 Aug 2026 00:17:23 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aab4dfcc98de0086c8cb558a5684343a5e42415f92b727fe6fb333daeef754f1`  
		Last Modified: Wed, 05 Aug 2026 00:17:34 GMT  
		Size: 18.7 MB (18735893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d41c341a32f59c47357ebdb77ac06360969873596530b6714df220f216575979`  
		Last Modified: Wed, 05 Aug 2026 00:17:33 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04fdb0c25ada8216283275ec81a7c6104e06ddb3a0fccebc3af0038010bc87d1`  
		Last Modified: Wed, 05 Aug 2026 00:17:34 GMT  
		Size: 4.9 MB (4869016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:e19fbe494e6e8f794e25efacdbe7607d6a2d9ed7f971b3943975c30c2906d4f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b20098d58ba8ef35ae376ce06c36563239a016bb5f3acf615e8395ae7e353582`

```dockerfile
```

-	Layers:
	-	`sha256:d53d4bf9e593c61469f3d3da6c77939259e0a6207d625a92d71eb4b72e0e97b2`  
		Last Modified: Wed, 05 Aug 2026 00:17:33 GMT  
		Size: 5.6 MB (5584738 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1646054a3091d3729493f8d3cb49227326440d6b879b619f36f3748999a0c413`  
		Last Modified: Wed, 05 Aug 2026 00:17:33 GMT  
		Size: 18.6 KB (18595 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; ppc64le

```console
$ docker pull irssi@sha256:9d1d37186c98418e5fd3f43e4869c03e6827b2bf0c585f21e4915ee22d3ee328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.2 MB (58247661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f02ab477679506f054880fab4371cb7d6728042ff93bb22d9f33f45214f6033e`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:24:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:24:46 GMT
ENV HOME=/home/user
# Tue, 14 Jul 2026 01:24:46 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 14 Jul 2026 01:24:46 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:24:46 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 14 Jul 2026 01:26:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 14 Jul 2026 01:26:19 GMT
WORKDIR /home/user
# Tue, 14 Jul 2026 01:26:19 GMT
USER user
# Tue, 14 Jul 2026 01:26:19 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91b2bc8a63235ea0c83712afd0f018de86b2c3ba23d4d4014a244555eaff0056`  
		Last Modified: Tue, 14 Jul 2026 01:26:38 GMT  
		Size: 19.5 MB (19544153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fa4d481ea50d4fd04998f233aeb33356e770f8bacf59f3c11f4d254e618b092`  
		Last Modified: Tue, 14 Jul 2026 01:26:37 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50916a44aa90aa1b202e56a642d337587dbde369c8303118502ed62a93eee7c3`  
		Last Modified: Tue, 14 Jul 2026 01:26:38 GMT  
		Size: 5.1 MB (5098669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:8fdd41a9751c3ca11038503bba5e563e1636a85234c340909a6debbf3a2053b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cdd942dc7d20da1d0fe594b6053c634d4eab54993dfb3a7d62b93cd5aa16d1c`

```dockerfile
```

-	Layers:
	-	`sha256:96221a0cf251da1d4218fc35b94fb588fa7c7d114681fe384964e07d01ef3dd5`  
		Last Modified: Tue, 14 Jul 2026 01:26:38 GMT  
		Size: 5.6 MB (5595646 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:917d7eb9fc955d0553e571fe58050295b2fd2c72c19ae8fded90029700679f04`  
		Last Modified: Tue, 14 Jul 2026 01:26:38 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; riscv64

```console
$ docker pull irssi@sha256:48c8394b465d62125c037b46030dafdde237557d90e91fa08bb5fb142646e8bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51706138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c11175ee96eac0863d0b1ea64902bb9b015621a9ef6c4498368f522159b3a7cb`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:39:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:39:04 GMT
ENV HOME=/home/user
# Tue, 14 Jul 2026 03:39:04 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 14 Jul 2026 03:39:04 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 03:39:04 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 14 Jul 2026 03:46:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 14 Jul 2026 03:46:01 GMT
WORKDIR /home/user
# Tue, 14 Jul 2026 03:46:01 GMT
USER user
# Tue, 14 Jul 2026 03:46:01 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1340e0d7069bd261cc83414875fd3f5588fdf40b277fb417450062d24d225cc0`  
		Last Modified: Tue, 14 Jul 2026 03:47:56 GMT  
		Size: 18.6 MB (18563174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ad2ac628019e1a86aca9c40ba6d59372dcc5f3e9150028043e7d4372747f14a`  
		Last Modified: Tue, 14 Jul 2026 03:47:52 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54442680d526394b95a078b54a9ecbf769c3810f95956bfc9e3e5b726d76ae79`  
		Last Modified: Tue, 14 Jul 2026 03:47:54 GMT  
		Size: 4.9 MB (4861401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:18d890db80b611c34cab61fcff0b3b3f248cbf0ef919d7a69502d47187ef936d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5598641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1858b304f7f3010a69381c8c8b81ee106dc13a91d34437d49af9378a2af83f95`

```dockerfile
```

-	Layers:
	-	`sha256:8536b987b7d4713eda56395f1ab2872b69265248ce4241103688e63726e2c7cb`  
		Last Modified: Tue, 14 Jul 2026 03:47:54 GMT  
		Size: 5.6 MB (5579918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3932587e0eee660c2d5695aed2be4bc10356bdc502a3b9c330d3b0dc41845a0c`  
		Last Modified: Tue, 14 Jul 2026 03:47:52 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; s390x

```console
$ docker pull irssi@sha256:6aa556bba2647bcc275c90eacf32f222181af51adef365c2f2253e99947fb08d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54524654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45eaf4e1ba8b6a88808ddb289fc11264f59f6d292752677575df587a5aad9489`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:18:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:18:48 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:18:48 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:18:48 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:18:48 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:19:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:19:31 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:19:31 GMT
USER user
# Wed, 05 Aug 2026 00:19:31 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d2f2824e49cc223d89d03a61664c61ba3ef5a4cca75f6b6be1b8dcaa1e98618`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
		Size: 19.8 MB (19767619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3488e75adb3b9aece76dd45b9cb2180a2bd5d44753515289a7aded7bff2a6131`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
		Size: 3.3 KB (3339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5adb9c4683d3552d27e6fe91e62b50b54a10cc1569eae0ac3ad9876fc0ef675e`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
		Size: 4.9 MB (4907091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:5115e7be7f359d3dba2b99f545b7b6ed54af790470f570ef433018504a92b6d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:015455bdb27e2bf9b7cdb36b888f73209a402874fbfe428d98a0825d1afac968`

```dockerfile
```

-	Layers:
	-	`sha256:68428449f94578f6e3e501cffdce2a649d78a1812bd73f98e7b0589c92c39b84`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
		Size: 5.6 MB (5589520 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7eb746569f84030c3ade08e996d7dd6be735beeac107565467655025efc86cf`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:trixie`

```console
$ docker pull irssi@sha256:b038a7b97ebbd68d6cd0896f9ad14fe6d6c0e28c63c14a2af54e4dd3e67649e7
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
$ docker pull irssi@sha256:88ac449edff20f0e8c803008db91f2f3d73a8e79360508e668bfdf3932f7e8f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53872326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdc4127c3e7c7d502478df2b2790aec74cc60d3a0ddadb3110b6e6f0596976c7`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:20:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:16 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:20:16 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:20:16 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:20:16 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:20:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:20:55 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:20:55 GMT
USER user
# Wed, 05 Aug 2026 00:20:55 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271271bc702f2406e88c6f6aff91437e500ef6529c4bbc8070dc3e2bf4877f9b`  
		Last Modified: Wed, 05 Aug 2026 00:21:06 GMT  
		Size: 19.2 MB (19220474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7135907a300e58c78a0aa5748b6edba93388509fcdb6434a62af062bbddb1f7`  
		Last Modified: Wed, 05 Aug 2026 00:21:05 GMT  
		Size: 3.3 KB (3331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:403e4ea3d2f99cd8f5e56967ecdedd088dea3835d7cc82d62592d51aaaa69e30`  
		Last Modified: Wed, 05 Aug 2026 00:21:05 GMT  
		Size: 4.9 MB (4867724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:fc0d4ab9a37fa9f22696e6cb014074d650ae9aa84829c5dba0fd03763548c544
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3d1a0f331ab2453ee89d2693c0f42272139054ddcb668a3ddb13b6d83583b43`

```dockerfile
```

-	Layers:
	-	`sha256:855d33255f00ba02d199ce459facc78fa65ab121a41dd03586869ace26e06620`  
		Last Modified: Wed, 05 Aug 2026 00:21:05 GMT  
		Size: 5.6 MB (5588615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:787f79a91db8d03af4563929fcb7ac1714220bdfd77eaaa1c10b139684e49125`  
		Last Modified: Wed, 05 Aug 2026 00:21:05 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; arm variant v5

```console
$ docker pull irssi@sha256:dade6c1b2cdf04cc26602accd707c1ec0a1e7d948ad41f42173620f472094912
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50955812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6faff06c4385b68ab41fc736471e5cf824ad78dce68cdb2ee421c6e36e974e28`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:16:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:16:22 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:16:22 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:16:22 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:16:22 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:17:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:17:11 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:17:11 GMT
USER user
# Wed, 05 Aug 2026 00:17:11 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3288ef7cbcd33f5e8a48f632d7b69b99c94be153a765f6d1294c440abe19b455`  
		Last Modified: Wed, 05 Aug 2026 00:17:22 GMT  
		Size: 18.3 MB (18287297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ad46939f7ea4ba3491d5a58b6557d723792958727f877f7d4b02dad2d5e794a`  
		Last Modified: Wed, 05 Aug 2026 00:17:21 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e680b202e1ad6033d738e913b514b49c2d2f0165746c400b5cf609075641963f`  
		Last Modified: Wed, 05 Aug 2026 00:17:22 GMT  
		Size: 4.7 MB (4710437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:3d7e4ce573884db819709f807ce3fdd3a0c7b2724048c447fff366b811dd8ea7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5604953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9c2558f1e6576faf735fa1d2824dcdfbdd984742649f32eb5da19436427ea0`

```dockerfile
```

-	Layers:
	-	`sha256:4f8ce29df3e85f374810227e3518fcc0e04a89a43768cce76f4c42d28ec98a77`  
		Last Modified: Wed, 05 Aug 2026 00:17:22 GMT  
		Size: 5.6 MB (5586164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d336f344aa70a3816750c040ee6f8d2f966c5362fb254853b71a0ff81e79d003`  
		Last Modified: Wed, 05 Aug 2026 00:17:21 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; arm variant v7

```console
$ docker pull irssi@sha256:976b2bd1e2e305cbe928ed4625989322e2fa440fee538d9f45ec4c747c342b1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48679499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a28657fb120cbc0b0cb86d54c19013884d499a7e5b7e687b996e509b30f4edf`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:20:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:18 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:20:18 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:20:18 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:20:18 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:21:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:21:00 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:21:00 GMT
USER user
# Wed, 05 Aug 2026 00:21:00 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe35b7825d541451ac53e9cc1fa6522e84e66b0c55ddc7e54a0a469ffffb8085`  
		Last Modified: Wed, 05 Aug 2026 00:21:11 GMT  
		Size: 17.9 MB (17909892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85482d0d25aca045461cb7878be4ff3d9448b6897cdb1cc40481b06e573c0042`  
		Last Modified: Wed, 05 Aug 2026 00:21:10 GMT  
		Size: 3.3 KB (3331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:015a302f9a2ea8592db9bfba8291e1ea857df395396e9e71a0e6e5750c340b82`  
		Last Modified: Wed, 05 Aug 2026 00:21:10 GMT  
		Size: 4.6 MB (4559872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:0d7cf4e349aac243d0887d6906df43340aa9be493c9316512ffdd399d77afbb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a21aa3cc7d4f39282c9806b80f7bd838f1d82a9097875e8e8cef8ea1b4f9e5c`

```dockerfile
```

-	Layers:
	-	`sha256:80e30b6f9612ae6bf0fc13ea50460522f190117db7640b3d3f0dfe64f1d9c637`  
		Last Modified: Wed, 05 Aug 2026 00:21:11 GMT  
		Size: 5.6 MB (5589186 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:764da70b6435112478bd1550e5b0079e7a841c7ad1e8457ac84456d6b72e48ef`  
		Last Modified: Wed, 05 Aug 2026 00:21:10 GMT  
		Size: 18.8 KB (18788 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:006664b18787ff67e84b4ff06fe3ba71d9b7670ac0059d658f23e53c5dfac24c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53974848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:988a519cef16a5a38b598ea60f64d81a0a25484d99a5bb033ade769a03015c81`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:20:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:10 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:20:10 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:20:10 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:20:10 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:20:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:20:50 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:20:50 GMT
USER user
# Wed, 05 Aug 2026 00:20:50 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da5d05588dd492298cbdef0d04db875d88a559a4b914bc69bad22098cea142b`  
		Last Modified: Wed, 05 Aug 2026 00:21:01 GMT  
		Size: 19.0 MB (19045659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa2267a6352ee880b1a47244bb5baf3c0dbab563ca60a061a0f878fd02bb64b`  
		Last Modified: Wed, 05 Aug 2026 00:21:00 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84f70d537bb1695651d35659edc6f3a87a46f39858a41f62d42b711037537997`  
		Last Modified: Wed, 05 Aug 2026 00:21:01 GMT  
		Size: 4.8 MB (4782214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:1814d849b326a2294bc0a4e9f0f6fe5b829f172ce1dea4eb5ef4dbc5ce67ee67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5613924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:966954fbc8d1921c8141cac025ec192b2e361cb9a700412bf1259f083e2fd5f4`

```dockerfile
```

-	Layers:
	-	`sha256:2f43d3c0741467f40a1bc9f169fcec871d68a38c23ae7c548d878e4e2ab243b0`  
		Last Modified: Wed, 05 Aug 2026 00:21:01 GMT  
		Size: 5.6 MB (5595091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c298c1a9a7c686e2e28a240468d547f033cdf0e33ed662f67dd4ab60baafe4a`  
		Last Modified: Wed, 05 Aug 2026 00:21:00 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; 386

```console
$ docker pull irssi@sha256:b24d18be69602da2817b66247978927f94f1a0ea669bd304156dcb5eafb79e07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54904544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ba4504932396ae4d9390cec63710b9e45c275996e0ca4a992b07aa4e86ee61e`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:16:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:16:40 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:16:40 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:16:40 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:16:40 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:17:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:17:23 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:17:23 GMT
USER user
# Wed, 05 Aug 2026 00:17:23 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aab4dfcc98de0086c8cb558a5684343a5e42415f92b727fe6fb333daeef754f1`  
		Last Modified: Wed, 05 Aug 2026 00:17:34 GMT  
		Size: 18.7 MB (18735893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d41c341a32f59c47357ebdb77ac06360969873596530b6714df220f216575979`  
		Last Modified: Wed, 05 Aug 2026 00:17:33 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04fdb0c25ada8216283275ec81a7c6104e06ddb3a0fccebc3af0038010bc87d1`  
		Last Modified: Wed, 05 Aug 2026 00:17:34 GMT  
		Size: 4.9 MB (4869016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:e19fbe494e6e8f794e25efacdbe7607d6a2d9ed7f971b3943975c30c2906d4f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b20098d58ba8ef35ae376ce06c36563239a016bb5f3acf615e8395ae7e353582`

```dockerfile
```

-	Layers:
	-	`sha256:d53d4bf9e593c61469f3d3da6c77939259e0a6207d625a92d71eb4b72e0e97b2`  
		Last Modified: Wed, 05 Aug 2026 00:17:33 GMT  
		Size: 5.6 MB (5584738 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1646054a3091d3729493f8d3cb49227326440d6b879b619f36f3748999a0c413`  
		Last Modified: Wed, 05 Aug 2026 00:17:33 GMT  
		Size: 18.6 KB (18595 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; ppc64le

```console
$ docker pull irssi@sha256:9d1d37186c98418e5fd3f43e4869c03e6827b2bf0c585f21e4915ee22d3ee328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.2 MB (58247661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f02ab477679506f054880fab4371cb7d6728042ff93bb22d9f33f45214f6033e`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:24:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:24:46 GMT
ENV HOME=/home/user
# Tue, 14 Jul 2026 01:24:46 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 14 Jul 2026 01:24:46 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:24:46 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 14 Jul 2026 01:26:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 14 Jul 2026 01:26:19 GMT
WORKDIR /home/user
# Tue, 14 Jul 2026 01:26:19 GMT
USER user
# Tue, 14 Jul 2026 01:26:19 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91b2bc8a63235ea0c83712afd0f018de86b2c3ba23d4d4014a244555eaff0056`  
		Last Modified: Tue, 14 Jul 2026 01:26:38 GMT  
		Size: 19.5 MB (19544153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fa4d481ea50d4fd04998f233aeb33356e770f8bacf59f3c11f4d254e618b092`  
		Last Modified: Tue, 14 Jul 2026 01:26:37 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50916a44aa90aa1b202e56a642d337587dbde369c8303118502ed62a93eee7c3`  
		Last Modified: Tue, 14 Jul 2026 01:26:38 GMT  
		Size: 5.1 MB (5098669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:8fdd41a9751c3ca11038503bba5e563e1636a85234c340909a6debbf3a2053b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cdd942dc7d20da1d0fe594b6053c634d4eab54993dfb3a7d62b93cd5aa16d1c`

```dockerfile
```

-	Layers:
	-	`sha256:96221a0cf251da1d4218fc35b94fb588fa7c7d114681fe384964e07d01ef3dd5`  
		Last Modified: Tue, 14 Jul 2026 01:26:38 GMT  
		Size: 5.6 MB (5595646 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:917d7eb9fc955d0553e571fe58050295b2fd2c72c19ae8fded90029700679f04`  
		Last Modified: Tue, 14 Jul 2026 01:26:38 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; riscv64

```console
$ docker pull irssi@sha256:48c8394b465d62125c037b46030dafdde237557d90e91fa08bb5fb142646e8bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51706138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c11175ee96eac0863d0b1ea64902bb9b015621a9ef6c4498368f522159b3a7cb`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:39:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:39:04 GMT
ENV HOME=/home/user
# Tue, 14 Jul 2026 03:39:04 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 14 Jul 2026 03:39:04 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 03:39:04 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 14 Jul 2026 03:46:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 14 Jul 2026 03:46:01 GMT
WORKDIR /home/user
# Tue, 14 Jul 2026 03:46:01 GMT
USER user
# Tue, 14 Jul 2026 03:46:01 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1340e0d7069bd261cc83414875fd3f5588fdf40b277fb417450062d24d225cc0`  
		Last Modified: Tue, 14 Jul 2026 03:47:56 GMT  
		Size: 18.6 MB (18563174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ad2ac628019e1a86aca9c40ba6d59372dcc5f3e9150028043e7d4372747f14a`  
		Last Modified: Tue, 14 Jul 2026 03:47:52 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54442680d526394b95a078b54a9ecbf769c3810f95956bfc9e3e5b726d76ae79`  
		Last Modified: Tue, 14 Jul 2026 03:47:54 GMT  
		Size: 4.9 MB (4861401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:18d890db80b611c34cab61fcff0b3b3f248cbf0ef919d7a69502d47187ef936d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5598641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1858b304f7f3010a69381c8c8b81ee106dc13a91d34437d49af9378a2af83f95`

```dockerfile
```

-	Layers:
	-	`sha256:8536b987b7d4713eda56395f1ab2872b69265248ce4241103688e63726e2c7cb`  
		Last Modified: Tue, 14 Jul 2026 03:47:54 GMT  
		Size: 5.6 MB (5579918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3932587e0eee660c2d5695aed2be4bc10356bdc502a3b9c330d3b0dc41845a0c`  
		Last Modified: Tue, 14 Jul 2026 03:47:52 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; s390x

```console
$ docker pull irssi@sha256:6aa556bba2647bcc275c90eacf32f222181af51adef365c2f2253e99947fb08d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54524654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45eaf4e1ba8b6a88808ddb289fc11264f59f6d292752677575df587a5aad9489`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:18:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:18:48 GMT
ENV HOME=/home/user
# Wed, 05 Aug 2026 00:18:48 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 05 Aug 2026 00:18:48 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:18:48 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 05 Aug 2026 00:19:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 05 Aug 2026 00:19:31 GMT
WORKDIR /home/user
# Wed, 05 Aug 2026 00:19:31 GMT
USER user
# Wed, 05 Aug 2026 00:19:31 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d2f2824e49cc223d89d03a61664c61ba3ef5a4cca75f6b6be1b8dcaa1e98618`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
		Size: 19.8 MB (19767619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3488e75adb3b9aece76dd45b9cb2180a2bd5d44753515289a7aded7bff2a6131`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
		Size: 3.3 KB (3339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5adb9c4683d3552d27e6fe91e62b50b54a10cc1569eae0ac3ad9876fc0ef675e`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
		Size: 4.9 MB (4907091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:5115e7be7f359d3dba2b99f545b7b6ed54af790470f570ef433018504a92b6d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:015455bdb27e2bf9b7cdb36b888f73209a402874fbfe428d98a0825d1afac968`

```dockerfile
```

-	Layers:
	-	`sha256:68428449f94578f6e3e501cffdce2a649d78a1812bd73f98e7b0589c92c39b84`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
		Size: 5.6 MB (5589520 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7eb746569f84030c3ade08e996d7dd6be735beeac107565467655025efc86cf`  
		Last Modified: Wed, 05 Aug 2026 00:19:48 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json
