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
