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
$ docker pull irssi@sha256:8bea897909b87d94145702b80f68ccec01b2f2376c356310101de158420c58dc
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
$ docker pull irssi@sha256:d5c76f8c3f0c435f4daa6849e8b14082426e88b8a3674687cd192e613694e734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53884279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81bf67af5795f2e5ab5b03b8ecaaa15f1573cd6b0b6d9c158443e1e5ff10032c`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:20:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:20:37 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:20:37 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:20:37 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:20:37 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:21:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:21:14 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:21:14 GMT
USER user
# Tue, 25 Aug 2026 00:21:14 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50790d66331276f33b7c15d275c79104a955adbebb80441b1a51d20ca66761cf`  
		Last Modified: Tue, 25 Aug 2026 00:21:24 GMT  
		Size: 19.2 MB (19220434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68f948657c3ae77bae01e3f1ebf7e0c0e052091c314e07b47a2c694725ff4e07`  
		Last Modified: Tue, 25 Aug 2026 00:21:23 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e46a3d9512252347fd1fb300d11cd5708ba6a4385ee1d9010dde741afa8f726`  
		Last Modified: Tue, 25 Aug 2026 00:21:24 GMT  
		Size: 4.9 MB (4867821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:2cfe70e9584f0309c9e886231f49f120c8093410c90118c74164cde73065ecd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ec6d659d4d9ceb947d01513c5d1f978f6fe7165de513098b29bbeb4af9a435f`

```dockerfile
```

-	Layers:
	-	`sha256:c471b4163c2217891c6bdcf020fa649f57dc47dd2f5741824e5bec714d32f603`  
		Last Modified: Tue, 25 Aug 2026 00:21:24 GMT  
		Size: 5.6 MB (5588813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1165448be41f70450c6b7f9c01715c5fe8663ea9479fcfef3eed645e2eef6b44`  
		Last Modified: Tue, 25 Aug 2026 00:21:23 GMT  
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
$ docker pull irssi@sha256:a909457a11b2ff4e950e7920a8c49a1d7664da7879e976fc1423702fafde76c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48691506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1072b926b2e25917c0de3126e2b46b9a766250a6896e4ddcca3e9d4243c1b934`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:18:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:18:16 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:18:16 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:18:16 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:18:16 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:18:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:18:56 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:18:56 GMT
USER user
# Tue, 25 Aug 2026 00:18:56 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:815601fed1e563ca666b11ac88cccbafed2a7f53a39cbfec4c3640e087d57f57`  
		Last Modified: Tue, 25 Aug 2026 00:19:07 GMT  
		Size: 17.9 MB (17909223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71bd92e2a43445a6737e3eee994f7055ee7694483d17aab0730dcfcdb289347`  
		Last Modified: Tue, 25 Aug 2026 00:19:06 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24e5d75cae0041f5f2773ea993b3b4a13ba479f62b39ec6175875bd4f72de49b`  
		Last Modified: Tue, 25 Aug 2026 00:19:06 GMT  
		Size: 4.6 MB (4559778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:a19f5b6c1602c3de0422c5a7bc5585322f419e80f9a0ecac8e3cb8b8196d3ca5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9dc5985f45afb03eaa6a23a8352ac0118e954f03fc0280f7af7708776598675`

```dockerfile
```

-	Layers:
	-	`sha256:cebd59f567cadbad16b627ef848183a2ccb045f6b159ab7c11bfb16fd7c0d991`  
		Last Modified: Tue, 25 Aug 2026 00:19:06 GMT  
		Size: 5.6 MB (5589384 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:855f9cfbcf08e5fa0a4c188a360d4c1f1a19f1cbb5470ec9f40a03bdd5160066`  
		Last Modified: Tue, 25 Aug 2026 00:19:06 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:1a052b4d0f9519e8d713583389cb047df361b58becd7a1322d1afccc27ad63f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53991000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93ad2140804e4aebfab5c8798550d968a70a1122682eb660646161b4f178a80f`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:20:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:20:21 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:20:21 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:20:21 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:20:21 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:21:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:21:00 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:21:00 GMT
USER user
# Tue, 25 Aug 2026 00:21:00 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76f21db37aedcef7013f996235a250f42e295470ed6a02fac0aee0cd9acb089c`  
		Last Modified: Tue, 25 Aug 2026 00:21:11 GMT  
		Size: 19.0 MB (19045752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5d2a3f83ba9f603d7b11c86e51a0c614e68a9154ca6e5e544ab3bb4fda604af`  
		Last Modified: Tue, 25 Aug 2026 00:21:10 GMT  
		Size: 3.3 KB (3335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfad0db3d91971317588d610e6e95e51e2ba497497f2d739a9ca2beb34862622`  
		Last Modified: Tue, 25 Aug 2026 00:21:10 GMT  
		Size: 4.8 MB (4782299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:3a218491d3c8cd523e32445c69351652becaa5313e409b5e0749531736673914
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdc4b5699527036e0f0fc38057bbdb62fe3fa9835a1f0e85dfbe347313435252`

```dockerfile
```

-	Layers:
	-	`sha256:787a67afda903e0f3fb7b0c14c1118217ab5b875c24ecb8167bcd53e478cf5ae`  
		Last Modified: Tue, 25 Aug 2026 00:21:10 GMT  
		Size: 5.6 MB (5595289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6a05ae939b40b9f9eba133856f2afbd935c6d65b76690e3b57917c0a36daf86`  
		Last Modified: Tue, 25 Aug 2026 00:21:10 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; 386

```console
$ docker pull irssi@sha256:c444bb223156db456eb5cb0c91d052b27ece1f8078db4a9df8fcd8d787d8f9d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54911249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0685e88ac9f98dde932bbb87b87ffdd7c13fe1c72a15a51b33478a0ee2f5eba3`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:16:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:16:54 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:16:54 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:16:54 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:16:54 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:17:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:17:41 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:17:41 GMT
USER user
# Tue, 25 Aug 2026 00:17:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15bcb4cd62266e1fe7b5cf6aa07c38bd987cd738ebb096ac90de25766031ca01`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 18.7 MB (18735546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0422ab7db5fd13891c30507cddc379e0cd4215677ebadb10934a0210eef72664`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:529284c481c26d770d77583d64f25e3384b0e198d3be0f03b2411af11f57a75a`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 4.9 MB (4868940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:02e64c4b7be68e364fb23ca27fc9465a5c7332a4d1c3153a1f84821fb05bd6e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56c11aebd940ccf62a2b5e34ed52d1119fa81ab1a00dba8a08436f28e4347f52`

```dockerfile
```

-	Layers:
	-	`sha256:eeadba3cd0b38a99d771e425e24eb418337c0148e754dd37713eef27e64c61c1`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 5.6 MB (5584936 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68ec9c19c4ccae77e069e6e59de44f206800a725a9f4ffb62a5c0f69230257f0`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 18.6 KB (18595 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; ppc64le

```console
$ docker pull irssi@sha256:c5057d7bdc7602acbe2822e47a16cbecaeff2d8b6b5241d9dcc303cd1aa739ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58250576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5579d6e4b3d85ee8f760fd12f2e7d7426d4b163c74876fd9957b9a4dcea0ab2b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:23:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:23:37 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:23:37 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:23:37 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:23:37 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:24:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:24:53 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:24:53 GMT
USER user
# Tue, 25 Aug 2026 00:24:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074b20f718e2b134e9ab34988c15cafe51b15a9ed878c2581f42addc34d90756`  
		Last Modified: Tue, 25 Aug 2026 00:25:12 GMT  
		Size: 19.5 MB (19533054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68156b93b9bbd69d051f4893ba203415871d9cac13c6f1a664b050db59ba5f87`  
		Last Modified: Tue, 25 Aug 2026 00:25:11 GMT  
		Size: 3.3 KB (3333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9165185c9e08a7366c69187cec1a77f97adb789ea5b3bbfcf948d77819785cd`  
		Last Modified: Tue, 25 Aug 2026 00:25:12 GMT  
		Size: 5.1 MB (5098696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:42222a938612ab3eca3daa40d7f55113c110333fc316218b4c653724415605da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae186c8423dc5602f8edc30cf01418bea00c135e850ca43562019c35aad735be`

```dockerfile
```

-	Layers:
	-	`sha256:f35af986e4c03a111589d45a151dfe432d13b21b9104035675b7e2f48e69c99d`  
		Last Modified: Tue, 25 Aug 2026 00:25:12 GMT  
		Size: 5.6 MB (5595844 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8402e433b0049c588cf1f835b71aace4896889f22fd76c9821cd4be5bee12942`  
		Last Modified: Tue, 25 Aug 2026 00:25:12 GMT  
		Size: 18.7 KB (18722 bytes)  
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
$ docker pull irssi@sha256:8bea897909b87d94145702b80f68ccec01b2f2376c356310101de158420c58dc
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
$ docker pull irssi@sha256:d5c76f8c3f0c435f4daa6849e8b14082426e88b8a3674687cd192e613694e734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53884279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81bf67af5795f2e5ab5b03b8ecaaa15f1573cd6b0b6d9c158443e1e5ff10032c`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:20:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:20:37 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:20:37 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:20:37 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:20:37 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:21:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:21:14 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:21:14 GMT
USER user
# Tue, 25 Aug 2026 00:21:14 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50790d66331276f33b7c15d275c79104a955adbebb80441b1a51d20ca66761cf`  
		Last Modified: Tue, 25 Aug 2026 00:21:24 GMT  
		Size: 19.2 MB (19220434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68f948657c3ae77bae01e3f1ebf7e0c0e052091c314e07b47a2c694725ff4e07`  
		Last Modified: Tue, 25 Aug 2026 00:21:23 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e46a3d9512252347fd1fb300d11cd5708ba6a4385ee1d9010dde741afa8f726`  
		Last Modified: Tue, 25 Aug 2026 00:21:24 GMT  
		Size: 4.9 MB (4867821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:2cfe70e9584f0309c9e886231f49f120c8093410c90118c74164cde73065ecd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ec6d659d4d9ceb947d01513c5d1f978f6fe7165de513098b29bbeb4af9a435f`

```dockerfile
```

-	Layers:
	-	`sha256:c471b4163c2217891c6bdcf020fa649f57dc47dd2f5741824e5bec714d32f603`  
		Last Modified: Tue, 25 Aug 2026 00:21:24 GMT  
		Size: 5.6 MB (5588813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1165448be41f70450c6b7f9c01715c5fe8663ea9479fcfef3eed645e2eef6b44`  
		Last Modified: Tue, 25 Aug 2026 00:21:23 GMT  
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
$ docker pull irssi@sha256:a909457a11b2ff4e950e7920a8c49a1d7664da7879e976fc1423702fafde76c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48691506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1072b926b2e25917c0de3126e2b46b9a766250a6896e4ddcca3e9d4243c1b934`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:18:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:18:16 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:18:16 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:18:16 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:18:16 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:18:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:18:56 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:18:56 GMT
USER user
# Tue, 25 Aug 2026 00:18:56 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:815601fed1e563ca666b11ac88cccbafed2a7f53a39cbfec4c3640e087d57f57`  
		Last Modified: Tue, 25 Aug 2026 00:19:07 GMT  
		Size: 17.9 MB (17909223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71bd92e2a43445a6737e3eee994f7055ee7694483d17aab0730dcfcdb289347`  
		Last Modified: Tue, 25 Aug 2026 00:19:06 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24e5d75cae0041f5f2773ea993b3b4a13ba479f62b39ec6175875bd4f72de49b`  
		Last Modified: Tue, 25 Aug 2026 00:19:06 GMT  
		Size: 4.6 MB (4559778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:a19f5b6c1602c3de0422c5a7bc5585322f419e80f9a0ecac8e3cb8b8196d3ca5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9dc5985f45afb03eaa6a23a8352ac0118e954f03fc0280f7af7708776598675`

```dockerfile
```

-	Layers:
	-	`sha256:cebd59f567cadbad16b627ef848183a2ccb045f6b159ab7c11bfb16fd7c0d991`  
		Last Modified: Tue, 25 Aug 2026 00:19:06 GMT  
		Size: 5.6 MB (5589384 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:855f9cfbcf08e5fa0a4c188a360d4c1f1a19f1cbb5470ec9f40a03bdd5160066`  
		Last Modified: Tue, 25 Aug 2026 00:19:06 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:1a052b4d0f9519e8d713583389cb047df361b58becd7a1322d1afccc27ad63f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53991000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93ad2140804e4aebfab5c8798550d968a70a1122682eb660646161b4f178a80f`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:20:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:20:21 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:20:21 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:20:21 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:20:21 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:21:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:21:00 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:21:00 GMT
USER user
# Tue, 25 Aug 2026 00:21:00 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76f21db37aedcef7013f996235a250f42e295470ed6a02fac0aee0cd9acb089c`  
		Last Modified: Tue, 25 Aug 2026 00:21:11 GMT  
		Size: 19.0 MB (19045752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5d2a3f83ba9f603d7b11c86e51a0c614e68a9154ca6e5e544ab3bb4fda604af`  
		Last Modified: Tue, 25 Aug 2026 00:21:10 GMT  
		Size: 3.3 KB (3335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfad0db3d91971317588d610e6e95e51e2ba497497f2d739a9ca2beb34862622`  
		Last Modified: Tue, 25 Aug 2026 00:21:10 GMT  
		Size: 4.8 MB (4782299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:3a218491d3c8cd523e32445c69351652becaa5313e409b5e0749531736673914
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdc4b5699527036e0f0fc38057bbdb62fe3fa9835a1f0e85dfbe347313435252`

```dockerfile
```

-	Layers:
	-	`sha256:787a67afda903e0f3fb7b0c14c1118217ab5b875c24ecb8167bcd53e478cf5ae`  
		Last Modified: Tue, 25 Aug 2026 00:21:10 GMT  
		Size: 5.6 MB (5595289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6a05ae939b40b9f9eba133856f2afbd935c6d65b76690e3b57917c0a36daf86`  
		Last Modified: Tue, 25 Aug 2026 00:21:10 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; 386

```console
$ docker pull irssi@sha256:c444bb223156db456eb5cb0c91d052b27ece1f8078db4a9df8fcd8d787d8f9d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54911249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0685e88ac9f98dde932bbb87b87ffdd7c13fe1c72a15a51b33478a0ee2f5eba3`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:16:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:16:54 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:16:54 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:16:54 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:16:54 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:17:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:17:41 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:17:41 GMT
USER user
# Tue, 25 Aug 2026 00:17:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15bcb4cd62266e1fe7b5cf6aa07c38bd987cd738ebb096ac90de25766031ca01`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 18.7 MB (18735546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0422ab7db5fd13891c30507cddc379e0cd4215677ebadb10934a0210eef72664`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:529284c481c26d770d77583d64f25e3384b0e198d3be0f03b2411af11f57a75a`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 4.9 MB (4868940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:02e64c4b7be68e364fb23ca27fc9465a5c7332a4d1c3153a1f84821fb05bd6e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56c11aebd940ccf62a2b5e34ed52d1119fa81ab1a00dba8a08436f28e4347f52`

```dockerfile
```

-	Layers:
	-	`sha256:eeadba3cd0b38a99d771e425e24eb418337c0148e754dd37713eef27e64c61c1`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 5.6 MB (5584936 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68ec9c19c4ccae77e069e6e59de44f206800a725a9f4ffb62a5c0f69230257f0`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 18.6 KB (18595 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; ppc64le

```console
$ docker pull irssi@sha256:c5057d7bdc7602acbe2822e47a16cbecaeff2d8b6b5241d9dcc303cd1aa739ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58250576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5579d6e4b3d85ee8f760fd12f2e7d7426d4b163c74876fd9957b9a4dcea0ab2b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:23:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:23:37 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:23:37 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:23:37 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:23:37 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:24:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:24:53 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:24:53 GMT
USER user
# Tue, 25 Aug 2026 00:24:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074b20f718e2b134e9ab34988c15cafe51b15a9ed878c2581f42addc34d90756`  
		Last Modified: Tue, 25 Aug 2026 00:25:12 GMT  
		Size: 19.5 MB (19533054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68156b93b9bbd69d051f4893ba203415871d9cac13c6f1a664b050db59ba5f87`  
		Last Modified: Tue, 25 Aug 2026 00:25:11 GMT  
		Size: 3.3 KB (3333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9165185c9e08a7366c69187cec1a77f97adb789ea5b3bbfcf948d77819785cd`  
		Last Modified: Tue, 25 Aug 2026 00:25:12 GMT  
		Size: 5.1 MB (5098696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:42222a938612ab3eca3daa40d7f55113c110333fc316218b4c653724415605da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae186c8423dc5602f8edc30cf01418bea00c135e850ca43562019c35aad735be`

```dockerfile
```

-	Layers:
	-	`sha256:f35af986e4c03a111589d45a151dfe432d13b21b9104035675b7e2f48e69c99d`  
		Last Modified: Tue, 25 Aug 2026 00:25:12 GMT  
		Size: 5.6 MB (5595844 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8402e433b0049c588cf1f835b71aace4896889f22fd76c9821cd4be5bee12942`  
		Last Modified: Tue, 25 Aug 2026 00:25:12 GMT  
		Size: 18.7 KB (18722 bytes)  
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
$ docker pull irssi@sha256:8bea897909b87d94145702b80f68ccec01b2f2376c356310101de158420c58dc
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
$ docker pull irssi@sha256:d5c76f8c3f0c435f4daa6849e8b14082426e88b8a3674687cd192e613694e734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53884279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81bf67af5795f2e5ab5b03b8ecaaa15f1573cd6b0b6d9c158443e1e5ff10032c`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:20:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:20:37 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:20:37 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:20:37 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:20:37 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:21:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:21:14 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:21:14 GMT
USER user
# Tue, 25 Aug 2026 00:21:14 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50790d66331276f33b7c15d275c79104a955adbebb80441b1a51d20ca66761cf`  
		Last Modified: Tue, 25 Aug 2026 00:21:24 GMT  
		Size: 19.2 MB (19220434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68f948657c3ae77bae01e3f1ebf7e0c0e052091c314e07b47a2c694725ff4e07`  
		Last Modified: Tue, 25 Aug 2026 00:21:23 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e46a3d9512252347fd1fb300d11cd5708ba6a4385ee1d9010dde741afa8f726`  
		Last Modified: Tue, 25 Aug 2026 00:21:24 GMT  
		Size: 4.9 MB (4867821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:2cfe70e9584f0309c9e886231f49f120c8093410c90118c74164cde73065ecd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ec6d659d4d9ceb947d01513c5d1f978f6fe7165de513098b29bbeb4af9a435f`

```dockerfile
```

-	Layers:
	-	`sha256:c471b4163c2217891c6bdcf020fa649f57dc47dd2f5741824e5bec714d32f603`  
		Last Modified: Tue, 25 Aug 2026 00:21:24 GMT  
		Size: 5.6 MB (5588813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1165448be41f70450c6b7f9c01715c5fe8663ea9479fcfef3eed645e2eef6b44`  
		Last Modified: Tue, 25 Aug 2026 00:21:23 GMT  
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
$ docker pull irssi@sha256:a909457a11b2ff4e950e7920a8c49a1d7664da7879e976fc1423702fafde76c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48691506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1072b926b2e25917c0de3126e2b46b9a766250a6896e4ddcca3e9d4243c1b934`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:18:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:18:16 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:18:16 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:18:16 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:18:16 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:18:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:18:56 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:18:56 GMT
USER user
# Tue, 25 Aug 2026 00:18:56 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:815601fed1e563ca666b11ac88cccbafed2a7f53a39cbfec4c3640e087d57f57`  
		Last Modified: Tue, 25 Aug 2026 00:19:07 GMT  
		Size: 17.9 MB (17909223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71bd92e2a43445a6737e3eee994f7055ee7694483d17aab0730dcfcdb289347`  
		Last Modified: Tue, 25 Aug 2026 00:19:06 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24e5d75cae0041f5f2773ea993b3b4a13ba479f62b39ec6175875bd4f72de49b`  
		Last Modified: Tue, 25 Aug 2026 00:19:06 GMT  
		Size: 4.6 MB (4559778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:a19f5b6c1602c3de0422c5a7bc5585322f419e80f9a0ecac8e3cb8b8196d3ca5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9dc5985f45afb03eaa6a23a8352ac0118e954f03fc0280f7af7708776598675`

```dockerfile
```

-	Layers:
	-	`sha256:cebd59f567cadbad16b627ef848183a2ccb045f6b159ab7c11bfb16fd7c0d991`  
		Last Modified: Tue, 25 Aug 2026 00:19:06 GMT  
		Size: 5.6 MB (5589384 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:855f9cfbcf08e5fa0a4c188a360d4c1f1a19f1cbb5470ec9f40a03bdd5160066`  
		Last Modified: Tue, 25 Aug 2026 00:19:06 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:1a052b4d0f9519e8d713583389cb047df361b58becd7a1322d1afccc27ad63f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53991000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93ad2140804e4aebfab5c8798550d968a70a1122682eb660646161b4f178a80f`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:20:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:20:21 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:20:21 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:20:21 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:20:21 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:21:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:21:00 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:21:00 GMT
USER user
# Tue, 25 Aug 2026 00:21:00 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76f21db37aedcef7013f996235a250f42e295470ed6a02fac0aee0cd9acb089c`  
		Last Modified: Tue, 25 Aug 2026 00:21:11 GMT  
		Size: 19.0 MB (19045752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5d2a3f83ba9f603d7b11c86e51a0c614e68a9154ca6e5e544ab3bb4fda604af`  
		Last Modified: Tue, 25 Aug 2026 00:21:10 GMT  
		Size: 3.3 KB (3335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfad0db3d91971317588d610e6e95e51e2ba497497f2d739a9ca2beb34862622`  
		Last Modified: Tue, 25 Aug 2026 00:21:10 GMT  
		Size: 4.8 MB (4782299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:3a218491d3c8cd523e32445c69351652becaa5313e409b5e0749531736673914
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdc4b5699527036e0f0fc38057bbdb62fe3fa9835a1f0e85dfbe347313435252`

```dockerfile
```

-	Layers:
	-	`sha256:787a67afda903e0f3fb7b0c14c1118217ab5b875c24ecb8167bcd53e478cf5ae`  
		Last Modified: Tue, 25 Aug 2026 00:21:10 GMT  
		Size: 5.6 MB (5595289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6a05ae939b40b9f9eba133856f2afbd935c6d65b76690e3b57917c0a36daf86`  
		Last Modified: Tue, 25 Aug 2026 00:21:10 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; 386

```console
$ docker pull irssi@sha256:c444bb223156db456eb5cb0c91d052b27ece1f8078db4a9df8fcd8d787d8f9d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54911249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0685e88ac9f98dde932bbb87b87ffdd7c13fe1c72a15a51b33478a0ee2f5eba3`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:16:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:16:54 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:16:54 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:16:54 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:16:54 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:17:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:17:41 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:17:41 GMT
USER user
# Tue, 25 Aug 2026 00:17:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15bcb4cd62266e1fe7b5cf6aa07c38bd987cd738ebb096ac90de25766031ca01`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 18.7 MB (18735546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0422ab7db5fd13891c30507cddc379e0cd4215677ebadb10934a0210eef72664`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:529284c481c26d770d77583d64f25e3384b0e198d3be0f03b2411af11f57a75a`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 4.9 MB (4868940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:02e64c4b7be68e364fb23ca27fc9465a5c7332a4d1c3153a1f84821fb05bd6e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56c11aebd940ccf62a2b5e34ed52d1119fa81ab1a00dba8a08436f28e4347f52`

```dockerfile
```

-	Layers:
	-	`sha256:eeadba3cd0b38a99d771e425e24eb418337c0148e754dd37713eef27e64c61c1`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 5.6 MB (5584936 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68ec9c19c4ccae77e069e6e59de44f206800a725a9f4ffb62a5c0f69230257f0`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 18.6 KB (18595 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; ppc64le

```console
$ docker pull irssi@sha256:c5057d7bdc7602acbe2822e47a16cbecaeff2d8b6b5241d9dcc303cd1aa739ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58250576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5579d6e4b3d85ee8f760fd12f2e7d7426d4b163c74876fd9957b9a4dcea0ab2b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:23:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:23:37 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:23:37 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:23:37 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:23:37 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:24:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:24:53 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:24:53 GMT
USER user
# Tue, 25 Aug 2026 00:24:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074b20f718e2b134e9ab34988c15cafe51b15a9ed878c2581f42addc34d90756`  
		Last Modified: Tue, 25 Aug 2026 00:25:12 GMT  
		Size: 19.5 MB (19533054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68156b93b9bbd69d051f4893ba203415871d9cac13c6f1a664b050db59ba5f87`  
		Last Modified: Tue, 25 Aug 2026 00:25:11 GMT  
		Size: 3.3 KB (3333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9165185c9e08a7366c69187cec1a77f97adb789ea5b3bbfcf948d77819785cd`  
		Last Modified: Tue, 25 Aug 2026 00:25:12 GMT  
		Size: 5.1 MB (5098696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:42222a938612ab3eca3daa40d7f55113c110333fc316218b4c653724415605da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae186c8423dc5602f8edc30cf01418bea00c135e850ca43562019c35aad735be`

```dockerfile
```

-	Layers:
	-	`sha256:f35af986e4c03a111589d45a151dfe432d13b21b9104035675b7e2f48e69c99d`  
		Last Modified: Tue, 25 Aug 2026 00:25:12 GMT  
		Size: 5.6 MB (5595844 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8402e433b0049c588cf1f835b71aace4896889f22fd76c9821cd4be5bee12942`  
		Last Modified: Tue, 25 Aug 2026 00:25:12 GMT  
		Size: 18.7 KB (18722 bytes)  
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
$ docker pull irssi@sha256:8bea897909b87d94145702b80f68ccec01b2f2376c356310101de158420c58dc
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
$ docker pull irssi@sha256:d5c76f8c3f0c435f4daa6849e8b14082426e88b8a3674687cd192e613694e734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53884279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81bf67af5795f2e5ab5b03b8ecaaa15f1573cd6b0b6d9c158443e1e5ff10032c`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:20:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:20:37 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:20:37 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:20:37 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:20:37 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:21:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:21:14 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:21:14 GMT
USER user
# Tue, 25 Aug 2026 00:21:14 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50790d66331276f33b7c15d275c79104a955adbebb80441b1a51d20ca66761cf`  
		Last Modified: Tue, 25 Aug 2026 00:21:24 GMT  
		Size: 19.2 MB (19220434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68f948657c3ae77bae01e3f1ebf7e0c0e052091c314e07b47a2c694725ff4e07`  
		Last Modified: Tue, 25 Aug 2026 00:21:23 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e46a3d9512252347fd1fb300d11cd5708ba6a4385ee1d9010dde741afa8f726`  
		Last Modified: Tue, 25 Aug 2026 00:21:24 GMT  
		Size: 4.9 MB (4867821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:2cfe70e9584f0309c9e886231f49f120c8093410c90118c74164cde73065ecd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ec6d659d4d9ceb947d01513c5d1f978f6fe7165de513098b29bbeb4af9a435f`

```dockerfile
```

-	Layers:
	-	`sha256:c471b4163c2217891c6bdcf020fa649f57dc47dd2f5741824e5bec714d32f603`  
		Last Modified: Tue, 25 Aug 2026 00:21:24 GMT  
		Size: 5.6 MB (5588813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1165448be41f70450c6b7f9c01715c5fe8663ea9479fcfef3eed645e2eef6b44`  
		Last Modified: Tue, 25 Aug 2026 00:21:23 GMT  
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
$ docker pull irssi@sha256:a909457a11b2ff4e950e7920a8c49a1d7664da7879e976fc1423702fafde76c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48691506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1072b926b2e25917c0de3126e2b46b9a766250a6896e4ddcca3e9d4243c1b934`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:18:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:18:16 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:18:16 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:18:16 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:18:16 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:18:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:18:56 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:18:56 GMT
USER user
# Tue, 25 Aug 2026 00:18:56 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:815601fed1e563ca666b11ac88cccbafed2a7f53a39cbfec4c3640e087d57f57`  
		Last Modified: Tue, 25 Aug 2026 00:19:07 GMT  
		Size: 17.9 MB (17909223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71bd92e2a43445a6737e3eee994f7055ee7694483d17aab0730dcfcdb289347`  
		Last Modified: Tue, 25 Aug 2026 00:19:06 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24e5d75cae0041f5f2773ea993b3b4a13ba479f62b39ec6175875bd4f72de49b`  
		Last Modified: Tue, 25 Aug 2026 00:19:06 GMT  
		Size: 4.6 MB (4559778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:a19f5b6c1602c3de0422c5a7bc5585322f419e80f9a0ecac8e3cb8b8196d3ca5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9dc5985f45afb03eaa6a23a8352ac0118e954f03fc0280f7af7708776598675`

```dockerfile
```

-	Layers:
	-	`sha256:cebd59f567cadbad16b627ef848183a2ccb045f6b159ab7c11bfb16fd7c0d991`  
		Last Modified: Tue, 25 Aug 2026 00:19:06 GMT  
		Size: 5.6 MB (5589384 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:855f9cfbcf08e5fa0a4c188a360d4c1f1a19f1cbb5470ec9f40a03bdd5160066`  
		Last Modified: Tue, 25 Aug 2026 00:19:06 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:1a052b4d0f9519e8d713583389cb047df361b58becd7a1322d1afccc27ad63f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53991000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93ad2140804e4aebfab5c8798550d968a70a1122682eb660646161b4f178a80f`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:20:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:20:21 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:20:21 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:20:21 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:20:21 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:21:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:21:00 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:21:00 GMT
USER user
# Tue, 25 Aug 2026 00:21:00 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76f21db37aedcef7013f996235a250f42e295470ed6a02fac0aee0cd9acb089c`  
		Last Modified: Tue, 25 Aug 2026 00:21:11 GMT  
		Size: 19.0 MB (19045752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5d2a3f83ba9f603d7b11c86e51a0c614e68a9154ca6e5e544ab3bb4fda604af`  
		Last Modified: Tue, 25 Aug 2026 00:21:10 GMT  
		Size: 3.3 KB (3335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfad0db3d91971317588d610e6e95e51e2ba497497f2d739a9ca2beb34862622`  
		Last Modified: Tue, 25 Aug 2026 00:21:10 GMT  
		Size: 4.8 MB (4782299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:3a218491d3c8cd523e32445c69351652becaa5313e409b5e0749531736673914
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdc4b5699527036e0f0fc38057bbdb62fe3fa9835a1f0e85dfbe347313435252`

```dockerfile
```

-	Layers:
	-	`sha256:787a67afda903e0f3fb7b0c14c1118217ab5b875c24ecb8167bcd53e478cf5ae`  
		Last Modified: Tue, 25 Aug 2026 00:21:10 GMT  
		Size: 5.6 MB (5595289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6a05ae939b40b9f9eba133856f2afbd935c6d65b76690e3b57917c0a36daf86`  
		Last Modified: Tue, 25 Aug 2026 00:21:10 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; 386

```console
$ docker pull irssi@sha256:c444bb223156db456eb5cb0c91d052b27ece1f8078db4a9df8fcd8d787d8f9d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54911249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0685e88ac9f98dde932bbb87b87ffdd7c13fe1c72a15a51b33478a0ee2f5eba3`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:16:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:16:54 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:16:54 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:16:54 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:16:54 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:17:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:17:41 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:17:41 GMT
USER user
# Tue, 25 Aug 2026 00:17:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15bcb4cd62266e1fe7b5cf6aa07c38bd987cd738ebb096ac90de25766031ca01`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 18.7 MB (18735546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0422ab7db5fd13891c30507cddc379e0cd4215677ebadb10934a0210eef72664`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:529284c481c26d770d77583d64f25e3384b0e198d3be0f03b2411af11f57a75a`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 4.9 MB (4868940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:02e64c4b7be68e364fb23ca27fc9465a5c7332a4d1c3153a1f84821fb05bd6e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56c11aebd940ccf62a2b5e34ed52d1119fa81ab1a00dba8a08436f28e4347f52`

```dockerfile
```

-	Layers:
	-	`sha256:eeadba3cd0b38a99d771e425e24eb418337c0148e754dd37713eef27e64c61c1`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 5.6 MB (5584936 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68ec9c19c4ccae77e069e6e59de44f206800a725a9f4ffb62a5c0f69230257f0`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 18.6 KB (18595 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; ppc64le

```console
$ docker pull irssi@sha256:c5057d7bdc7602acbe2822e47a16cbecaeff2d8b6b5241d9dcc303cd1aa739ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58250576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5579d6e4b3d85ee8f760fd12f2e7d7426d4b163c74876fd9957b9a4dcea0ab2b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:23:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:23:37 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:23:37 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:23:37 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:23:37 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:24:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:24:53 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:24:53 GMT
USER user
# Tue, 25 Aug 2026 00:24:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074b20f718e2b134e9ab34988c15cafe51b15a9ed878c2581f42addc34d90756`  
		Last Modified: Tue, 25 Aug 2026 00:25:12 GMT  
		Size: 19.5 MB (19533054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68156b93b9bbd69d051f4893ba203415871d9cac13c6f1a664b050db59ba5f87`  
		Last Modified: Tue, 25 Aug 2026 00:25:11 GMT  
		Size: 3.3 KB (3333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9165185c9e08a7366c69187cec1a77f97adb789ea5b3bbfcf948d77819785cd`  
		Last Modified: Tue, 25 Aug 2026 00:25:12 GMT  
		Size: 5.1 MB (5098696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:42222a938612ab3eca3daa40d7f55113c110333fc316218b4c653724415605da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae186c8423dc5602f8edc30cf01418bea00c135e850ca43562019c35aad735be`

```dockerfile
```

-	Layers:
	-	`sha256:f35af986e4c03a111589d45a151dfe432d13b21b9104035675b7e2f48e69c99d`  
		Last Modified: Tue, 25 Aug 2026 00:25:12 GMT  
		Size: 5.6 MB (5595844 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8402e433b0049c588cf1f835b71aace4896889f22fd76c9821cd4be5bee12942`  
		Last Modified: Tue, 25 Aug 2026 00:25:12 GMT  
		Size: 18.7 KB (18722 bytes)  
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
$ docker pull irssi@sha256:8bea897909b87d94145702b80f68ccec01b2f2376c356310101de158420c58dc
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
$ docker pull irssi@sha256:d5c76f8c3f0c435f4daa6849e8b14082426e88b8a3674687cd192e613694e734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53884279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81bf67af5795f2e5ab5b03b8ecaaa15f1573cd6b0b6d9c158443e1e5ff10032c`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:20:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:20:37 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:20:37 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:20:37 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:20:37 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:21:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:21:14 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:21:14 GMT
USER user
# Tue, 25 Aug 2026 00:21:14 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50790d66331276f33b7c15d275c79104a955adbebb80441b1a51d20ca66761cf`  
		Last Modified: Tue, 25 Aug 2026 00:21:24 GMT  
		Size: 19.2 MB (19220434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68f948657c3ae77bae01e3f1ebf7e0c0e052091c314e07b47a2c694725ff4e07`  
		Last Modified: Tue, 25 Aug 2026 00:21:23 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e46a3d9512252347fd1fb300d11cd5708ba6a4385ee1d9010dde741afa8f726`  
		Last Modified: Tue, 25 Aug 2026 00:21:24 GMT  
		Size: 4.9 MB (4867821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:2cfe70e9584f0309c9e886231f49f120c8093410c90118c74164cde73065ecd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ec6d659d4d9ceb947d01513c5d1f978f6fe7165de513098b29bbeb4af9a435f`

```dockerfile
```

-	Layers:
	-	`sha256:c471b4163c2217891c6bdcf020fa649f57dc47dd2f5741824e5bec714d32f603`  
		Last Modified: Tue, 25 Aug 2026 00:21:24 GMT  
		Size: 5.6 MB (5588813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1165448be41f70450c6b7f9c01715c5fe8663ea9479fcfef3eed645e2eef6b44`  
		Last Modified: Tue, 25 Aug 2026 00:21:23 GMT  
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
$ docker pull irssi@sha256:a909457a11b2ff4e950e7920a8c49a1d7664da7879e976fc1423702fafde76c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48691506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1072b926b2e25917c0de3126e2b46b9a766250a6896e4ddcca3e9d4243c1b934`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:18:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:18:16 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:18:16 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:18:16 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:18:16 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:18:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:18:56 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:18:56 GMT
USER user
# Tue, 25 Aug 2026 00:18:56 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:815601fed1e563ca666b11ac88cccbafed2a7f53a39cbfec4c3640e087d57f57`  
		Last Modified: Tue, 25 Aug 2026 00:19:07 GMT  
		Size: 17.9 MB (17909223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71bd92e2a43445a6737e3eee994f7055ee7694483d17aab0730dcfcdb289347`  
		Last Modified: Tue, 25 Aug 2026 00:19:06 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24e5d75cae0041f5f2773ea993b3b4a13ba479f62b39ec6175875bd4f72de49b`  
		Last Modified: Tue, 25 Aug 2026 00:19:06 GMT  
		Size: 4.6 MB (4559778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:a19f5b6c1602c3de0422c5a7bc5585322f419e80f9a0ecac8e3cb8b8196d3ca5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9dc5985f45afb03eaa6a23a8352ac0118e954f03fc0280f7af7708776598675`

```dockerfile
```

-	Layers:
	-	`sha256:cebd59f567cadbad16b627ef848183a2ccb045f6b159ab7c11bfb16fd7c0d991`  
		Last Modified: Tue, 25 Aug 2026 00:19:06 GMT  
		Size: 5.6 MB (5589384 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:855f9cfbcf08e5fa0a4c188a360d4c1f1a19f1cbb5470ec9f40a03bdd5160066`  
		Last Modified: Tue, 25 Aug 2026 00:19:06 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:1a052b4d0f9519e8d713583389cb047df361b58becd7a1322d1afccc27ad63f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53991000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93ad2140804e4aebfab5c8798550d968a70a1122682eb660646161b4f178a80f`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:20:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:20:21 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:20:21 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:20:21 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:20:21 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:21:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:21:00 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:21:00 GMT
USER user
# Tue, 25 Aug 2026 00:21:00 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76f21db37aedcef7013f996235a250f42e295470ed6a02fac0aee0cd9acb089c`  
		Last Modified: Tue, 25 Aug 2026 00:21:11 GMT  
		Size: 19.0 MB (19045752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5d2a3f83ba9f603d7b11c86e51a0c614e68a9154ca6e5e544ab3bb4fda604af`  
		Last Modified: Tue, 25 Aug 2026 00:21:10 GMT  
		Size: 3.3 KB (3335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfad0db3d91971317588d610e6e95e51e2ba497497f2d739a9ca2beb34862622`  
		Last Modified: Tue, 25 Aug 2026 00:21:10 GMT  
		Size: 4.8 MB (4782299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:3a218491d3c8cd523e32445c69351652becaa5313e409b5e0749531736673914
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdc4b5699527036e0f0fc38057bbdb62fe3fa9835a1f0e85dfbe347313435252`

```dockerfile
```

-	Layers:
	-	`sha256:787a67afda903e0f3fb7b0c14c1118217ab5b875c24ecb8167bcd53e478cf5ae`  
		Last Modified: Tue, 25 Aug 2026 00:21:10 GMT  
		Size: 5.6 MB (5595289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6a05ae939b40b9f9eba133856f2afbd935c6d65b76690e3b57917c0a36daf86`  
		Last Modified: Tue, 25 Aug 2026 00:21:10 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; 386

```console
$ docker pull irssi@sha256:c444bb223156db456eb5cb0c91d052b27ece1f8078db4a9df8fcd8d787d8f9d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54911249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0685e88ac9f98dde932bbb87b87ffdd7c13fe1c72a15a51b33478a0ee2f5eba3`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:16:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:16:54 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:16:54 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:16:54 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:16:54 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:17:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:17:41 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:17:41 GMT
USER user
# Tue, 25 Aug 2026 00:17:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15bcb4cd62266e1fe7b5cf6aa07c38bd987cd738ebb096ac90de25766031ca01`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 18.7 MB (18735546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0422ab7db5fd13891c30507cddc379e0cd4215677ebadb10934a0210eef72664`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:529284c481c26d770d77583d64f25e3384b0e198d3be0f03b2411af11f57a75a`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 4.9 MB (4868940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:02e64c4b7be68e364fb23ca27fc9465a5c7332a4d1c3153a1f84821fb05bd6e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56c11aebd940ccf62a2b5e34ed52d1119fa81ab1a00dba8a08436f28e4347f52`

```dockerfile
```

-	Layers:
	-	`sha256:eeadba3cd0b38a99d771e425e24eb418337c0148e754dd37713eef27e64c61c1`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 5.6 MB (5584936 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68ec9c19c4ccae77e069e6e59de44f206800a725a9f4ffb62a5c0f69230257f0`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 18.6 KB (18595 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; ppc64le

```console
$ docker pull irssi@sha256:c5057d7bdc7602acbe2822e47a16cbecaeff2d8b6b5241d9dcc303cd1aa739ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58250576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5579d6e4b3d85ee8f760fd12f2e7d7426d4b163c74876fd9957b9a4dcea0ab2b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:23:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:23:37 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:23:37 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:23:37 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:23:37 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:24:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:24:53 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:24:53 GMT
USER user
# Tue, 25 Aug 2026 00:24:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074b20f718e2b134e9ab34988c15cafe51b15a9ed878c2581f42addc34d90756`  
		Last Modified: Tue, 25 Aug 2026 00:25:12 GMT  
		Size: 19.5 MB (19533054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68156b93b9bbd69d051f4893ba203415871d9cac13c6f1a664b050db59ba5f87`  
		Last Modified: Tue, 25 Aug 2026 00:25:11 GMT  
		Size: 3.3 KB (3333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9165185c9e08a7366c69187cec1a77f97adb789ea5b3bbfcf948d77819785cd`  
		Last Modified: Tue, 25 Aug 2026 00:25:12 GMT  
		Size: 5.1 MB (5098696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:42222a938612ab3eca3daa40d7f55113c110333fc316218b4c653724415605da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae186c8423dc5602f8edc30cf01418bea00c135e850ca43562019c35aad735be`

```dockerfile
```

-	Layers:
	-	`sha256:f35af986e4c03a111589d45a151dfe432d13b21b9104035675b7e2f48e69c99d`  
		Last Modified: Tue, 25 Aug 2026 00:25:12 GMT  
		Size: 5.6 MB (5595844 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8402e433b0049c588cf1f835b71aace4896889f22fd76c9821cd4be5bee12942`  
		Last Modified: Tue, 25 Aug 2026 00:25:12 GMT  
		Size: 18.7 KB (18722 bytes)  
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
$ docker pull irssi@sha256:8bea897909b87d94145702b80f68ccec01b2f2376c356310101de158420c58dc
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
$ docker pull irssi@sha256:d5c76f8c3f0c435f4daa6849e8b14082426e88b8a3674687cd192e613694e734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53884279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81bf67af5795f2e5ab5b03b8ecaaa15f1573cd6b0b6d9c158443e1e5ff10032c`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:20:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:20:37 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:20:37 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:20:37 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:20:37 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:21:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:21:14 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:21:14 GMT
USER user
# Tue, 25 Aug 2026 00:21:14 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50790d66331276f33b7c15d275c79104a955adbebb80441b1a51d20ca66761cf`  
		Last Modified: Tue, 25 Aug 2026 00:21:24 GMT  
		Size: 19.2 MB (19220434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68f948657c3ae77bae01e3f1ebf7e0c0e052091c314e07b47a2c694725ff4e07`  
		Last Modified: Tue, 25 Aug 2026 00:21:23 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e46a3d9512252347fd1fb300d11cd5708ba6a4385ee1d9010dde741afa8f726`  
		Last Modified: Tue, 25 Aug 2026 00:21:24 GMT  
		Size: 4.9 MB (4867821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:2cfe70e9584f0309c9e886231f49f120c8093410c90118c74164cde73065ecd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ec6d659d4d9ceb947d01513c5d1f978f6fe7165de513098b29bbeb4af9a435f`

```dockerfile
```

-	Layers:
	-	`sha256:c471b4163c2217891c6bdcf020fa649f57dc47dd2f5741824e5bec714d32f603`  
		Last Modified: Tue, 25 Aug 2026 00:21:24 GMT  
		Size: 5.6 MB (5588813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1165448be41f70450c6b7f9c01715c5fe8663ea9479fcfef3eed645e2eef6b44`  
		Last Modified: Tue, 25 Aug 2026 00:21:23 GMT  
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
$ docker pull irssi@sha256:a909457a11b2ff4e950e7920a8c49a1d7664da7879e976fc1423702fafde76c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48691506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1072b926b2e25917c0de3126e2b46b9a766250a6896e4ddcca3e9d4243c1b934`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:18:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:18:16 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:18:16 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:18:16 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:18:16 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:18:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:18:56 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:18:56 GMT
USER user
# Tue, 25 Aug 2026 00:18:56 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:815601fed1e563ca666b11ac88cccbafed2a7f53a39cbfec4c3640e087d57f57`  
		Last Modified: Tue, 25 Aug 2026 00:19:07 GMT  
		Size: 17.9 MB (17909223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71bd92e2a43445a6737e3eee994f7055ee7694483d17aab0730dcfcdb289347`  
		Last Modified: Tue, 25 Aug 2026 00:19:06 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24e5d75cae0041f5f2773ea993b3b4a13ba479f62b39ec6175875bd4f72de49b`  
		Last Modified: Tue, 25 Aug 2026 00:19:06 GMT  
		Size: 4.6 MB (4559778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:a19f5b6c1602c3de0422c5a7bc5585322f419e80f9a0ecac8e3cb8b8196d3ca5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9dc5985f45afb03eaa6a23a8352ac0118e954f03fc0280f7af7708776598675`

```dockerfile
```

-	Layers:
	-	`sha256:cebd59f567cadbad16b627ef848183a2ccb045f6b159ab7c11bfb16fd7c0d991`  
		Last Modified: Tue, 25 Aug 2026 00:19:06 GMT  
		Size: 5.6 MB (5589384 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:855f9cfbcf08e5fa0a4c188a360d4c1f1a19f1cbb5470ec9f40a03bdd5160066`  
		Last Modified: Tue, 25 Aug 2026 00:19:06 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:1a052b4d0f9519e8d713583389cb047df361b58becd7a1322d1afccc27ad63f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53991000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93ad2140804e4aebfab5c8798550d968a70a1122682eb660646161b4f178a80f`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:20:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:20:21 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:20:21 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:20:21 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:20:21 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:21:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:21:00 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:21:00 GMT
USER user
# Tue, 25 Aug 2026 00:21:00 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76f21db37aedcef7013f996235a250f42e295470ed6a02fac0aee0cd9acb089c`  
		Last Modified: Tue, 25 Aug 2026 00:21:11 GMT  
		Size: 19.0 MB (19045752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5d2a3f83ba9f603d7b11c86e51a0c614e68a9154ca6e5e544ab3bb4fda604af`  
		Last Modified: Tue, 25 Aug 2026 00:21:10 GMT  
		Size: 3.3 KB (3335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfad0db3d91971317588d610e6e95e51e2ba497497f2d739a9ca2beb34862622`  
		Last Modified: Tue, 25 Aug 2026 00:21:10 GMT  
		Size: 4.8 MB (4782299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:3a218491d3c8cd523e32445c69351652becaa5313e409b5e0749531736673914
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdc4b5699527036e0f0fc38057bbdb62fe3fa9835a1f0e85dfbe347313435252`

```dockerfile
```

-	Layers:
	-	`sha256:787a67afda903e0f3fb7b0c14c1118217ab5b875c24ecb8167bcd53e478cf5ae`  
		Last Modified: Tue, 25 Aug 2026 00:21:10 GMT  
		Size: 5.6 MB (5595289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6a05ae939b40b9f9eba133856f2afbd935c6d65b76690e3b57917c0a36daf86`  
		Last Modified: Tue, 25 Aug 2026 00:21:10 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; 386

```console
$ docker pull irssi@sha256:c444bb223156db456eb5cb0c91d052b27ece1f8078db4a9df8fcd8d787d8f9d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54911249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0685e88ac9f98dde932bbb87b87ffdd7c13fe1c72a15a51b33478a0ee2f5eba3`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:16:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:16:54 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:16:54 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:16:54 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:16:54 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:17:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:17:41 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:17:41 GMT
USER user
# Tue, 25 Aug 2026 00:17:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15bcb4cd62266e1fe7b5cf6aa07c38bd987cd738ebb096ac90de25766031ca01`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 18.7 MB (18735546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0422ab7db5fd13891c30507cddc379e0cd4215677ebadb10934a0210eef72664`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:529284c481c26d770d77583d64f25e3384b0e198d3be0f03b2411af11f57a75a`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 4.9 MB (4868940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:02e64c4b7be68e364fb23ca27fc9465a5c7332a4d1c3153a1f84821fb05bd6e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56c11aebd940ccf62a2b5e34ed52d1119fa81ab1a00dba8a08436f28e4347f52`

```dockerfile
```

-	Layers:
	-	`sha256:eeadba3cd0b38a99d771e425e24eb418337c0148e754dd37713eef27e64c61c1`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 5.6 MB (5584936 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68ec9c19c4ccae77e069e6e59de44f206800a725a9f4ffb62a5c0f69230257f0`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 18.6 KB (18595 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; ppc64le

```console
$ docker pull irssi@sha256:c5057d7bdc7602acbe2822e47a16cbecaeff2d8b6b5241d9dcc303cd1aa739ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58250576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5579d6e4b3d85ee8f760fd12f2e7d7426d4b163c74876fd9957b9a4dcea0ab2b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:23:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:23:37 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:23:37 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:23:37 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:23:37 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:24:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:24:53 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:24:53 GMT
USER user
# Tue, 25 Aug 2026 00:24:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074b20f718e2b134e9ab34988c15cafe51b15a9ed878c2581f42addc34d90756`  
		Last Modified: Tue, 25 Aug 2026 00:25:12 GMT  
		Size: 19.5 MB (19533054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68156b93b9bbd69d051f4893ba203415871d9cac13c6f1a664b050db59ba5f87`  
		Last Modified: Tue, 25 Aug 2026 00:25:11 GMT  
		Size: 3.3 KB (3333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9165185c9e08a7366c69187cec1a77f97adb789ea5b3bbfcf948d77819785cd`  
		Last Modified: Tue, 25 Aug 2026 00:25:12 GMT  
		Size: 5.1 MB (5098696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:42222a938612ab3eca3daa40d7f55113c110333fc316218b4c653724415605da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae186c8423dc5602f8edc30cf01418bea00c135e850ca43562019c35aad735be`

```dockerfile
```

-	Layers:
	-	`sha256:f35af986e4c03a111589d45a151dfe432d13b21b9104035675b7e2f48e69c99d`  
		Last Modified: Tue, 25 Aug 2026 00:25:12 GMT  
		Size: 5.6 MB (5595844 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8402e433b0049c588cf1f835b71aace4896889f22fd76c9821cd4be5bee12942`  
		Last Modified: Tue, 25 Aug 2026 00:25:12 GMT  
		Size: 18.7 KB (18722 bytes)  
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
$ docker pull irssi@sha256:8bea897909b87d94145702b80f68ccec01b2f2376c356310101de158420c58dc
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
$ docker pull irssi@sha256:d5c76f8c3f0c435f4daa6849e8b14082426e88b8a3674687cd192e613694e734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53884279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81bf67af5795f2e5ab5b03b8ecaaa15f1573cd6b0b6d9c158443e1e5ff10032c`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:20:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:20:37 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:20:37 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:20:37 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:20:37 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:21:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:21:14 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:21:14 GMT
USER user
# Tue, 25 Aug 2026 00:21:14 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50790d66331276f33b7c15d275c79104a955adbebb80441b1a51d20ca66761cf`  
		Last Modified: Tue, 25 Aug 2026 00:21:24 GMT  
		Size: 19.2 MB (19220434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68f948657c3ae77bae01e3f1ebf7e0c0e052091c314e07b47a2c694725ff4e07`  
		Last Modified: Tue, 25 Aug 2026 00:21:23 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e46a3d9512252347fd1fb300d11cd5708ba6a4385ee1d9010dde741afa8f726`  
		Last Modified: Tue, 25 Aug 2026 00:21:24 GMT  
		Size: 4.9 MB (4867821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:2cfe70e9584f0309c9e886231f49f120c8093410c90118c74164cde73065ecd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ec6d659d4d9ceb947d01513c5d1f978f6fe7165de513098b29bbeb4af9a435f`

```dockerfile
```

-	Layers:
	-	`sha256:c471b4163c2217891c6bdcf020fa649f57dc47dd2f5741824e5bec714d32f603`  
		Last Modified: Tue, 25 Aug 2026 00:21:24 GMT  
		Size: 5.6 MB (5588813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1165448be41f70450c6b7f9c01715c5fe8663ea9479fcfef3eed645e2eef6b44`  
		Last Modified: Tue, 25 Aug 2026 00:21:23 GMT  
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
$ docker pull irssi@sha256:a909457a11b2ff4e950e7920a8c49a1d7664da7879e976fc1423702fafde76c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48691506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1072b926b2e25917c0de3126e2b46b9a766250a6896e4ddcca3e9d4243c1b934`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:18:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:18:16 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:18:16 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:18:16 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:18:16 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:18:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:18:56 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:18:56 GMT
USER user
# Tue, 25 Aug 2026 00:18:56 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:815601fed1e563ca666b11ac88cccbafed2a7f53a39cbfec4c3640e087d57f57`  
		Last Modified: Tue, 25 Aug 2026 00:19:07 GMT  
		Size: 17.9 MB (17909223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71bd92e2a43445a6737e3eee994f7055ee7694483d17aab0730dcfcdb289347`  
		Last Modified: Tue, 25 Aug 2026 00:19:06 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24e5d75cae0041f5f2773ea993b3b4a13ba479f62b39ec6175875bd4f72de49b`  
		Last Modified: Tue, 25 Aug 2026 00:19:06 GMT  
		Size: 4.6 MB (4559778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:a19f5b6c1602c3de0422c5a7bc5585322f419e80f9a0ecac8e3cb8b8196d3ca5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9dc5985f45afb03eaa6a23a8352ac0118e954f03fc0280f7af7708776598675`

```dockerfile
```

-	Layers:
	-	`sha256:cebd59f567cadbad16b627ef848183a2ccb045f6b159ab7c11bfb16fd7c0d991`  
		Last Modified: Tue, 25 Aug 2026 00:19:06 GMT  
		Size: 5.6 MB (5589384 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:855f9cfbcf08e5fa0a4c188a360d4c1f1a19f1cbb5470ec9f40a03bdd5160066`  
		Last Modified: Tue, 25 Aug 2026 00:19:06 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:1a052b4d0f9519e8d713583389cb047df361b58becd7a1322d1afccc27ad63f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53991000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93ad2140804e4aebfab5c8798550d968a70a1122682eb660646161b4f178a80f`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:20:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:20:21 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:20:21 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:20:21 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:20:21 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:21:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:21:00 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:21:00 GMT
USER user
# Tue, 25 Aug 2026 00:21:00 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76f21db37aedcef7013f996235a250f42e295470ed6a02fac0aee0cd9acb089c`  
		Last Modified: Tue, 25 Aug 2026 00:21:11 GMT  
		Size: 19.0 MB (19045752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5d2a3f83ba9f603d7b11c86e51a0c614e68a9154ca6e5e544ab3bb4fda604af`  
		Last Modified: Tue, 25 Aug 2026 00:21:10 GMT  
		Size: 3.3 KB (3335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfad0db3d91971317588d610e6e95e51e2ba497497f2d739a9ca2beb34862622`  
		Last Modified: Tue, 25 Aug 2026 00:21:10 GMT  
		Size: 4.8 MB (4782299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:3a218491d3c8cd523e32445c69351652becaa5313e409b5e0749531736673914
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdc4b5699527036e0f0fc38057bbdb62fe3fa9835a1f0e85dfbe347313435252`

```dockerfile
```

-	Layers:
	-	`sha256:787a67afda903e0f3fb7b0c14c1118217ab5b875c24ecb8167bcd53e478cf5ae`  
		Last Modified: Tue, 25 Aug 2026 00:21:10 GMT  
		Size: 5.6 MB (5595289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6a05ae939b40b9f9eba133856f2afbd935c6d65b76690e3b57917c0a36daf86`  
		Last Modified: Tue, 25 Aug 2026 00:21:10 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; 386

```console
$ docker pull irssi@sha256:c444bb223156db456eb5cb0c91d052b27ece1f8078db4a9df8fcd8d787d8f9d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54911249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0685e88ac9f98dde932bbb87b87ffdd7c13fe1c72a15a51b33478a0ee2f5eba3`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:16:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:16:54 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:16:54 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:16:54 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:16:54 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:17:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:17:41 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:17:41 GMT
USER user
# Tue, 25 Aug 2026 00:17:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15bcb4cd62266e1fe7b5cf6aa07c38bd987cd738ebb096ac90de25766031ca01`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 18.7 MB (18735546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0422ab7db5fd13891c30507cddc379e0cd4215677ebadb10934a0210eef72664`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:529284c481c26d770d77583d64f25e3384b0e198d3be0f03b2411af11f57a75a`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 4.9 MB (4868940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:02e64c4b7be68e364fb23ca27fc9465a5c7332a4d1c3153a1f84821fb05bd6e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56c11aebd940ccf62a2b5e34ed52d1119fa81ab1a00dba8a08436f28e4347f52`

```dockerfile
```

-	Layers:
	-	`sha256:eeadba3cd0b38a99d771e425e24eb418337c0148e754dd37713eef27e64c61c1`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 5.6 MB (5584936 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68ec9c19c4ccae77e069e6e59de44f206800a725a9f4ffb62a5c0f69230257f0`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 18.6 KB (18595 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; ppc64le

```console
$ docker pull irssi@sha256:c5057d7bdc7602acbe2822e47a16cbecaeff2d8b6b5241d9dcc303cd1aa739ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58250576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5579d6e4b3d85ee8f760fd12f2e7d7426d4b163c74876fd9957b9a4dcea0ab2b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:23:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:23:37 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:23:37 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:23:37 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:23:37 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:24:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:24:53 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:24:53 GMT
USER user
# Tue, 25 Aug 2026 00:24:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074b20f718e2b134e9ab34988c15cafe51b15a9ed878c2581f42addc34d90756`  
		Last Modified: Tue, 25 Aug 2026 00:25:12 GMT  
		Size: 19.5 MB (19533054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68156b93b9bbd69d051f4893ba203415871d9cac13c6f1a664b050db59ba5f87`  
		Last Modified: Tue, 25 Aug 2026 00:25:11 GMT  
		Size: 3.3 KB (3333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9165185c9e08a7366c69187cec1a77f97adb789ea5b3bbfcf948d77819785cd`  
		Last Modified: Tue, 25 Aug 2026 00:25:12 GMT  
		Size: 5.1 MB (5098696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:42222a938612ab3eca3daa40d7f55113c110333fc316218b4c653724415605da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae186c8423dc5602f8edc30cf01418bea00c135e850ca43562019c35aad735be`

```dockerfile
```

-	Layers:
	-	`sha256:f35af986e4c03a111589d45a151dfe432d13b21b9104035675b7e2f48e69c99d`  
		Last Modified: Tue, 25 Aug 2026 00:25:12 GMT  
		Size: 5.6 MB (5595844 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8402e433b0049c588cf1f835b71aace4896889f22fd76c9821cd4be5bee12942`  
		Last Modified: Tue, 25 Aug 2026 00:25:12 GMT  
		Size: 18.7 KB (18722 bytes)  
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
$ docker pull irssi@sha256:8bea897909b87d94145702b80f68ccec01b2f2376c356310101de158420c58dc
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
$ docker pull irssi@sha256:d5c76f8c3f0c435f4daa6849e8b14082426e88b8a3674687cd192e613694e734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53884279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81bf67af5795f2e5ab5b03b8ecaaa15f1573cd6b0b6d9c158443e1e5ff10032c`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:20:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:20:37 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:20:37 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:20:37 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:20:37 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:21:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:21:14 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:21:14 GMT
USER user
# Tue, 25 Aug 2026 00:21:14 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50790d66331276f33b7c15d275c79104a955adbebb80441b1a51d20ca66761cf`  
		Last Modified: Tue, 25 Aug 2026 00:21:24 GMT  
		Size: 19.2 MB (19220434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68f948657c3ae77bae01e3f1ebf7e0c0e052091c314e07b47a2c694725ff4e07`  
		Last Modified: Tue, 25 Aug 2026 00:21:23 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e46a3d9512252347fd1fb300d11cd5708ba6a4385ee1d9010dde741afa8f726`  
		Last Modified: Tue, 25 Aug 2026 00:21:24 GMT  
		Size: 4.9 MB (4867821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:2cfe70e9584f0309c9e886231f49f120c8093410c90118c74164cde73065ecd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5607464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ec6d659d4d9ceb947d01513c5d1f978f6fe7165de513098b29bbeb4af9a435f`

```dockerfile
```

-	Layers:
	-	`sha256:c471b4163c2217891c6bdcf020fa649f57dc47dd2f5741824e5bec714d32f603`  
		Last Modified: Tue, 25 Aug 2026 00:21:24 GMT  
		Size: 5.6 MB (5588813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1165448be41f70450c6b7f9c01715c5fe8663ea9479fcfef3eed645e2eef6b44`  
		Last Modified: Tue, 25 Aug 2026 00:21:23 GMT  
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
$ docker pull irssi@sha256:a909457a11b2ff4e950e7920a8c49a1d7664da7879e976fc1423702fafde76c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48691506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1072b926b2e25917c0de3126e2b46b9a766250a6896e4ddcca3e9d4243c1b934`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:18:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:18:16 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:18:16 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:18:16 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:18:16 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:18:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:18:56 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:18:56 GMT
USER user
# Tue, 25 Aug 2026 00:18:56 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:815601fed1e563ca666b11ac88cccbafed2a7f53a39cbfec4c3640e087d57f57`  
		Last Modified: Tue, 25 Aug 2026 00:19:07 GMT  
		Size: 17.9 MB (17909223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71bd92e2a43445a6737e3eee994f7055ee7694483d17aab0730dcfcdb289347`  
		Last Modified: Tue, 25 Aug 2026 00:19:06 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24e5d75cae0041f5f2773ea993b3b4a13ba479f62b39ec6175875bd4f72de49b`  
		Last Modified: Tue, 25 Aug 2026 00:19:06 GMT  
		Size: 4.6 MB (4559778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:a19f5b6c1602c3de0422c5a7bc5585322f419e80f9a0ecac8e3cb8b8196d3ca5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9dc5985f45afb03eaa6a23a8352ac0118e954f03fc0280f7af7708776598675`

```dockerfile
```

-	Layers:
	-	`sha256:cebd59f567cadbad16b627ef848183a2ccb045f6b159ab7c11bfb16fd7c0d991`  
		Last Modified: Tue, 25 Aug 2026 00:19:06 GMT  
		Size: 5.6 MB (5589384 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:855f9cfbcf08e5fa0a4c188a360d4c1f1a19f1cbb5470ec9f40a03bdd5160066`  
		Last Modified: Tue, 25 Aug 2026 00:19:06 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:1a052b4d0f9519e8d713583389cb047df361b58becd7a1322d1afccc27ad63f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53991000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93ad2140804e4aebfab5c8798550d968a70a1122682eb660646161b4f178a80f`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:20:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:20:21 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:20:21 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:20:21 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:20:21 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:21:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:21:00 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:21:00 GMT
USER user
# Tue, 25 Aug 2026 00:21:00 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76f21db37aedcef7013f996235a250f42e295470ed6a02fac0aee0cd9acb089c`  
		Last Modified: Tue, 25 Aug 2026 00:21:11 GMT  
		Size: 19.0 MB (19045752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5d2a3f83ba9f603d7b11c86e51a0c614e68a9154ca6e5e544ab3bb4fda604af`  
		Last Modified: Tue, 25 Aug 2026 00:21:10 GMT  
		Size: 3.3 KB (3335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfad0db3d91971317588d610e6e95e51e2ba497497f2d739a9ca2beb34862622`  
		Last Modified: Tue, 25 Aug 2026 00:21:10 GMT  
		Size: 4.8 MB (4782299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:3a218491d3c8cd523e32445c69351652becaa5313e409b5e0749531736673914
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdc4b5699527036e0f0fc38057bbdb62fe3fa9835a1f0e85dfbe347313435252`

```dockerfile
```

-	Layers:
	-	`sha256:787a67afda903e0f3fb7b0c14c1118217ab5b875c24ecb8167bcd53e478cf5ae`  
		Last Modified: Tue, 25 Aug 2026 00:21:10 GMT  
		Size: 5.6 MB (5595289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6a05ae939b40b9f9eba133856f2afbd935c6d65b76690e3b57917c0a36daf86`  
		Last Modified: Tue, 25 Aug 2026 00:21:10 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; 386

```console
$ docker pull irssi@sha256:c444bb223156db456eb5cb0c91d052b27ece1f8078db4a9df8fcd8d787d8f9d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54911249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0685e88ac9f98dde932bbb87b87ffdd7c13fe1c72a15a51b33478a0ee2f5eba3`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:16:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:16:54 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:16:54 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:16:54 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:16:54 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:17:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:17:41 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:17:41 GMT
USER user
# Tue, 25 Aug 2026 00:17:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15bcb4cd62266e1fe7b5cf6aa07c38bd987cd738ebb096ac90de25766031ca01`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 18.7 MB (18735546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0422ab7db5fd13891c30507cddc379e0cd4215677ebadb10934a0210eef72664`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 3.3 KB (3334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:529284c481c26d770d77583d64f25e3384b0e198d3be0f03b2411af11f57a75a`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 4.9 MB (4868940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:02e64c4b7be68e364fb23ca27fc9465a5c7332a4d1c3153a1f84821fb05bd6e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56c11aebd940ccf62a2b5e34ed52d1119fa81ab1a00dba8a08436f28e4347f52`

```dockerfile
```

-	Layers:
	-	`sha256:eeadba3cd0b38a99d771e425e24eb418337c0148e754dd37713eef27e64c61c1`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 5.6 MB (5584936 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68ec9c19c4ccae77e069e6e59de44f206800a725a9f4ffb62a5c0f69230257f0`  
		Last Modified: Tue, 25 Aug 2026 00:17:51 GMT  
		Size: 18.6 KB (18595 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; ppc64le

```console
$ docker pull irssi@sha256:c5057d7bdc7602acbe2822e47a16cbecaeff2d8b6b5241d9dcc303cd1aa739ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58250576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5579d6e4b3d85ee8f760fd12f2e7d7426d4b163c74876fd9957b9a4dcea0ab2b`
-	Default Command: `["irssi"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:23:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:23:37 GMT
ENV HOME=/home/user
# Tue, 25 Aug 2026 00:23:37 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Tue, 25 Aug 2026 00:23:37 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:23:37 GMT
ENV IRSSI_VERSION=1.4.5
# Tue, 25 Aug 2026 00:24:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Tue, 25 Aug 2026 00:24:53 GMT
WORKDIR /home/user
# Tue, 25 Aug 2026 00:24:53 GMT
USER user
# Tue, 25 Aug 2026 00:24:53 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074b20f718e2b134e9ab34988c15cafe51b15a9ed878c2581f42addc34d90756`  
		Last Modified: Tue, 25 Aug 2026 00:25:12 GMT  
		Size: 19.5 MB (19533054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68156b93b9bbd69d051f4893ba203415871d9cac13c6f1a664b050db59ba5f87`  
		Last Modified: Tue, 25 Aug 2026 00:25:11 GMT  
		Size: 3.3 KB (3333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9165185c9e08a7366c69187cec1a77f97adb789ea5b3bbfcf948d77819785cd`  
		Last Modified: Tue, 25 Aug 2026 00:25:12 GMT  
		Size: 5.1 MB (5098696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:42222a938612ab3eca3daa40d7f55113c110333fc316218b4c653724415605da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5614566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae186c8423dc5602f8edc30cf01418bea00c135e850ca43562019c35aad735be`

```dockerfile
```

-	Layers:
	-	`sha256:f35af986e4c03a111589d45a151dfe432d13b21b9104035675b7e2f48e69c99d`  
		Last Modified: Tue, 25 Aug 2026 00:25:12 GMT  
		Size: 5.6 MB (5595844 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8402e433b0049c588cf1f835b71aace4896889f22fd76c9821cd4be5bee12942`  
		Last Modified: Tue, 25 Aug 2026 00:25:12 GMT  
		Size: 18.7 KB (18722 bytes)  
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
