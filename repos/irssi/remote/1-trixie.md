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
