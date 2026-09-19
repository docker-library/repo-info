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
$ docker pull irssi@sha256:896f7c97996c24dbb497d15916b623e3ddd42871c105b76acf3b3d7a434d59ff
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
$ docker pull irssi@sha256:d783491026f486a57dc57b38a15fa67237affadbae5a709061ed333d80a43c3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53923388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8428df78f5248281836be253b31b8572c7eb5b403853ddb4909110cfc1f5ceec`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:19:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:19:00 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:19:00 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:19:00 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:19:00 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:19:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:19:37 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:19:37 GMT
USER user
# Sat, 19 Sep 2026 00:19:37 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd5019de77905dc8d5f19f256c08f4ce3332c324d9bfa3be0660ea7041861a72`  
		Last Modified: Sat, 19 Sep 2026 00:19:48 GMT  
		Size: 19.2 MB (19220216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a7da13254dd514292a1604cdc7d5fb553b77f9e5b7ae592ca74f9d7ca7dd4f4`  
		Last Modified: Sat, 19 Sep 2026 00:19:47 GMT  
		Size: 3.3 KB (3331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc6296f22bba50ac1c34b44a057eb91a3c2dc9e93a5827f4fab75172463a695`  
		Last Modified: Sat, 19 Sep 2026 00:19:48 GMT  
		Size: 4.9 MB (4869391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:2ca15c28486a14058dff386acc645b41ba516d8ecccc2bb62c502cb07f55cc2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5613210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45a51eba4210f84ee5eeddbd13d8a9b5a2c088470d9ec2fb6e0b68bcd67b0758`

```dockerfile
```

-	Layers:
	-	`sha256:8cb4bfd2f3979c228d73b909edce84cc582971ee2f87a5f6d9e3027f9d99a48a`  
		Last Modified: Sat, 19 Sep 2026 00:19:48 GMT  
		Size: 5.6 MB (5594559 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6db124ea92ae621b8ced9af8f0617adf48bb5a97389493722dfe7ccd00055f5a`  
		Last Modified: Sat, 19 Sep 2026 00:19:47 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; arm variant v5

```console
$ docker pull irssi@sha256:7575a2e50d152e497a747afac9d218d9190905d98513da2a57c393388c2f4aa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50969610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ae6a8975bb891ebcc2c73f47b4b3b8d0db3929e861863282e95d9531612718b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:17:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:17:00 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:17:00 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:17:00 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:17:00 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:17:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:17:48 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:17:48 GMT
USER user
# Tue, 25 Aug 2026 00:17:48 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a20095955c6409eff232901e863164eedbe3c59d00d5c6295039a5ed00942a`  
		Last Modified: Tue, 25 Aug 2026 00:17:59 GMT  
		Size: 18.3 MB (18286841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8b205f3d41a8416d2a4289a4fb1c9898102f1402742a2032e5529e8c712c97`  
		Last Modified: Tue, 25 Aug 2026 00:17:58 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206a4895e4addc7283cc8b4991d097a88a0132535abf16d53c3380986995e67a`  
		Last Modified: Tue, 25 Aug 2026 00:17:59 GMT  
		Size: 4.7 MB (4710461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:7aa91950e84e984844a9232b917ab9356c15b059f7777362a5bc722ba178361a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5605151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ba0dfb7a4cf38384fa2a8660e3ff84c977d2ca1a81698158b08dba37304662f`

```dockerfile
```

-	Layers:
	-	`sha256:51f2eba6ad1eb8f5f1fefbbe8b3d696f961d641d041fac671e4e4d687d46c1e5`  
		Last Modified: Tue, 25 Aug 2026 00:17:59 GMT  
		Size: 5.6 MB (5586362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa6dbc2757f075633c376f1333bba7144229f4fb68083c1a6f7519c486484dbe`  
		Last Modified: Tue, 25 Aug 2026 00:17:58 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; arm variant v7

```console
$ docker pull irssi@sha256:3f9f78457512ff79c7fbc925e0680574a32d574c96c34cabb66b988f998a680f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48733260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:903f9529a916d81ddbc0550399d99c4ff4e94703a1fea532abe0021b8e91e55c`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:19:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:19:45 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:19:45 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:19:45 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:19:45 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:20:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:20:27 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:20:27 GMT
USER user
# Sat, 19 Sep 2026 00:20:27 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cdeed6e44a97b217c469937244586e101c9aa27c88d527816d0088418389c42`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 17.9 MB (17919592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b364f2058c8e95eba2ab686d68fbab989b078f1835e7a87bafbf966a63b470ba`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 3.3 KB (3330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb3d3a39e432a9437dd8c77dedc7b4f9f13162be07f89c7cea80b84adef9310f`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 4.6 MB (4561378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:57189829e7b12493ac348139fbdfc8a8c133d1ccaeca0888900fb53165ed7d52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5613919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86708c0cfd3d99bd38cee1cc43f33b816d810f6186b942bca93c3d61f1d90184`

```dockerfile
```

-	Layers:
	-	`sha256:a08c50c789476bf7d7155478b7317157f61db197c65891d3d7df44761a1051c0`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 5.6 MB (5595130 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94441f9b18f2d430566ebd2f923223979d5178f8a6497c518988120709ed22f2`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:4689e93e0971c573d0ac56c217492b2b61c614a2fbe046a3ced8df4a765854db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (54032817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4254d224c2f411199a5afbb7c7d3bf96e5bb4829b0797dd8295ad0b1cfe19155`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:19:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:19:08 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:19:08 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:19:08 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:19:08 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:19:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:19:46 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:19:46 GMT
USER user
# Sat, 19 Sep 2026 00:19:46 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daacf48909065564644359a01e5015c67043c04e5d36f679401e98859b84a8c6`  
		Last Modified: Sat, 19 Sep 2026 00:19:58 GMT  
		Size: 19.1 MB (19057651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6db475b78849c61c3a8dc60553b9ad104c506e9aa0390f9a280fd17abbdc7a45`  
		Last Modified: Sat, 19 Sep 2026 00:19:57 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:995e0a5db82d4abc1e50d7b99805219be7a82c7bce43b8d5d99ee7889fc56782`  
		Last Modified: Sat, 19 Sep 2026 00:19:57 GMT  
		Size: 4.8 MB (4782111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:d8ff022a5012d2152bf1a13cc8cfdd8cd3e87f6447cbff3a85435163f8983588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5619868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7f3608c81c2a75cd40a2a3a1f6cab2de28b8eb386adc1859241c5180789ff9f`

```dockerfile
```

-	Layers:
	-	`sha256:6a95218acd333010c42ab80006172dc9cab99ca5b142d053fd23e6ebb06fce91`  
		Last Modified: Sat, 19 Sep 2026 00:19:57 GMT  
		Size: 5.6 MB (5601035 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef879536f60445669db5f38eda2cc7ade471d30cf3a1df8094aedf3e8b3033cf`  
		Last Modified: Sat, 19 Sep 2026 00:19:57 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; 386

```console
$ docker pull irssi@sha256:f20e61041e82b65ff3432782eba56e3eba34ab08ccd0dcb995155443c74ec9df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54947736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9091e60a388f0245755000598a4dd6265289cdaeacb0332891ce4084fb5c061`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:18:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:18:51 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:18:51 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:18:51 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:18:51 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:19:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:19:32 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:19:32 GMT
USER user
# Sat, 19 Sep 2026 00:19:32 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a6206be0fddcec7e517d667f6453a789bccba615d2bc235b8b2527e8c15f0b5`  
		Last Modified: Sat, 19 Sep 2026 00:19:43 GMT  
		Size: 18.7 MB (18734074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a793c7384f3ecc482ee6918007fd1b8d5af97c0e12f84096c5a2856e2ee5a9d0`  
		Last Modified: Sat, 19 Sep 2026 00:19:42 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c79efed34f59e490d25cf1dcd92b9715bcf1a4043656551c9b0f753d13c468`  
		Last Modified: Sat, 19 Sep 2026 00:19:42 GMT  
		Size: 4.9 MB (4869903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:3cfe2c2c63f1695da2e64aacd2e12283f31c8b13c1bf413b3dc5c3feab5227bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5609277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f418e8af32b34540d54c818e2884a6b82368bbe1d01fd2e5ccd43ccac7d16729`

```dockerfile
```

-	Layers:
	-	`sha256:88598e3c306002be9ad53853ca066789895e6772cbfceba2f9705ffb79f01b19`  
		Last Modified: Sat, 19 Sep 2026 00:19:42 GMT  
		Size: 5.6 MB (5590682 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a403e58a16746a861fffad729aa903e7790dbc606b71ed5cd55733abf328ea11`  
		Last Modified: Sat, 19 Sep 2026 00:19:42 GMT  
		Size: 18.6 KB (18595 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; ppc64le

```console
$ docker pull irssi@sha256:dc0b305706e9cea511738fec4c5f266f5cd4dc2a7755f533069c56af172dd213
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58293193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3bffcda877547a4f3b146f55b45514f7d1789a62bf172c6899fc4eb2607d3df`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:22:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:22:43 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:22:43 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:22:43 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:22:43 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:23:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:23:54 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:23:54 GMT
USER user
# Sat, 19 Sep 2026 00:23:54 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e18aeb6a6a0e7e01e0c7c54485dc97e9b1cf53dc39e836f3feeb143f0c67c8f1`  
		Last Modified: Sat, 19 Sep 2026 00:24:15 GMT  
		Size: 19.5 MB (19548636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6614c0a3388ab533845e85af010bc871bfcfd79d8584a3ca98475e2c9d8b9bab`  
		Last Modified: Sat, 19 Sep 2026 00:24:14 GMT  
		Size: 3.3 KB (3330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18f060deef99a40f955af5b4bf92519b32aca576847a34aad52d230e40d50255`  
		Last Modified: Sat, 19 Sep 2026 00:24:15 GMT  
		Size: 5.1 MB (5099960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:c40487a7766c84f4fa57eff5a5a40445c6d0d621e3d433349ae59711df40fb35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5620313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:206d53359d9f9318f8ddc8958ce68a471e757f1f71242f7db19db052a052423b`

```dockerfile
```

-	Layers:
	-	`sha256:99f31fb755a329d01b0b6afdacbc16103e1c7132ae47a071580ff31c00954f74`  
		Last Modified: Sat, 19 Sep 2026 00:24:15 GMT  
		Size: 5.6 MB (5601590 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87a83d06b06a305b79432d1a9abe9a35425b601026109f1c138ef99225733914`  
		Last Modified: Sat, 19 Sep 2026 00:24:15 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; riscv64

```console
$ docker pull irssi@sha256:63fd5c7be05433447cb3ac611913743c8a2aff559fdd99fbc6e3657c9fc3c416
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51713551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:995429fbf593b610b569eaee31279d838dd4d000d2a12daa8cb17e1b690a1377`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:33:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:33:17 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 02:33:17 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 02:33:17 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 02:33:17 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 02:40:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 02:40:02 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 02:40:02 GMT
USER user
# Tue, 25 Aug 2026 02:40:02 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70e669f37eaed3b6cc866821a03bf1c8152fa8185a058cee5162f993ce7f1b41`  
		Last Modified: Tue, 25 Aug 2026 02:41:56 GMT  
		Size: 18.6 MB (18552281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:947a6ddabc323157585106f2a874a9074c7bc7ec46cd92165d36f3d43ac23631`  
		Last Modified: Tue, 25 Aug 2026 02:41:51 GMT  
		Size: 3.3 KB (3333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a17014c19658b15934711c82546d2c1304652ba25351d995dcde4afe46730e5b`  
		Last Modified: Tue, 25 Aug 2026 02:41:53 GMT  
		Size: 4.9 MB (4861442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:4ac5ed2e7cbc4b525b26c6c02ffcfe1b1752d6be5b29cfa23a4d53e9d4517272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5598839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3721b0521fb40eb75f4566c3ee55d346e9dbb817982aecb1bc3511dd15f5800f`

```dockerfile
```

-	Layers:
	-	`sha256:1a12298551bc406171329277ad84ada0c72efc653417fe7699a9989b8f7388de`  
		Last Modified: Tue, 25 Aug 2026 02:41:54 GMT  
		Size: 5.6 MB (5580116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d4f700030661f47bb0b75cc2cec2b2b1aedf19adbfdbbee75f7abec81deeecf`  
		Last Modified: Tue, 25 Aug 2026 02:41:52 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; s390x

```console
$ docker pull irssi@sha256:5f02011f5185ee6f434826a48d9d63f19232c95fe148e903ce9e46cb7226c1d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54546324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05192773879cd222cc802f0cd3702e4a145f67c100885dfe1c6655a598e70507`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:18:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:18:42 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:18:42 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:18:42 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:18:42 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:19:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:19:31 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:19:31 GMT
USER user
# Tue, 25 Aug 2026 00:19:31 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd37501b3f5271a57e84d41eda4fcfc495913c4611a085e31646a7d8824d0ed0`  
		Last Modified: Tue, 25 Aug 2026 00:19:58 GMT  
		Size: 19.8 MB (19768051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b23c55e2803c63fadea10691613a38ce82f75e170940185db91c1ed5a89a6dc2`  
		Last Modified: Tue, 25 Aug 2026 00:19:56 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54af3f574ac1b41f1028dff19e949c568e6068f37e9462f83c79b7a18a4a4aa3`  
		Last Modified: Tue, 25 Aug 2026 00:19:57 GMT  
		Size: 4.9 MB (4907188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:66321b524e066959c2cd65464eb6a30c1aa82ac6fe568f51d3c474cdef18f7de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe635615631c66e27a63d001537764edc875ab813bb9901c8001acaab2124f56`

```dockerfile
```

-	Layers:
	-	`sha256:212141ad5435723e922d6d1f9c1ea7498b7348dd617f41e2f42eef258042ed5d`  
		Last Modified: Tue, 25 Aug 2026 00:19:57 GMT  
		Size: 5.6 MB (5589718 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64b95e9b60de85b295e74cd35715d1c53f955433fd9ec72ded782b9505146937`  
		Last Modified: Tue, 25 Aug 2026 00:19:56 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1-alpine`

```console
$ docker pull irssi@sha256:a9bcfb1c77f131d74d93d3c6a41478e3f6323d13732838c5d4340faf9c053b52
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
$ docker pull irssi@sha256:5d08b1e33043c4fcc026a8b1f43b1d08fb13c61d6ef1318ed192cb009a7524b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20737511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cecde90cd46e7bd82d9622d929750f8bab0215795b7d43e4315dc0b1d98bd56`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:12 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:16:12 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:16:12 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:16:12 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:16:12 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:16:26 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:16:26 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:16:26 GMT
USER user
# Thu, 17 Sep 2026 21:16:26 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d2a5eb32043a2941ca1a3a4904d78b51b0979308fc9cac394125c6927ae5f28`  
		Last Modified: Thu, 17 Sep 2026 21:16:33 GMT  
		Size: 10.8 MB (10820632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e384644f15960ef28c3053ba8f79a0da94d371bcc0436b0c8e3c575acaa42018`  
		Last Modified: Thu, 17 Sep 2026 21:16:32 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:918acbe934f17a4678e45cf05085530b1c0362151af95f6189aab596434a7c2d`  
		Last Modified: Thu, 17 Sep 2026 21:16:32 GMT  
		Size: 6.1 MB (6067387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:44e7298450848fe2f9415d2c5db16f99d83c88fb97916daf53f51da33d9a0790
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fceb077410e80ed9ad203356f541173660da7b9b6a8f210973fdbbad584e0d46`

```dockerfile
```

-	Layers:
	-	`sha256:15a7522aa7342a31eae1fc6977b4610a02d743a4f3d79f542b7d3baa0eab3609`  
		Last Modified: Thu, 17 Sep 2026 21:16:32 GMT  
		Size: 1.3 MB (1291185 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04862f3d2202f274997ae1af9322183d7bc55d1150b5824dc25bb0151c5d4556`  
		Last Modified: Thu, 17 Sep 2026 21:16:32 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine` - linux; arm variant v6

```console
$ docker pull irssi@sha256:f92de27f07b39d4de8a9601aa186a37841747dec042f6744f5bfbbffae120aea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19475812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fd435a62b75d3e36b20941aba125aae1eaf0a586c639ad28a870a4155127392`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:20:55 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:20:56 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:20:56 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:20:56 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:20:56 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:21:11 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:21:11 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:21:11 GMT
USER user
# Thu, 17 Sep 2026 21:21:11 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e765e23cd63d395e16caec5fabb516f2c4561e0c2ab541e6edbd03480439cb7d`  
		Last Modified: Thu, 17 Sep 2026 21:21:16 GMT  
		Size: 10.0 MB (10024645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:324551f45eba4a0c467375f7d33db15172e045d0b2ad430f411b5f5c485197b2`  
		Last Modified: Thu, 17 Sep 2026 21:21:16 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fb06fdae2cc6198bc3f8bacb48606ed15cb469d8bf9288dfcb2f2dea225e7aa`  
		Last Modified: Thu, 17 Sep 2026 21:21:16 GMT  
		Size: 5.9 MB (5895257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:7a2df418924606188c590ffe74adb74bf8bcfe21c88f3dd345b21d3d98ad8adb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 KB (17423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0154da5c542b9360d347e52ea206e7aa8e1e24c771e4df5ec78246c49c4ece35`

```dockerfile
```

-	Layers:
	-	`sha256:9c9942688435ee195b4abb40f17369fd7015a9cedd64aef9dc04fb84c49b6c98`  
		Last Modified: Thu, 17 Sep 2026 21:21:16 GMT  
		Size: 17.4 KB (17423 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine` - linux; arm variant v7

```console
$ docker pull irssi@sha256:3c078f077a56a2e4eb9a672993819dbe8c93ab0669b592204352498273ff9508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18768878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:907f6758b411b3c1ad9365cc2fb7f0471df79af6b611efde8c6e392fbb6e38c0`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:33 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:19:33 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:19:33 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:19:33 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:19:33 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:19:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:19:48 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:19:48 GMT
USER user
# Thu, 17 Sep 2026 21:19:48 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:203da8b0d73ce2ed493163d965a70dfc73b45c6a08b5f7ee65f453aa70eecbee`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 9.9 MB (9861506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b2f4fdc022b1e8173a616c74a69b41772e14294eb0a7fadfe5ee0904b475e28`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2881f1743d8654c012028175c634e2a3d98599029ae7850dc73ce378497402d9`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 5.6 MB (5643475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:b42c1faed9f1c8792ade29fe0c800f92e0b7054484e460bc480c87f6abfdc897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1311227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8be5fd2cb884f2172e7be54cc8e6abcd551c96f75882772cc953899ce86c7dd9`

```dockerfile
```

-	Layers:
	-	`sha256:85426ef0a2b0045b3566f3fa8edb3a38b6b4b3b0e54d9c0063f1140ab20f960c`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 1.3 MB (1293593 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:711a975e1a07264aff45115fb99e2b7b17a207bd17fac7c13e361c15f2658700`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 17.6 KB (17634 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:c476a2f689d2740e0c0754e1272bf695bee66fa9ab938999c8a8af846e8fb9b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20881634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a9e295ab9a46785055b4e0da98d511d7fd6da2b7016489c904635d28e85583b`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:45 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:15:45 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:15:45 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:15:45 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:15:45 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:15:58 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:15:58 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:15:58 GMT
USER user
# Thu, 17 Sep 2026 21:15:58 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae933df803bacf8c084e10374e5fb17efc6dc469a1c269723c042fbffd4f6e3`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 10.8 MB (10755853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61c01f1857aca5ebd686aadf7ce1abfc7980a25886a207c836c964c34b92cf5a`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26f7534fe82539bd65d9ad721238b86c3a053c8463cf011655f5ecc68a688c01`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 5.9 MB (5938740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:c9a03a3de70e9c9efdf97a0f968405264539fb2f7247585d69479f2f37e745e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4174597976de1803acedcef5d9fc08e1e6557cf81aefa4dc0dab0789ae346d7c`

```dockerfile
```

-	Layers:
	-	`sha256:7f257bf4aa06d19bee25916f0521609480e3030dad28032f9234b1bc1e478a41`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 1.3 MB (1290639 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1d8bd238ea9b35ea2261719f47a1391dffc3231ced5bf22b2d4d49bfd369441`  
		Last Modified: Thu, 17 Sep 2026 21:16:04 GMT  
		Size: 17.7 KB (17682 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine` - linux; 386

```console
$ docker pull irssi@sha256:2b924580e400973b2e5bfccec33db44f0fc600775ecca198c4d486979ab6f179
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20174008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3043da6bea501d9a3578e871a72be45ed29e6be7c64628412bc6d17733d0ba2e`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:28 GMT
ADD alpine-minirootfs-3.23.6-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:28 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:20 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:15:20 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:15:20 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:15:20 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:15:20 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:15:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:15:37 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:15:37 GMT
USER user
# Thu, 17 Sep 2026 21:15:37 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:1f89eeb8219ece88ee6dd2e7cad6761d1e9da9e18f4b7929d9ee0052902df74a`  
		Last Modified: Thu, 17 Sep 2026 20:37:33 GMT  
		Size: 3.7 MB (3675111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29aaf2e9158fd3045c54b43c7c0d50b5411254859765f46cb69eca2b19de3aaf`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 10.4 MB (10352803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91e9333dbf68f5901d7b71bbed963069936b88313349cc499c11b73721c568ee`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb85a6f5fed6a44568eb45e3ec4fb05ad1a89d334917bb1dbf0bfd4c10d1da3`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 6.1 MB (6145109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:e659c8dbce319d971246c9313514dfbdd7cdd18f77506850442219327c410ece
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:970eab1321dd5cdd6bcb4c95da36680a0cce1bb1d060b5b3abbbc3e41970ae7b`

```dockerfile
```

-	Layers:
	-	`sha256:a737820df03c091577cb4c3e3546dfedfee3704c9c9bdb4e5e4ac2d6d24f311d`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 1.3 MB (1291140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65f0a418a065c600f5f2ee9ca0c7d36f37ce7829c84b8e698eb19059d1870086`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 17.4 KB (17443 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine` - linux; ppc64le

```console
$ docker pull irssi@sha256:3c21fd84717506251cee9f1e9c52ce8ae085359fafaa11a0bc1b482d1764b191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21222835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c521982adcf0b48471da508b12f825f7ca3b981b23886499a2346c1851844cc6`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:29:38 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:29:39 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:29:39 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:29:39 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:29:39 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:29:59 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:29:59 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:29:59 GMT
USER user
# Thu, 17 Sep 2026 21:29:59 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eaca6cbc21680e7450381817d3257e03f3c66072b1af3035282607cb48134b3`  
		Last Modified: Thu, 17 Sep 2026 21:30:13 GMT  
		Size: 11.0 MB (11043150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcb74b3e80a9875a556d204fab1a17995c1c0429cb7feff45f82d8e8e427d2dc`  
		Last Modified: Thu, 17 Sep 2026 21:30:12 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6da1a278e7525d6555459e46ae97274c4a6bf908743db15907d2065decc59461`  
		Last Modified: Thu, 17 Sep 2026 21:30:13 GMT  
		Size: 6.4 MB (6363930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:6269ade51584f714e2c348b17371845ff1f86c4fb4ded6969a96a3c144783aea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:827e87a32f2bf46bfbaf3a83aded52309895b8bc52b4f167a472f4c79ca6b537`

```dockerfile
```

-	Layers:
	-	`sha256:f8d99adaeb1b68fd898a82d85724aa88db1f05050ac7739f69e876937e28be24`  
		Last Modified: Thu, 17 Sep 2026 21:30:12 GMT  
		Size: 1.3 MB (1290592 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24524352a71888ddae73576c682ffd5e610a3013295cea88b9b76e4c68f19bae`  
		Last Modified: Thu, 17 Sep 2026 21:30:12 GMT  
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
$ docker pull irssi@sha256:dc3e4fd739b7e6db3d043bf5b634bbf8a86d7154e5de5a554849d6d97d91c316
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21291395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff1fcf3721d9fffc29f5ea301899b1673324764daafafdf85cd15317db8a4383`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:23 GMT
ADD alpine-minirootfs-3.23.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:23 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:24:34 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 22:24:34 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 22:24:34 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 22:24:34 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:24:34 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 22:24:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 22:24:54 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 22:24:54 GMT
USER user
# Thu, 17 Sep 2026 22:24:54 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:4387077d70188f8428b97ed5df25698ad5aa9b8967d00a98ebb627a3e08ae986`  
		Last Modified: Thu, 17 Sep 2026 21:38:32 GMT  
		Size: 3.7 MB (3713255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddd221b881b5b949a6dc1301910298d6aa08f7986d38ad5db32f3f32e1065626`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 11.4 MB (11372049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:924366936084f8cc80f060d9312e567de30ba85a50961bfe580c0e2ce4d8e384`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0950e4ddbb87ff9f2cbc92b51eff184a1b22a3400fa1bdc541a483c8d11085da`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 6.2 MB (6205106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:d2cd424c0daaf6953b4ed39cadd99a9c22a019966d42a82b9ec58683c54c3dd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c2153d984134a7c5d83a1bf956d0c1adca3a7a70d11aff1b75929d425aa2bca`

```dockerfile
```

-	Layers:
	-	`sha256:fd2f967f5698de38dc2d99fa163dcd0a1b6eaaf5c733713ba8060f8c925639e9`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 1.3 MB (1290534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:941c4e3a0a056a677f93b61d0a6e59d95d88d0b04fb38e20a6def104a643bc27`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1-alpine3.23`

```console
$ docker pull irssi@sha256:a9bcfb1c77f131d74d93d3c6a41478e3f6323d13732838c5d4340faf9c053b52
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
$ docker pull irssi@sha256:5d08b1e33043c4fcc026a8b1f43b1d08fb13c61d6ef1318ed192cb009a7524b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20737511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cecde90cd46e7bd82d9622d929750f8bab0215795b7d43e4315dc0b1d98bd56`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:12 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:16:12 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:16:12 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:16:12 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:16:12 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:16:26 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:16:26 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:16:26 GMT
USER user
# Thu, 17 Sep 2026 21:16:26 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d2a5eb32043a2941ca1a3a4904d78b51b0979308fc9cac394125c6927ae5f28`  
		Last Modified: Thu, 17 Sep 2026 21:16:33 GMT  
		Size: 10.8 MB (10820632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e384644f15960ef28c3053ba8f79a0da94d371bcc0436b0c8e3c575acaa42018`  
		Last Modified: Thu, 17 Sep 2026 21:16:32 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:918acbe934f17a4678e45cf05085530b1c0362151af95f6189aab596434a7c2d`  
		Last Modified: Thu, 17 Sep 2026 21:16:32 GMT  
		Size: 6.1 MB (6067387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:44e7298450848fe2f9415d2c5db16f99d83c88fb97916daf53f51da33d9a0790
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fceb077410e80ed9ad203356f541173660da7b9b6a8f210973fdbbad584e0d46`

```dockerfile
```

-	Layers:
	-	`sha256:15a7522aa7342a31eae1fc6977b4610a02d743a4f3d79f542b7d3baa0eab3609`  
		Last Modified: Thu, 17 Sep 2026 21:16:32 GMT  
		Size: 1.3 MB (1291185 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04862f3d2202f274997ae1af9322183d7bc55d1150b5824dc25bb0151c5d4556`  
		Last Modified: Thu, 17 Sep 2026 21:16:32 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine3.23` - linux; arm variant v6

```console
$ docker pull irssi@sha256:f92de27f07b39d4de8a9601aa186a37841747dec042f6744f5bfbbffae120aea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19475812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fd435a62b75d3e36b20941aba125aae1eaf0a586c639ad28a870a4155127392`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:20:55 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:20:56 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:20:56 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:20:56 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:20:56 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:21:11 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:21:11 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:21:11 GMT
USER user
# Thu, 17 Sep 2026 21:21:11 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e765e23cd63d395e16caec5fabb516f2c4561e0c2ab541e6edbd03480439cb7d`  
		Last Modified: Thu, 17 Sep 2026 21:21:16 GMT  
		Size: 10.0 MB (10024645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:324551f45eba4a0c467375f7d33db15172e045d0b2ad430f411b5f5c485197b2`  
		Last Modified: Thu, 17 Sep 2026 21:21:16 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fb06fdae2cc6198bc3f8bacb48606ed15cb469d8bf9288dfcb2f2dea225e7aa`  
		Last Modified: Thu, 17 Sep 2026 21:21:16 GMT  
		Size: 5.9 MB (5895257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:7a2df418924606188c590ffe74adb74bf8bcfe21c88f3dd345b21d3d98ad8adb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 KB (17423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0154da5c542b9360d347e52ea206e7aa8e1e24c771e4df5ec78246c49c4ece35`

```dockerfile
```

-	Layers:
	-	`sha256:9c9942688435ee195b4abb40f17369fd7015a9cedd64aef9dc04fb84c49b6c98`  
		Last Modified: Thu, 17 Sep 2026 21:21:16 GMT  
		Size: 17.4 KB (17423 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine3.23` - linux; arm variant v7

```console
$ docker pull irssi@sha256:3c078f077a56a2e4eb9a672993819dbe8c93ab0669b592204352498273ff9508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18768878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:907f6758b411b3c1ad9365cc2fb7f0471df79af6b611efde8c6e392fbb6e38c0`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:33 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:19:33 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:19:33 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:19:33 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:19:33 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:19:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:19:48 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:19:48 GMT
USER user
# Thu, 17 Sep 2026 21:19:48 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:203da8b0d73ce2ed493163d965a70dfc73b45c6a08b5f7ee65f453aa70eecbee`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 9.9 MB (9861506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b2f4fdc022b1e8173a616c74a69b41772e14294eb0a7fadfe5ee0904b475e28`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2881f1743d8654c012028175c634e2a3d98599029ae7850dc73ce378497402d9`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 5.6 MB (5643475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:b42c1faed9f1c8792ade29fe0c800f92e0b7054484e460bc480c87f6abfdc897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1311227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8be5fd2cb884f2172e7be54cc8e6abcd551c96f75882772cc953899ce86c7dd9`

```dockerfile
```

-	Layers:
	-	`sha256:85426ef0a2b0045b3566f3fa8edb3a38b6b4b3b0e54d9c0063f1140ab20f960c`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 1.3 MB (1293593 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:711a975e1a07264aff45115fb99e2b7b17a207bd17fac7c13e361c15f2658700`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 17.6 KB (17634 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:c476a2f689d2740e0c0754e1272bf695bee66fa9ab938999c8a8af846e8fb9b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20881634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a9e295ab9a46785055b4e0da98d511d7fd6da2b7016489c904635d28e85583b`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:45 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:15:45 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:15:45 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:15:45 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:15:45 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:15:58 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:15:58 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:15:58 GMT
USER user
# Thu, 17 Sep 2026 21:15:58 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae933df803bacf8c084e10374e5fb17efc6dc469a1c269723c042fbffd4f6e3`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 10.8 MB (10755853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61c01f1857aca5ebd686aadf7ce1abfc7980a25886a207c836c964c34b92cf5a`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26f7534fe82539bd65d9ad721238b86c3a053c8463cf011655f5ecc68a688c01`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 5.9 MB (5938740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:c9a03a3de70e9c9efdf97a0f968405264539fb2f7247585d69479f2f37e745e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4174597976de1803acedcef5d9fc08e1e6557cf81aefa4dc0dab0789ae346d7c`

```dockerfile
```

-	Layers:
	-	`sha256:7f257bf4aa06d19bee25916f0521609480e3030dad28032f9234b1bc1e478a41`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 1.3 MB (1290639 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1d8bd238ea9b35ea2261719f47a1391dffc3231ced5bf22b2d4d49bfd369441`  
		Last Modified: Thu, 17 Sep 2026 21:16:04 GMT  
		Size: 17.7 KB (17682 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine3.23` - linux; 386

```console
$ docker pull irssi@sha256:2b924580e400973b2e5bfccec33db44f0fc600775ecca198c4d486979ab6f179
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20174008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3043da6bea501d9a3578e871a72be45ed29e6be7c64628412bc6d17733d0ba2e`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:28 GMT
ADD alpine-minirootfs-3.23.6-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:28 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:20 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:15:20 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:15:20 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:15:20 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:15:20 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:15:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:15:37 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:15:37 GMT
USER user
# Thu, 17 Sep 2026 21:15:37 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:1f89eeb8219ece88ee6dd2e7cad6761d1e9da9e18f4b7929d9ee0052902df74a`  
		Last Modified: Thu, 17 Sep 2026 20:37:33 GMT  
		Size: 3.7 MB (3675111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29aaf2e9158fd3045c54b43c7c0d50b5411254859765f46cb69eca2b19de3aaf`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 10.4 MB (10352803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91e9333dbf68f5901d7b71bbed963069936b88313349cc499c11b73721c568ee`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb85a6f5fed6a44568eb45e3ec4fb05ad1a89d334917bb1dbf0bfd4c10d1da3`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 6.1 MB (6145109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:e659c8dbce319d971246c9313514dfbdd7cdd18f77506850442219327c410ece
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:970eab1321dd5cdd6bcb4c95da36680a0cce1bb1d060b5b3abbbc3e41970ae7b`

```dockerfile
```

-	Layers:
	-	`sha256:a737820df03c091577cb4c3e3546dfedfee3704c9c9bdb4e5e4ac2d6d24f311d`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 1.3 MB (1291140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65f0a418a065c600f5f2ee9ca0c7d36f37ce7829c84b8e698eb19059d1870086`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 17.4 KB (17443 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine3.23` - linux; ppc64le

```console
$ docker pull irssi@sha256:3c21fd84717506251cee9f1e9c52ce8ae085359fafaa11a0bc1b482d1764b191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21222835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c521982adcf0b48471da508b12f825f7ca3b981b23886499a2346c1851844cc6`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:29:38 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:29:39 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:29:39 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:29:39 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:29:39 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:29:59 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:29:59 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:29:59 GMT
USER user
# Thu, 17 Sep 2026 21:29:59 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eaca6cbc21680e7450381817d3257e03f3c66072b1af3035282607cb48134b3`  
		Last Modified: Thu, 17 Sep 2026 21:30:13 GMT  
		Size: 11.0 MB (11043150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcb74b3e80a9875a556d204fab1a17995c1c0429cb7feff45f82d8e8e427d2dc`  
		Last Modified: Thu, 17 Sep 2026 21:30:12 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6da1a278e7525d6555459e46ae97274c4a6bf908743db15907d2065decc59461`  
		Last Modified: Thu, 17 Sep 2026 21:30:13 GMT  
		Size: 6.4 MB (6363930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:6269ade51584f714e2c348b17371845ff1f86c4fb4ded6969a96a3c144783aea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:827e87a32f2bf46bfbaf3a83aded52309895b8bc52b4f167a472f4c79ca6b537`

```dockerfile
```

-	Layers:
	-	`sha256:f8d99adaeb1b68fd898a82d85724aa88db1f05050ac7739f69e876937e28be24`  
		Last Modified: Thu, 17 Sep 2026 21:30:12 GMT  
		Size: 1.3 MB (1290592 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24524352a71888ddae73576c682ffd5e610a3013295cea88b9b76e4c68f19bae`  
		Last Modified: Thu, 17 Sep 2026 21:30:12 GMT  
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
$ docker pull irssi@sha256:dc3e4fd739b7e6db3d043bf5b634bbf8a86d7154e5de5a554849d6d97d91c316
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21291395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff1fcf3721d9fffc29f5ea301899b1673324764daafafdf85cd15317db8a4383`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:23 GMT
ADD alpine-minirootfs-3.23.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:23 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:24:34 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 22:24:34 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 22:24:34 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 22:24:34 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:24:34 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 22:24:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 22:24:54 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 22:24:54 GMT
USER user
# Thu, 17 Sep 2026 22:24:54 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:4387077d70188f8428b97ed5df25698ad5aa9b8967d00a98ebb627a3e08ae986`  
		Last Modified: Thu, 17 Sep 2026 21:38:32 GMT  
		Size: 3.7 MB (3713255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddd221b881b5b949a6dc1301910298d6aa08f7986d38ad5db32f3f32e1065626`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 11.4 MB (11372049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:924366936084f8cc80f060d9312e567de30ba85a50961bfe580c0e2ce4d8e384`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0950e4ddbb87ff9f2cbc92b51eff184a1b22a3400fa1bdc541a483c8d11085da`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 6.2 MB (6205106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:d2cd424c0daaf6953b4ed39cadd99a9c22a019966d42a82b9ec58683c54c3dd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c2153d984134a7c5d83a1bf956d0c1adca3a7a70d11aff1b75929d425aa2bca`

```dockerfile
```

-	Layers:
	-	`sha256:fd2f967f5698de38dc2d99fa163dcd0a1b6eaaf5c733713ba8060f8c925639e9`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 1.3 MB (1290534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:941c4e3a0a056a677f93b61d0a6e59d95d88d0b04fb38e20a6def104a643bc27`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1-trixie`

```console
$ docker pull irssi@sha256:896f7c97996c24dbb497d15916b623e3ddd42871c105b76acf3b3d7a434d59ff
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
$ docker pull irssi@sha256:d783491026f486a57dc57b38a15fa67237affadbae5a709061ed333d80a43c3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53923388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8428df78f5248281836be253b31b8572c7eb5b403853ddb4909110cfc1f5ceec`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:19:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:19:00 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:19:00 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:19:00 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:19:00 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:19:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:19:37 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:19:37 GMT
USER user
# Sat, 19 Sep 2026 00:19:37 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd5019de77905dc8d5f19f256c08f4ce3332c324d9bfa3be0660ea7041861a72`  
		Last Modified: Sat, 19 Sep 2026 00:19:48 GMT  
		Size: 19.2 MB (19220216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a7da13254dd514292a1604cdc7d5fb553b77f9e5b7ae592ca74f9d7ca7dd4f4`  
		Last Modified: Sat, 19 Sep 2026 00:19:47 GMT  
		Size: 3.3 KB (3331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc6296f22bba50ac1c34b44a057eb91a3c2dc9e93a5827f4fab75172463a695`  
		Last Modified: Sat, 19 Sep 2026 00:19:48 GMT  
		Size: 4.9 MB (4869391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:2ca15c28486a14058dff386acc645b41ba516d8ecccc2bb62c502cb07f55cc2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5613210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45a51eba4210f84ee5eeddbd13d8a9b5a2c088470d9ec2fb6e0b68bcd67b0758`

```dockerfile
```

-	Layers:
	-	`sha256:8cb4bfd2f3979c228d73b909edce84cc582971ee2f87a5f6d9e3027f9d99a48a`  
		Last Modified: Sat, 19 Sep 2026 00:19:48 GMT  
		Size: 5.6 MB (5594559 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6db124ea92ae621b8ced9af8f0617adf48bb5a97389493722dfe7ccd00055f5a`  
		Last Modified: Sat, 19 Sep 2026 00:19:47 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; arm variant v5

```console
$ docker pull irssi@sha256:7575a2e50d152e497a747afac9d218d9190905d98513da2a57c393388c2f4aa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50969610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ae6a8975bb891ebcc2c73f47b4b3b8d0db3929e861863282e95d9531612718b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:17:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:17:00 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:17:00 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:17:00 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:17:00 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:17:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:17:48 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:17:48 GMT
USER user
# Tue, 25 Aug 2026 00:17:48 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a20095955c6409eff232901e863164eedbe3c59d00d5c6295039a5ed00942a`  
		Last Modified: Tue, 25 Aug 2026 00:17:59 GMT  
		Size: 18.3 MB (18286841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8b205f3d41a8416d2a4289a4fb1c9898102f1402742a2032e5529e8c712c97`  
		Last Modified: Tue, 25 Aug 2026 00:17:58 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206a4895e4addc7283cc8b4991d097a88a0132535abf16d53c3380986995e67a`  
		Last Modified: Tue, 25 Aug 2026 00:17:59 GMT  
		Size: 4.7 MB (4710461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:7aa91950e84e984844a9232b917ab9356c15b059f7777362a5bc722ba178361a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5605151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ba0dfb7a4cf38384fa2a8660e3ff84c977d2ca1a81698158b08dba37304662f`

```dockerfile
```

-	Layers:
	-	`sha256:51f2eba6ad1eb8f5f1fefbbe8b3d696f961d641d041fac671e4e4d687d46c1e5`  
		Last Modified: Tue, 25 Aug 2026 00:17:59 GMT  
		Size: 5.6 MB (5586362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa6dbc2757f075633c376f1333bba7144229f4fb68083c1a6f7519c486484dbe`  
		Last Modified: Tue, 25 Aug 2026 00:17:58 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; arm variant v7

```console
$ docker pull irssi@sha256:3f9f78457512ff79c7fbc925e0680574a32d574c96c34cabb66b988f998a680f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48733260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:903f9529a916d81ddbc0550399d99c4ff4e94703a1fea532abe0021b8e91e55c`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:19:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:19:45 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:19:45 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:19:45 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:19:45 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:20:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:20:27 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:20:27 GMT
USER user
# Sat, 19 Sep 2026 00:20:27 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cdeed6e44a97b217c469937244586e101c9aa27c88d527816d0088418389c42`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 17.9 MB (17919592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b364f2058c8e95eba2ab686d68fbab989b078f1835e7a87bafbf966a63b470ba`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 3.3 KB (3330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb3d3a39e432a9437dd8c77dedc7b4f9f13162be07f89c7cea80b84adef9310f`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 4.6 MB (4561378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:57189829e7b12493ac348139fbdfc8a8c133d1ccaeca0888900fb53165ed7d52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5613919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86708c0cfd3d99bd38cee1cc43f33b816d810f6186b942bca93c3d61f1d90184`

```dockerfile
```

-	Layers:
	-	`sha256:a08c50c789476bf7d7155478b7317157f61db197c65891d3d7df44761a1051c0`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 5.6 MB (5595130 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94441f9b18f2d430566ebd2f923223979d5178f8a6497c518988120709ed22f2`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:4689e93e0971c573d0ac56c217492b2b61c614a2fbe046a3ced8df4a765854db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (54032817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4254d224c2f411199a5afbb7c7d3bf96e5bb4829b0797dd8295ad0b1cfe19155`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:19:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:19:08 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:19:08 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:19:08 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:19:08 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:19:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:19:46 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:19:46 GMT
USER user
# Sat, 19 Sep 2026 00:19:46 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daacf48909065564644359a01e5015c67043c04e5d36f679401e98859b84a8c6`  
		Last Modified: Sat, 19 Sep 2026 00:19:58 GMT  
		Size: 19.1 MB (19057651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6db475b78849c61c3a8dc60553b9ad104c506e9aa0390f9a280fd17abbdc7a45`  
		Last Modified: Sat, 19 Sep 2026 00:19:57 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:995e0a5db82d4abc1e50d7b99805219be7a82c7bce43b8d5d99ee7889fc56782`  
		Last Modified: Sat, 19 Sep 2026 00:19:57 GMT  
		Size: 4.8 MB (4782111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:d8ff022a5012d2152bf1a13cc8cfdd8cd3e87f6447cbff3a85435163f8983588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5619868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7f3608c81c2a75cd40a2a3a1f6cab2de28b8eb386adc1859241c5180789ff9f`

```dockerfile
```

-	Layers:
	-	`sha256:6a95218acd333010c42ab80006172dc9cab99ca5b142d053fd23e6ebb06fce91`  
		Last Modified: Sat, 19 Sep 2026 00:19:57 GMT  
		Size: 5.6 MB (5601035 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef879536f60445669db5f38eda2cc7ade471d30cf3a1df8094aedf3e8b3033cf`  
		Last Modified: Sat, 19 Sep 2026 00:19:57 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; 386

```console
$ docker pull irssi@sha256:f20e61041e82b65ff3432782eba56e3eba34ab08ccd0dcb995155443c74ec9df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54947736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9091e60a388f0245755000598a4dd6265289cdaeacb0332891ce4084fb5c061`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:18:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:18:51 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:18:51 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:18:51 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:18:51 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:19:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:19:32 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:19:32 GMT
USER user
# Sat, 19 Sep 2026 00:19:32 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a6206be0fddcec7e517d667f6453a789bccba615d2bc235b8b2527e8c15f0b5`  
		Last Modified: Sat, 19 Sep 2026 00:19:43 GMT  
		Size: 18.7 MB (18734074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a793c7384f3ecc482ee6918007fd1b8d5af97c0e12f84096c5a2856e2ee5a9d0`  
		Last Modified: Sat, 19 Sep 2026 00:19:42 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c79efed34f59e490d25cf1dcd92b9715bcf1a4043656551c9b0f753d13c468`  
		Last Modified: Sat, 19 Sep 2026 00:19:42 GMT  
		Size: 4.9 MB (4869903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:3cfe2c2c63f1695da2e64aacd2e12283f31c8b13c1bf413b3dc5c3feab5227bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5609277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f418e8af32b34540d54c818e2884a6b82368bbe1d01fd2e5ccd43ccac7d16729`

```dockerfile
```

-	Layers:
	-	`sha256:88598e3c306002be9ad53853ca066789895e6772cbfceba2f9705ffb79f01b19`  
		Last Modified: Sat, 19 Sep 2026 00:19:42 GMT  
		Size: 5.6 MB (5590682 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a403e58a16746a861fffad729aa903e7790dbc606b71ed5cd55733abf328ea11`  
		Last Modified: Sat, 19 Sep 2026 00:19:42 GMT  
		Size: 18.6 KB (18595 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; ppc64le

```console
$ docker pull irssi@sha256:dc0b305706e9cea511738fec4c5f266f5cd4dc2a7755f533069c56af172dd213
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58293193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3bffcda877547a4f3b146f55b45514f7d1789a62bf172c6899fc4eb2607d3df`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:22:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:22:43 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:22:43 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:22:43 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:22:43 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:23:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:23:54 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:23:54 GMT
USER user
# Sat, 19 Sep 2026 00:23:54 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e18aeb6a6a0e7e01e0c7c54485dc97e9b1cf53dc39e836f3feeb143f0c67c8f1`  
		Last Modified: Sat, 19 Sep 2026 00:24:15 GMT  
		Size: 19.5 MB (19548636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6614c0a3388ab533845e85af010bc871bfcfd79d8584a3ca98475e2c9d8b9bab`  
		Last Modified: Sat, 19 Sep 2026 00:24:14 GMT  
		Size: 3.3 KB (3330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18f060deef99a40f955af5b4bf92519b32aca576847a34aad52d230e40d50255`  
		Last Modified: Sat, 19 Sep 2026 00:24:15 GMT  
		Size: 5.1 MB (5099960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:c40487a7766c84f4fa57eff5a5a40445c6d0d621e3d433349ae59711df40fb35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5620313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:206d53359d9f9318f8ddc8958ce68a471e757f1f71242f7db19db052a052423b`

```dockerfile
```

-	Layers:
	-	`sha256:99f31fb755a329d01b0b6afdacbc16103e1c7132ae47a071580ff31c00954f74`  
		Last Modified: Sat, 19 Sep 2026 00:24:15 GMT  
		Size: 5.6 MB (5601590 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87a83d06b06a305b79432d1a9abe9a35425b601026109f1c138ef99225733914`  
		Last Modified: Sat, 19 Sep 2026 00:24:15 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; riscv64

```console
$ docker pull irssi@sha256:63fd5c7be05433447cb3ac611913743c8a2aff559fdd99fbc6e3657c9fc3c416
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51713551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:995429fbf593b610b569eaee31279d838dd4d000d2a12daa8cb17e1b690a1377`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:33:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:33:17 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 02:33:17 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 02:33:17 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 02:33:17 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 02:40:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 02:40:02 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 02:40:02 GMT
USER user
# Tue, 25 Aug 2026 02:40:02 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70e669f37eaed3b6cc866821a03bf1c8152fa8185a058cee5162f993ce7f1b41`  
		Last Modified: Tue, 25 Aug 2026 02:41:56 GMT  
		Size: 18.6 MB (18552281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:947a6ddabc323157585106f2a874a9074c7bc7ec46cd92165d36f3d43ac23631`  
		Last Modified: Tue, 25 Aug 2026 02:41:51 GMT  
		Size: 3.3 KB (3333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a17014c19658b15934711c82546d2c1304652ba25351d995dcde4afe46730e5b`  
		Last Modified: Tue, 25 Aug 2026 02:41:53 GMT  
		Size: 4.9 MB (4861442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:4ac5ed2e7cbc4b525b26c6c02ffcfe1b1752d6be5b29cfa23a4d53e9d4517272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5598839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3721b0521fb40eb75f4566c3ee55d346e9dbb817982aecb1bc3511dd15f5800f`

```dockerfile
```

-	Layers:
	-	`sha256:1a12298551bc406171329277ad84ada0c72efc653417fe7699a9989b8f7388de`  
		Last Modified: Tue, 25 Aug 2026 02:41:54 GMT  
		Size: 5.6 MB (5580116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d4f700030661f47bb0b75cc2cec2b2b1aedf19adbfdbbee75f7abec81deeecf`  
		Last Modified: Tue, 25 Aug 2026 02:41:52 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; s390x

```console
$ docker pull irssi@sha256:5f02011f5185ee6f434826a48d9d63f19232c95fe148e903ce9e46cb7226c1d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54546324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05192773879cd222cc802f0cd3702e4a145f67c100885dfe1c6655a598e70507`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:18:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:18:42 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:18:42 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:18:42 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:18:42 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:19:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:19:31 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:19:31 GMT
USER user
# Tue, 25 Aug 2026 00:19:31 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd37501b3f5271a57e84d41eda4fcfc495913c4611a085e31646a7d8824d0ed0`  
		Last Modified: Tue, 25 Aug 2026 00:19:58 GMT  
		Size: 19.8 MB (19768051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b23c55e2803c63fadea10691613a38ce82f75e170940185db91c1ed5a89a6dc2`  
		Last Modified: Tue, 25 Aug 2026 00:19:56 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54af3f574ac1b41f1028dff19e949c568e6068f37e9462f83c79b7a18a4a4aa3`  
		Last Modified: Tue, 25 Aug 2026 00:19:57 GMT  
		Size: 4.9 MB (4907188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:66321b524e066959c2cd65464eb6a30c1aa82ac6fe568f51d3c474cdef18f7de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe635615631c66e27a63d001537764edc875ab813bb9901c8001acaab2124f56`

```dockerfile
```

-	Layers:
	-	`sha256:212141ad5435723e922d6d1f9c1ea7498b7348dd617f41e2f42eef258042ed5d`  
		Last Modified: Tue, 25 Aug 2026 00:19:57 GMT  
		Size: 5.6 MB (5589718 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64b95e9b60de85b295e74cd35715d1c53f955433fd9ec72ded782b9505146937`  
		Last Modified: Tue, 25 Aug 2026 00:19:56 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1.4`

```console
$ docker pull irssi@sha256:896f7c97996c24dbb497d15916b623e3ddd42871c105b76acf3b3d7a434d59ff
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
$ docker pull irssi@sha256:d783491026f486a57dc57b38a15fa67237affadbae5a709061ed333d80a43c3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53923388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8428df78f5248281836be253b31b8572c7eb5b403853ddb4909110cfc1f5ceec`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:19:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:19:00 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:19:00 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:19:00 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:19:00 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:19:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:19:37 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:19:37 GMT
USER user
# Sat, 19 Sep 2026 00:19:37 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd5019de77905dc8d5f19f256c08f4ce3332c324d9bfa3be0660ea7041861a72`  
		Last Modified: Sat, 19 Sep 2026 00:19:48 GMT  
		Size: 19.2 MB (19220216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a7da13254dd514292a1604cdc7d5fb553b77f9e5b7ae592ca74f9d7ca7dd4f4`  
		Last Modified: Sat, 19 Sep 2026 00:19:47 GMT  
		Size: 3.3 KB (3331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc6296f22bba50ac1c34b44a057eb91a3c2dc9e93a5827f4fab75172463a695`  
		Last Modified: Sat, 19 Sep 2026 00:19:48 GMT  
		Size: 4.9 MB (4869391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:2ca15c28486a14058dff386acc645b41ba516d8ecccc2bb62c502cb07f55cc2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5613210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45a51eba4210f84ee5eeddbd13d8a9b5a2c088470d9ec2fb6e0b68bcd67b0758`

```dockerfile
```

-	Layers:
	-	`sha256:8cb4bfd2f3979c228d73b909edce84cc582971ee2f87a5f6d9e3027f9d99a48a`  
		Last Modified: Sat, 19 Sep 2026 00:19:48 GMT  
		Size: 5.6 MB (5594559 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6db124ea92ae621b8ced9af8f0617adf48bb5a97389493722dfe7ccd00055f5a`  
		Last Modified: Sat, 19 Sep 2026 00:19:47 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; arm variant v5

```console
$ docker pull irssi@sha256:7575a2e50d152e497a747afac9d218d9190905d98513da2a57c393388c2f4aa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50969610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ae6a8975bb891ebcc2c73f47b4b3b8d0db3929e861863282e95d9531612718b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:17:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:17:00 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:17:00 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:17:00 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:17:00 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:17:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:17:48 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:17:48 GMT
USER user
# Tue, 25 Aug 2026 00:17:48 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a20095955c6409eff232901e863164eedbe3c59d00d5c6295039a5ed00942a`  
		Last Modified: Tue, 25 Aug 2026 00:17:59 GMT  
		Size: 18.3 MB (18286841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8b205f3d41a8416d2a4289a4fb1c9898102f1402742a2032e5529e8c712c97`  
		Last Modified: Tue, 25 Aug 2026 00:17:58 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206a4895e4addc7283cc8b4991d097a88a0132535abf16d53c3380986995e67a`  
		Last Modified: Tue, 25 Aug 2026 00:17:59 GMT  
		Size: 4.7 MB (4710461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:7aa91950e84e984844a9232b917ab9356c15b059f7777362a5bc722ba178361a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5605151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ba0dfb7a4cf38384fa2a8660e3ff84c977d2ca1a81698158b08dba37304662f`

```dockerfile
```

-	Layers:
	-	`sha256:51f2eba6ad1eb8f5f1fefbbe8b3d696f961d641d041fac671e4e4d687d46c1e5`  
		Last Modified: Tue, 25 Aug 2026 00:17:59 GMT  
		Size: 5.6 MB (5586362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa6dbc2757f075633c376f1333bba7144229f4fb68083c1a6f7519c486484dbe`  
		Last Modified: Tue, 25 Aug 2026 00:17:58 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; arm variant v7

```console
$ docker pull irssi@sha256:3f9f78457512ff79c7fbc925e0680574a32d574c96c34cabb66b988f998a680f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48733260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:903f9529a916d81ddbc0550399d99c4ff4e94703a1fea532abe0021b8e91e55c`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:19:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:19:45 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:19:45 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:19:45 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:19:45 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:20:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:20:27 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:20:27 GMT
USER user
# Sat, 19 Sep 2026 00:20:27 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cdeed6e44a97b217c469937244586e101c9aa27c88d527816d0088418389c42`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 17.9 MB (17919592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b364f2058c8e95eba2ab686d68fbab989b078f1835e7a87bafbf966a63b470ba`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 3.3 KB (3330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb3d3a39e432a9437dd8c77dedc7b4f9f13162be07f89c7cea80b84adef9310f`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 4.6 MB (4561378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:57189829e7b12493ac348139fbdfc8a8c133d1ccaeca0888900fb53165ed7d52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5613919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86708c0cfd3d99bd38cee1cc43f33b816d810f6186b942bca93c3d61f1d90184`

```dockerfile
```

-	Layers:
	-	`sha256:a08c50c789476bf7d7155478b7317157f61db197c65891d3d7df44761a1051c0`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 5.6 MB (5595130 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94441f9b18f2d430566ebd2f923223979d5178f8a6497c518988120709ed22f2`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:4689e93e0971c573d0ac56c217492b2b61c614a2fbe046a3ced8df4a765854db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (54032817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4254d224c2f411199a5afbb7c7d3bf96e5bb4829b0797dd8295ad0b1cfe19155`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:19:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:19:08 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:19:08 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:19:08 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:19:08 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:19:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:19:46 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:19:46 GMT
USER user
# Sat, 19 Sep 2026 00:19:46 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daacf48909065564644359a01e5015c67043c04e5d36f679401e98859b84a8c6`  
		Last Modified: Sat, 19 Sep 2026 00:19:58 GMT  
		Size: 19.1 MB (19057651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6db475b78849c61c3a8dc60553b9ad104c506e9aa0390f9a280fd17abbdc7a45`  
		Last Modified: Sat, 19 Sep 2026 00:19:57 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:995e0a5db82d4abc1e50d7b99805219be7a82c7bce43b8d5d99ee7889fc56782`  
		Last Modified: Sat, 19 Sep 2026 00:19:57 GMT  
		Size: 4.8 MB (4782111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:d8ff022a5012d2152bf1a13cc8cfdd8cd3e87f6447cbff3a85435163f8983588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5619868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7f3608c81c2a75cd40a2a3a1f6cab2de28b8eb386adc1859241c5180789ff9f`

```dockerfile
```

-	Layers:
	-	`sha256:6a95218acd333010c42ab80006172dc9cab99ca5b142d053fd23e6ebb06fce91`  
		Last Modified: Sat, 19 Sep 2026 00:19:57 GMT  
		Size: 5.6 MB (5601035 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef879536f60445669db5f38eda2cc7ade471d30cf3a1df8094aedf3e8b3033cf`  
		Last Modified: Sat, 19 Sep 2026 00:19:57 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; 386

```console
$ docker pull irssi@sha256:f20e61041e82b65ff3432782eba56e3eba34ab08ccd0dcb995155443c74ec9df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54947736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9091e60a388f0245755000598a4dd6265289cdaeacb0332891ce4084fb5c061`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:18:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:18:51 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:18:51 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:18:51 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:18:51 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:19:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:19:32 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:19:32 GMT
USER user
# Sat, 19 Sep 2026 00:19:32 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a6206be0fddcec7e517d667f6453a789bccba615d2bc235b8b2527e8c15f0b5`  
		Last Modified: Sat, 19 Sep 2026 00:19:43 GMT  
		Size: 18.7 MB (18734074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a793c7384f3ecc482ee6918007fd1b8d5af97c0e12f84096c5a2856e2ee5a9d0`  
		Last Modified: Sat, 19 Sep 2026 00:19:42 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c79efed34f59e490d25cf1dcd92b9715bcf1a4043656551c9b0f753d13c468`  
		Last Modified: Sat, 19 Sep 2026 00:19:42 GMT  
		Size: 4.9 MB (4869903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:3cfe2c2c63f1695da2e64aacd2e12283f31c8b13c1bf413b3dc5c3feab5227bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5609277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f418e8af32b34540d54c818e2884a6b82368bbe1d01fd2e5ccd43ccac7d16729`

```dockerfile
```

-	Layers:
	-	`sha256:88598e3c306002be9ad53853ca066789895e6772cbfceba2f9705ffb79f01b19`  
		Last Modified: Sat, 19 Sep 2026 00:19:42 GMT  
		Size: 5.6 MB (5590682 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a403e58a16746a861fffad729aa903e7790dbc606b71ed5cd55733abf328ea11`  
		Last Modified: Sat, 19 Sep 2026 00:19:42 GMT  
		Size: 18.6 KB (18595 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; ppc64le

```console
$ docker pull irssi@sha256:dc0b305706e9cea511738fec4c5f266f5cd4dc2a7755f533069c56af172dd213
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58293193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3bffcda877547a4f3b146f55b45514f7d1789a62bf172c6899fc4eb2607d3df`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:22:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:22:43 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:22:43 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:22:43 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:22:43 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:23:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:23:54 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:23:54 GMT
USER user
# Sat, 19 Sep 2026 00:23:54 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e18aeb6a6a0e7e01e0c7c54485dc97e9b1cf53dc39e836f3feeb143f0c67c8f1`  
		Last Modified: Sat, 19 Sep 2026 00:24:15 GMT  
		Size: 19.5 MB (19548636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6614c0a3388ab533845e85af010bc871bfcfd79d8584a3ca98475e2c9d8b9bab`  
		Last Modified: Sat, 19 Sep 2026 00:24:14 GMT  
		Size: 3.3 KB (3330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18f060deef99a40f955af5b4bf92519b32aca576847a34aad52d230e40d50255`  
		Last Modified: Sat, 19 Sep 2026 00:24:15 GMT  
		Size: 5.1 MB (5099960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:c40487a7766c84f4fa57eff5a5a40445c6d0d621e3d433349ae59711df40fb35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5620313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:206d53359d9f9318f8ddc8958ce68a471e757f1f71242f7db19db052a052423b`

```dockerfile
```

-	Layers:
	-	`sha256:99f31fb755a329d01b0b6afdacbc16103e1c7132ae47a071580ff31c00954f74`  
		Last Modified: Sat, 19 Sep 2026 00:24:15 GMT  
		Size: 5.6 MB (5601590 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87a83d06b06a305b79432d1a9abe9a35425b601026109f1c138ef99225733914`  
		Last Modified: Sat, 19 Sep 2026 00:24:15 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; riscv64

```console
$ docker pull irssi@sha256:63fd5c7be05433447cb3ac611913743c8a2aff559fdd99fbc6e3657c9fc3c416
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51713551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:995429fbf593b610b569eaee31279d838dd4d000d2a12daa8cb17e1b690a1377`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:33:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:33:17 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 02:33:17 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 02:33:17 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 02:33:17 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 02:40:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 02:40:02 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 02:40:02 GMT
USER user
# Tue, 25 Aug 2026 02:40:02 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70e669f37eaed3b6cc866821a03bf1c8152fa8185a058cee5162f993ce7f1b41`  
		Last Modified: Tue, 25 Aug 2026 02:41:56 GMT  
		Size: 18.6 MB (18552281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:947a6ddabc323157585106f2a874a9074c7bc7ec46cd92165d36f3d43ac23631`  
		Last Modified: Tue, 25 Aug 2026 02:41:51 GMT  
		Size: 3.3 KB (3333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a17014c19658b15934711c82546d2c1304652ba25351d995dcde4afe46730e5b`  
		Last Modified: Tue, 25 Aug 2026 02:41:53 GMT  
		Size: 4.9 MB (4861442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:4ac5ed2e7cbc4b525b26c6c02ffcfe1b1752d6be5b29cfa23a4d53e9d4517272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5598839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3721b0521fb40eb75f4566c3ee55d346e9dbb817982aecb1bc3511dd15f5800f`

```dockerfile
```

-	Layers:
	-	`sha256:1a12298551bc406171329277ad84ada0c72efc653417fe7699a9989b8f7388de`  
		Last Modified: Tue, 25 Aug 2026 02:41:54 GMT  
		Size: 5.6 MB (5580116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d4f700030661f47bb0b75cc2cec2b2b1aedf19adbfdbbee75f7abec81deeecf`  
		Last Modified: Tue, 25 Aug 2026 02:41:52 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; s390x

```console
$ docker pull irssi@sha256:5f02011f5185ee6f434826a48d9d63f19232c95fe148e903ce9e46cb7226c1d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54546324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05192773879cd222cc802f0cd3702e4a145f67c100885dfe1c6655a598e70507`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:18:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:18:42 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:18:42 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:18:42 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:18:42 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:19:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:19:31 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:19:31 GMT
USER user
# Tue, 25 Aug 2026 00:19:31 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd37501b3f5271a57e84d41eda4fcfc495913c4611a085e31646a7d8824d0ed0`  
		Last Modified: Tue, 25 Aug 2026 00:19:58 GMT  
		Size: 19.8 MB (19768051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b23c55e2803c63fadea10691613a38ce82f75e170940185db91c1ed5a89a6dc2`  
		Last Modified: Tue, 25 Aug 2026 00:19:56 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54af3f574ac1b41f1028dff19e949c568e6068f37e9462f83c79b7a18a4a4aa3`  
		Last Modified: Tue, 25 Aug 2026 00:19:57 GMT  
		Size: 4.9 MB (4907188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:66321b524e066959c2cd65464eb6a30c1aa82ac6fe568f51d3c474cdef18f7de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe635615631c66e27a63d001537764edc875ab813bb9901c8001acaab2124f56`

```dockerfile
```

-	Layers:
	-	`sha256:212141ad5435723e922d6d1f9c1ea7498b7348dd617f41e2f42eef258042ed5d`  
		Last Modified: Tue, 25 Aug 2026 00:19:57 GMT  
		Size: 5.6 MB (5589718 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64b95e9b60de85b295e74cd35715d1c53f955433fd9ec72ded782b9505146937`  
		Last Modified: Tue, 25 Aug 2026 00:19:56 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1.4-alpine`

```console
$ docker pull irssi@sha256:a9bcfb1c77f131d74d93d3c6a41478e3f6323d13732838c5d4340faf9c053b52
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
$ docker pull irssi@sha256:5d08b1e33043c4fcc026a8b1f43b1d08fb13c61d6ef1318ed192cb009a7524b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20737511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cecde90cd46e7bd82d9622d929750f8bab0215795b7d43e4315dc0b1d98bd56`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:12 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:16:12 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:16:12 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:16:12 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:16:12 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:16:26 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:16:26 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:16:26 GMT
USER user
# Thu, 17 Sep 2026 21:16:26 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d2a5eb32043a2941ca1a3a4904d78b51b0979308fc9cac394125c6927ae5f28`  
		Last Modified: Thu, 17 Sep 2026 21:16:33 GMT  
		Size: 10.8 MB (10820632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e384644f15960ef28c3053ba8f79a0da94d371bcc0436b0c8e3c575acaa42018`  
		Last Modified: Thu, 17 Sep 2026 21:16:32 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:918acbe934f17a4678e45cf05085530b1c0362151af95f6189aab596434a7c2d`  
		Last Modified: Thu, 17 Sep 2026 21:16:32 GMT  
		Size: 6.1 MB (6067387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:44e7298450848fe2f9415d2c5db16f99d83c88fb97916daf53f51da33d9a0790
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fceb077410e80ed9ad203356f541173660da7b9b6a8f210973fdbbad584e0d46`

```dockerfile
```

-	Layers:
	-	`sha256:15a7522aa7342a31eae1fc6977b4610a02d743a4f3d79f542b7d3baa0eab3609`  
		Last Modified: Thu, 17 Sep 2026 21:16:32 GMT  
		Size: 1.3 MB (1291185 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04862f3d2202f274997ae1af9322183d7bc55d1150b5824dc25bb0151c5d4556`  
		Last Modified: Thu, 17 Sep 2026 21:16:32 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine` - linux; arm variant v6

```console
$ docker pull irssi@sha256:f92de27f07b39d4de8a9601aa186a37841747dec042f6744f5bfbbffae120aea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19475812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fd435a62b75d3e36b20941aba125aae1eaf0a586c639ad28a870a4155127392`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:20:55 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:20:56 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:20:56 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:20:56 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:20:56 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:21:11 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:21:11 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:21:11 GMT
USER user
# Thu, 17 Sep 2026 21:21:11 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e765e23cd63d395e16caec5fabb516f2c4561e0c2ab541e6edbd03480439cb7d`  
		Last Modified: Thu, 17 Sep 2026 21:21:16 GMT  
		Size: 10.0 MB (10024645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:324551f45eba4a0c467375f7d33db15172e045d0b2ad430f411b5f5c485197b2`  
		Last Modified: Thu, 17 Sep 2026 21:21:16 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fb06fdae2cc6198bc3f8bacb48606ed15cb469d8bf9288dfcb2f2dea225e7aa`  
		Last Modified: Thu, 17 Sep 2026 21:21:16 GMT  
		Size: 5.9 MB (5895257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:7a2df418924606188c590ffe74adb74bf8bcfe21c88f3dd345b21d3d98ad8adb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 KB (17423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0154da5c542b9360d347e52ea206e7aa8e1e24c771e4df5ec78246c49c4ece35`

```dockerfile
```

-	Layers:
	-	`sha256:9c9942688435ee195b4abb40f17369fd7015a9cedd64aef9dc04fb84c49b6c98`  
		Last Modified: Thu, 17 Sep 2026 21:21:16 GMT  
		Size: 17.4 KB (17423 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine` - linux; arm variant v7

```console
$ docker pull irssi@sha256:3c078f077a56a2e4eb9a672993819dbe8c93ab0669b592204352498273ff9508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18768878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:907f6758b411b3c1ad9365cc2fb7f0471df79af6b611efde8c6e392fbb6e38c0`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:33 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:19:33 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:19:33 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:19:33 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:19:33 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:19:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:19:48 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:19:48 GMT
USER user
# Thu, 17 Sep 2026 21:19:48 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:203da8b0d73ce2ed493163d965a70dfc73b45c6a08b5f7ee65f453aa70eecbee`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 9.9 MB (9861506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b2f4fdc022b1e8173a616c74a69b41772e14294eb0a7fadfe5ee0904b475e28`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2881f1743d8654c012028175c634e2a3d98599029ae7850dc73ce378497402d9`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 5.6 MB (5643475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:b42c1faed9f1c8792ade29fe0c800f92e0b7054484e460bc480c87f6abfdc897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1311227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8be5fd2cb884f2172e7be54cc8e6abcd551c96f75882772cc953899ce86c7dd9`

```dockerfile
```

-	Layers:
	-	`sha256:85426ef0a2b0045b3566f3fa8edb3a38b6b4b3b0e54d9c0063f1140ab20f960c`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 1.3 MB (1293593 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:711a975e1a07264aff45115fb99e2b7b17a207bd17fac7c13e361c15f2658700`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 17.6 KB (17634 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:c476a2f689d2740e0c0754e1272bf695bee66fa9ab938999c8a8af846e8fb9b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20881634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a9e295ab9a46785055b4e0da98d511d7fd6da2b7016489c904635d28e85583b`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:45 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:15:45 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:15:45 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:15:45 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:15:45 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:15:58 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:15:58 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:15:58 GMT
USER user
# Thu, 17 Sep 2026 21:15:58 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae933df803bacf8c084e10374e5fb17efc6dc469a1c269723c042fbffd4f6e3`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 10.8 MB (10755853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61c01f1857aca5ebd686aadf7ce1abfc7980a25886a207c836c964c34b92cf5a`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26f7534fe82539bd65d9ad721238b86c3a053c8463cf011655f5ecc68a688c01`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 5.9 MB (5938740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:c9a03a3de70e9c9efdf97a0f968405264539fb2f7247585d69479f2f37e745e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4174597976de1803acedcef5d9fc08e1e6557cf81aefa4dc0dab0789ae346d7c`

```dockerfile
```

-	Layers:
	-	`sha256:7f257bf4aa06d19bee25916f0521609480e3030dad28032f9234b1bc1e478a41`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 1.3 MB (1290639 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1d8bd238ea9b35ea2261719f47a1391dffc3231ced5bf22b2d4d49bfd369441`  
		Last Modified: Thu, 17 Sep 2026 21:16:04 GMT  
		Size: 17.7 KB (17682 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine` - linux; 386

```console
$ docker pull irssi@sha256:2b924580e400973b2e5bfccec33db44f0fc600775ecca198c4d486979ab6f179
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20174008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3043da6bea501d9a3578e871a72be45ed29e6be7c64628412bc6d17733d0ba2e`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:28 GMT
ADD alpine-minirootfs-3.23.6-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:28 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:20 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:15:20 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:15:20 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:15:20 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:15:20 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:15:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:15:37 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:15:37 GMT
USER user
# Thu, 17 Sep 2026 21:15:37 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:1f89eeb8219ece88ee6dd2e7cad6761d1e9da9e18f4b7929d9ee0052902df74a`  
		Last Modified: Thu, 17 Sep 2026 20:37:33 GMT  
		Size: 3.7 MB (3675111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29aaf2e9158fd3045c54b43c7c0d50b5411254859765f46cb69eca2b19de3aaf`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 10.4 MB (10352803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91e9333dbf68f5901d7b71bbed963069936b88313349cc499c11b73721c568ee`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb85a6f5fed6a44568eb45e3ec4fb05ad1a89d334917bb1dbf0bfd4c10d1da3`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 6.1 MB (6145109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:e659c8dbce319d971246c9313514dfbdd7cdd18f77506850442219327c410ece
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:970eab1321dd5cdd6bcb4c95da36680a0cce1bb1d060b5b3abbbc3e41970ae7b`

```dockerfile
```

-	Layers:
	-	`sha256:a737820df03c091577cb4c3e3546dfedfee3704c9c9bdb4e5e4ac2d6d24f311d`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 1.3 MB (1291140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65f0a418a065c600f5f2ee9ca0c7d36f37ce7829c84b8e698eb19059d1870086`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 17.4 KB (17443 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine` - linux; ppc64le

```console
$ docker pull irssi@sha256:3c21fd84717506251cee9f1e9c52ce8ae085359fafaa11a0bc1b482d1764b191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21222835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c521982adcf0b48471da508b12f825f7ca3b981b23886499a2346c1851844cc6`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:29:38 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:29:39 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:29:39 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:29:39 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:29:39 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:29:59 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:29:59 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:29:59 GMT
USER user
# Thu, 17 Sep 2026 21:29:59 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eaca6cbc21680e7450381817d3257e03f3c66072b1af3035282607cb48134b3`  
		Last Modified: Thu, 17 Sep 2026 21:30:13 GMT  
		Size: 11.0 MB (11043150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcb74b3e80a9875a556d204fab1a17995c1c0429cb7feff45f82d8e8e427d2dc`  
		Last Modified: Thu, 17 Sep 2026 21:30:12 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6da1a278e7525d6555459e46ae97274c4a6bf908743db15907d2065decc59461`  
		Last Modified: Thu, 17 Sep 2026 21:30:13 GMT  
		Size: 6.4 MB (6363930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:6269ade51584f714e2c348b17371845ff1f86c4fb4ded6969a96a3c144783aea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:827e87a32f2bf46bfbaf3a83aded52309895b8bc52b4f167a472f4c79ca6b537`

```dockerfile
```

-	Layers:
	-	`sha256:f8d99adaeb1b68fd898a82d85724aa88db1f05050ac7739f69e876937e28be24`  
		Last Modified: Thu, 17 Sep 2026 21:30:12 GMT  
		Size: 1.3 MB (1290592 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24524352a71888ddae73576c682ffd5e610a3013295cea88b9b76e4c68f19bae`  
		Last Modified: Thu, 17 Sep 2026 21:30:12 GMT  
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
$ docker pull irssi@sha256:dc3e4fd739b7e6db3d043bf5b634bbf8a86d7154e5de5a554849d6d97d91c316
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21291395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff1fcf3721d9fffc29f5ea301899b1673324764daafafdf85cd15317db8a4383`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:23 GMT
ADD alpine-minirootfs-3.23.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:23 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:24:34 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 22:24:34 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 22:24:34 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 22:24:34 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:24:34 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 22:24:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 22:24:54 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 22:24:54 GMT
USER user
# Thu, 17 Sep 2026 22:24:54 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:4387077d70188f8428b97ed5df25698ad5aa9b8967d00a98ebb627a3e08ae986`  
		Last Modified: Thu, 17 Sep 2026 21:38:32 GMT  
		Size: 3.7 MB (3713255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddd221b881b5b949a6dc1301910298d6aa08f7986d38ad5db32f3f32e1065626`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 11.4 MB (11372049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:924366936084f8cc80f060d9312e567de30ba85a50961bfe580c0e2ce4d8e384`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0950e4ddbb87ff9f2cbc92b51eff184a1b22a3400fa1bdc541a483c8d11085da`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 6.2 MB (6205106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:d2cd424c0daaf6953b4ed39cadd99a9c22a019966d42a82b9ec58683c54c3dd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c2153d984134a7c5d83a1bf956d0c1adca3a7a70d11aff1b75929d425aa2bca`

```dockerfile
```

-	Layers:
	-	`sha256:fd2f967f5698de38dc2d99fa163dcd0a1b6eaaf5c733713ba8060f8c925639e9`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 1.3 MB (1290534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:941c4e3a0a056a677f93b61d0a6e59d95d88d0b04fb38e20a6def104a643bc27`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1.4-alpine3.23`

```console
$ docker pull irssi@sha256:a9bcfb1c77f131d74d93d3c6a41478e3f6323d13732838c5d4340faf9c053b52
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
$ docker pull irssi@sha256:5d08b1e33043c4fcc026a8b1f43b1d08fb13c61d6ef1318ed192cb009a7524b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20737511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cecde90cd46e7bd82d9622d929750f8bab0215795b7d43e4315dc0b1d98bd56`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:12 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:16:12 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:16:12 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:16:12 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:16:12 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:16:26 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:16:26 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:16:26 GMT
USER user
# Thu, 17 Sep 2026 21:16:26 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d2a5eb32043a2941ca1a3a4904d78b51b0979308fc9cac394125c6927ae5f28`  
		Last Modified: Thu, 17 Sep 2026 21:16:33 GMT  
		Size: 10.8 MB (10820632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e384644f15960ef28c3053ba8f79a0da94d371bcc0436b0c8e3c575acaa42018`  
		Last Modified: Thu, 17 Sep 2026 21:16:32 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:918acbe934f17a4678e45cf05085530b1c0362151af95f6189aab596434a7c2d`  
		Last Modified: Thu, 17 Sep 2026 21:16:32 GMT  
		Size: 6.1 MB (6067387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:44e7298450848fe2f9415d2c5db16f99d83c88fb97916daf53f51da33d9a0790
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fceb077410e80ed9ad203356f541173660da7b9b6a8f210973fdbbad584e0d46`

```dockerfile
```

-	Layers:
	-	`sha256:15a7522aa7342a31eae1fc6977b4610a02d743a4f3d79f542b7d3baa0eab3609`  
		Last Modified: Thu, 17 Sep 2026 21:16:32 GMT  
		Size: 1.3 MB (1291185 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04862f3d2202f274997ae1af9322183d7bc55d1150b5824dc25bb0151c5d4556`  
		Last Modified: Thu, 17 Sep 2026 21:16:32 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine3.23` - linux; arm variant v6

```console
$ docker pull irssi@sha256:f92de27f07b39d4de8a9601aa186a37841747dec042f6744f5bfbbffae120aea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19475812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fd435a62b75d3e36b20941aba125aae1eaf0a586c639ad28a870a4155127392`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:20:55 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:20:56 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:20:56 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:20:56 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:20:56 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:21:11 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:21:11 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:21:11 GMT
USER user
# Thu, 17 Sep 2026 21:21:11 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e765e23cd63d395e16caec5fabb516f2c4561e0c2ab541e6edbd03480439cb7d`  
		Last Modified: Thu, 17 Sep 2026 21:21:16 GMT  
		Size: 10.0 MB (10024645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:324551f45eba4a0c467375f7d33db15172e045d0b2ad430f411b5f5c485197b2`  
		Last Modified: Thu, 17 Sep 2026 21:21:16 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fb06fdae2cc6198bc3f8bacb48606ed15cb469d8bf9288dfcb2f2dea225e7aa`  
		Last Modified: Thu, 17 Sep 2026 21:21:16 GMT  
		Size: 5.9 MB (5895257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:7a2df418924606188c590ffe74adb74bf8bcfe21c88f3dd345b21d3d98ad8adb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 KB (17423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0154da5c542b9360d347e52ea206e7aa8e1e24c771e4df5ec78246c49c4ece35`

```dockerfile
```

-	Layers:
	-	`sha256:9c9942688435ee195b4abb40f17369fd7015a9cedd64aef9dc04fb84c49b6c98`  
		Last Modified: Thu, 17 Sep 2026 21:21:16 GMT  
		Size: 17.4 KB (17423 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine3.23` - linux; arm variant v7

```console
$ docker pull irssi@sha256:3c078f077a56a2e4eb9a672993819dbe8c93ab0669b592204352498273ff9508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18768878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:907f6758b411b3c1ad9365cc2fb7f0471df79af6b611efde8c6e392fbb6e38c0`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:33 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:19:33 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:19:33 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:19:33 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:19:33 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:19:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:19:48 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:19:48 GMT
USER user
# Thu, 17 Sep 2026 21:19:48 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:203da8b0d73ce2ed493163d965a70dfc73b45c6a08b5f7ee65f453aa70eecbee`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 9.9 MB (9861506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b2f4fdc022b1e8173a616c74a69b41772e14294eb0a7fadfe5ee0904b475e28`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2881f1743d8654c012028175c634e2a3d98599029ae7850dc73ce378497402d9`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 5.6 MB (5643475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:b42c1faed9f1c8792ade29fe0c800f92e0b7054484e460bc480c87f6abfdc897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1311227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8be5fd2cb884f2172e7be54cc8e6abcd551c96f75882772cc953899ce86c7dd9`

```dockerfile
```

-	Layers:
	-	`sha256:85426ef0a2b0045b3566f3fa8edb3a38b6b4b3b0e54d9c0063f1140ab20f960c`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 1.3 MB (1293593 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:711a975e1a07264aff45115fb99e2b7b17a207bd17fac7c13e361c15f2658700`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 17.6 KB (17634 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:c476a2f689d2740e0c0754e1272bf695bee66fa9ab938999c8a8af846e8fb9b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20881634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a9e295ab9a46785055b4e0da98d511d7fd6da2b7016489c904635d28e85583b`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:45 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:15:45 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:15:45 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:15:45 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:15:45 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:15:58 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:15:58 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:15:58 GMT
USER user
# Thu, 17 Sep 2026 21:15:58 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae933df803bacf8c084e10374e5fb17efc6dc469a1c269723c042fbffd4f6e3`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 10.8 MB (10755853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61c01f1857aca5ebd686aadf7ce1abfc7980a25886a207c836c964c34b92cf5a`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26f7534fe82539bd65d9ad721238b86c3a053c8463cf011655f5ecc68a688c01`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 5.9 MB (5938740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:c9a03a3de70e9c9efdf97a0f968405264539fb2f7247585d69479f2f37e745e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4174597976de1803acedcef5d9fc08e1e6557cf81aefa4dc0dab0789ae346d7c`

```dockerfile
```

-	Layers:
	-	`sha256:7f257bf4aa06d19bee25916f0521609480e3030dad28032f9234b1bc1e478a41`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 1.3 MB (1290639 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1d8bd238ea9b35ea2261719f47a1391dffc3231ced5bf22b2d4d49bfd369441`  
		Last Modified: Thu, 17 Sep 2026 21:16:04 GMT  
		Size: 17.7 KB (17682 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine3.23` - linux; 386

```console
$ docker pull irssi@sha256:2b924580e400973b2e5bfccec33db44f0fc600775ecca198c4d486979ab6f179
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20174008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3043da6bea501d9a3578e871a72be45ed29e6be7c64628412bc6d17733d0ba2e`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:28 GMT
ADD alpine-minirootfs-3.23.6-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:28 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:20 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:15:20 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:15:20 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:15:20 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:15:20 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:15:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:15:37 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:15:37 GMT
USER user
# Thu, 17 Sep 2026 21:15:37 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:1f89eeb8219ece88ee6dd2e7cad6761d1e9da9e18f4b7929d9ee0052902df74a`  
		Last Modified: Thu, 17 Sep 2026 20:37:33 GMT  
		Size: 3.7 MB (3675111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29aaf2e9158fd3045c54b43c7c0d50b5411254859765f46cb69eca2b19de3aaf`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 10.4 MB (10352803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91e9333dbf68f5901d7b71bbed963069936b88313349cc499c11b73721c568ee`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb85a6f5fed6a44568eb45e3ec4fb05ad1a89d334917bb1dbf0bfd4c10d1da3`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 6.1 MB (6145109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:e659c8dbce319d971246c9313514dfbdd7cdd18f77506850442219327c410ece
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:970eab1321dd5cdd6bcb4c95da36680a0cce1bb1d060b5b3abbbc3e41970ae7b`

```dockerfile
```

-	Layers:
	-	`sha256:a737820df03c091577cb4c3e3546dfedfee3704c9c9bdb4e5e4ac2d6d24f311d`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 1.3 MB (1291140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65f0a418a065c600f5f2ee9ca0c7d36f37ce7829c84b8e698eb19059d1870086`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 17.4 KB (17443 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-alpine3.23` - linux; ppc64le

```console
$ docker pull irssi@sha256:3c21fd84717506251cee9f1e9c52ce8ae085359fafaa11a0bc1b482d1764b191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21222835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c521982adcf0b48471da508b12f825f7ca3b981b23886499a2346c1851844cc6`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:29:38 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:29:39 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:29:39 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:29:39 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:29:39 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:29:59 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:29:59 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:29:59 GMT
USER user
# Thu, 17 Sep 2026 21:29:59 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eaca6cbc21680e7450381817d3257e03f3c66072b1af3035282607cb48134b3`  
		Last Modified: Thu, 17 Sep 2026 21:30:13 GMT  
		Size: 11.0 MB (11043150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcb74b3e80a9875a556d204fab1a17995c1c0429cb7feff45f82d8e8e427d2dc`  
		Last Modified: Thu, 17 Sep 2026 21:30:12 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6da1a278e7525d6555459e46ae97274c4a6bf908743db15907d2065decc59461`  
		Last Modified: Thu, 17 Sep 2026 21:30:13 GMT  
		Size: 6.4 MB (6363930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:6269ade51584f714e2c348b17371845ff1f86c4fb4ded6969a96a3c144783aea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:827e87a32f2bf46bfbaf3a83aded52309895b8bc52b4f167a472f4c79ca6b537`

```dockerfile
```

-	Layers:
	-	`sha256:f8d99adaeb1b68fd898a82d85724aa88db1f05050ac7739f69e876937e28be24`  
		Last Modified: Thu, 17 Sep 2026 21:30:12 GMT  
		Size: 1.3 MB (1290592 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24524352a71888ddae73576c682ffd5e610a3013295cea88b9b76e4c68f19bae`  
		Last Modified: Thu, 17 Sep 2026 21:30:12 GMT  
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
$ docker pull irssi@sha256:dc3e4fd739b7e6db3d043bf5b634bbf8a86d7154e5de5a554849d6d97d91c316
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21291395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff1fcf3721d9fffc29f5ea301899b1673324764daafafdf85cd15317db8a4383`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:23 GMT
ADD alpine-minirootfs-3.23.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:23 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:24:34 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 22:24:34 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 22:24:34 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 22:24:34 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:24:34 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 22:24:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 22:24:54 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 22:24:54 GMT
USER user
# Thu, 17 Sep 2026 22:24:54 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:4387077d70188f8428b97ed5df25698ad5aa9b8967d00a98ebb627a3e08ae986`  
		Last Modified: Thu, 17 Sep 2026 21:38:32 GMT  
		Size: 3.7 MB (3713255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddd221b881b5b949a6dc1301910298d6aa08f7986d38ad5db32f3f32e1065626`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 11.4 MB (11372049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:924366936084f8cc80f060d9312e567de30ba85a50961bfe580c0e2ce4d8e384`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0950e4ddbb87ff9f2cbc92b51eff184a1b22a3400fa1bdc541a483c8d11085da`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 6.2 MB (6205106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:d2cd424c0daaf6953b4ed39cadd99a9c22a019966d42a82b9ec58683c54c3dd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c2153d984134a7c5d83a1bf956d0c1adca3a7a70d11aff1b75929d425aa2bca`

```dockerfile
```

-	Layers:
	-	`sha256:fd2f967f5698de38dc2d99fa163dcd0a1b6eaaf5c733713ba8060f8c925639e9`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 1.3 MB (1290534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:941c4e3a0a056a677f93b61d0a6e59d95d88d0b04fb38e20a6def104a643bc27`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1.4-trixie`

```console
$ docker pull irssi@sha256:896f7c97996c24dbb497d15916b623e3ddd42871c105b76acf3b3d7a434d59ff
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
$ docker pull irssi@sha256:d783491026f486a57dc57b38a15fa67237affadbae5a709061ed333d80a43c3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53923388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8428df78f5248281836be253b31b8572c7eb5b403853ddb4909110cfc1f5ceec`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:19:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:19:00 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:19:00 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:19:00 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:19:00 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:19:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:19:37 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:19:37 GMT
USER user
# Sat, 19 Sep 2026 00:19:37 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd5019de77905dc8d5f19f256c08f4ce3332c324d9bfa3be0660ea7041861a72`  
		Last Modified: Sat, 19 Sep 2026 00:19:48 GMT  
		Size: 19.2 MB (19220216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a7da13254dd514292a1604cdc7d5fb553b77f9e5b7ae592ca74f9d7ca7dd4f4`  
		Last Modified: Sat, 19 Sep 2026 00:19:47 GMT  
		Size: 3.3 KB (3331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc6296f22bba50ac1c34b44a057eb91a3c2dc9e93a5827f4fab75172463a695`  
		Last Modified: Sat, 19 Sep 2026 00:19:48 GMT  
		Size: 4.9 MB (4869391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:2ca15c28486a14058dff386acc645b41ba516d8ecccc2bb62c502cb07f55cc2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5613210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45a51eba4210f84ee5eeddbd13d8a9b5a2c088470d9ec2fb6e0b68bcd67b0758`

```dockerfile
```

-	Layers:
	-	`sha256:8cb4bfd2f3979c228d73b909edce84cc582971ee2f87a5f6d9e3027f9d99a48a`  
		Last Modified: Sat, 19 Sep 2026 00:19:48 GMT  
		Size: 5.6 MB (5594559 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6db124ea92ae621b8ced9af8f0617adf48bb5a97389493722dfe7ccd00055f5a`  
		Last Modified: Sat, 19 Sep 2026 00:19:47 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; arm variant v5

```console
$ docker pull irssi@sha256:7575a2e50d152e497a747afac9d218d9190905d98513da2a57c393388c2f4aa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50969610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ae6a8975bb891ebcc2c73f47b4b3b8d0db3929e861863282e95d9531612718b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:17:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:17:00 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:17:00 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:17:00 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:17:00 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:17:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:17:48 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:17:48 GMT
USER user
# Tue, 25 Aug 2026 00:17:48 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a20095955c6409eff232901e863164eedbe3c59d00d5c6295039a5ed00942a`  
		Last Modified: Tue, 25 Aug 2026 00:17:59 GMT  
		Size: 18.3 MB (18286841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8b205f3d41a8416d2a4289a4fb1c9898102f1402742a2032e5529e8c712c97`  
		Last Modified: Tue, 25 Aug 2026 00:17:58 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206a4895e4addc7283cc8b4991d097a88a0132535abf16d53c3380986995e67a`  
		Last Modified: Tue, 25 Aug 2026 00:17:59 GMT  
		Size: 4.7 MB (4710461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:7aa91950e84e984844a9232b917ab9356c15b059f7777362a5bc722ba178361a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5605151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ba0dfb7a4cf38384fa2a8660e3ff84c977d2ca1a81698158b08dba37304662f`

```dockerfile
```

-	Layers:
	-	`sha256:51f2eba6ad1eb8f5f1fefbbe8b3d696f961d641d041fac671e4e4d687d46c1e5`  
		Last Modified: Tue, 25 Aug 2026 00:17:59 GMT  
		Size: 5.6 MB (5586362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa6dbc2757f075633c376f1333bba7144229f4fb68083c1a6f7519c486484dbe`  
		Last Modified: Tue, 25 Aug 2026 00:17:58 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; arm variant v7

```console
$ docker pull irssi@sha256:3f9f78457512ff79c7fbc925e0680574a32d574c96c34cabb66b988f998a680f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48733260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:903f9529a916d81ddbc0550399d99c4ff4e94703a1fea532abe0021b8e91e55c`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:19:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:19:45 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:19:45 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:19:45 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:19:45 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:20:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:20:27 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:20:27 GMT
USER user
# Sat, 19 Sep 2026 00:20:27 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cdeed6e44a97b217c469937244586e101c9aa27c88d527816d0088418389c42`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 17.9 MB (17919592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b364f2058c8e95eba2ab686d68fbab989b078f1835e7a87bafbf966a63b470ba`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 3.3 KB (3330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb3d3a39e432a9437dd8c77dedc7b4f9f13162be07f89c7cea80b84adef9310f`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 4.6 MB (4561378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:57189829e7b12493ac348139fbdfc8a8c133d1ccaeca0888900fb53165ed7d52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5613919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86708c0cfd3d99bd38cee1cc43f33b816d810f6186b942bca93c3d61f1d90184`

```dockerfile
```

-	Layers:
	-	`sha256:a08c50c789476bf7d7155478b7317157f61db197c65891d3d7df44761a1051c0`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 5.6 MB (5595130 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94441f9b18f2d430566ebd2f923223979d5178f8a6497c518988120709ed22f2`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:4689e93e0971c573d0ac56c217492b2b61c614a2fbe046a3ced8df4a765854db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (54032817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4254d224c2f411199a5afbb7c7d3bf96e5bb4829b0797dd8295ad0b1cfe19155`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:19:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:19:08 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:19:08 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:19:08 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:19:08 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:19:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:19:46 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:19:46 GMT
USER user
# Sat, 19 Sep 2026 00:19:46 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daacf48909065564644359a01e5015c67043c04e5d36f679401e98859b84a8c6`  
		Last Modified: Sat, 19 Sep 2026 00:19:58 GMT  
		Size: 19.1 MB (19057651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6db475b78849c61c3a8dc60553b9ad104c506e9aa0390f9a280fd17abbdc7a45`  
		Last Modified: Sat, 19 Sep 2026 00:19:57 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:995e0a5db82d4abc1e50d7b99805219be7a82c7bce43b8d5d99ee7889fc56782`  
		Last Modified: Sat, 19 Sep 2026 00:19:57 GMT  
		Size: 4.8 MB (4782111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:d8ff022a5012d2152bf1a13cc8cfdd8cd3e87f6447cbff3a85435163f8983588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5619868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7f3608c81c2a75cd40a2a3a1f6cab2de28b8eb386adc1859241c5180789ff9f`

```dockerfile
```

-	Layers:
	-	`sha256:6a95218acd333010c42ab80006172dc9cab99ca5b142d053fd23e6ebb06fce91`  
		Last Modified: Sat, 19 Sep 2026 00:19:57 GMT  
		Size: 5.6 MB (5601035 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef879536f60445669db5f38eda2cc7ade471d30cf3a1df8094aedf3e8b3033cf`  
		Last Modified: Sat, 19 Sep 2026 00:19:57 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; 386

```console
$ docker pull irssi@sha256:f20e61041e82b65ff3432782eba56e3eba34ab08ccd0dcb995155443c74ec9df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54947736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9091e60a388f0245755000598a4dd6265289cdaeacb0332891ce4084fb5c061`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:18:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:18:51 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:18:51 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:18:51 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:18:51 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:19:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:19:32 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:19:32 GMT
USER user
# Sat, 19 Sep 2026 00:19:32 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a6206be0fddcec7e517d667f6453a789bccba615d2bc235b8b2527e8c15f0b5`  
		Last Modified: Sat, 19 Sep 2026 00:19:43 GMT  
		Size: 18.7 MB (18734074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a793c7384f3ecc482ee6918007fd1b8d5af97c0e12f84096c5a2856e2ee5a9d0`  
		Last Modified: Sat, 19 Sep 2026 00:19:42 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c79efed34f59e490d25cf1dcd92b9715bcf1a4043656551c9b0f753d13c468`  
		Last Modified: Sat, 19 Sep 2026 00:19:42 GMT  
		Size: 4.9 MB (4869903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:3cfe2c2c63f1695da2e64aacd2e12283f31c8b13c1bf413b3dc5c3feab5227bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5609277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f418e8af32b34540d54c818e2884a6b82368bbe1d01fd2e5ccd43ccac7d16729`

```dockerfile
```

-	Layers:
	-	`sha256:88598e3c306002be9ad53853ca066789895e6772cbfceba2f9705ffb79f01b19`  
		Last Modified: Sat, 19 Sep 2026 00:19:42 GMT  
		Size: 5.6 MB (5590682 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a403e58a16746a861fffad729aa903e7790dbc606b71ed5cd55733abf328ea11`  
		Last Modified: Sat, 19 Sep 2026 00:19:42 GMT  
		Size: 18.6 KB (18595 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; ppc64le

```console
$ docker pull irssi@sha256:dc0b305706e9cea511738fec4c5f266f5cd4dc2a7755f533069c56af172dd213
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58293193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3bffcda877547a4f3b146f55b45514f7d1789a62bf172c6899fc4eb2607d3df`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:22:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:22:43 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:22:43 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:22:43 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:22:43 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:23:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:23:54 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:23:54 GMT
USER user
# Sat, 19 Sep 2026 00:23:54 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e18aeb6a6a0e7e01e0c7c54485dc97e9b1cf53dc39e836f3feeb143f0c67c8f1`  
		Last Modified: Sat, 19 Sep 2026 00:24:15 GMT  
		Size: 19.5 MB (19548636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6614c0a3388ab533845e85af010bc871bfcfd79d8584a3ca98475e2c9d8b9bab`  
		Last Modified: Sat, 19 Sep 2026 00:24:14 GMT  
		Size: 3.3 KB (3330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18f060deef99a40f955af5b4bf92519b32aca576847a34aad52d230e40d50255`  
		Last Modified: Sat, 19 Sep 2026 00:24:15 GMT  
		Size: 5.1 MB (5099960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:c40487a7766c84f4fa57eff5a5a40445c6d0d621e3d433349ae59711df40fb35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5620313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:206d53359d9f9318f8ddc8958ce68a471e757f1f71242f7db19db052a052423b`

```dockerfile
```

-	Layers:
	-	`sha256:99f31fb755a329d01b0b6afdacbc16103e1c7132ae47a071580ff31c00954f74`  
		Last Modified: Sat, 19 Sep 2026 00:24:15 GMT  
		Size: 5.6 MB (5601590 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87a83d06b06a305b79432d1a9abe9a35425b601026109f1c138ef99225733914`  
		Last Modified: Sat, 19 Sep 2026 00:24:15 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; riscv64

```console
$ docker pull irssi@sha256:63fd5c7be05433447cb3ac611913743c8a2aff559fdd99fbc6e3657c9fc3c416
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51713551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:995429fbf593b610b569eaee31279d838dd4d000d2a12daa8cb17e1b690a1377`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:33:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:33:17 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 02:33:17 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 02:33:17 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 02:33:17 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 02:40:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 02:40:02 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 02:40:02 GMT
USER user
# Tue, 25 Aug 2026 02:40:02 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70e669f37eaed3b6cc866821a03bf1c8152fa8185a058cee5162f993ce7f1b41`  
		Last Modified: Tue, 25 Aug 2026 02:41:56 GMT  
		Size: 18.6 MB (18552281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:947a6ddabc323157585106f2a874a9074c7bc7ec46cd92165d36f3d43ac23631`  
		Last Modified: Tue, 25 Aug 2026 02:41:51 GMT  
		Size: 3.3 KB (3333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a17014c19658b15934711c82546d2c1304652ba25351d995dcde4afe46730e5b`  
		Last Modified: Tue, 25 Aug 2026 02:41:53 GMT  
		Size: 4.9 MB (4861442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:4ac5ed2e7cbc4b525b26c6c02ffcfe1b1752d6be5b29cfa23a4d53e9d4517272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5598839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3721b0521fb40eb75f4566c3ee55d346e9dbb817982aecb1bc3511dd15f5800f`

```dockerfile
```

-	Layers:
	-	`sha256:1a12298551bc406171329277ad84ada0c72efc653417fe7699a9989b8f7388de`  
		Last Modified: Tue, 25 Aug 2026 02:41:54 GMT  
		Size: 5.6 MB (5580116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d4f700030661f47bb0b75cc2cec2b2b1aedf19adbfdbbee75f7abec81deeecf`  
		Last Modified: Tue, 25 Aug 2026 02:41:52 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; s390x

```console
$ docker pull irssi@sha256:5f02011f5185ee6f434826a48d9d63f19232c95fe148e903ce9e46cb7226c1d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54546324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05192773879cd222cc802f0cd3702e4a145f67c100885dfe1c6655a598e70507`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:18:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:18:42 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:18:42 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:18:42 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:18:42 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:19:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:19:31 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:19:31 GMT
USER user
# Tue, 25 Aug 2026 00:19:31 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd37501b3f5271a57e84d41eda4fcfc495913c4611a085e31646a7d8824d0ed0`  
		Last Modified: Tue, 25 Aug 2026 00:19:58 GMT  
		Size: 19.8 MB (19768051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b23c55e2803c63fadea10691613a38ce82f75e170940185db91c1ed5a89a6dc2`  
		Last Modified: Tue, 25 Aug 2026 00:19:56 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54af3f574ac1b41f1028dff19e949c568e6068f37e9462f83c79b7a18a4a4aa3`  
		Last Modified: Tue, 25 Aug 2026 00:19:57 GMT  
		Size: 4.9 MB (4907188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:66321b524e066959c2cd65464eb6a30c1aa82ac6fe568f51d3c474cdef18f7de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe635615631c66e27a63d001537764edc875ab813bb9901c8001acaab2124f56`

```dockerfile
```

-	Layers:
	-	`sha256:212141ad5435723e922d6d1f9c1ea7498b7348dd617f41e2f42eef258042ed5d`  
		Last Modified: Tue, 25 Aug 2026 00:19:57 GMT  
		Size: 5.6 MB (5589718 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64b95e9b60de85b295e74cd35715d1c53f955433fd9ec72ded782b9505146937`  
		Last Modified: Tue, 25 Aug 2026 00:19:56 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1.4.5`

```console
$ docker pull irssi@sha256:896f7c97996c24dbb497d15916b623e3ddd42871c105b76acf3b3d7a434d59ff
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
$ docker pull irssi@sha256:d783491026f486a57dc57b38a15fa67237affadbae5a709061ed333d80a43c3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53923388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8428df78f5248281836be253b31b8572c7eb5b403853ddb4909110cfc1f5ceec`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:19:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:19:00 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:19:00 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:19:00 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:19:00 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:19:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:19:37 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:19:37 GMT
USER user
# Sat, 19 Sep 2026 00:19:37 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd5019de77905dc8d5f19f256c08f4ce3332c324d9bfa3be0660ea7041861a72`  
		Last Modified: Sat, 19 Sep 2026 00:19:48 GMT  
		Size: 19.2 MB (19220216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a7da13254dd514292a1604cdc7d5fb553b77f9e5b7ae592ca74f9d7ca7dd4f4`  
		Last Modified: Sat, 19 Sep 2026 00:19:47 GMT  
		Size: 3.3 KB (3331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc6296f22bba50ac1c34b44a057eb91a3c2dc9e93a5827f4fab75172463a695`  
		Last Modified: Sat, 19 Sep 2026 00:19:48 GMT  
		Size: 4.9 MB (4869391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:2ca15c28486a14058dff386acc645b41ba516d8ecccc2bb62c502cb07f55cc2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5613210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45a51eba4210f84ee5eeddbd13d8a9b5a2c088470d9ec2fb6e0b68bcd67b0758`

```dockerfile
```

-	Layers:
	-	`sha256:8cb4bfd2f3979c228d73b909edce84cc582971ee2f87a5f6d9e3027f9d99a48a`  
		Last Modified: Sat, 19 Sep 2026 00:19:48 GMT  
		Size: 5.6 MB (5594559 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6db124ea92ae621b8ced9af8f0617adf48bb5a97389493722dfe7ccd00055f5a`  
		Last Modified: Sat, 19 Sep 2026 00:19:47 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; arm variant v5

```console
$ docker pull irssi@sha256:7575a2e50d152e497a747afac9d218d9190905d98513da2a57c393388c2f4aa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50969610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ae6a8975bb891ebcc2c73f47b4b3b8d0db3929e861863282e95d9531612718b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:17:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:17:00 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:17:00 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:17:00 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:17:00 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:17:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:17:48 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:17:48 GMT
USER user
# Tue, 25 Aug 2026 00:17:48 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a20095955c6409eff232901e863164eedbe3c59d00d5c6295039a5ed00942a`  
		Last Modified: Tue, 25 Aug 2026 00:17:59 GMT  
		Size: 18.3 MB (18286841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8b205f3d41a8416d2a4289a4fb1c9898102f1402742a2032e5529e8c712c97`  
		Last Modified: Tue, 25 Aug 2026 00:17:58 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206a4895e4addc7283cc8b4991d097a88a0132535abf16d53c3380986995e67a`  
		Last Modified: Tue, 25 Aug 2026 00:17:59 GMT  
		Size: 4.7 MB (4710461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:7aa91950e84e984844a9232b917ab9356c15b059f7777362a5bc722ba178361a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5605151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ba0dfb7a4cf38384fa2a8660e3ff84c977d2ca1a81698158b08dba37304662f`

```dockerfile
```

-	Layers:
	-	`sha256:51f2eba6ad1eb8f5f1fefbbe8b3d696f961d641d041fac671e4e4d687d46c1e5`  
		Last Modified: Tue, 25 Aug 2026 00:17:59 GMT  
		Size: 5.6 MB (5586362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa6dbc2757f075633c376f1333bba7144229f4fb68083c1a6f7519c486484dbe`  
		Last Modified: Tue, 25 Aug 2026 00:17:58 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; arm variant v7

```console
$ docker pull irssi@sha256:3f9f78457512ff79c7fbc925e0680574a32d574c96c34cabb66b988f998a680f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48733260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:903f9529a916d81ddbc0550399d99c4ff4e94703a1fea532abe0021b8e91e55c`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:19:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:19:45 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:19:45 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:19:45 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:19:45 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:20:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:20:27 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:20:27 GMT
USER user
# Sat, 19 Sep 2026 00:20:27 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cdeed6e44a97b217c469937244586e101c9aa27c88d527816d0088418389c42`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 17.9 MB (17919592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b364f2058c8e95eba2ab686d68fbab989b078f1835e7a87bafbf966a63b470ba`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 3.3 KB (3330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb3d3a39e432a9437dd8c77dedc7b4f9f13162be07f89c7cea80b84adef9310f`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 4.6 MB (4561378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:57189829e7b12493ac348139fbdfc8a8c133d1ccaeca0888900fb53165ed7d52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5613919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86708c0cfd3d99bd38cee1cc43f33b816d810f6186b942bca93c3d61f1d90184`

```dockerfile
```

-	Layers:
	-	`sha256:a08c50c789476bf7d7155478b7317157f61db197c65891d3d7df44761a1051c0`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 5.6 MB (5595130 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94441f9b18f2d430566ebd2f923223979d5178f8a6497c518988120709ed22f2`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:4689e93e0971c573d0ac56c217492b2b61c614a2fbe046a3ced8df4a765854db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (54032817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4254d224c2f411199a5afbb7c7d3bf96e5bb4829b0797dd8295ad0b1cfe19155`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:19:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:19:08 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:19:08 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:19:08 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:19:08 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:19:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:19:46 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:19:46 GMT
USER user
# Sat, 19 Sep 2026 00:19:46 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daacf48909065564644359a01e5015c67043c04e5d36f679401e98859b84a8c6`  
		Last Modified: Sat, 19 Sep 2026 00:19:58 GMT  
		Size: 19.1 MB (19057651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6db475b78849c61c3a8dc60553b9ad104c506e9aa0390f9a280fd17abbdc7a45`  
		Last Modified: Sat, 19 Sep 2026 00:19:57 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:995e0a5db82d4abc1e50d7b99805219be7a82c7bce43b8d5d99ee7889fc56782`  
		Last Modified: Sat, 19 Sep 2026 00:19:57 GMT  
		Size: 4.8 MB (4782111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:d8ff022a5012d2152bf1a13cc8cfdd8cd3e87f6447cbff3a85435163f8983588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5619868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7f3608c81c2a75cd40a2a3a1f6cab2de28b8eb386adc1859241c5180789ff9f`

```dockerfile
```

-	Layers:
	-	`sha256:6a95218acd333010c42ab80006172dc9cab99ca5b142d053fd23e6ebb06fce91`  
		Last Modified: Sat, 19 Sep 2026 00:19:57 GMT  
		Size: 5.6 MB (5601035 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef879536f60445669db5f38eda2cc7ade471d30cf3a1df8094aedf3e8b3033cf`  
		Last Modified: Sat, 19 Sep 2026 00:19:57 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; 386

```console
$ docker pull irssi@sha256:f20e61041e82b65ff3432782eba56e3eba34ab08ccd0dcb995155443c74ec9df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54947736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9091e60a388f0245755000598a4dd6265289cdaeacb0332891ce4084fb5c061`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:18:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:18:51 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:18:51 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:18:51 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:18:51 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:19:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:19:32 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:19:32 GMT
USER user
# Sat, 19 Sep 2026 00:19:32 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a6206be0fddcec7e517d667f6453a789bccba615d2bc235b8b2527e8c15f0b5`  
		Last Modified: Sat, 19 Sep 2026 00:19:43 GMT  
		Size: 18.7 MB (18734074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a793c7384f3ecc482ee6918007fd1b8d5af97c0e12f84096c5a2856e2ee5a9d0`  
		Last Modified: Sat, 19 Sep 2026 00:19:42 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c79efed34f59e490d25cf1dcd92b9715bcf1a4043656551c9b0f753d13c468`  
		Last Modified: Sat, 19 Sep 2026 00:19:42 GMT  
		Size: 4.9 MB (4869903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:3cfe2c2c63f1695da2e64aacd2e12283f31c8b13c1bf413b3dc5c3feab5227bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5609277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f418e8af32b34540d54c818e2884a6b82368bbe1d01fd2e5ccd43ccac7d16729`

```dockerfile
```

-	Layers:
	-	`sha256:88598e3c306002be9ad53853ca066789895e6772cbfceba2f9705ffb79f01b19`  
		Last Modified: Sat, 19 Sep 2026 00:19:42 GMT  
		Size: 5.6 MB (5590682 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a403e58a16746a861fffad729aa903e7790dbc606b71ed5cd55733abf328ea11`  
		Last Modified: Sat, 19 Sep 2026 00:19:42 GMT  
		Size: 18.6 KB (18595 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; ppc64le

```console
$ docker pull irssi@sha256:dc0b305706e9cea511738fec4c5f266f5cd4dc2a7755f533069c56af172dd213
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58293193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3bffcda877547a4f3b146f55b45514f7d1789a62bf172c6899fc4eb2607d3df`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:22:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:22:43 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:22:43 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:22:43 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:22:43 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:23:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:23:54 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:23:54 GMT
USER user
# Sat, 19 Sep 2026 00:23:54 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e18aeb6a6a0e7e01e0c7c54485dc97e9b1cf53dc39e836f3feeb143f0c67c8f1`  
		Last Modified: Sat, 19 Sep 2026 00:24:15 GMT  
		Size: 19.5 MB (19548636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6614c0a3388ab533845e85af010bc871bfcfd79d8584a3ca98475e2c9d8b9bab`  
		Last Modified: Sat, 19 Sep 2026 00:24:14 GMT  
		Size: 3.3 KB (3330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18f060deef99a40f955af5b4bf92519b32aca576847a34aad52d230e40d50255`  
		Last Modified: Sat, 19 Sep 2026 00:24:15 GMT  
		Size: 5.1 MB (5099960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:c40487a7766c84f4fa57eff5a5a40445c6d0d621e3d433349ae59711df40fb35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5620313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:206d53359d9f9318f8ddc8958ce68a471e757f1f71242f7db19db052a052423b`

```dockerfile
```

-	Layers:
	-	`sha256:99f31fb755a329d01b0b6afdacbc16103e1c7132ae47a071580ff31c00954f74`  
		Last Modified: Sat, 19 Sep 2026 00:24:15 GMT  
		Size: 5.6 MB (5601590 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87a83d06b06a305b79432d1a9abe9a35425b601026109f1c138ef99225733914`  
		Last Modified: Sat, 19 Sep 2026 00:24:15 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; riscv64

```console
$ docker pull irssi@sha256:63fd5c7be05433447cb3ac611913743c8a2aff559fdd99fbc6e3657c9fc3c416
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51713551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:995429fbf593b610b569eaee31279d838dd4d000d2a12daa8cb17e1b690a1377`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:33:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:33:17 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 02:33:17 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 02:33:17 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 02:33:17 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 02:40:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 02:40:02 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 02:40:02 GMT
USER user
# Tue, 25 Aug 2026 02:40:02 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70e669f37eaed3b6cc866821a03bf1c8152fa8185a058cee5162f993ce7f1b41`  
		Last Modified: Tue, 25 Aug 2026 02:41:56 GMT  
		Size: 18.6 MB (18552281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:947a6ddabc323157585106f2a874a9074c7bc7ec46cd92165d36f3d43ac23631`  
		Last Modified: Tue, 25 Aug 2026 02:41:51 GMT  
		Size: 3.3 KB (3333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a17014c19658b15934711c82546d2c1304652ba25351d995dcde4afe46730e5b`  
		Last Modified: Tue, 25 Aug 2026 02:41:53 GMT  
		Size: 4.9 MB (4861442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:4ac5ed2e7cbc4b525b26c6c02ffcfe1b1752d6be5b29cfa23a4d53e9d4517272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5598839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3721b0521fb40eb75f4566c3ee55d346e9dbb817982aecb1bc3511dd15f5800f`

```dockerfile
```

-	Layers:
	-	`sha256:1a12298551bc406171329277ad84ada0c72efc653417fe7699a9989b8f7388de`  
		Last Modified: Tue, 25 Aug 2026 02:41:54 GMT  
		Size: 5.6 MB (5580116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d4f700030661f47bb0b75cc2cec2b2b1aedf19adbfdbbee75f7abec81deeecf`  
		Last Modified: Tue, 25 Aug 2026 02:41:52 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; s390x

```console
$ docker pull irssi@sha256:5f02011f5185ee6f434826a48d9d63f19232c95fe148e903ce9e46cb7226c1d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54546324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05192773879cd222cc802f0cd3702e4a145f67c100885dfe1c6655a598e70507`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:18:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:18:42 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:18:42 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:18:42 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:18:42 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:19:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:19:31 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:19:31 GMT
USER user
# Tue, 25 Aug 2026 00:19:31 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd37501b3f5271a57e84d41eda4fcfc495913c4611a085e31646a7d8824d0ed0`  
		Last Modified: Tue, 25 Aug 2026 00:19:58 GMT  
		Size: 19.8 MB (19768051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b23c55e2803c63fadea10691613a38ce82f75e170940185db91c1ed5a89a6dc2`  
		Last Modified: Tue, 25 Aug 2026 00:19:56 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54af3f574ac1b41f1028dff19e949c568e6068f37e9462f83c79b7a18a4a4aa3`  
		Last Modified: Tue, 25 Aug 2026 00:19:57 GMT  
		Size: 4.9 MB (4907188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:66321b524e066959c2cd65464eb6a30c1aa82ac6fe568f51d3c474cdef18f7de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe635615631c66e27a63d001537764edc875ab813bb9901c8001acaab2124f56`

```dockerfile
```

-	Layers:
	-	`sha256:212141ad5435723e922d6d1f9c1ea7498b7348dd617f41e2f42eef258042ed5d`  
		Last Modified: Tue, 25 Aug 2026 00:19:57 GMT  
		Size: 5.6 MB (5589718 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64b95e9b60de85b295e74cd35715d1c53f955433fd9ec72ded782b9505146937`  
		Last Modified: Tue, 25 Aug 2026 00:19:56 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1.4.5-alpine`

```console
$ docker pull irssi@sha256:a9bcfb1c77f131d74d93d3c6a41478e3f6323d13732838c5d4340faf9c053b52
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
$ docker pull irssi@sha256:5d08b1e33043c4fcc026a8b1f43b1d08fb13c61d6ef1318ed192cb009a7524b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20737511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cecde90cd46e7bd82d9622d929750f8bab0215795b7d43e4315dc0b1d98bd56`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:12 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:16:12 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:16:12 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:16:12 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:16:12 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:16:26 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:16:26 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:16:26 GMT
USER user
# Thu, 17 Sep 2026 21:16:26 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d2a5eb32043a2941ca1a3a4904d78b51b0979308fc9cac394125c6927ae5f28`  
		Last Modified: Thu, 17 Sep 2026 21:16:33 GMT  
		Size: 10.8 MB (10820632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e384644f15960ef28c3053ba8f79a0da94d371bcc0436b0c8e3c575acaa42018`  
		Last Modified: Thu, 17 Sep 2026 21:16:32 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:918acbe934f17a4678e45cf05085530b1c0362151af95f6189aab596434a7c2d`  
		Last Modified: Thu, 17 Sep 2026 21:16:32 GMT  
		Size: 6.1 MB (6067387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:44e7298450848fe2f9415d2c5db16f99d83c88fb97916daf53f51da33d9a0790
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fceb077410e80ed9ad203356f541173660da7b9b6a8f210973fdbbad584e0d46`

```dockerfile
```

-	Layers:
	-	`sha256:15a7522aa7342a31eae1fc6977b4610a02d743a4f3d79f542b7d3baa0eab3609`  
		Last Modified: Thu, 17 Sep 2026 21:16:32 GMT  
		Size: 1.3 MB (1291185 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04862f3d2202f274997ae1af9322183d7bc55d1150b5824dc25bb0151c5d4556`  
		Last Modified: Thu, 17 Sep 2026 21:16:32 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine` - linux; arm variant v6

```console
$ docker pull irssi@sha256:f92de27f07b39d4de8a9601aa186a37841747dec042f6744f5bfbbffae120aea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19475812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fd435a62b75d3e36b20941aba125aae1eaf0a586c639ad28a870a4155127392`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:20:55 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:20:56 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:20:56 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:20:56 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:20:56 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:21:11 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:21:11 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:21:11 GMT
USER user
# Thu, 17 Sep 2026 21:21:11 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e765e23cd63d395e16caec5fabb516f2c4561e0c2ab541e6edbd03480439cb7d`  
		Last Modified: Thu, 17 Sep 2026 21:21:16 GMT  
		Size: 10.0 MB (10024645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:324551f45eba4a0c467375f7d33db15172e045d0b2ad430f411b5f5c485197b2`  
		Last Modified: Thu, 17 Sep 2026 21:21:16 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fb06fdae2cc6198bc3f8bacb48606ed15cb469d8bf9288dfcb2f2dea225e7aa`  
		Last Modified: Thu, 17 Sep 2026 21:21:16 GMT  
		Size: 5.9 MB (5895257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:7a2df418924606188c590ffe74adb74bf8bcfe21c88f3dd345b21d3d98ad8adb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 KB (17423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0154da5c542b9360d347e52ea206e7aa8e1e24c771e4df5ec78246c49c4ece35`

```dockerfile
```

-	Layers:
	-	`sha256:9c9942688435ee195b4abb40f17369fd7015a9cedd64aef9dc04fb84c49b6c98`  
		Last Modified: Thu, 17 Sep 2026 21:21:16 GMT  
		Size: 17.4 KB (17423 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine` - linux; arm variant v7

```console
$ docker pull irssi@sha256:3c078f077a56a2e4eb9a672993819dbe8c93ab0669b592204352498273ff9508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18768878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:907f6758b411b3c1ad9365cc2fb7f0471df79af6b611efde8c6e392fbb6e38c0`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:33 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:19:33 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:19:33 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:19:33 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:19:33 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:19:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:19:48 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:19:48 GMT
USER user
# Thu, 17 Sep 2026 21:19:48 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:203da8b0d73ce2ed493163d965a70dfc73b45c6a08b5f7ee65f453aa70eecbee`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 9.9 MB (9861506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b2f4fdc022b1e8173a616c74a69b41772e14294eb0a7fadfe5ee0904b475e28`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2881f1743d8654c012028175c634e2a3d98599029ae7850dc73ce378497402d9`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 5.6 MB (5643475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:b42c1faed9f1c8792ade29fe0c800f92e0b7054484e460bc480c87f6abfdc897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1311227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8be5fd2cb884f2172e7be54cc8e6abcd551c96f75882772cc953899ce86c7dd9`

```dockerfile
```

-	Layers:
	-	`sha256:85426ef0a2b0045b3566f3fa8edb3a38b6b4b3b0e54d9c0063f1140ab20f960c`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 1.3 MB (1293593 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:711a975e1a07264aff45115fb99e2b7b17a207bd17fac7c13e361c15f2658700`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 17.6 KB (17634 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:c476a2f689d2740e0c0754e1272bf695bee66fa9ab938999c8a8af846e8fb9b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20881634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a9e295ab9a46785055b4e0da98d511d7fd6da2b7016489c904635d28e85583b`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:45 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:15:45 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:15:45 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:15:45 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:15:45 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:15:58 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:15:58 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:15:58 GMT
USER user
# Thu, 17 Sep 2026 21:15:58 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae933df803bacf8c084e10374e5fb17efc6dc469a1c269723c042fbffd4f6e3`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 10.8 MB (10755853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61c01f1857aca5ebd686aadf7ce1abfc7980a25886a207c836c964c34b92cf5a`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26f7534fe82539bd65d9ad721238b86c3a053c8463cf011655f5ecc68a688c01`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 5.9 MB (5938740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:c9a03a3de70e9c9efdf97a0f968405264539fb2f7247585d69479f2f37e745e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4174597976de1803acedcef5d9fc08e1e6557cf81aefa4dc0dab0789ae346d7c`

```dockerfile
```

-	Layers:
	-	`sha256:7f257bf4aa06d19bee25916f0521609480e3030dad28032f9234b1bc1e478a41`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 1.3 MB (1290639 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1d8bd238ea9b35ea2261719f47a1391dffc3231ced5bf22b2d4d49bfd369441`  
		Last Modified: Thu, 17 Sep 2026 21:16:04 GMT  
		Size: 17.7 KB (17682 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine` - linux; 386

```console
$ docker pull irssi@sha256:2b924580e400973b2e5bfccec33db44f0fc600775ecca198c4d486979ab6f179
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20174008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3043da6bea501d9a3578e871a72be45ed29e6be7c64628412bc6d17733d0ba2e`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:28 GMT
ADD alpine-minirootfs-3.23.6-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:28 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:20 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:15:20 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:15:20 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:15:20 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:15:20 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:15:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:15:37 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:15:37 GMT
USER user
# Thu, 17 Sep 2026 21:15:37 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:1f89eeb8219ece88ee6dd2e7cad6761d1e9da9e18f4b7929d9ee0052902df74a`  
		Last Modified: Thu, 17 Sep 2026 20:37:33 GMT  
		Size: 3.7 MB (3675111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29aaf2e9158fd3045c54b43c7c0d50b5411254859765f46cb69eca2b19de3aaf`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 10.4 MB (10352803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91e9333dbf68f5901d7b71bbed963069936b88313349cc499c11b73721c568ee`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb85a6f5fed6a44568eb45e3ec4fb05ad1a89d334917bb1dbf0bfd4c10d1da3`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 6.1 MB (6145109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:e659c8dbce319d971246c9313514dfbdd7cdd18f77506850442219327c410ece
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:970eab1321dd5cdd6bcb4c95da36680a0cce1bb1d060b5b3abbbc3e41970ae7b`

```dockerfile
```

-	Layers:
	-	`sha256:a737820df03c091577cb4c3e3546dfedfee3704c9c9bdb4e5e4ac2d6d24f311d`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 1.3 MB (1291140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65f0a418a065c600f5f2ee9ca0c7d36f37ce7829c84b8e698eb19059d1870086`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 17.4 KB (17443 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine` - linux; ppc64le

```console
$ docker pull irssi@sha256:3c21fd84717506251cee9f1e9c52ce8ae085359fafaa11a0bc1b482d1764b191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21222835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c521982adcf0b48471da508b12f825f7ca3b981b23886499a2346c1851844cc6`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:29:38 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:29:39 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:29:39 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:29:39 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:29:39 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:29:59 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:29:59 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:29:59 GMT
USER user
# Thu, 17 Sep 2026 21:29:59 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eaca6cbc21680e7450381817d3257e03f3c66072b1af3035282607cb48134b3`  
		Last Modified: Thu, 17 Sep 2026 21:30:13 GMT  
		Size: 11.0 MB (11043150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcb74b3e80a9875a556d204fab1a17995c1c0429cb7feff45f82d8e8e427d2dc`  
		Last Modified: Thu, 17 Sep 2026 21:30:12 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6da1a278e7525d6555459e46ae97274c4a6bf908743db15907d2065decc59461`  
		Last Modified: Thu, 17 Sep 2026 21:30:13 GMT  
		Size: 6.4 MB (6363930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:6269ade51584f714e2c348b17371845ff1f86c4fb4ded6969a96a3c144783aea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:827e87a32f2bf46bfbaf3a83aded52309895b8bc52b4f167a472f4c79ca6b537`

```dockerfile
```

-	Layers:
	-	`sha256:f8d99adaeb1b68fd898a82d85724aa88db1f05050ac7739f69e876937e28be24`  
		Last Modified: Thu, 17 Sep 2026 21:30:12 GMT  
		Size: 1.3 MB (1290592 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24524352a71888ddae73576c682ffd5e610a3013295cea88b9b76e4c68f19bae`  
		Last Modified: Thu, 17 Sep 2026 21:30:12 GMT  
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
$ docker pull irssi@sha256:dc3e4fd739b7e6db3d043bf5b634bbf8a86d7154e5de5a554849d6d97d91c316
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21291395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff1fcf3721d9fffc29f5ea301899b1673324764daafafdf85cd15317db8a4383`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:23 GMT
ADD alpine-minirootfs-3.23.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:23 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:24:34 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 22:24:34 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 22:24:34 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 22:24:34 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:24:34 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 22:24:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 22:24:54 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 22:24:54 GMT
USER user
# Thu, 17 Sep 2026 22:24:54 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:4387077d70188f8428b97ed5df25698ad5aa9b8967d00a98ebb627a3e08ae986`  
		Last Modified: Thu, 17 Sep 2026 21:38:32 GMT  
		Size: 3.7 MB (3713255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddd221b881b5b949a6dc1301910298d6aa08f7986d38ad5db32f3f32e1065626`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 11.4 MB (11372049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:924366936084f8cc80f060d9312e567de30ba85a50961bfe580c0e2ce4d8e384`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0950e4ddbb87ff9f2cbc92b51eff184a1b22a3400fa1bdc541a483c8d11085da`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 6.2 MB (6205106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:d2cd424c0daaf6953b4ed39cadd99a9c22a019966d42a82b9ec58683c54c3dd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c2153d984134a7c5d83a1bf956d0c1adca3a7a70d11aff1b75929d425aa2bca`

```dockerfile
```

-	Layers:
	-	`sha256:fd2f967f5698de38dc2d99fa163dcd0a1b6eaaf5c733713ba8060f8c925639e9`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 1.3 MB (1290534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:941c4e3a0a056a677f93b61d0a6e59d95d88d0b04fb38e20a6def104a643bc27`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1.4.5-alpine3.23`

```console
$ docker pull irssi@sha256:a9bcfb1c77f131d74d93d3c6a41478e3f6323d13732838c5d4340faf9c053b52
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
$ docker pull irssi@sha256:5d08b1e33043c4fcc026a8b1f43b1d08fb13c61d6ef1318ed192cb009a7524b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20737511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cecde90cd46e7bd82d9622d929750f8bab0215795b7d43e4315dc0b1d98bd56`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:12 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:16:12 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:16:12 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:16:12 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:16:12 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:16:26 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:16:26 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:16:26 GMT
USER user
# Thu, 17 Sep 2026 21:16:26 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d2a5eb32043a2941ca1a3a4904d78b51b0979308fc9cac394125c6927ae5f28`  
		Last Modified: Thu, 17 Sep 2026 21:16:33 GMT  
		Size: 10.8 MB (10820632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e384644f15960ef28c3053ba8f79a0da94d371bcc0436b0c8e3c575acaa42018`  
		Last Modified: Thu, 17 Sep 2026 21:16:32 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:918acbe934f17a4678e45cf05085530b1c0362151af95f6189aab596434a7c2d`  
		Last Modified: Thu, 17 Sep 2026 21:16:32 GMT  
		Size: 6.1 MB (6067387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:44e7298450848fe2f9415d2c5db16f99d83c88fb97916daf53f51da33d9a0790
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fceb077410e80ed9ad203356f541173660da7b9b6a8f210973fdbbad584e0d46`

```dockerfile
```

-	Layers:
	-	`sha256:15a7522aa7342a31eae1fc6977b4610a02d743a4f3d79f542b7d3baa0eab3609`  
		Last Modified: Thu, 17 Sep 2026 21:16:32 GMT  
		Size: 1.3 MB (1291185 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04862f3d2202f274997ae1af9322183d7bc55d1150b5824dc25bb0151c5d4556`  
		Last Modified: Thu, 17 Sep 2026 21:16:32 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine3.23` - linux; arm variant v6

```console
$ docker pull irssi@sha256:f92de27f07b39d4de8a9601aa186a37841747dec042f6744f5bfbbffae120aea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19475812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fd435a62b75d3e36b20941aba125aae1eaf0a586c639ad28a870a4155127392`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:20:55 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:20:56 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:20:56 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:20:56 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:20:56 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:21:11 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:21:11 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:21:11 GMT
USER user
# Thu, 17 Sep 2026 21:21:11 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e765e23cd63d395e16caec5fabb516f2c4561e0c2ab541e6edbd03480439cb7d`  
		Last Modified: Thu, 17 Sep 2026 21:21:16 GMT  
		Size: 10.0 MB (10024645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:324551f45eba4a0c467375f7d33db15172e045d0b2ad430f411b5f5c485197b2`  
		Last Modified: Thu, 17 Sep 2026 21:21:16 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fb06fdae2cc6198bc3f8bacb48606ed15cb469d8bf9288dfcb2f2dea225e7aa`  
		Last Modified: Thu, 17 Sep 2026 21:21:16 GMT  
		Size: 5.9 MB (5895257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:7a2df418924606188c590ffe74adb74bf8bcfe21c88f3dd345b21d3d98ad8adb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 KB (17423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0154da5c542b9360d347e52ea206e7aa8e1e24c771e4df5ec78246c49c4ece35`

```dockerfile
```

-	Layers:
	-	`sha256:9c9942688435ee195b4abb40f17369fd7015a9cedd64aef9dc04fb84c49b6c98`  
		Last Modified: Thu, 17 Sep 2026 21:21:16 GMT  
		Size: 17.4 KB (17423 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine3.23` - linux; arm variant v7

```console
$ docker pull irssi@sha256:3c078f077a56a2e4eb9a672993819dbe8c93ab0669b592204352498273ff9508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18768878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:907f6758b411b3c1ad9365cc2fb7f0471df79af6b611efde8c6e392fbb6e38c0`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:33 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:19:33 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:19:33 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:19:33 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:19:33 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:19:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:19:48 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:19:48 GMT
USER user
# Thu, 17 Sep 2026 21:19:48 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:203da8b0d73ce2ed493163d965a70dfc73b45c6a08b5f7ee65f453aa70eecbee`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 9.9 MB (9861506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b2f4fdc022b1e8173a616c74a69b41772e14294eb0a7fadfe5ee0904b475e28`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2881f1743d8654c012028175c634e2a3d98599029ae7850dc73ce378497402d9`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 5.6 MB (5643475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:b42c1faed9f1c8792ade29fe0c800f92e0b7054484e460bc480c87f6abfdc897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1311227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8be5fd2cb884f2172e7be54cc8e6abcd551c96f75882772cc953899ce86c7dd9`

```dockerfile
```

-	Layers:
	-	`sha256:85426ef0a2b0045b3566f3fa8edb3a38b6b4b3b0e54d9c0063f1140ab20f960c`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 1.3 MB (1293593 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:711a975e1a07264aff45115fb99e2b7b17a207bd17fac7c13e361c15f2658700`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 17.6 KB (17634 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:c476a2f689d2740e0c0754e1272bf695bee66fa9ab938999c8a8af846e8fb9b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20881634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a9e295ab9a46785055b4e0da98d511d7fd6da2b7016489c904635d28e85583b`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:45 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:15:45 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:15:45 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:15:45 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:15:45 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:15:58 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:15:58 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:15:58 GMT
USER user
# Thu, 17 Sep 2026 21:15:58 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae933df803bacf8c084e10374e5fb17efc6dc469a1c269723c042fbffd4f6e3`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 10.8 MB (10755853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61c01f1857aca5ebd686aadf7ce1abfc7980a25886a207c836c964c34b92cf5a`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26f7534fe82539bd65d9ad721238b86c3a053c8463cf011655f5ecc68a688c01`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 5.9 MB (5938740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:c9a03a3de70e9c9efdf97a0f968405264539fb2f7247585d69479f2f37e745e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4174597976de1803acedcef5d9fc08e1e6557cf81aefa4dc0dab0789ae346d7c`

```dockerfile
```

-	Layers:
	-	`sha256:7f257bf4aa06d19bee25916f0521609480e3030dad28032f9234b1bc1e478a41`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 1.3 MB (1290639 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1d8bd238ea9b35ea2261719f47a1391dffc3231ced5bf22b2d4d49bfd369441`  
		Last Modified: Thu, 17 Sep 2026 21:16:04 GMT  
		Size: 17.7 KB (17682 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine3.23` - linux; 386

```console
$ docker pull irssi@sha256:2b924580e400973b2e5bfccec33db44f0fc600775ecca198c4d486979ab6f179
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20174008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3043da6bea501d9a3578e871a72be45ed29e6be7c64628412bc6d17733d0ba2e`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:28 GMT
ADD alpine-minirootfs-3.23.6-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:28 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:20 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:15:20 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:15:20 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:15:20 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:15:20 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:15:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:15:37 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:15:37 GMT
USER user
# Thu, 17 Sep 2026 21:15:37 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:1f89eeb8219ece88ee6dd2e7cad6761d1e9da9e18f4b7929d9ee0052902df74a`  
		Last Modified: Thu, 17 Sep 2026 20:37:33 GMT  
		Size: 3.7 MB (3675111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29aaf2e9158fd3045c54b43c7c0d50b5411254859765f46cb69eca2b19de3aaf`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 10.4 MB (10352803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91e9333dbf68f5901d7b71bbed963069936b88313349cc499c11b73721c568ee`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb85a6f5fed6a44568eb45e3ec4fb05ad1a89d334917bb1dbf0bfd4c10d1da3`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 6.1 MB (6145109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:e659c8dbce319d971246c9313514dfbdd7cdd18f77506850442219327c410ece
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:970eab1321dd5cdd6bcb4c95da36680a0cce1bb1d060b5b3abbbc3e41970ae7b`

```dockerfile
```

-	Layers:
	-	`sha256:a737820df03c091577cb4c3e3546dfedfee3704c9c9bdb4e5e4ac2d6d24f311d`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 1.3 MB (1291140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65f0a418a065c600f5f2ee9ca0c7d36f37ce7829c84b8e698eb19059d1870086`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 17.4 KB (17443 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-alpine3.23` - linux; ppc64le

```console
$ docker pull irssi@sha256:3c21fd84717506251cee9f1e9c52ce8ae085359fafaa11a0bc1b482d1764b191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21222835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c521982adcf0b48471da508b12f825f7ca3b981b23886499a2346c1851844cc6`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:29:38 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:29:39 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:29:39 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:29:39 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:29:39 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:29:59 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:29:59 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:29:59 GMT
USER user
# Thu, 17 Sep 2026 21:29:59 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eaca6cbc21680e7450381817d3257e03f3c66072b1af3035282607cb48134b3`  
		Last Modified: Thu, 17 Sep 2026 21:30:13 GMT  
		Size: 11.0 MB (11043150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcb74b3e80a9875a556d204fab1a17995c1c0429cb7feff45f82d8e8e427d2dc`  
		Last Modified: Thu, 17 Sep 2026 21:30:12 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6da1a278e7525d6555459e46ae97274c4a6bf908743db15907d2065decc59461`  
		Last Modified: Thu, 17 Sep 2026 21:30:13 GMT  
		Size: 6.4 MB (6363930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:6269ade51584f714e2c348b17371845ff1f86c4fb4ded6969a96a3c144783aea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:827e87a32f2bf46bfbaf3a83aded52309895b8bc52b4f167a472f4c79ca6b537`

```dockerfile
```

-	Layers:
	-	`sha256:f8d99adaeb1b68fd898a82d85724aa88db1f05050ac7739f69e876937e28be24`  
		Last Modified: Thu, 17 Sep 2026 21:30:12 GMT  
		Size: 1.3 MB (1290592 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24524352a71888ddae73576c682ffd5e610a3013295cea88b9b76e4c68f19bae`  
		Last Modified: Thu, 17 Sep 2026 21:30:12 GMT  
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
$ docker pull irssi@sha256:dc3e4fd739b7e6db3d043bf5b634bbf8a86d7154e5de5a554849d6d97d91c316
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21291395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff1fcf3721d9fffc29f5ea301899b1673324764daafafdf85cd15317db8a4383`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:23 GMT
ADD alpine-minirootfs-3.23.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:23 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:24:34 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 22:24:34 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 22:24:34 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 22:24:34 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:24:34 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 22:24:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 22:24:54 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 22:24:54 GMT
USER user
# Thu, 17 Sep 2026 22:24:54 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:4387077d70188f8428b97ed5df25698ad5aa9b8967d00a98ebb627a3e08ae986`  
		Last Modified: Thu, 17 Sep 2026 21:38:32 GMT  
		Size: 3.7 MB (3713255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddd221b881b5b949a6dc1301910298d6aa08f7986d38ad5db32f3f32e1065626`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 11.4 MB (11372049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:924366936084f8cc80f060d9312e567de30ba85a50961bfe580c0e2ce4d8e384`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0950e4ddbb87ff9f2cbc92b51eff184a1b22a3400fa1bdc541a483c8d11085da`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 6.2 MB (6205106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:d2cd424c0daaf6953b4ed39cadd99a9c22a019966d42a82b9ec58683c54c3dd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c2153d984134a7c5d83a1bf956d0c1adca3a7a70d11aff1b75929d425aa2bca`

```dockerfile
```

-	Layers:
	-	`sha256:fd2f967f5698de38dc2d99fa163dcd0a1b6eaaf5c733713ba8060f8c925639e9`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 1.3 MB (1290534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:941c4e3a0a056a677f93b61d0a6e59d95d88d0b04fb38e20a6def104a643bc27`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1.4.5-trixie`

```console
$ docker pull irssi@sha256:896f7c97996c24dbb497d15916b623e3ddd42871c105b76acf3b3d7a434d59ff
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
$ docker pull irssi@sha256:d783491026f486a57dc57b38a15fa67237affadbae5a709061ed333d80a43c3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53923388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8428df78f5248281836be253b31b8572c7eb5b403853ddb4909110cfc1f5ceec`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:19:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:19:00 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:19:00 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:19:00 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:19:00 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:19:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:19:37 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:19:37 GMT
USER user
# Sat, 19 Sep 2026 00:19:37 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd5019de77905dc8d5f19f256c08f4ce3332c324d9bfa3be0660ea7041861a72`  
		Last Modified: Sat, 19 Sep 2026 00:19:48 GMT  
		Size: 19.2 MB (19220216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a7da13254dd514292a1604cdc7d5fb553b77f9e5b7ae592ca74f9d7ca7dd4f4`  
		Last Modified: Sat, 19 Sep 2026 00:19:47 GMT  
		Size: 3.3 KB (3331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc6296f22bba50ac1c34b44a057eb91a3c2dc9e93a5827f4fab75172463a695`  
		Last Modified: Sat, 19 Sep 2026 00:19:48 GMT  
		Size: 4.9 MB (4869391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:2ca15c28486a14058dff386acc645b41ba516d8ecccc2bb62c502cb07f55cc2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5613210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45a51eba4210f84ee5eeddbd13d8a9b5a2c088470d9ec2fb6e0b68bcd67b0758`

```dockerfile
```

-	Layers:
	-	`sha256:8cb4bfd2f3979c228d73b909edce84cc582971ee2f87a5f6d9e3027f9d99a48a`  
		Last Modified: Sat, 19 Sep 2026 00:19:48 GMT  
		Size: 5.6 MB (5594559 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6db124ea92ae621b8ced9af8f0617adf48bb5a97389493722dfe7ccd00055f5a`  
		Last Modified: Sat, 19 Sep 2026 00:19:47 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; arm variant v5

```console
$ docker pull irssi@sha256:7575a2e50d152e497a747afac9d218d9190905d98513da2a57c393388c2f4aa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50969610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ae6a8975bb891ebcc2c73f47b4b3b8d0db3929e861863282e95d9531612718b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:17:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:17:00 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:17:00 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:17:00 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:17:00 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:17:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:17:48 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:17:48 GMT
USER user
# Tue, 25 Aug 2026 00:17:48 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a20095955c6409eff232901e863164eedbe3c59d00d5c6295039a5ed00942a`  
		Last Modified: Tue, 25 Aug 2026 00:17:59 GMT  
		Size: 18.3 MB (18286841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8b205f3d41a8416d2a4289a4fb1c9898102f1402742a2032e5529e8c712c97`  
		Last Modified: Tue, 25 Aug 2026 00:17:58 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206a4895e4addc7283cc8b4991d097a88a0132535abf16d53c3380986995e67a`  
		Last Modified: Tue, 25 Aug 2026 00:17:59 GMT  
		Size: 4.7 MB (4710461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:7aa91950e84e984844a9232b917ab9356c15b059f7777362a5bc722ba178361a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5605151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ba0dfb7a4cf38384fa2a8660e3ff84c977d2ca1a81698158b08dba37304662f`

```dockerfile
```

-	Layers:
	-	`sha256:51f2eba6ad1eb8f5f1fefbbe8b3d696f961d641d041fac671e4e4d687d46c1e5`  
		Last Modified: Tue, 25 Aug 2026 00:17:59 GMT  
		Size: 5.6 MB (5586362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa6dbc2757f075633c376f1333bba7144229f4fb68083c1a6f7519c486484dbe`  
		Last Modified: Tue, 25 Aug 2026 00:17:58 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; arm variant v7

```console
$ docker pull irssi@sha256:3f9f78457512ff79c7fbc925e0680574a32d574c96c34cabb66b988f998a680f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48733260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:903f9529a916d81ddbc0550399d99c4ff4e94703a1fea532abe0021b8e91e55c`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:19:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:19:45 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:19:45 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:19:45 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:19:45 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:20:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:20:27 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:20:27 GMT
USER user
# Sat, 19 Sep 2026 00:20:27 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cdeed6e44a97b217c469937244586e101c9aa27c88d527816d0088418389c42`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 17.9 MB (17919592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b364f2058c8e95eba2ab686d68fbab989b078f1835e7a87bafbf966a63b470ba`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 3.3 KB (3330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb3d3a39e432a9437dd8c77dedc7b4f9f13162be07f89c7cea80b84adef9310f`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 4.6 MB (4561378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:57189829e7b12493ac348139fbdfc8a8c133d1ccaeca0888900fb53165ed7d52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5613919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86708c0cfd3d99bd38cee1cc43f33b816d810f6186b942bca93c3d61f1d90184`

```dockerfile
```

-	Layers:
	-	`sha256:a08c50c789476bf7d7155478b7317157f61db197c65891d3d7df44761a1051c0`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 5.6 MB (5595130 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94441f9b18f2d430566ebd2f923223979d5178f8a6497c518988120709ed22f2`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:4689e93e0971c573d0ac56c217492b2b61c614a2fbe046a3ced8df4a765854db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (54032817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4254d224c2f411199a5afbb7c7d3bf96e5bb4829b0797dd8295ad0b1cfe19155`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:19:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:19:08 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:19:08 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:19:08 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:19:08 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:19:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:19:46 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:19:46 GMT
USER user
# Sat, 19 Sep 2026 00:19:46 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daacf48909065564644359a01e5015c67043c04e5d36f679401e98859b84a8c6`  
		Last Modified: Sat, 19 Sep 2026 00:19:58 GMT  
		Size: 19.1 MB (19057651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6db475b78849c61c3a8dc60553b9ad104c506e9aa0390f9a280fd17abbdc7a45`  
		Last Modified: Sat, 19 Sep 2026 00:19:57 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:995e0a5db82d4abc1e50d7b99805219be7a82c7bce43b8d5d99ee7889fc56782`  
		Last Modified: Sat, 19 Sep 2026 00:19:57 GMT  
		Size: 4.8 MB (4782111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:d8ff022a5012d2152bf1a13cc8cfdd8cd3e87f6447cbff3a85435163f8983588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5619868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7f3608c81c2a75cd40a2a3a1f6cab2de28b8eb386adc1859241c5180789ff9f`

```dockerfile
```

-	Layers:
	-	`sha256:6a95218acd333010c42ab80006172dc9cab99ca5b142d053fd23e6ebb06fce91`  
		Last Modified: Sat, 19 Sep 2026 00:19:57 GMT  
		Size: 5.6 MB (5601035 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef879536f60445669db5f38eda2cc7ade471d30cf3a1df8094aedf3e8b3033cf`  
		Last Modified: Sat, 19 Sep 2026 00:19:57 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; 386

```console
$ docker pull irssi@sha256:f20e61041e82b65ff3432782eba56e3eba34ab08ccd0dcb995155443c74ec9df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54947736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9091e60a388f0245755000598a4dd6265289cdaeacb0332891ce4084fb5c061`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:18:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:18:51 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:18:51 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:18:51 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:18:51 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:19:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:19:32 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:19:32 GMT
USER user
# Sat, 19 Sep 2026 00:19:32 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a6206be0fddcec7e517d667f6453a789bccba615d2bc235b8b2527e8c15f0b5`  
		Last Modified: Sat, 19 Sep 2026 00:19:43 GMT  
		Size: 18.7 MB (18734074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a793c7384f3ecc482ee6918007fd1b8d5af97c0e12f84096c5a2856e2ee5a9d0`  
		Last Modified: Sat, 19 Sep 2026 00:19:42 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c79efed34f59e490d25cf1dcd92b9715bcf1a4043656551c9b0f753d13c468`  
		Last Modified: Sat, 19 Sep 2026 00:19:42 GMT  
		Size: 4.9 MB (4869903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:3cfe2c2c63f1695da2e64aacd2e12283f31c8b13c1bf413b3dc5c3feab5227bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5609277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f418e8af32b34540d54c818e2884a6b82368bbe1d01fd2e5ccd43ccac7d16729`

```dockerfile
```

-	Layers:
	-	`sha256:88598e3c306002be9ad53853ca066789895e6772cbfceba2f9705ffb79f01b19`  
		Last Modified: Sat, 19 Sep 2026 00:19:42 GMT  
		Size: 5.6 MB (5590682 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a403e58a16746a861fffad729aa903e7790dbc606b71ed5cd55733abf328ea11`  
		Last Modified: Sat, 19 Sep 2026 00:19:42 GMT  
		Size: 18.6 KB (18595 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; ppc64le

```console
$ docker pull irssi@sha256:dc0b305706e9cea511738fec4c5f266f5cd4dc2a7755f533069c56af172dd213
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58293193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3bffcda877547a4f3b146f55b45514f7d1789a62bf172c6899fc4eb2607d3df`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:22:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:22:43 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:22:43 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:22:43 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:22:43 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:23:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:23:54 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:23:54 GMT
USER user
# Sat, 19 Sep 2026 00:23:54 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e18aeb6a6a0e7e01e0c7c54485dc97e9b1cf53dc39e836f3feeb143f0c67c8f1`  
		Last Modified: Sat, 19 Sep 2026 00:24:15 GMT  
		Size: 19.5 MB (19548636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6614c0a3388ab533845e85af010bc871bfcfd79d8584a3ca98475e2c9d8b9bab`  
		Last Modified: Sat, 19 Sep 2026 00:24:14 GMT  
		Size: 3.3 KB (3330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18f060deef99a40f955af5b4bf92519b32aca576847a34aad52d230e40d50255`  
		Last Modified: Sat, 19 Sep 2026 00:24:15 GMT  
		Size: 5.1 MB (5099960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:c40487a7766c84f4fa57eff5a5a40445c6d0d621e3d433349ae59711df40fb35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5620313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:206d53359d9f9318f8ddc8958ce68a471e757f1f71242f7db19db052a052423b`

```dockerfile
```

-	Layers:
	-	`sha256:99f31fb755a329d01b0b6afdacbc16103e1c7132ae47a071580ff31c00954f74`  
		Last Modified: Sat, 19 Sep 2026 00:24:15 GMT  
		Size: 5.6 MB (5601590 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87a83d06b06a305b79432d1a9abe9a35425b601026109f1c138ef99225733914`  
		Last Modified: Sat, 19 Sep 2026 00:24:15 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; riscv64

```console
$ docker pull irssi@sha256:63fd5c7be05433447cb3ac611913743c8a2aff559fdd99fbc6e3657c9fc3c416
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51713551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:995429fbf593b610b569eaee31279d838dd4d000d2a12daa8cb17e1b690a1377`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:33:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:33:17 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 02:33:17 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 02:33:17 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 02:33:17 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 02:40:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 02:40:02 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 02:40:02 GMT
USER user
# Tue, 25 Aug 2026 02:40:02 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70e669f37eaed3b6cc866821a03bf1c8152fa8185a058cee5162f993ce7f1b41`  
		Last Modified: Tue, 25 Aug 2026 02:41:56 GMT  
		Size: 18.6 MB (18552281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:947a6ddabc323157585106f2a874a9074c7bc7ec46cd92165d36f3d43ac23631`  
		Last Modified: Tue, 25 Aug 2026 02:41:51 GMT  
		Size: 3.3 KB (3333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a17014c19658b15934711c82546d2c1304652ba25351d995dcde4afe46730e5b`  
		Last Modified: Tue, 25 Aug 2026 02:41:53 GMT  
		Size: 4.9 MB (4861442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:4ac5ed2e7cbc4b525b26c6c02ffcfe1b1752d6be5b29cfa23a4d53e9d4517272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5598839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3721b0521fb40eb75f4566c3ee55d346e9dbb817982aecb1bc3511dd15f5800f`

```dockerfile
```

-	Layers:
	-	`sha256:1a12298551bc406171329277ad84ada0c72efc653417fe7699a9989b8f7388de`  
		Last Modified: Tue, 25 Aug 2026 02:41:54 GMT  
		Size: 5.6 MB (5580116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d4f700030661f47bb0b75cc2cec2b2b1aedf19adbfdbbee75f7abec81deeecf`  
		Last Modified: Tue, 25 Aug 2026 02:41:52 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; s390x

```console
$ docker pull irssi@sha256:5f02011f5185ee6f434826a48d9d63f19232c95fe148e903ce9e46cb7226c1d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54546324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05192773879cd222cc802f0cd3702e4a145f67c100885dfe1c6655a598e70507`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:18:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:18:42 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:18:42 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:18:42 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:18:42 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:19:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:19:31 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:19:31 GMT
USER user
# Tue, 25 Aug 2026 00:19:31 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd37501b3f5271a57e84d41eda4fcfc495913c4611a085e31646a7d8824d0ed0`  
		Last Modified: Tue, 25 Aug 2026 00:19:58 GMT  
		Size: 19.8 MB (19768051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b23c55e2803c63fadea10691613a38ce82f75e170940185db91c1ed5a89a6dc2`  
		Last Modified: Tue, 25 Aug 2026 00:19:56 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54af3f574ac1b41f1028dff19e949c568e6068f37e9462f83c79b7a18a4a4aa3`  
		Last Modified: Tue, 25 Aug 2026 00:19:57 GMT  
		Size: 4.9 MB (4907188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:66321b524e066959c2cd65464eb6a30c1aa82ac6fe568f51d3c474cdef18f7de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe635615631c66e27a63d001537764edc875ab813bb9901c8001acaab2124f56`

```dockerfile
```

-	Layers:
	-	`sha256:212141ad5435723e922d6d1f9c1ea7498b7348dd617f41e2f42eef258042ed5d`  
		Last Modified: Tue, 25 Aug 2026 00:19:57 GMT  
		Size: 5.6 MB (5589718 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64b95e9b60de85b295e74cd35715d1c53f955433fd9ec72ded782b9505146937`  
		Last Modified: Tue, 25 Aug 2026 00:19:56 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:alpine`

```console
$ docker pull irssi@sha256:a9bcfb1c77f131d74d93d3c6a41478e3f6323d13732838c5d4340faf9c053b52
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
$ docker pull irssi@sha256:5d08b1e33043c4fcc026a8b1f43b1d08fb13c61d6ef1318ed192cb009a7524b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20737511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cecde90cd46e7bd82d9622d929750f8bab0215795b7d43e4315dc0b1d98bd56`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:12 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:16:12 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:16:12 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:16:12 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:16:12 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:16:26 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:16:26 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:16:26 GMT
USER user
# Thu, 17 Sep 2026 21:16:26 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d2a5eb32043a2941ca1a3a4904d78b51b0979308fc9cac394125c6927ae5f28`  
		Last Modified: Thu, 17 Sep 2026 21:16:33 GMT  
		Size: 10.8 MB (10820632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e384644f15960ef28c3053ba8f79a0da94d371bcc0436b0c8e3c575acaa42018`  
		Last Modified: Thu, 17 Sep 2026 21:16:32 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:918acbe934f17a4678e45cf05085530b1c0362151af95f6189aab596434a7c2d`  
		Last Modified: Thu, 17 Sep 2026 21:16:32 GMT  
		Size: 6.1 MB (6067387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:44e7298450848fe2f9415d2c5db16f99d83c88fb97916daf53f51da33d9a0790
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fceb077410e80ed9ad203356f541173660da7b9b6a8f210973fdbbad584e0d46`

```dockerfile
```

-	Layers:
	-	`sha256:15a7522aa7342a31eae1fc6977b4610a02d743a4f3d79f542b7d3baa0eab3609`  
		Last Modified: Thu, 17 Sep 2026 21:16:32 GMT  
		Size: 1.3 MB (1291185 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04862f3d2202f274997ae1af9322183d7bc55d1150b5824dc25bb0151c5d4556`  
		Last Modified: Thu, 17 Sep 2026 21:16:32 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine` - linux; arm variant v6

```console
$ docker pull irssi@sha256:f92de27f07b39d4de8a9601aa186a37841747dec042f6744f5bfbbffae120aea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19475812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fd435a62b75d3e36b20941aba125aae1eaf0a586c639ad28a870a4155127392`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:20:55 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:20:56 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:20:56 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:20:56 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:20:56 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:21:11 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:21:11 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:21:11 GMT
USER user
# Thu, 17 Sep 2026 21:21:11 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e765e23cd63d395e16caec5fabb516f2c4561e0c2ab541e6edbd03480439cb7d`  
		Last Modified: Thu, 17 Sep 2026 21:21:16 GMT  
		Size: 10.0 MB (10024645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:324551f45eba4a0c467375f7d33db15172e045d0b2ad430f411b5f5c485197b2`  
		Last Modified: Thu, 17 Sep 2026 21:21:16 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fb06fdae2cc6198bc3f8bacb48606ed15cb469d8bf9288dfcb2f2dea225e7aa`  
		Last Modified: Thu, 17 Sep 2026 21:21:16 GMT  
		Size: 5.9 MB (5895257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:7a2df418924606188c590ffe74adb74bf8bcfe21c88f3dd345b21d3d98ad8adb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 KB (17423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0154da5c542b9360d347e52ea206e7aa8e1e24c771e4df5ec78246c49c4ece35`

```dockerfile
```

-	Layers:
	-	`sha256:9c9942688435ee195b4abb40f17369fd7015a9cedd64aef9dc04fb84c49b6c98`  
		Last Modified: Thu, 17 Sep 2026 21:21:16 GMT  
		Size: 17.4 KB (17423 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine` - linux; arm variant v7

```console
$ docker pull irssi@sha256:3c078f077a56a2e4eb9a672993819dbe8c93ab0669b592204352498273ff9508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18768878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:907f6758b411b3c1ad9365cc2fb7f0471df79af6b611efde8c6e392fbb6e38c0`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:33 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:19:33 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:19:33 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:19:33 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:19:33 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:19:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:19:48 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:19:48 GMT
USER user
# Thu, 17 Sep 2026 21:19:48 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:203da8b0d73ce2ed493163d965a70dfc73b45c6a08b5f7ee65f453aa70eecbee`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 9.9 MB (9861506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b2f4fdc022b1e8173a616c74a69b41772e14294eb0a7fadfe5ee0904b475e28`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2881f1743d8654c012028175c634e2a3d98599029ae7850dc73ce378497402d9`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 5.6 MB (5643475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:b42c1faed9f1c8792ade29fe0c800f92e0b7054484e460bc480c87f6abfdc897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1311227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8be5fd2cb884f2172e7be54cc8e6abcd551c96f75882772cc953899ce86c7dd9`

```dockerfile
```

-	Layers:
	-	`sha256:85426ef0a2b0045b3566f3fa8edb3a38b6b4b3b0e54d9c0063f1140ab20f960c`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 1.3 MB (1293593 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:711a975e1a07264aff45115fb99e2b7b17a207bd17fac7c13e361c15f2658700`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 17.6 KB (17634 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:c476a2f689d2740e0c0754e1272bf695bee66fa9ab938999c8a8af846e8fb9b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20881634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a9e295ab9a46785055b4e0da98d511d7fd6da2b7016489c904635d28e85583b`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:45 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:15:45 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:15:45 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:15:45 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:15:45 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:15:58 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:15:58 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:15:58 GMT
USER user
# Thu, 17 Sep 2026 21:15:58 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae933df803bacf8c084e10374e5fb17efc6dc469a1c269723c042fbffd4f6e3`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 10.8 MB (10755853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61c01f1857aca5ebd686aadf7ce1abfc7980a25886a207c836c964c34b92cf5a`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26f7534fe82539bd65d9ad721238b86c3a053c8463cf011655f5ecc68a688c01`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 5.9 MB (5938740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:c9a03a3de70e9c9efdf97a0f968405264539fb2f7247585d69479f2f37e745e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4174597976de1803acedcef5d9fc08e1e6557cf81aefa4dc0dab0789ae346d7c`

```dockerfile
```

-	Layers:
	-	`sha256:7f257bf4aa06d19bee25916f0521609480e3030dad28032f9234b1bc1e478a41`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 1.3 MB (1290639 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1d8bd238ea9b35ea2261719f47a1391dffc3231ced5bf22b2d4d49bfd369441`  
		Last Modified: Thu, 17 Sep 2026 21:16:04 GMT  
		Size: 17.7 KB (17682 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine` - linux; 386

```console
$ docker pull irssi@sha256:2b924580e400973b2e5bfccec33db44f0fc600775ecca198c4d486979ab6f179
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20174008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3043da6bea501d9a3578e871a72be45ed29e6be7c64628412bc6d17733d0ba2e`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:28 GMT
ADD alpine-minirootfs-3.23.6-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:28 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:20 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:15:20 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:15:20 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:15:20 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:15:20 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:15:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:15:37 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:15:37 GMT
USER user
# Thu, 17 Sep 2026 21:15:37 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:1f89eeb8219ece88ee6dd2e7cad6761d1e9da9e18f4b7929d9ee0052902df74a`  
		Last Modified: Thu, 17 Sep 2026 20:37:33 GMT  
		Size: 3.7 MB (3675111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29aaf2e9158fd3045c54b43c7c0d50b5411254859765f46cb69eca2b19de3aaf`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 10.4 MB (10352803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91e9333dbf68f5901d7b71bbed963069936b88313349cc499c11b73721c568ee`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb85a6f5fed6a44568eb45e3ec4fb05ad1a89d334917bb1dbf0bfd4c10d1da3`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 6.1 MB (6145109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:e659c8dbce319d971246c9313514dfbdd7cdd18f77506850442219327c410ece
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:970eab1321dd5cdd6bcb4c95da36680a0cce1bb1d060b5b3abbbc3e41970ae7b`

```dockerfile
```

-	Layers:
	-	`sha256:a737820df03c091577cb4c3e3546dfedfee3704c9c9bdb4e5e4ac2d6d24f311d`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 1.3 MB (1291140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65f0a418a065c600f5f2ee9ca0c7d36f37ce7829c84b8e698eb19059d1870086`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 17.4 KB (17443 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine` - linux; ppc64le

```console
$ docker pull irssi@sha256:3c21fd84717506251cee9f1e9c52ce8ae085359fafaa11a0bc1b482d1764b191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21222835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c521982adcf0b48471da508b12f825f7ca3b981b23886499a2346c1851844cc6`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:29:38 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:29:39 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:29:39 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:29:39 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:29:39 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:29:59 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:29:59 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:29:59 GMT
USER user
# Thu, 17 Sep 2026 21:29:59 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eaca6cbc21680e7450381817d3257e03f3c66072b1af3035282607cb48134b3`  
		Last Modified: Thu, 17 Sep 2026 21:30:13 GMT  
		Size: 11.0 MB (11043150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcb74b3e80a9875a556d204fab1a17995c1c0429cb7feff45f82d8e8e427d2dc`  
		Last Modified: Thu, 17 Sep 2026 21:30:12 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6da1a278e7525d6555459e46ae97274c4a6bf908743db15907d2065decc59461`  
		Last Modified: Thu, 17 Sep 2026 21:30:13 GMT  
		Size: 6.4 MB (6363930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:6269ade51584f714e2c348b17371845ff1f86c4fb4ded6969a96a3c144783aea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:827e87a32f2bf46bfbaf3a83aded52309895b8bc52b4f167a472f4c79ca6b537`

```dockerfile
```

-	Layers:
	-	`sha256:f8d99adaeb1b68fd898a82d85724aa88db1f05050ac7739f69e876937e28be24`  
		Last Modified: Thu, 17 Sep 2026 21:30:12 GMT  
		Size: 1.3 MB (1290592 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24524352a71888ddae73576c682ffd5e610a3013295cea88b9b76e4c68f19bae`  
		Last Modified: Thu, 17 Sep 2026 21:30:12 GMT  
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
$ docker pull irssi@sha256:dc3e4fd739b7e6db3d043bf5b634bbf8a86d7154e5de5a554849d6d97d91c316
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21291395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff1fcf3721d9fffc29f5ea301899b1673324764daafafdf85cd15317db8a4383`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:23 GMT
ADD alpine-minirootfs-3.23.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:23 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:24:34 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 22:24:34 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 22:24:34 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 22:24:34 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:24:34 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 22:24:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 22:24:54 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 22:24:54 GMT
USER user
# Thu, 17 Sep 2026 22:24:54 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:4387077d70188f8428b97ed5df25698ad5aa9b8967d00a98ebb627a3e08ae986`  
		Last Modified: Thu, 17 Sep 2026 21:38:32 GMT  
		Size: 3.7 MB (3713255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddd221b881b5b949a6dc1301910298d6aa08f7986d38ad5db32f3f32e1065626`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 11.4 MB (11372049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:924366936084f8cc80f060d9312e567de30ba85a50961bfe580c0e2ce4d8e384`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0950e4ddbb87ff9f2cbc92b51eff184a1b22a3400fa1bdc541a483c8d11085da`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 6.2 MB (6205106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:d2cd424c0daaf6953b4ed39cadd99a9c22a019966d42a82b9ec58683c54c3dd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c2153d984134a7c5d83a1bf956d0c1adca3a7a70d11aff1b75929d425aa2bca`

```dockerfile
```

-	Layers:
	-	`sha256:fd2f967f5698de38dc2d99fa163dcd0a1b6eaaf5c733713ba8060f8c925639e9`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 1.3 MB (1290534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:941c4e3a0a056a677f93b61d0a6e59d95d88d0b04fb38e20a6def104a643bc27`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:alpine3.23`

```console
$ docker pull irssi@sha256:a9bcfb1c77f131d74d93d3c6a41478e3f6323d13732838c5d4340faf9c053b52
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
$ docker pull irssi@sha256:5d08b1e33043c4fcc026a8b1f43b1d08fb13c61d6ef1318ed192cb009a7524b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20737511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cecde90cd46e7bd82d9622d929750f8bab0215795b7d43e4315dc0b1d98bd56`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:12 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:16:12 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:16:12 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:16:12 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:16:12 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:16:26 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:16:26 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:16:26 GMT
USER user
# Thu, 17 Sep 2026 21:16:26 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d2a5eb32043a2941ca1a3a4904d78b51b0979308fc9cac394125c6927ae5f28`  
		Last Modified: Thu, 17 Sep 2026 21:16:33 GMT  
		Size: 10.8 MB (10820632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e384644f15960ef28c3053ba8f79a0da94d371bcc0436b0c8e3c575acaa42018`  
		Last Modified: Thu, 17 Sep 2026 21:16:32 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:918acbe934f17a4678e45cf05085530b1c0362151af95f6189aab596434a7c2d`  
		Last Modified: Thu, 17 Sep 2026 21:16:32 GMT  
		Size: 6.1 MB (6067387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:44e7298450848fe2f9415d2c5db16f99d83c88fb97916daf53f51da33d9a0790
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fceb077410e80ed9ad203356f541173660da7b9b6a8f210973fdbbad584e0d46`

```dockerfile
```

-	Layers:
	-	`sha256:15a7522aa7342a31eae1fc6977b4610a02d743a4f3d79f542b7d3baa0eab3609`  
		Last Modified: Thu, 17 Sep 2026 21:16:32 GMT  
		Size: 1.3 MB (1291185 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04862f3d2202f274997ae1af9322183d7bc55d1150b5824dc25bb0151c5d4556`  
		Last Modified: Thu, 17 Sep 2026 21:16:32 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine3.23` - linux; arm variant v6

```console
$ docker pull irssi@sha256:f92de27f07b39d4de8a9601aa186a37841747dec042f6744f5bfbbffae120aea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19475812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fd435a62b75d3e36b20941aba125aae1eaf0a586c639ad28a870a4155127392`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:20:55 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:20:56 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:20:56 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:20:56 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:20:56 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:21:11 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:21:11 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:21:11 GMT
USER user
# Thu, 17 Sep 2026 21:21:11 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e765e23cd63d395e16caec5fabb516f2c4561e0c2ab541e6edbd03480439cb7d`  
		Last Modified: Thu, 17 Sep 2026 21:21:16 GMT  
		Size: 10.0 MB (10024645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:324551f45eba4a0c467375f7d33db15172e045d0b2ad430f411b5f5c485197b2`  
		Last Modified: Thu, 17 Sep 2026 21:21:16 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fb06fdae2cc6198bc3f8bacb48606ed15cb469d8bf9288dfcb2f2dea225e7aa`  
		Last Modified: Thu, 17 Sep 2026 21:21:16 GMT  
		Size: 5.9 MB (5895257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:7a2df418924606188c590ffe74adb74bf8bcfe21c88f3dd345b21d3d98ad8adb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 KB (17423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0154da5c542b9360d347e52ea206e7aa8e1e24c771e4df5ec78246c49c4ece35`

```dockerfile
```

-	Layers:
	-	`sha256:9c9942688435ee195b4abb40f17369fd7015a9cedd64aef9dc04fb84c49b6c98`  
		Last Modified: Thu, 17 Sep 2026 21:21:16 GMT  
		Size: 17.4 KB (17423 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine3.23` - linux; arm variant v7

```console
$ docker pull irssi@sha256:3c078f077a56a2e4eb9a672993819dbe8c93ab0669b592204352498273ff9508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18768878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:907f6758b411b3c1ad9365cc2fb7f0471df79af6b611efde8c6e392fbb6e38c0`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:33 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:19:33 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:19:33 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:19:33 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:19:33 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:19:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:19:48 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:19:48 GMT
USER user
# Thu, 17 Sep 2026 21:19:48 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:203da8b0d73ce2ed493163d965a70dfc73b45c6a08b5f7ee65f453aa70eecbee`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 9.9 MB (9861506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b2f4fdc022b1e8173a616c74a69b41772e14294eb0a7fadfe5ee0904b475e28`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2881f1743d8654c012028175c634e2a3d98599029ae7850dc73ce378497402d9`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 5.6 MB (5643475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:b42c1faed9f1c8792ade29fe0c800f92e0b7054484e460bc480c87f6abfdc897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1311227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8be5fd2cb884f2172e7be54cc8e6abcd551c96f75882772cc953899ce86c7dd9`

```dockerfile
```

-	Layers:
	-	`sha256:85426ef0a2b0045b3566f3fa8edb3a38b6b4b3b0e54d9c0063f1140ab20f960c`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 1.3 MB (1293593 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:711a975e1a07264aff45115fb99e2b7b17a207bd17fac7c13e361c15f2658700`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 17.6 KB (17634 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine3.23` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:c476a2f689d2740e0c0754e1272bf695bee66fa9ab938999c8a8af846e8fb9b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20881634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a9e295ab9a46785055b4e0da98d511d7fd6da2b7016489c904635d28e85583b`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:45 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:15:45 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:15:45 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:15:45 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:15:45 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:15:58 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:15:58 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:15:58 GMT
USER user
# Thu, 17 Sep 2026 21:15:58 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae933df803bacf8c084e10374e5fb17efc6dc469a1c269723c042fbffd4f6e3`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 10.8 MB (10755853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61c01f1857aca5ebd686aadf7ce1abfc7980a25886a207c836c964c34b92cf5a`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26f7534fe82539bd65d9ad721238b86c3a053c8463cf011655f5ecc68a688c01`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 5.9 MB (5938740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:c9a03a3de70e9c9efdf97a0f968405264539fb2f7247585d69479f2f37e745e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4174597976de1803acedcef5d9fc08e1e6557cf81aefa4dc0dab0789ae346d7c`

```dockerfile
```

-	Layers:
	-	`sha256:7f257bf4aa06d19bee25916f0521609480e3030dad28032f9234b1bc1e478a41`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 1.3 MB (1290639 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1d8bd238ea9b35ea2261719f47a1391dffc3231ced5bf22b2d4d49bfd369441`  
		Last Modified: Thu, 17 Sep 2026 21:16:04 GMT  
		Size: 17.7 KB (17682 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine3.23` - linux; 386

```console
$ docker pull irssi@sha256:2b924580e400973b2e5bfccec33db44f0fc600775ecca198c4d486979ab6f179
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20174008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3043da6bea501d9a3578e871a72be45ed29e6be7c64628412bc6d17733d0ba2e`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:28 GMT
ADD alpine-minirootfs-3.23.6-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:28 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:20 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:15:20 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:15:20 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:15:20 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:15:20 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:15:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:15:37 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:15:37 GMT
USER user
# Thu, 17 Sep 2026 21:15:37 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:1f89eeb8219ece88ee6dd2e7cad6761d1e9da9e18f4b7929d9ee0052902df74a`  
		Last Modified: Thu, 17 Sep 2026 20:37:33 GMT  
		Size: 3.7 MB (3675111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29aaf2e9158fd3045c54b43c7c0d50b5411254859765f46cb69eca2b19de3aaf`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 10.4 MB (10352803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91e9333dbf68f5901d7b71bbed963069936b88313349cc499c11b73721c568ee`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb85a6f5fed6a44568eb45e3ec4fb05ad1a89d334917bb1dbf0bfd4c10d1da3`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 6.1 MB (6145109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:e659c8dbce319d971246c9313514dfbdd7cdd18f77506850442219327c410ece
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:970eab1321dd5cdd6bcb4c95da36680a0cce1bb1d060b5b3abbbc3e41970ae7b`

```dockerfile
```

-	Layers:
	-	`sha256:a737820df03c091577cb4c3e3546dfedfee3704c9c9bdb4e5e4ac2d6d24f311d`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 1.3 MB (1291140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65f0a418a065c600f5f2ee9ca0c7d36f37ce7829c84b8e698eb19059d1870086`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 17.4 KB (17443 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine3.23` - linux; ppc64le

```console
$ docker pull irssi@sha256:3c21fd84717506251cee9f1e9c52ce8ae085359fafaa11a0bc1b482d1764b191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21222835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c521982adcf0b48471da508b12f825f7ca3b981b23886499a2346c1851844cc6`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:29:38 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:29:39 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:29:39 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:29:39 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:29:39 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:29:59 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:29:59 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:29:59 GMT
USER user
# Thu, 17 Sep 2026 21:29:59 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eaca6cbc21680e7450381817d3257e03f3c66072b1af3035282607cb48134b3`  
		Last Modified: Thu, 17 Sep 2026 21:30:13 GMT  
		Size: 11.0 MB (11043150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcb74b3e80a9875a556d204fab1a17995c1c0429cb7feff45f82d8e8e427d2dc`  
		Last Modified: Thu, 17 Sep 2026 21:30:12 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6da1a278e7525d6555459e46ae97274c4a6bf908743db15907d2065decc59461`  
		Last Modified: Thu, 17 Sep 2026 21:30:13 GMT  
		Size: 6.4 MB (6363930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:6269ade51584f714e2c348b17371845ff1f86c4fb4ded6969a96a3c144783aea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:827e87a32f2bf46bfbaf3a83aded52309895b8bc52b4f167a472f4c79ca6b537`

```dockerfile
```

-	Layers:
	-	`sha256:f8d99adaeb1b68fd898a82d85724aa88db1f05050ac7739f69e876937e28be24`  
		Last Modified: Thu, 17 Sep 2026 21:30:12 GMT  
		Size: 1.3 MB (1290592 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24524352a71888ddae73576c682ffd5e610a3013295cea88b9b76e4c68f19bae`  
		Last Modified: Thu, 17 Sep 2026 21:30:12 GMT  
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
$ docker pull irssi@sha256:dc3e4fd739b7e6db3d043bf5b634bbf8a86d7154e5de5a554849d6d97d91c316
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21291395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff1fcf3721d9fffc29f5ea301899b1673324764daafafdf85cd15317db8a4383`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:23 GMT
ADD alpine-minirootfs-3.23.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:23 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:24:34 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 22:24:34 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 22:24:34 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 22:24:34 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:24:34 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 22:24:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 22:24:54 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 22:24:54 GMT
USER user
# Thu, 17 Sep 2026 22:24:54 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:4387077d70188f8428b97ed5df25698ad5aa9b8967d00a98ebb627a3e08ae986`  
		Last Modified: Thu, 17 Sep 2026 21:38:32 GMT  
		Size: 3.7 MB (3713255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddd221b881b5b949a6dc1301910298d6aa08f7986d38ad5db32f3f32e1065626`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 11.4 MB (11372049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:924366936084f8cc80f060d9312e567de30ba85a50961bfe580c0e2ce4d8e384`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0950e4ddbb87ff9f2cbc92b51eff184a1b22a3400fa1bdc541a483c8d11085da`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 6.2 MB (6205106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:d2cd424c0daaf6953b4ed39cadd99a9c22a019966d42a82b9ec58683c54c3dd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c2153d984134a7c5d83a1bf956d0c1adca3a7a70d11aff1b75929d425aa2bca`

```dockerfile
```

-	Layers:
	-	`sha256:fd2f967f5698de38dc2d99fa163dcd0a1b6eaaf5c733713ba8060f8c925639e9`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 1.3 MB (1290534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:941c4e3a0a056a677f93b61d0a6e59d95d88d0b04fb38e20a6def104a643bc27`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:latest`

```console
$ docker pull irssi@sha256:896f7c97996c24dbb497d15916b623e3ddd42871c105b76acf3b3d7a434d59ff
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
$ docker pull irssi@sha256:d783491026f486a57dc57b38a15fa67237affadbae5a709061ed333d80a43c3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53923388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8428df78f5248281836be253b31b8572c7eb5b403853ddb4909110cfc1f5ceec`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:19:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:19:00 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:19:00 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:19:00 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:19:00 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:19:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:19:37 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:19:37 GMT
USER user
# Sat, 19 Sep 2026 00:19:37 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd5019de77905dc8d5f19f256c08f4ce3332c324d9bfa3be0660ea7041861a72`  
		Last Modified: Sat, 19 Sep 2026 00:19:48 GMT  
		Size: 19.2 MB (19220216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a7da13254dd514292a1604cdc7d5fb553b77f9e5b7ae592ca74f9d7ca7dd4f4`  
		Last Modified: Sat, 19 Sep 2026 00:19:47 GMT  
		Size: 3.3 KB (3331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc6296f22bba50ac1c34b44a057eb91a3c2dc9e93a5827f4fab75172463a695`  
		Last Modified: Sat, 19 Sep 2026 00:19:48 GMT  
		Size: 4.9 MB (4869391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:2ca15c28486a14058dff386acc645b41ba516d8ecccc2bb62c502cb07f55cc2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5613210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45a51eba4210f84ee5eeddbd13d8a9b5a2c088470d9ec2fb6e0b68bcd67b0758`

```dockerfile
```

-	Layers:
	-	`sha256:8cb4bfd2f3979c228d73b909edce84cc582971ee2f87a5f6d9e3027f9d99a48a`  
		Last Modified: Sat, 19 Sep 2026 00:19:48 GMT  
		Size: 5.6 MB (5594559 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6db124ea92ae621b8ced9af8f0617adf48bb5a97389493722dfe7ccd00055f5a`  
		Last Modified: Sat, 19 Sep 2026 00:19:47 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; arm variant v5

```console
$ docker pull irssi@sha256:7575a2e50d152e497a747afac9d218d9190905d98513da2a57c393388c2f4aa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50969610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ae6a8975bb891ebcc2c73f47b4b3b8d0db3929e861863282e95d9531612718b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:17:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:17:00 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:17:00 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:17:00 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:17:00 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:17:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:17:48 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:17:48 GMT
USER user
# Tue, 25 Aug 2026 00:17:48 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a20095955c6409eff232901e863164eedbe3c59d00d5c6295039a5ed00942a`  
		Last Modified: Tue, 25 Aug 2026 00:17:59 GMT  
		Size: 18.3 MB (18286841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8b205f3d41a8416d2a4289a4fb1c9898102f1402742a2032e5529e8c712c97`  
		Last Modified: Tue, 25 Aug 2026 00:17:58 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206a4895e4addc7283cc8b4991d097a88a0132535abf16d53c3380986995e67a`  
		Last Modified: Tue, 25 Aug 2026 00:17:59 GMT  
		Size: 4.7 MB (4710461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:7aa91950e84e984844a9232b917ab9356c15b059f7777362a5bc722ba178361a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5605151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ba0dfb7a4cf38384fa2a8660e3ff84c977d2ca1a81698158b08dba37304662f`

```dockerfile
```

-	Layers:
	-	`sha256:51f2eba6ad1eb8f5f1fefbbe8b3d696f961d641d041fac671e4e4d687d46c1e5`  
		Last Modified: Tue, 25 Aug 2026 00:17:59 GMT  
		Size: 5.6 MB (5586362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa6dbc2757f075633c376f1333bba7144229f4fb68083c1a6f7519c486484dbe`  
		Last Modified: Tue, 25 Aug 2026 00:17:58 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; arm variant v7

```console
$ docker pull irssi@sha256:3f9f78457512ff79c7fbc925e0680574a32d574c96c34cabb66b988f998a680f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48733260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:903f9529a916d81ddbc0550399d99c4ff4e94703a1fea532abe0021b8e91e55c`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:19:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:19:45 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:19:45 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:19:45 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:19:45 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:20:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:20:27 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:20:27 GMT
USER user
# Sat, 19 Sep 2026 00:20:27 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cdeed6e44a97b217c469937244586e101c9aa27c88d527816d0088418389c42`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 17.9 MB (17919592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b364f2058c8e95eba2ab686d68fbab989b078f1835e7a87bafbf966a63b470ba`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 3.3 KB (3330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb3d3a39e432a9437dd8c77dedc7b4f9f13162be07f89c7cea80b84adef9310f`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 4.6 MB (4561378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:57189829e7b12493ac348139fbdfc8a8c133d1ccaeca0888900fb53165ed7d52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5613919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86708c0cfd3d99bd38cee1cc43f33b816d810f6186b942bca93c3d61f1d90184`

```dockerfile
```

-	Layers:
	-	`sha256:a08c50c789476bf7d7155478b7317157f61db197c65891d3d7df44761a1051c0`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 5.6 MB (5595130 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94441f9b18f2d430566ebd2f923223979d5178f8a6497c518988120709ed22f2`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:4689e93e0971c573d0ac56c217492b2b61c614a2fbe046a3ced8df4a765854db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (54032817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4254d224c2f411199a5afbb7c7d3bf96e5bb4829b0797dd8295ad0b1cfe19155`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:19:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:19:08 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:19:08 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:19:08 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:19:08 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:19:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:19:46 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:19:46 GMT
USER user
# Sat, 19 Sep 2026 00:19:46 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daacf48909065564644359a01e5015c67043c04e5d36f679401e98859b84a8c6`  
		Last Modified: Sat, 19 Sep 2026 00:19:58 GMT  
		Size: 19.1 MB (19057651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6db475b78849c61c3a8dc60553b9ad104c506e9aa0390f9a280fd17abbdc7a45`  
		Last Modified: Sat, 19 Sep 2026 00:19:57 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:995e0a5db82d4abc1e50d7b99805219be7a82c7bce43b8d5d99ee7889fc56782`  
		Last Modified: Sat, 19 Sep 2026 00:19:57 GMT  
		Size: 4.8 MB (4782111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:d8ff022a5012d2152bf1a13cc8cfdd8cd3e87f6447cbff3a85435163f8983588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5619868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7f3608c81c2a75cd40a2a3a1f6cab2de28b8eb386adc1859241c5180789ff9f`

```dockerfile
```

-	Layers:
	-	`sha256:6a95218acd333010c42ab80006172dc9cab99ca5b142d053fd23e6ebb06fce91`  
		Last Modified: Sat, 19 Sep 2026 00:19:57 GMT  
		Size: 5.6 MB (5601035 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef879536f60445669db5f38eda2cc7ade471d30cf3a1df8094aedf3e8b3033cf`  
		Last Modified: Sat, 19 Sep 2026 00:19:57 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; 386

```console
$ docker pull irssi@sha256:f20e61041e82b65ff3432782eba56e3eba34ab08ccd0dcb995155443c74ec9df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54947736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9091e60a388f0245755000598a4dd6265289cdaeacb0332891ce4084fb5c061`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:18:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:18:51 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:18:51 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:18:51 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:18:51 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:19:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:19:32 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:19:32 GMT
USER user
# Sat, 19 Sep 2026 00:19:32 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a6206be0fddcec7e517d667f6453a789bccba615d2bc235b8b2527e8c15f0b5`  
		Last Modified: Sat, 19 Sep 2026 00:19:43 GMT  
		Size: 18.7 MB (18734074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a793c7384f3ecc482ee6918007fd1b8d5af97c0e12f84096c5a2856e2ee5a9d0`  
		Last Modified: Sat, 19 Sep 2026 00:19:42 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c79efed34f59e490d25cf1dcd92b9715bcf1a4043656551c9b0f753d13c468`  
		Last Modified: Sat, 19 Sep 2026 00:19:42 GMT  
		Size: 4.9 MB (4869903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:3cfe2c2c63f1695da2e64aacd2e12283f31c8b13c1bf413b3dc5c3feab5227bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5609277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f418e8af32b34540d54c818e2884a6b82368bbe1d01fd2e5ccd43ccac7d16729`

```dockerfile
```

-	Layers:
	-	`sha256:88598e3c306002be9ad53853ca066789895e6772cbfceba2f9705ffb79f01b19`  
		Last Modified: Sat, 19 Sep 2026 00:19:42 GMT  
		Size: 5.6 MB (5590682 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a403e58a16746a861fffad729aa903e7790dbc606b71ed5cd55733abf328ea11`  
		Last Modified: Sat, 19 Sep 2026 00:19:42 GMT  
		Size: 18.6 KB (18595 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; ppc64le

```console
$ docker pull irssi@sha256:dc0b305706e9cea511738fec4c5f266f5cd4dc2a7755f533069c56af172dd213
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58293193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3bffcda877547a4f3b146f55b45514f7d1789a62bf172c6899fc4eb2607d3df`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:22:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:22:43 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:22:43 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:22:43 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:22:43 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:23:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:23:54 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:23:54 GMT
USER user
# Sat, 19 Sep 2026 00:23:54 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e18aeb6a6a0e7e01e0c7c54485dc97e9b1cf53dc39e836f3feeb143f0c67c8f1`  
		Last Modified: Sat, 19 Sep 2026 00:24:15 GMT  
		Size: 19.5 MB (19548636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6614c0a3388ab533845e85af010bc871bfcfd79d8584a3ca98475e2c9d8b9bab`  
		Last Modified: Sat, 19 Sep 2026 00:24:14 GMT  
		Size: 3.3 KB (3330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18f060deef99a40f955af5b4bf92519b32aca576847a34aad52d230e40d50255`  
		Last Modified: Sat, 19 Sep 2026 00:24:15 GMT  
		Size: 5.1 MB (5099960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:c40487a7766c84f4fa57eff5a5a40445c6d0d621e3d433349ae59711df40fb35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5620313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:206d53359d9f9318f8ddc8958ce68a471e757f1f71242f7db19db052a052423b`

```dockerfile
```

-	Layers:
	-	`sha256:99f31fb755a329d01b0b6afdacbc16103e1c7132ae47a071580ff31c00954f74`  
		Last Modified: Sat, 19 Sep 2026 00:24:15 GMT  
		Size: 5.6 MB (5601590 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87a83d06b06a305b79432d1a9abe9a35425b601026109f1c138ef99225733914`  
		Last Modified: Sat, 19 Sep 2026 00:24:15 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; riscv64

```console
$ docker pull irssi@sha256:63fd5c7be05433447cb3ac611913743c8a2aff559fdd99fbc6e3657c9fc3c416
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51713551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:995429fbf593b610b569eaee31279d838dd4d000d2a12daa8cb17e1b690a1377`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:33:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:33:17 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 02:33:17 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 02:33:17 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 02:33:17 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 02:40:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 02:40:02 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 02:40:02 GMT
USER user
# Tue, 25 Aug 2026 02:40:02 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70e669f37eaed3b6cc866821a03bf1c8152fa8185a058cee5162f993ce7f1b41`  
		Last Modified: Tue, 25 Aug 2026 02:41:56 GMT  
		Size: 18.6 MB (18552281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:947a6ddabc323157585106f2a874a9074c7bc7ec46cd92165d36f3d43ac23631`  
		Last Modified: Tue, 25 Aug 2026 02:41:51 GMT  
		Size: 3.3 KB (3333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a17014c19658b15934711c82546d2c1304652ba25351d995dcde4afe46730e5b`  
		Last Modified: Tue, 25 Aug 2026 02:41:53 GMT  
		Size: 4.9 MB (4861442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:4ac5ed2e7cbc4b525b26c6c02ffcfe1b1752d6be5b29cfa23a4d53e9d4517272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5598839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3721b0521fb40eb75f4566c3ee55d346e9dbb817982aecb1bc3511dd15f5800f`

```dockerfile
```

-	Layers:
	-	`sha256:1a12298551bc406171329277ad84ada0c72efc653417fe7699a9989b8f7388de`  
		Last Modified: Tue, 25 Aug 2026 02:41:54 GMT  
		Size: 5.6 MB (5580116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d4f700030661f47bb0b75cc2cec2b2b1aedf19adbfdbbee75f7abec81deeecf`  
		Last Modified: Tue, 25 Aug 2026 02:41:52 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; s390x

```console
$ docker pull irssi@sha256:5f02011f5185ee6f434826a48d9d63f19232c95fe148e903ce9e46cb7226c1d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54546324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05192773879cd222cc802f0cd3702e4a145f67c100885dfe1c6655a598e70507`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:18:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:18:42 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:18:42 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:18:42 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:18:42 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:19:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:19:31 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:19:31 GMT
USER user
# Tue, 25 Aug 2026 00:19:31 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd37501b3f5271a57e84d41eda4fcfc495913c4611a085e31646a7d8824d0ed0`  
		Last Modified: Tue, 25 Aug 2026 00:19:58 GMT  
		Size: 19.8 MB (19768051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b23c55e2803c63fadea10691613a38ce82f75e170940185db91c1ed5a89a6dc2`  
		Last Modified: Tue, 25 Aug 2026 00:19:56 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54af3f574ac1b41f1028dff19e949c568e6068f37e9462f83c79b7a18a4a4aa3`  
		Last Modified: Tue, 25 Aug 2026 00:19:57 GMT  
		Size: 4.9 MB (4907188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:66321b524e066959c2cd65464eb6a30c1aa82ac6fe568f51d3c474cdef18f7de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe635615631c66e27a63d001537764edc875ab813bb9901c8001acaab2124f56`

```dockerfile
```

-	Layers:
	-	`sha256:212141ad5435723e922d6d1f9c1ea7498b7348dd617f41e2f42eef258042ed5d`  
		Last Modified: Tue, 25 Aug 2026 00:19:57 GMT  
		Size: 5.6 MB (5589718 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64b95e9b60de85b295e74cd35715d1c53f955433fd9ec72ded782b9505146937`  
		Last Modified: Tue, 25 Aug 2026 00:19:56 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:trixie`

```console
$ docker pull irssi@sha256:896f7c97996c24dbb497d15916b623e3ddd42871c105b76acf3b3d7a434d59ff
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
$ docker pull irssi@sha256:d783491026f486a57dc57b38a15fa67237affadbae5a709061ed333d80a43c3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53923388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8428df78f5248281836be253b31b8572c7eb5b403853ddb4909110cfc1f5ceec`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:19:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:19:00 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:19:00 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:19:00 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:19:00 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:19:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:19:37 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:19:37 GMT
USER user
# Sat, 19 Sep 2026 00:19:37 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd5019de77905dc8d5f19f256c08f4ce3332c324d9bfa3be0660ea7041861a72`  
		Last Modified: Sat, 19 Sep 2026 00:19:48 GMT  
		Size: 19.2 MB (19220216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a7da13254dd514292a1604cdc7d5fb553b77f9e5b7ae592ca74f9d7ca7dd4f4`  
		Last Modified: Sat, 19 Sep 2026 00:19:47 GMT  
		Size: 3.3 KB (3331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc6296f22bba50ac1c34b44a057eb91a3c2dc9e93a5827f4fab75172463a695`  
		Last Modified: Sat, 19 Sep 2026 00:19:48 GMT  
		Size: 4.9 MB (4869391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:2ca15c28486a14058dff386acc645b41ba516d8ecccc2bb62c502cb07f55cc2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5613210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45a51eba4210f84ee5eeddbd13d8a9b5a2c088470d9ec2fb6e0b68bcd67b0758`

```dockerfile
```

-	Layers:
	-	`sha256:8cb4bfd2f3979c228d73b909edce84cc582971ee2f87a5f6d9e3027f9d99a48a`  
		Last Modified: Sat, 19 Sep 2026 00:19:48 GMT  
		Size: 5.6 MB (5594559 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6db124ea92ae621b8ced9af8f0617adf48bb5a97389493722dfe7ccd00055f5a`  
		Last Modified: Sat, 19 Sep 2026 00:19:47 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; arm variant v5

```console
$ docker pull irssi@sha256:7575a2e50d152e497a747afac9d218d9190905d98513da2a57c393388c2f4aa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50969610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ae6a8975bb891ebcc2c73f47b4b3b8d0db3929e861863282e95d9531612718b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:17:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:17:00 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:17:00 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:17:00 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:17:00 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:17:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:17:48 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:17:48 GMT
USER user
# Tue, 25 Aug 2026 00:17:48 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a20095955c6409eff232901e863164eedbe3c59d00d5c6295039a5ed00942a`  
		Last Modified: Tue, 25 Aug 2026 00:17:59 GMT  
		Size: 18.3 MB (18286841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8b205f3d41a8416d2a4289a4fb1c9898102f1402742a2032e5529e8c712c97`  
		Last Modified: Tue, 25 Aug 2026 00:17:58 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206a4895e4addc7283cc8b4991d097a88a0132535abf16d53c3380986995e67a`  
		Last Modified: Tue, 25 Aug 2026 00:17:59 GMT  
		Size: 4.7 MB (4710461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:7aa91950e84e984844a9232b917ab9356c15b059f7777362a5bc722ba178361a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5605151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ba0dfb7a4cf38384fa2a8660e3ff84c977d2ca1a81698158b08dba37304662f`

```dockerfile
```

-	Layers:
	-	`sha256:51f2eba6ad1eb8f5f1fefbbe8b3d696f961d641d041fac671e4e4d687d46c1e5`  
		Last Modified: Tue, 25 Aug 2026 00:17:59 GMT  
		Size: 5.6 MB (5586362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa6dbc2757f075633c376f1333bba7144229f4fb68083c1a6f7519c486484dbe`  
		Last Modified: Tue, 25 Aug 2026 00:17:58 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; arm variant v7

```console
$ docker pull irssi@sha256:3f9f78457512ff79c7fbc925e0680574a32d574c96c34cabb66b988f998a680f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48733260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:903f9529a916d81ddbc0550399d99c4ff4e94703a1fea532abe0021b8e91e55c`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:19:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:19:45 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:19:45 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:19:45 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:19:45 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:20:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:20:27 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:20:27 GMT
USER user
# Sat, 19 Sep 2026 00:20:27 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cdeed6e44a97b217c469937244586e101c9aa27c88d527816d0088418389c42`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 17.9 MB (17919592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b364f2058c8e95eba2ab686d68fbab989b078f1835e7a87bafbf966a63b470ba`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 3.3 KB (3330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb3d3a39e432a9437dd8c77dedc7b4f9f13162be07f89c7cea80b84adef9310f`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 4.6 MB (4561378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:57189829e7b12493ac348139fbdfc8a8c133d1ccaeca0888900fb53165ed7d52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5613919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86708c0cfd3d99bd38cee1cc43f33b816d810f6186b942bca93c3d61f1d90184`

```dockerfile
```

-	Layers:
	-	`sha256:a08c50c789476bf7d7155478b7317157f61db197c65891d3d7df44761a1051c0`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 5.6 MB (5595130 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94441f9b18f2d430566ebd2f923223979d5178f8a6497c518988120709ed22f2`  
		Last Modified: Sat, 19 Sep 2026 00:20:37 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:4689e93e0971c573d0ac56c217492b2b61c614a2fbe046a3ced8df4a765854db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (54032817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4254d224c2f411199a5afbb7c7d3bf96e5bb4829b0797dd8295ad0b1cfe19155`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:19:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:19:08 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:19:08 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:19:08 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:19:08 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:19:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:19:46 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:19:46 GMT
USER user
# Sat, 19 Sep 2026 00:19:46 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daacf48909065564644359a01e5015c67043c04e5d36f679401e98859b84a8c6`  
		Last Modified: Sat, 19 Sep 2026 00:19:58 GMT  
		Size: 19.1 MB (19057651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6db475b78849c61c3a8dc60553b9ad104c506e9aa0390f9a280fd17abbdc7a45`  
		Last Modified: Sat, 19 Sep 2026 00:19:57 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:995e0a5db82d4abc1e50d7b99805219be7a82c7bce43b8d5d99ee7889fc56782`  
		Last Modified: Sat, 19 Sep 2026 00:19:57 GMT  
		Size: 4.8 MB (4782111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:d8ff022a5012d2152bf1a13cc8cfdd8cd3e87f6447cbff3a85435163f8983588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5619868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7f3608c81c2a75cd40a2a3a1f6cab2de28b8eb386adc1859241c5180789ff9f`

```dockerfile
```

-	Layers:
	-	`sha256:6a95218acd333010c42ab80006172dc9cab99ca5b142d053fd23e6ebb06fce91`  
		Last Modified: Sat, 19 Sep 2026 00:19:57 GMT  
		Size: 5.6 MB (5601035 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef879536f60445669db5f38eda2cc7ade471d30cf3a1df8094aedf3e8b3033cf`  
		Last Modified: Sat, 19 Sep 2026 00:19:57 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; 386

```console
$ docker pull irssi@sha256:f20e61041e82b65ff3432782eba56e3eba34ab08ccd0dcb995155443c74ec9df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54947736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9091e60a388f0245755000598a4dd6265289cdaeacb0332891ce4084fb5c061`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:18:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:18:51 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:18:51 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:18:51 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:18:51 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:19:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:19:32 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:19:32 GMT
USER user
# Sat, 19 Sep 2026 00:19:32 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a6206be0fddcec7e517d667f6453a789bccba615d2bc235b8b2527e8c15f0b5`  
		Last Modified: Sat, 19 Sep 2026 00:19:43 GMT  
		Size: 18.7 MB (18734074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a793c7384f3ecc482ee6918007fd1b8d5af97c0e12f84096c5a2856e2ee5a9d0`  
		Last Modified: Sat, 19 Sep 2026 00:19:42 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c79efed34f59e490d25cf1dcd92b9715bcf1a4043656551c9b0f753d13c468`  
		Last Modified: Sat, 19 Sep 2026 00:19:42 GMT  
		Size: 4.9 MB (4869903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:3cfe2c2c63f1695da2e64aacd2e12283f31c8b13c1bf413b3dc5c3feab5227bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5609277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f418e8af32b34540d54c818e2884a6b82368bbe1d01fd2e5ccd43ccac7d16729`

```dockerfile
```

-	Layers:
	-	`sha256:88598e3c306002be9ad53853ca066789895e6772cbfceba2f9705ffb79f01b19`  
		Last Modified: Sat, 19 Sep 2026 00:19:42 GMT  
		Size: 5.6 MB (5590682 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a403e58a16746a861fffad729aa903e7790dbc606b71ed5cd55733abf328ea11`  
		Last Modified: Sat, 19 Sep 2026 00:19:42 GMT  
		Size: 18.6 KB (18595 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; ppc64le

```console
$ docker pull irssi@sha256:dc0b305706e9cea511738fec4c5f266f5cd4dc2a7755f533069c56af172dd213
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58293193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3bffcda877547a4f3b146f55b45514f7d1789a62bf172c6899fc4eb2607d3df`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:22:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:22:43 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 00:22:43 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 00:22:43 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:22:43 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 00:23:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Sat, 19 Sep 2026 00:23:54 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 00:23:54 GMT
USER user
# Sat, 19 Sep 2026 00:23:54 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e18aeb6a6a0e7e01e0c7c54485dc97e9b1cf53dc39e836f3feeb143f0c67c8f1`  
		Last Modified: Sat, 19 Sep 2026 00:24:15 GMT  
		Size: 19.5 MB (19548636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6614c0a3388ab533845e85af010bc871bfcfd79d8584a3ca98475e2c9d8b9bab`  
		Last Modified: Sat, 19 Sep 2026 00:24:14 GMT  
		Size: 3.3 KB (3330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18f060deef99a40f955af5b4bf92519b32aca576847a34aad52d230e40d50255`  
		Last Modified: Sat, 19 Sep 2026 00:24:15 GMT  
		Size: 5.1 MB (5099960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:c40487a7766c84f4fa57eff5a5a40445c6d0d621e3d433349ae59711df40fb35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5620313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:206d53359d9f9318f8ddc8958ce68a471e757f1f71242f7db19db052a052423b`

```dockerfile
```

-	Layers:
	-	`sha256:99f31fb755a329d01b0b6afdacbc16103e1c7132ae47a071580ff31c00954f74`  
		Last Modified: Sat, 19 Sep 2026 00:24:15 GMT  
		Size: 5.6 MB (5601590 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87a83d06b06a305b79432d1a9abe9a35425b601026109f1c138ef99225733914`  
		Last Modified: Sat, 19 Sep 2026 00:24:15 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; riscv64

```console
$ docker pull irssi@sha256:63fd5c7be05433447cb3ac611913743c8a2aff559fdd99fbc6e3657c9fc3c416
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51713551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:995429fbf593b610b569eaee31279d838dd4d000d2a12daa8cb17e1b690a1377`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:33:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:33:17 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 02:33:17 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 02:33:17 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 02:33:17 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 02:40:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 02:40:02 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 02:40:02 GMT
USER user
# Tue, 25 Aug 2026 02:40:02 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70e669f37eaed3b6cc866821a03bf1c8152fa8185a058cee5162f993ce7f1b41`  
		Last Modified: Tue, 25 Aug 2026 02:41:56 GMT  
		Size: 18.6 MB (18552281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:947a6ddabc323157585106f2a874a9074c7bc7ec46cd92165d36f3d43ac23631`  
		Last Modified: Tue, 25 Aug 2026 02:41:51 GMT  
		Size: 3.3 KB (3333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a17014c19658b15934711c82546d2c1304652ba25351d995dcde4afe46730e5b`  
		Last Modified: Tue, 25 Aug 2026 02:41:53 GMT  
		Size: 4.9 MB (4861442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:4ac5ed2e7cbc4b525b26c6c02ffcfe1b1752d6be5b29cfa23a4d53e9d4517272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5598839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3721b0521fb40eb75f4566c3ee55d346e9dbb817982aecb1bc3511dd15f5800f`

```dockerfile
```

-	Layers:
	-	`sha256:1a12298551bc406171329277ad84ada0c72efc653417fe7699a9989b8f7388de`  
		Last Modified: Tue, 25 Aug 2026 02:41:54 GMT  
		Size: 5.6 MB (5580116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d4f700030661f47bb0b75cc2cec2b2b1aedf19adbfdbbee75f7abec81deeecf`  
		Last Modified: Tue, 25 Aug 2026 02:41:52 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; s390x

```console
$ docker pull irssi@sha256:5f02011f5185ee6f434826a48d9d63f19232c95fe148e903ce9e46cb7226c1d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54546324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05192773879cd222cc802f0cd3702e4a145f67c100885dfe1c6655a598e70507`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:18:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:18:42 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:18:42 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:18:42 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:18:42 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:19:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:19:31 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:19:31 GMT
USER user
# Tue, 25 Aug 2026 00:19:31 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd37501b3f5271a57e84d41eda4fcfc495913c4611a085e31646a7d8824d0ed0`  
		Last Modified: Tue, 25 Aug 2026 00:19:58 GMT  
		Size: 19.8 MB (19768051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b23c55e2803c63fadea10691613a38ce82f75e170940185db91c1ed5a89a6dc2`  
		Last Modified: Tue, 25 Aug 2026 00:19:56 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54af3f574ac1b41f1028dff19e949c568e6068f37e9462f83c79b7a18a4a4aa3`  
		Last Modified: Tue, 25 Aug 2026 00:19:57 GMT  
		Size: 4.9 MB (4907188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:66321b524e066959c2cd65464eb6a30c1aa82ac6fe568f51d3c474cdef18f7de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe635615631c66e27a63d001537764edc875ab813bb9901c8001acaab2124f56`

```dockerfile
```

-	Layers:
	-	`sha256:212141ad5435723e922d6d1f9c1ea7498b7348dd617f41e2f42eef258042ed5d`  
		Last Modified: Tue, 25 Aug 2026 00:19:57 GMT  
		Size: 5.6 MB (5589718 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64b95e9b60de85b295e74cd35715d1c53f955433fd9ec72ded782b9505146937`  
		Last Modified: Tue, 25 Aug 2026 00:19:56 GMT  
		Size: 18.7 KB (18651 bytes)  
		MIME: application/vnd.in-toto+json
