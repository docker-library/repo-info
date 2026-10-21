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
$ docker pull irssi@sha256:c1be243429965ee80da67b9a9f3e8360b242d663b508588486b244139b008654
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
$ docker pull irssi@sha256:38434aab2e4e861d82458eb30ff4fc82b9ff95e4878f9912b49f0f01245e7683
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53930783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:749229b84d768fe8a64d11a5d4d35f5464e85f5986b5d4954f04791cb4f53f7e`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:38 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:16:38 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:16:38 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:16:38 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:17:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:17:17 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:17:17 GMT
USER user
# Wed, 21 Oct 2026 00:17:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:981c90c5a5b9bfb503efc8257e0aa850b004559596afe9a923232c2e15af1b76`  
		Last Modified: Wed, 21 Oct 2026 00:17:28 GMT  
		Size: 19.2 MB (19214386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da8677829021eb3224e10f9077ebe4f87c5e2c0bafd3cedacab1c480efa7f636`  
		Last Modified: Wed, 21 Oct 2026 00:17:27 GMT  
		Size: 3.3 KB (3325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c69be0a85bdc8f905e5b403d4ae736de4daf2f3feb28f76c6a3fb076bc9e8cf`  
		Last Modified: Wed, 21 Oct 2026 00:17:27 GMT  
		Size: 4.9 MB (4869461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:69f907a1a64222c62edaccf5720f3beccb3dfaf1417d421f136249e1fe6fc801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5611931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc39a21cf0a40befc686ea1b51ed9f14bd33804f494bcf02c1c2fdf861794555`

```dockerfile
```

-	Layers:
	-	`sha256:927a615120e800302819774fe20f1b79e9dae5f8096a749b2cf0936b3e282985`  
		Last Modified: Wed, 21 Oct 2026 00:17:27 GMT  
		Size: 5.6 MB (5593282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:670d052390f58c504cc3e635b9f6a04da5f0872ff0816839d5e1cb17288689cf`  
		Last Modified: Wed, 21 Oct 2026 00:17:27 GMT  
		Size: 18.6 KB (18649 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; arm variant v5

```console
$ docker pull irssi@sha256:627919e5dcb9f32cc9ae81f9c7958fb2a7b74245939112e4391f08fe8de601fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (51009458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f8cf2cdad8245668b2f4e5ea5ea7e084127d984ccf24f64c4a398845a94cc98`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:32 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:16:32 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:16:32 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:16:32 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:17:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:17:19 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:17:19 GMT
USER user
# Wed, 21 Oct 2026 00:17:19 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b423d8e5b97d2d23134d76967247ce5a64b7ae164a954dbaa2a6ef745c63fb5f`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 18.3 MB (18287316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d77d2a048d3c59ef79537af667942a98e23aa4f6f696454166701ee9d108d8`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 3.3 KB (3327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b00273b8349d480c6c23ced3f37b08b15c850209e913e056006277d0770d8cd7`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 4.7 MB (4710989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:77616c9912f6c44b61c376f9565818a3eecf825e898a9b13c421be36164ac656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5609618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbd2e57a3055e6bede9f527002d97ba752158600abd23364a76c2103bb6d4d21`

```dockerfile
```

-	Layers:
	-	`sha256:558dd0a047d1cd74d6cee003d7eb984d88c8faf66a957d1d1adbf21d89000140`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 5.6 MB (5590831 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34b339f396b8f95b38e7cc4a1ab8e3345c8c7a7ea4aa2ba85583b1448b09acbe`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 18.8 KB (18787 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; arm variant v7

```console
$ docker pull irssi@sha256:d20c8497c8b0393bc6769c16426a170d84fe1bb46bce15229da64ff9fcc512ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48738829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:308166e3adb654a4dd1be5508a1a3e45b00b8bafb6ba689e22c462a7d5c11f58`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:20:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:20:43 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:20:43 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:20:43 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:20:43 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:21:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:21:24 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:21:24 GMT
USER user
# Wed, 21 Oct 2026 00:21:24 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f8eb073e557b2fb506b6faa9eae3677b1d49ea8721e51992a31cf5c5c4dd75da`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 26.3 MB (26258396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0997a0c07165995ae0f9544f1e6e2e3ec4f4c5be2bb0f3eaf45528f619ea54a3`  
		Last Modified: Wed, 21 Oct 2026 00:21:35 GMT  
		Size: 17.9 MB (17915695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:524dcfa64e981b6375dc773cdc60d6e27ae1ccf989ea86f3cf0f67afb030ce2b`  
		Last Modified: Wed, 21 Oct 2026 00:21:34 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2040987283fe3685e239ca0db9667392dc97c6afa29d9170b2af3c616dcd7f1`  
		Last Modified: Wed, 21 Oct 2026 00:21:35 GMT  
		Size: 4.6 MB (4561377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:f51abc58d60c827875919bdc32e920e1afe93fdcd73c5d0a85cec13aeec0e0b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5612642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e47b13517bd77e5f1b93e486352e79fbb116f9b916b40cd586954b5cfee043`

```dockerfile
```

-	Layers:
	-	`sha256:29db05cbf6fb62866b1ddbc2d0f9ea50010849d3193b1b34161162cdd003e48b`  
		Last Modified: Wed, 21 Oct 2026 00:21:35 GMT  
		Size: 5.6 MB (5593853 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5564e8b56867df135dde88e75c5fbbe577394bad0dfd8092b725765ebd5e6952`  
		Last Modified: Wed, 21 Oct 2026 00:21:35 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:49a10e244a6ff549c0bdedb2adbc444e782db57b4c6a6c7c277910804aa88044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (54039844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b1986f6d8faba50585ef34e8f403f1ff049ba10deca627f8e5f1d0d1da989e8`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:21 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:16:21 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:16:21 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:16:21 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:16:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:16:58 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:16:58 GMT
USER user
# Wed, 21 Oct 2026 00:16:58 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86fd62f9345e6e5204bb155204a502a5496073d2aac39f0f64dc3380840e3ac6`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 19.1 MB (19053813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46b83fec37491aea5ff75b3c0e4dd163231d38dbbcc9b433fe63e489df8d30a8`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d64793c825628bc871e6715226f725cb92d8ce3e5a20e8b517f27ab74c60a86a`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 4.8 MB (4782193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:00bff56c4b24759ef0bc7cc9752d61b69e058040e4fa6a05b2e13d22beb4a5b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5618589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b87233f492a07884170e40c69210db194815b90aacd1193d8c9e77e312e1e4b`

```dockerfile
```

-	Layers:
	-	`sha256:762d8c3d93d6a705430cff75705ba688e87a22bf0d7e5620adf9ac33a3cf3450`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 5.6 MB (5599758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e71b21b047d48ee0fdededc86784ee5eca972544c7e6f27bd1891f6ae5d1550`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 18.8 KB (18831 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; 386

```console
$ docker pull irssi@sha256:641da708ad66ee3428581679b84055068277df95ffc35a277524c33fa635ffcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54963983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9084667c0902fa0ab5eec112f0d28dbdcb57deb0aed24be66c20539ce779ef8e`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:33 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:16:33 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:16:33 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:16:33 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:17:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:17:13 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:17:13 GMT
USER user
# Wed, 21 Oct 2026 00:17:13 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ed7ef4d8bb8a16e6b1a4d6e74da037bb60ce864d336261b439c7da8595c0f49f`  
		Last Modified: Tue, 20 Oct 2026 23:30:51 GMT  
		Size: 31.4 MB (31353534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99c9207f582783c2bae5f11e6544aa0c36b4e98283667c277c4ffb1db9560877`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 18.7 MB (18737264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be56a1d4670f63a451aab73e2b4a82a9f44d088a33d1a8457d34901655994198`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3f1c768eef99d4c3b2699eff52a5c8b1425d0009a3afb48ee7cf809659aae1`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 4.9 MB (4869825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:4ec9c1468d13a4a7379bf6320e3b73faa80436920558c3cf75e591958b186505
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1066a66c0e95e34232e2cf4a573c493348c17b8317a97d03ec9ba343966bc1f4`

```dockerfile
```

-	Layers:
	-	`sha256:0ce94fe846a8bb2a65d58c790fadf00a2188edee5638040cf8713bc8339add0c`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 5.6 MB (5589405 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8823fbc72f91052b9ebae7f27338ea317663468b204e0090fb32d9b32d6d997`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 18.6 KB (18595 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; ppc64le

```console
$ docker pull irssi@sha256:379a58cf7fbb0ea95a4d97e0d49c260f9445eefce2944330da63e8b73ab1e314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58303343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df4ba4ce8cd1c0ed185e6d5c1e2b1a3afd8538772be4133276d38d14339821c4`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:32:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:32:21 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:32:21 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:32:21 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:32:21 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:34:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:34:18 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:34:18 GMT
USER user
# Wed, 21 Oct 2026 00:34:18 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cb33a61e7f8f252c0381ebd1e642dc9e1cb34c41973c0d6ada407130487e279`  
		Last Modified: Wed, 21 Oct 2026 00:34:44 GMT  
		Size: 19.5 MB (19547938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db5035ffdbbdc3bcabc4a940f73e511496bb486517b4d8fe2fb12a57c7c62c3a`  
		Last Modified: Wed, 21 Oct 2026 00:34:43 GMT  
		Size: 3.3 KB (3324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6da80ae16fa12f17fca54abecca9919767500d88bb1930a6b67f074b1cedb4aa`  
		Last Modified: Wed, 21 Oct 2026 00:34:43 GMT  
		Size: 5.1 MB (5100114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:961a33274cc424a25f863e238f10f1291a1703c9477ae7701929b578cce5e27d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5619036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d21e2809e9055b56d3934dbaa6436b863fe557a69d118fb1561752d6a2c6262a`

```dockerfile
```

-	Layers:
	-	`sha256:3db3598ef590a54465a322bb14eb6ce228fede3c672015231f4d09c43cb983eb`  
		Last Modified: Wed, 21 Oct 2026 00:34:43 GMT  
		Size: 5.6 MB (5600313 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b42ea1cc9de2011d0fa507a6210164453386ca91a3bb53093ec60cb72fbd627`  
		Last Modified: Wed, 21 Oct 2026 00:34:43 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1` - linux; riscv64

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

### `irssi:1` - unknown; unknown

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

### `irssi:1` - linux; s390x

```console
$ docker pull irssi@sha256:15ccf6d5a5fa3d7378ba2667cb39136a51acb476c1dca8986910c7559fce7543
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54591457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab85feb93217db676b979d37fb0a31afca9ce7673932e40dd9edaba27ac26ed7`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:18:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:18:24 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:18:24 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:18:24 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:18:24 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:19:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:19:00 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:19:00 GMT
USER user
# Wed, 21 Oct 2026 00:19:00 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8ea9a8c24bd3c92b5dfe24692234a4db47600db4bbc5b78a32119c1a1a244bb8`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 29.9 MB (29911438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68de19425eeed914f1457d29b779a32e2aeba057163e5704ccc432d75e99c5ed`  
		Last Modified: Wed, 21 Oct 2026 00:19:17 GMT  
		Size: 19.8 MB (19768195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afb503f8aac76879dfc5c4305864c0916aba847f5a5bb78d5ed102599bf0e40d`  
		Last Modified: Wed, 21 Oct 2026 00:19:16 GMT  
		Size: 3.3 KB (3330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7079454a155370ff81cf3631e39175cf9a39666f671ac7a7ca24ad2d802f429`  
		Last Modified: Wed, 21 Oct 2026 00:19:17 GMT  
		Size: 4.9 MB (4908462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1` - unknown; unknown

```console
$ docker pull irssi@sha256:9061ab97c075216d91d70a2259500c50d1db47a8e4b679d2e94ce2061fad9733
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5612837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6af48bbb49bec1fd4970335d25b5598c1051cd21fead4c910d2284191b6b169d`

```dockerfile
```

-	Layers:
	-	`sha256:fba3e64eb3587fbca9057df36ff78633d9ccbef3b49080a88391b521be03b41a`  
		Last Modified: Wed, 21 Oct 2026 00:19:17 GMT  
		Size: 5.6 MB (5594187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1cf6c64caba513ddc55778fe329261833e325ef2411c213317815863c1d6051d`  
		Last Modified: Wed, 21 Oct 2026 00:19:16 GMT  
		Size: 18.6 KB (18650 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1-alpine`

```console
$ docker pull irssi@sha256:929f300088d21f30c4ee52458f1ce61a2a6ad57d32b6f8b64065d122b914a6a1
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
$ docker pull irssi@sha256:962513480d4394686b9756cae40588f7bd69360773c71a359a9f161740dafca3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19894669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a96d3e0525e3e3d10c5b274636a21e08595aef43b08c70507246608ce6ff7127`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Sat, 19 Sep 2026 06:12:19 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Sat, 19 Sep 2026 06:12:20 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 06:12:20 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 06:12:20 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 06:12:20 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 06:16:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Sat, 19 Sep 2026 06:16:22 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 06:16:22 GMT
USER user
# Sat, 19 Sep 2026 06:16:22 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:125f7ed2919501383cc2a463efb0a6d988a780211c71de97a05b674ca6bb8dde`  
		Last Modified: Fri, 18 Sep 2026 16:50:46 GMT  
		Size: 3.6 MB (3576321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afbd51ca02681bbe39a986700707521b548e29113e6468ecd792d2212ada05ed`  
		Last Modified: Sat, 19 Sep 2026 06:17:17 GMT  
		Size: 10.3 MB (10251614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0049ca4c752934f292f357ff6267055d415bf78671aaf92cdc3d1660dd024b65`  
		Last Modified: Sat, 19 Sep 2026 06:17:14 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97aedcb0a825edc4fa216b7f2b552422432a52f2689309daab35c566fc7c5f26`  
		Last Modified: Sat, 19 Sep 2026 06:17:16 GMT  
		Size: 6.1 MB (6065747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:f8ef3638059f55983a3b096e0efb7d44b6e68ae0671a33bd7c258e630925682d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:febc24d8710ec77e6d066f6516603112cf8d5a02ec545c3c9955f4229f75fdcf`

```dockerfile
```

-	Layers:
	-	`sha256:19d15bf32d13c84435568770433158c8a4965f67cd0f1696f67c6e80e2de5c3b`  
		Last Modified: Sat, 19 Sep 2026 06:17:15 GMT  
		Size: 1.3 MB (1290588 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28222b8426ba538a8317a57b6e5509ec334bfca641b3ec10d399177aac8e5d23`  
		Last Modified: Sat, 19 Sep 2026 06:17:14 GMT  
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
$ docker pull irssi@sha256:929f300088d21f30c4ee52458f1ce61a2a6ad57d32b6f8b64065d122b914a6a1
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
$ docker pull irssi@sha256:962513480d4394686b9756cae40588f7bd69360773c71a359a9f161740dafca3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19894669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a96d3e0525e3e3d10c5b274636a21e08595aef43b08c70507246608ce6ff7127`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Sat, 19 Sep 2026 06:12:19 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Sat, 19 Sep 2026 06:12:20 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 06:12:20 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 06:12:20 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 06:12:20 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 06:16:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Sat, 19 Sep 2026 06:16:22 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 06:16:22 GMT
USER user
# Sat, 19 Sep 2026 06:16:22 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:125f7ed2919501383cc2a463efb0a6d988a780211c71de97a05b674ca6bb8dde`  
		Last Modified: Fri, 18 Sep 2026 16:50:46 GMT  
		Size: 3.6 MB (3576321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afbd51ca02681bbe39a986700707521b548e29113e6468ecd792d2212ada05ed`  
		Last Modified: Sat, 19 Sep 2026 06:17:17 GMT  
		Size: 10.3 MB (10251614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0049ca4c752934f292f357ff6267055d415bf78671aaf92cdc3d1660dd024b65`  
		Last Modified: Sat, 19 Sep 2026 06:17:14 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97aedcb0a825edc4fa216b7f2b552422432a52f2689309daab35c566fc7c5f26`  
		Last Modified: Sat, 19 Sep 2026 06:17:16 GMT  
		Size: 6.1 MB (6065747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:f8ef3638059f55983a3b096e0efb7d44b6e68ae0671a33bd7c258e630925682d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:febc24d8710ec77e6d066f6516603112cf8d5a02ec545c3c9955f4229f75fdcf`

```dockerfile
```

-	Layers:
	-	`sha256:19d15bf32d13c84435568770433158c8a4965f67cd0f1696f67c6e80e2de5c3b`  
		Last Modified: Sat, 19 Sep 2026 06:17:15 GMT  
		Size: 1.3 MB (1290588 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28222b8426ba538a8317a57b6e5509ec334bfca641b3ec10d399177aac8e5d23`  
		Last Modified: Sat, 19 Sep 2026 06:17:14 GMT  
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
$ docker pull irssi@sha256:c1be243429965ee80da67b9a9f3e8360b242d663b508588486b244139b008654
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
$ docker pull irssi@sha256:38434aab2e4e861d82458eb30ff4fc82b9ff95e4878f9912b49f0f01245e7683
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53930783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:749229b84d768fe8a64d11a5d4d35f5464e85f5986b5d4954f04791cb4f53f7e`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:38 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:16:38 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:16:38 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:16:38 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:17:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:17:17 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:17:17 GMT
USER user
# Wed, 21 Oct 2026 00:17:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:981c90c5a5b9bfb503efc8257e0aa850b004559596afe9a923232c2e15af1b76`  
		Last Modified: Wed, 21 Oct 2026 00:17:28 GMT  
		Size: 19.2 MB (19214386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da8677829021eb3224e10f9077ebe4f87c5e2c0bafd3cedacab1c480efa7f636`  
		Last Modified: Wed, 21 Oct 2026 00:17:27 GMT  
		Size: 3.3 KB (3325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c69be0a85bdc8f905e5b403d4ae736de4daf2f3feb28f76c6a3fb076bc9e8cf`  
		Last Modified: Wed, 21 Oct 2026 00:17:27 GMT  
		Size: 4.9 MB (4869461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:69f907a1a64222c62edaccf5720f3beccb3dfaf1417d421f136249e1fe6fc801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5611931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc39a21cf0a40befc686ea1b51ed9f14bd33804f494bcf02c1c2fdf861794555`

```dockerfile
```

-	Layers:
	-	`sha256:927a615120e800302819774fe20f1b79e9dae5f8096a749b2cf0936b3e282985`  
		Last Modified: Wed, 21 Oct 2026 00:17:27 GMT  
		Size: 5.6 MB (5593282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:670d052390f58c504cc3e635b9f6a04da5f0872ff0816839d5e1cb17288689cf`  
		Last Modified: Wed, 21 Oct 2026 00:17:27 GMT  
		Size: 18.6 KB (18649 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; arm variant v5

```console
$ docker pull irssi@sha256:627919e5dcb9f32cc9ae81f9c7958fb2a7b74245939112e4391f08fe8de601fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (51009458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f8cf2cdad8245668b2f4e5ea5ea7e084127d984ccf24f64c4a398845a94cc98`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:32 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:16:32 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:16:32 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:16:32 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:17:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:17:19 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:17:19 GMT
USER user
# Wed, 21 Oct 2026 00:17:19 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b423d8e5b97d2d23134d76967247ce5a64b7ae164a954dbaa2a6ef745c63fb5f`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 18.3 MB (18287316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d77d2a048d3c59ef79537af667942a98e23aa4f6f696454166701ee9d108d8`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 3.3 KB (3327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b00273b8349d480c6c23ced3f37b08b15c850209e913e056006277d0770d8cd7`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 4.7 MB (4710989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:77616c9912f6c44b61c376f9565818a3eecf825e898a9b13c421be36164ac656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5609618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbd2e57a3055e6bede9f527002d97ba752158600abd23364a76c2103bb6d4d21`

```dockerfile
```

-	Layers:
	-	`sha256:558dd0a047d1cd74d6cee003d7eb984d88c8faf66a957d1d1adbf21d89000140`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 5.6 MB (5590831 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34b339f396b8f95b38e7cc4a1ab8e3345c8c7a7ea4aa2ba85583b1448b09acbe`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 18.8 KB (18787 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; arm variant v7

```console
$ docker pull irssi@sha256:d20c8497c8b0393bc6769c16426a170d84fe1bb46bce15229da64ff9fcc512ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48738829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:308166e3adb654a4dd1be5508a1a3e45b00b8bafb6ba689e22c462a7d5c11f58`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:20:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:20:43 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:20:43 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:20:43 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:20:43 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:21:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:21:24 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:21:24 GMT
USER user
# Wed, 21 Oct 2026 00:21:24 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f8eb073e557b2fb506b6faa9eae3677b1d49ea8721e51992a31cf5c5c4dd75da`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 26.3 MB (26258396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0997a0c07165995ae0f9544f1e6e2e3ec4f4c5be2bb0f3eaf45528f619ea54a3`  
		Last Modified: Wed, 21 Oct 2026 00:21:35 GMT  
		Size: 17.9 MB (17915695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:524dcfa64e981b6375dc773cdc60d6e27ae1ccf989ea86f3cf0f67afb030ce2b`  
		Last Modified: Wed, 21 Oct 2026 00:21:34 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2040987283fe3685e239ca0db9667392dc97c6afa29d9170b2af3c616dcd7f1`  
		Last Modified: Wed, 21 Oct 2026 00:21:35 GMT  
		Size: 4.6 MB (4561377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:f51abc58d60c827875919bdc32e920e1afe93fdcd73c5d0a85cec13aeec0e0b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5612642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e47b13517bd77e5f1b93e486352e79fbb116f9b916b40cd586954b5cfee043`

```dockerfile
```

-	Layers:
	-	`sha256:29db05cbf6fb62866b1ddbc2d0f9ea50010849d3193b1b34161162cdd003e48b`  
		Last Modified: Wed, 21 Oct 2026 00:21:35 GMT  
		Size: 5.6 MB (5593853 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5564e8b56867df135dde88e75c5fbbe577394bad0dfd8092b725765ebd5e6952`  
		Last Modified: Wed, 21 Oct 2026 00:21:35 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:49a10e244a6ff549c0bdedb2adbc444e782db57b4c6a6c7c277910804aa88044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (54039844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b1986f6d8faba50585ef34e8f403f1ff049ba10deca627f8e5f1d0d1da989e8`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:21 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:16:21 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:16:21 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:16:21 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:16:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:16:58 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:16:58 GMT
USER user
# Wed, 21 Oct 2026 00:16:58 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86fd62f9345e6e5204bb155204a502a5496073d2aac39f0f64dc3380840e3ac6`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 19.1 MB (19053813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46b83fec37491aea5ff75b3c0e4dd163231d38dbbcc9b433fe63e489df8d30a8`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d64793c825628bc871e6715226f725cb92d8ce3e5a20e8b517f27ab74c60a86a`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 4.8 MB (4782193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:00bff56c4b24759ef0bc7cc9752d61b69e058040e4fa6a05b2e13d22beb4a5b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5618589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b87233f492a07884170e40c69210db194815b90aacd1193d8c9e77e312e1e4b`

```dockerfile
```

-	Layers:
	-	`sha256:762d8c3d93d6a705430cff75705ba688e87a22bf0d7e5620adf9ac33a3cf3450`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 5.6 MB (5599758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e71b21b047d48ee0fdededc86784ee5eca972544c7e6f27bd1891f6ae5d1550`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 18.8 KB (18831 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; 386

```console
$ docker pull irssi@sha256:641da708ad66ee3428581679b84055068277df95ffc35a277524c33fa635ffcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54963983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9084667c0902fa0ab5eec112f0d28dbdcb57deb0aed24be66c20539ce779ef8e`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:33 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:16:33 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:16:33 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:16:33 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:17:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:17:13 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:17:13 GMT
USER user
# Wed, 21 Oct 2026 00:17:13 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ed7ef4d8bb8a16e6b1a4d6e74da037bb60ce864d336261b439c7da8595c0f49f`  
		Last Modified: Tue, 20 Oct 2026 23:30:51 GMT  
		Size: 31.4 MB (31353534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99c9207f582783c2bae5f11e6544aa0c36b4e98283667c277c4ffb1db9560877`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 18.7 MB (18737264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be56a1d4670f63a451aab73e2b4a82a9f44d088a33d1a8457d34901655994198`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3f1c768eef99d4c3b2699eff52a5c8b1425d0009a3afb48ee7cf809659aae1`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 4.9 MB (4869825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:4ec9c1468d13a4a7379bf6320e3b73faa80436920558c3cf75e591958b186505
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1066a66c0e95e34232e2cf4a573c493348c17b8317a97d03ec9ba343966bc1f4`

```dockerfile
```

-	Layers:
	-	`sha256:0ce94fe846a8bb2a65d58c790fadf00a2188edee5638040cf8713bc8339add0c`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 5.6 MB (5589405 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8823fbc72f91052b9ebae7f27338ea317663468b204e0090fb32d9b32d6d997`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 18.6 KB (18595 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; ppc64le

```console
$ docker pull irssi@sha256:379a58cf7fbb0ea95a4d97e0d49c260f9445eefce2944330da63e8b73ab1e314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58303343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df4ba4ce8cd1c0ed185e6d5c1e2b1a3afd8538772be4133276d38d14339821c4`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:32:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:32:21 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:32:21 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:32:21 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:32:21 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:34:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:34:18 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:34:18 GMT
USER user
# Wed, 21 Oct 2026 00:34:18 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cb33a61e7f8f252c0381ebd1e642dc9e1cb34c41973c0d6ada407130487e279`  
		Last Modified: Wed, 21 Oct 2026 00:34:44 GMT  
		Size: 19.5 MB (19547938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db5035ffdbbdc3bcabc4a940f73e511496bb486517b4d8fe2fb12a57c7c62c3a`  
		Last Modified: Wed, 21 Oct 2026 00:34:43 GMT  
		Size: 3.3 KB (3324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6da80ae16fa12f17fca54abecca9919767500d88bb1930a6b67f074b1cedb4aa`  
		Last Modified: Wed, 21 Oct 2026 00:34:43 GMT  
		Size: 5.1 MB (5100114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:961a33274cc424a25f863e238f10f1291a1703c9477ae7701929b578cce5e27d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5619036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d21e2809e9055b56d3934dbaa6436b863fe557a69d118fb1561752d6a2c6262a`

```dockerfile
```

-	Layers:
	-	`sha256:3db3598ef590a54465a322bb14eb6ce228fede3c672015231f4d09c43cb983eb`  
		Last Modified: Wed, 21 Oct 2026 00:34:43 GMT  
		Size: 5.6 MB (5600313 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b42ea1cc9de2011d0fa507a6210164453386ca91a3bb53093ec60cb72fbd627`  
		Last Modified: Wed, 21 Oct 2026 00:34:43 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-trixie` - linux; riscv64

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

### `irssi:1-trixie` - unknown; unknown

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

### `irssi:1-trixie` - linux; s390x

```console
$ docker pull irssi@sha256:15ccf6d5a5fa3d7378ba2667cb39136a51acb476c1dca8986910c7559fce7543
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54591457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab85feb93217db676b979d37fb0a31afca9ce7673932e40dd9edaba27ac26ed7`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:18:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:18:24 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:18:24 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:18:24 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:18:24 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:19:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:19:00 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:19:00 GMT
USER user
# Wed, 21 Oct 2026 00:19:00 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8ea9a8c24bd3c92b5dfe24692234a4db47600db4bbc5b78a32119c1a1a244bb8`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 29.9 MB (29911438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68de19425eeed914f1457d29b779a32e2aeba057163e5704ccc432d75e99c5ed`  
		Last Modified: Wed, 21 Oct 2026 00:19:17 GMT  
		Size: 19.8 MB (19768195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afb503f8aac76879dfc5c4305864c0916aba847f5a5bb78d5ed102599bf0e40d`  
		Last Modified: Wed, 21 Oct 2026 00:19:16 GMT  
		Size: 3.3 KB (3330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7079454a155370ff81cf3631e39175cf9a39666f671ac7a7ca24ad2d802f429`  
		Last Modified: Wed, 21 Oct 2026 00:19:17 GMT  
		Size: 4.9 MB (4908462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:9061ab97c075216d91d70a2259500c50d1db47a8e4b679d2e94ce2061fad9733
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5612837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6af48bbb49bec1fd4970335d25b5598c1051cd21fead4c910d2284191b6b169d`

```dockerfile
```

-	Layers:
	-	`sha256:fba3e64eb3587fbca9057df36ff78633d9ccbef3b49080a88391b521be03b41a`  
		Last Modified: Wed, 21 Oct 2026 00:19:17 GMT  
		Size: 5.6 MB (5594187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1cf6c64caba513ddc55778fe329261833e325ef2411c213317815863c1d6051d`  
		Last Modified: Wed, 21 Oct 2026 00:19:16 GMT  
		Size: 18.6 KB (18650 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1.4`

```console
$ docker pull irssi@sha256:c1be243429965ee80da67b9a9f3e8360b242d663b508588486b244139b008654
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
$ docker pull irssi@sha256:38434aab2e4e861d82458eb30ff4fc82b9ff95e4878f9912b49f0f01245e7683
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53930783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:749229b84d768fe8a64d11a5d4d35f5464e85f5986b5d4954f04791cb4f53f7e`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:38 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:16:38 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:16:38 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:16:38 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:17:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:17:17 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:17:17 GMT
USER user
# Wed, 21 Oct 2026 00:17:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:981c90c5a5b9bfb503efc8257e0aa850b004559596afe9a923232c2e15af1b76`  
		Last Modified: Wed, 21 Oct 2026 00:17:28 GMT  
		Size: 19.2 MB (19214386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da8677829021eb3224e10f9077ebe4f87c5e2c0bafd3cedacab1c480efa7f636`  
		Last Modified: Wed, 21 Oct 2026 00:17:27 GMT  
		Size: 3.3 KB (3325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c69be0a85bdc8f905e5b403d4ae736de4daf2f3feb28f76c6a3fb076bc9e8cf`  
		Last Modified: Wed, 21 Oct 2026 00:17:27 GMT  
		Size: 4.9 MB (4869461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:69f907a1a64222c62edaccf5720f3beccb3dfaf1417d421f136249e1fe6fc801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5611931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc39a21cf0a40befc686ea1b51ed9f14bd33804f494bcf02c1c2fdf861794555`

```dockerfile
```

-	Layers:
	-	`sha256:927a615120e800302819774fe20f1b79e9dae5f8096a749b2cf0936b3e282985`  
		Last Modified: Wed, 21 Oct 2026 00:17:27 GMT  
		Size: 5.6 MB (5593282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:670d052390f58c504cc3e635b9f6a04da5f0872ff0816839d5e1cb17288689cf`  
		Last Modified: Wed, 21 Oct 2026 00:17:27 GMT  
		Size: 18.6 KB (18649 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; arm variant v5

```console
$ docker pull irssi@sha256:627919e5dcb9f32cc9ae81f9c7958fb2a7b74245939112e4391f08fe8de601fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (51009458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f8cf2cdad8245668b2f4e5ea5ea7e084127d984ccf24f64c4a398845a94cc98`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:32 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:16:32 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:16:32 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:16:32 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:17:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:17:19 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:17:19 GMT
USER user
# Wed, 21 Oct 2026 00:17:19 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b423d8e5b97d2d23134d76967247ce5a64b7ae164a954dbaa2a6ef745c63fb5f`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 18.3 MB (18287316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d77d2a048d3c59ef79537af667942a98e23aa4f6f696454166701ee9d108d8`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 3.3 KB (3327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b00273b8349d480c6c23ced3f37b08b15c850209e913e056006277d0770d8cd7`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 4.7 MB (4710989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:77616c9912f6c44b61c376f9565818a3eecf825e898a9b13c421be36164ac656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5609618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbd2e57a3055e6bede9f527002d97ba752158600abd23364a76c2103bb6d4d21`

```dockerfile
```

-	Layers:
	-	`sha256:558dd0a047d1cd74d6cee003d7eb984d88c8faf66a957d1d1adbf21d89000140`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 5.6 MB (5590831 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34b339f396b8f95b38e7cc4a1ab8e3345c8c7a7ea4aa2ba85583b1448b09acbe`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 18.8 KB (18787 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; arm variant v7

```console
$ docker pull irssi@sha256:d20c8497c8b0393bc6769c16426a170d84fe1bb46bce15229da64ff9fcc512ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48738829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:308166e3adb654a4dd1be5508a1a3e45b00b8bafb6ba689e22c462a7d5c11f58`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:20:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:20:43 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:20:43 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:20:43 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:20:43 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:21:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:21:24 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:21:24 GMT
USER user
# Wed, 21 Oct 2026 00:21:24 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f8eb073e557b2fb506b6faa9eae3677b1d49ea8721e51992a31cf5c5c4dd75da`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 26.3 MB (26258396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0997a0c07165995ae0f9544f1e6e2e3ec4f4c5be2bb0f3eaf45528f619ea54a3`  
		Last Modified: Wed, 21 Oct 2026 00:21:35 GMT  
		Size: 17.9 MB (17915695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:524dcfa64e981b6375dc773cdc60d6e27ae1ccf989ea86f3cf0f67afb030ce2b`  
		Last Modified: Wed, 21 Oct 2026 00:21:34 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2040987283fe3685e239ca0db9667392dc97c6afa29d9170b2af3c616dcd7f1`  
		Last Modified: Wed, 21 Oct 2026 00:21:35 GMT  
		Size: 4.6 MB (4561377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:f51abc58d60c827875919bdc32e920e1afe93fdcd73c5d0a85cec13aeec0e0b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5612642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e47b13517bd77e5f1b93e486352e79fbb116f9b916b40cd586954b5cfee043`

```dockerfile
```

-	Layers:
	-	`sha256:29db05cbf6fb62866b1ddbc2d0f9ea50010849d3193b1b34161162cdd003e48b`  
		Last Modified: Wed, 21 Oct 2026 00:21:35 GMT  
		Size: 5.6 MB (5593853 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5564e8b56867df135dde88e75c5fbbe577394bad0dfd8092b725765ebd5e6952`  
		Last Modified: Wed, 21 Oct 2026 00:21:35 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:49a10e244a6ff549c0bdedb2adbc444e782db57b4c6a6c7c277910804aa88044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (54039844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b1986f6d8faba50585ef34e8f403f1ff049ba10deca627f8e5f1d0d1da989e8`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:21 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:16:21 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:16:21 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:16:21 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:16:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:16:58 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:16:58 GMT
USER user
# Wed, 21 Oct 2026 00:16:58 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86fd62f9345e6e5204bb155204a502a5496073d2aac39f0f64dc3380840e3ac6`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 19.1 MB (19053813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46b83fec37491aea5ff75b3c0e4dd163231d38dbbcc9b433fe63e489df8d30a8`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d64793c825628bc871e6715226f725cb92d8ce3e5a20e8b517f27ab74c60a86a`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 4.8 MB (4782193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:00bff56c4b24759ef0bc7cc9752d61b69e058040e4fa6a05b2e13d22beb4a5b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5618589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b87233f492a07884170e40c69210db194815b90aacd1193d8c9e77e312e1e4b`

```dockerfile
```

-	Layers:
	-	`sha256:762d8c3d93d6a705430cff75705ba688e87a22bf0d7e5620adf9ac33a3cf3450`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 5.6 MB (5599758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e71b21b047d48ee0fdededc86784ee5eca972544c7e6f27bd1891f6ae5d1550`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 18.8 KB (18831 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; 386

```console
$ docker pull irssi@sha256:641da708ad66ee3428581679b84055068277df95ffc35a277524c33fa635ffcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54963983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9084667c0902fa0ab5eec112f0d28dbdcb57deb0aed24be66c20539ce779ef8e`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:33 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:16:33 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:16:33 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:16:33 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:17:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:17:13 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:17:13 GMT
USER user
# Wed, 21 Oct 2026 00:17:13 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ed7ef4d8bb8a16e6b1a4d6e74da037bb60ce864d336261b439c7da8595c0f49f`  
		Last Modified: Tue, 20 Oct 2026 23:30:51 GMT  
		Size: 31.4 MB (31353534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99c9207f582783c2bae5f11e6544aa0c36b4e98283667c277c4ffb1db9560877`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 18.7 MB (18737264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be56a1d4670f63a451aab73e2b4a82a9f44d088a33d1a8457d34901655994198`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3f1c768eef99d4c3b2699eff52a5c8b1425d0009a3afb48ee7cf809659aae1`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 4.9 MB (4869825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:4ec9c1468d13a4a7379bf6320e3b73faa80436920558c3cf75e591958b186505
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1066a66c0e95e34232e2cf4a573c493348c17b8317a97d03ec9ba343966bc1f4`

```dockerfile
```

-	Layers:
	-	`sha256:0ce94fe846a8bb2a65d58c790fadf00a2188edee5638040cf8713bc8339add0c`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 5.6 MB (5589405 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8823fbc72f91052b9ebae7f27338ea317663468b204e0090fb32d9b32d6d997`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 18.6 KB (18595 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; ppc64le

```console
$ docker pull irssi@sha256:379a58cf7fbb0ea95a4d97e0d49c260f9445eefce2944330da63e8b73ab1e314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58303343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df4ba4ce8cd1c0ed185e6d5c1e2b1a3afd8538772be4133276d38d14339821c4`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:32:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:32:21 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:32:21 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:32:21 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:32:21 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:34:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:34:18 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:34:18 GMT
USER user
# Wed, 21 Oct 2026 00:34:18 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cb33a61e7f8f252c0381ebd1e642dc9e1cb34c41973c0d6ada407130487e279`  
		Last Modified: Wed, 21 Oct 2026 00:34:44 GMT  
		Size: 19.5 MB (19547938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db5035ffdbbdc3bcabc4a940f73e511496bb486517b4d8fe2fb12a57c7c62c3a`  
		Last Modified: Wed, 21 Oct 2026 00:34:43 GMT  
		Size: 3.3 KB (3324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6da80ae16fa12f17fca54abecca9919767500d88bb1930a6b67f074b1cedb4aa`  
		Last Modified: Wed, 21 Oct 2026 00:34:43 GMT  
		Size: 5.1 MB (5100114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:961a33274cc424a25f863e238f10f1291a1703c9477ae7701929b578cce5e27d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5619036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d21e2809e9055b56d3934dbaa6436b863fe557a69d118fb1561752d6a2c6262a`

```dockerfile
```

-	Layers:
	-	`sha256:3db3598ef590a54465a322bb14eb6ce228fede3c672015231f4d09c43cb983eb`  
		Last Modified: Wed, 21 Oct 2026 00:34:43 GMT  
		Size: 5.6 MB (5600313 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b42ea1cc9de2011d0fa507a6210164453386ca91a3bb53093ec60cb72fbd627`  
		Last Modified: Wed, 21 Oct 2026 00:34:43 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4` - linux; riscv64

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

### `irssi:1.4` - unknown; unknown

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

### `irssi:1.4` - linux; s390x

```console
$ docker pull irssi@sha256:15ccf6d5a5fa3d7378ba2667cb39136a51acb476c1dca8986910c7559fce7543
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54591457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab85feb93217db676b979d37fb0a31afca9ce7673932e40dd9edaba27ac26ed7`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:18:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:18:24 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:18:24 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:18:24 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:18:24 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:19:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:19:00 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:19:00 GMT
USER user
# Wed, 21 Oct 2026 00:19:00 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8ea9a8c24bd3c92b5dfe24692234a4db47600db4bbc5b78a32119c1a1a244bb8`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 29.9 MB (29911438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68de19425eeed914f1457d29b779a32e2aeba057163e5704ccc432d75e99c5ed`  
		Last Modified: Wed, 21 Oct 2026 00:19:17 GMT  
		Size: 19.8 MB (19768195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afb503f8aac76879dfc5c4305864c0916aba847f5a5bb78d5ed102599bf0e40d`  
		Last Modified: Wed, 21 Oct 2026 00:19:16 GMT  
		Size: 3.3 KB (3330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7079454a155370ff81cf3631e39175cf9a39666f671ac7a7ca24ad2d802f429`  
		Last Modified: Wed, 21 Oct 2026 00:19:17 GMT  
		Size: 4.9 MB (4908462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4` - unknown; unknown

```console
$ docker pull irssi@sha256:9061ab97c075216d91d70a2259500c50d1db47a8e4b679d2e94ce2061fad9733
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5612837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6af48bbb49bec1fd4970335d25b5598c1051cd21fead4c910d2284191b6b169d`

```dockerfile
```

-	Layers:
	-	`sha256:fba3e64eb3587fbca9057df36ff78633d9ccbef3b49080a88391b521be03b41a`  
		Last Modified: Wed, 21 Oct 2026 00:19:17 GMT  
		Size: 5.6 MB (5594187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1cf6c64caba513ddc55778fe329261833e325ef2411c213317815863c1d6051d`  
		Last Modified: Wed, 21 Oct 2026 00:19:16 GMT  
		Size: 18.6 KB (18650 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1.4-alpine`

```console
$ docker pull irssi@sha256:929f300088d21f30c4ee52458f1ce61a2a6ad57d32b6f8b64065d122b914a6a1
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
$ docker pull irssi@sha256:962513480d4394686b9756cae40588f7bd69360773c71a359a9f161740dafca3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19894669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a96d3e0525e3e3d10c5b274636a21e08595aef43b08c70507246608ce6ff7127`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Sat, 19 Sep 2026 06:12:19 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Sat, 19 Sep 2026 06:12:20 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 06:12:20 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 06:12:20 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 06:12:20 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 06:16:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Sat, 19 Sep 2026 06:16:22 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 06:16:22 GMT
USER user
# Sat, 19 Sep 2026 06:16:22 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:125f7ed2919501383cc2a463efb0a6d988a780211c71de97a05b674ca6bb8dde`  
		Last Modified: Fri, 18 Sep 2026 16:50:46 GMT  
		Size: 3.6 MB (3576321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afbd51ca02681bbe39a986700707521b548e29113e6468ecd792d2212ada05ed`  
		Last Modified: Sat, 19 Sep 2026 06:17:17 GMT  
		Size: 10.3 MB (10251614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0049ca4c752934f292f357ff6267055d415bf78671aaf92cdc3d1660dd024b65`  
		Last Modified: Sat, 19 Sep 2026 06:17:14 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97aedcb0a825edc4fa216b7f2b552422432a52f2689309daab35c566fc7c5f26`  
		Last Modified: Sat, 19 Sep 2026 06:17:16 GMT  
		Size: 6.1 MB (6065747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:f8ef3638059f55983a3b096e0efb7d44b6e68ae0671a33bd7c258e630925682d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:febc24d8710ec77e6d066f6516603112cf8d5a02ec545c3c9955f4229f75fdcf`

```dockerfile
```

-	Layers:
	-	`sha256:19d15bf32d13c84435568770433158c8a4965f67cd0f1696f67c6e80e2de5c3b`  
		Last Modified: Sat, 19 Sep 2026 06:17:15 GMT  
		Size: 1.3 MB (1290588 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28222b8426ba538a8317a57b6e5509ec334bfca641b3ec10d399177aac8e5d23`  
		Last Modified: Sat, 19 Sep 2026 06:17:14 GMT  
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
$ docker pull irssi@sha256:929f300088d21f30c4ee52458f1ce61a2a6ad57d32b6f8b64065d122b914a6a1
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
$ docker pull irssi@sha256:962513480d4394686b9756cae40588f7bd69360773c71a359a9f161740dafca3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19894669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a96d3e0525e3e3d10c5b274636a21e08595aef43b08c70507246608ce6ff7127`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Sat, 19 Sep 2026 06:12:19 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Sat, 19 Sep 2026 06:12:20 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 06:12:20 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 06:12:20 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 06:12:20 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 06:16:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Sat, 19 Sep 2026 06:16:22 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 06:16:22 GMT
USER user
# Sat, 19 Sep 2026 06:16:22 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:125f7ed2919501383cc2a463efb0a6d988a780211c71de97a05b674ca6bb8dde`  
		Last Modified: Fri, 18 Sep 2026 16:50:46 GMT  
		Size: 3.6 MB (3576321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afbd51ca02681bbe39a986700707521b548e29113e6468ecd792d2212ada05ed`  
		Last Modified: Sat, 19 Sep 2026 06:17:17 GMT  
		Size: 10.3 MB (10251614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0049ca4c752934f292f357ff6267055d415bf78671aaf92cdc3d1660dd024b65`  
		Last Modified: Sat, 19 Sep 2026 06:17:14 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97aedcb0a825edc4fa216b7f2b552422432a52f2689309daab35c566fc7c5f26`  
		Last Modified: Sat, 19 Sep 2026 06:17:16 GMT  
		Size: 6.1 MB (6065747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:f8ef3638059f55983a3b096e0efb7d44b6e68ae0671a33bd7c258e630925682d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:febc24d8710ec77e6d066f6516603112cf8d5a02ec545c3c9955f4229f75fdcf`

```dockerfile
```

-	Layers:
	-	`sha256:19d15bf32d13c84435568770433158c8a4965f67cd0f1696f67c6e80e2de5c3b`  
		Last Modified: Sat, 19 Sep 2026 06:17:15 GMT  
		Size: 1.3 MB (1290588 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28222b8426ba538a8317a57b6e5509ec334bfca641b3ec10d399177aac8e5d23`  
		Last Modified: Sat, 19 Sep 2026 06:17:14 GMT  
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
$ docker pull irssi@sha256:c1be243429965ee80da67b9a9f3e8360b242d663b508588486b244139b008654
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
$ docker pull irssi@sha256:38434aab2e4e861d82458eb30ff4fc82b9ff95e4878f9912b49f0f01245e7683
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53930783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:749229b84d768fe8a64d11a5d4d35f5464e85f5986b5d4954f04791cb4f53f7e`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:38 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:16:38 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:16:38 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:16:38 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:17:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:17:17 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:17:17 GMT
USER user
# Wed, 21 Oct 2026 00:17:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:981c90c5a5b9bfb503efc8257e0aa850b004559596afe9a923232c2e15af1b76`  
		Last Modified: Wed, 21 Oct 2026 00:17:28 GMT  
		Size: 19.2 MB (19214386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da8677829021eb3224e10f9077ebe4f87c5e2c0bafd3cedacab1c480efa7f636`  
		Last Modified: Wed, 21 Oct 2026 00:17:27 GMT  
		Size: 3.3 KB (3325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c69be0a85bdc8f905e5b403d4ae736de4daf2f3feb28f76c6a3fb076bc9e8cf`  
		Last Modified: Wed, 21 Oct 2026 00:17:27 GMT  
		Size: 4.9 MB (4869461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:69f907a1a64222c62edaccf5720f3beccb3dfaf1417d421f136249e1fe6fc801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5611931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc39a21cf0a40befc686ea1b51ed9f14bd33804f494bcf02c1c2fdf861794555`

```dockerfile
```

-	Layers:
	-	`sha256:927a615120e800302819774fe20f1b79e9dae5f8096a749b2cf0936b3e282985`  
		Last Modified: Wed, 21 Oct 2026 00:17:27 GMT  
		Size: 5.6 MB (5593282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:670d052390f58c504cc3e635b9f6a04da5f0872ff0816839d5e1cb17288689cf`  
		Last Modified: Wed, 21 Oct 2026 00:17:27 GMT  
		Size: 18.6 KB (18649 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; arm variant v5

```console
$ docker pull irssi@sha256:627919e5dcb9f32cc9ae81f9c7958fb2a7b74245939112e4391f08fe8de601fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (51009458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f8cf2cdad8245668b2f4e5ea5ea7e084127d984ccf24f64c4a398845a94cc98`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:32 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:16:32 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:16:32 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:16:32 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:17:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:17:19 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:17:19 GMT
USER user
# Wed, 21 Oct 2026 00:17:19 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b423d8e5b97d2d23134d76967247ce5a64b7ae164a954dbaa2a6ef745c63fb5f`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 18.3 MB (18287316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d77d2a048d3c59ef79537af667942a98e23aa4f6f696454166701ee9d108d8`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 3.3 KB (3327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b00273b8349d480c6c23ced3f37b08b15c850209e913e056006277d0770d8cd7`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 4.7 MB (4710989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:77616c9912f6c44b61c376f9565818a3eecf825e898a9b13c421be36164ac656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5609618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbd2e57a3055e6bede9f527002d97ba752158600abd23364a76c2103bb6d4d21`

```dockerfile
```

-	Layers:
	-	`sha256:558dd0a047d1cd74d6cee003d7eb984d88c8faf66a957d1d1adbf21d89000140`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 5.6 MB (5590831 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34b339f396b8f95b38e7cc4a1ab8e3345c8c7a7ea4aa2ba85583b1448b09acbe`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 18.8 KB (18787 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; arm variant v7

```console
$ docker pull irssi@sha256:d20c8497c8b0393bc6769c16426a170d84fe1bb46bce15229da64ff9fcc512ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48738829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:308166e3adb654a4dd1be5508a1a3e45b00b8bafb6ba689e22c462a7d5c11f58`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:20:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:20:43 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:20:43 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:20:43 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:20:43 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:21:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:21:24 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:21:24 GMT
USER user
# Wed, 21 Oct 2026 00:21:24 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f8eb073e557b2fb506b6faa9eae3677b1d49ea8721e51992a31cf5c5c4dd75da`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 26.3 MB (26258396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0997a0c07165995ae0f9544f1e6e2e3ec4f4c5be2bb0f3eaf45528f619ea54a3`  
		Last Modified: Wed, 21 Oct 2026 00:21:35 GMT  
		Size: 17.9 MB (17915695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:524dcfa64e981b6375dc773cdc60d6e27ae1ccf989ea86f3cf0f67afb030ce2b`  
		Last Modified: Wed, 21 Oct 2026 00:21:34 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2040987283fe3685e239ca0db9667392dc97c6afa29d9170b2af3c616dcd7f1`  
		Last Modified: Wed, 21 Oct 2026 00:21:35 GMT  
		Size: 4.6 MB (4561377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:f51abc58d60c827875919bdc32e920e1afe93fdcd73c5d0a85cec13aeec0e0b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5612642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e47b13517bd77e5f1b93e486352e79fbb116f9b916b40cd586954b5cfee043`

```dockerfile
```

-	Layers:
	-	`sha256:29db05cbf6fb62866b1ddbc2d0f9ea50010849d3193b1b34161162cdd003e48b`  
		Last Modified: Wed, 21 Oct 2026 00:21:35 GMT  
		Size: 5.6 MB (5593853 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5564e8b56867df135dde88e75c5fbbe577394bad0dfd8092b725765ebd5e6952`  
		Last Modified: Wed, 21 Oct 2026 00:21:35 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:49a10e244a6ff549c0bdedb2adbc444e782db57b4c6a6c7c277910804aa88044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (54039844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b1986f6d8faba50585ef34e8f403f1ff049ba10deca627f8e5f1d0d1da989e8`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:21 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:16:21 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:16:21 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:16:21 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:16:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:16:58 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:16:58 GMT
USER user
# Wed, 21 Oct 2026 00:16:58 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86fd62f9345e6e5204bb155204a502a5496073d2aac39f0f64dc3380840e3ac6`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 19.1 MB (19053813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46b83fec37491aea5ff75b3c0e4dd163231d38dbbcc9b433fe63e489df8d30a8`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d64793c825628bc871e6715226f725cb92d8ce3e5a20e8b517f27ab74c60a86a`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 4.8 MB (4782193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:00bff56c4b24759ef0bc7cc9752d61b69e058040e4fa6a05b2e13d22beb4a5b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5618589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b87233f492a07884170e40c69210db194815b90aacd1193d8c9e77e312e1e4b`

```dockerfile
```

-	Layers:
	-	`sha256:762d8c3d93d6a705430cff75705ba688e87a22bf0d7e5620adf9ac33a3cf3450`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 5.6 MB (5599758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e71b21b047d48ee0fdededc86784ee5eca972544c7e6f27bd1891f6ae5d1550`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 18.8 KB (18831 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; 386

```console
$ docker pull irssi@sha256:641da708ad66ee3428581679b84055068277df95ffc35a277524c33fa635ffcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54963983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9084667c0902fa0ab5eec112f0d28dbdcb57deb0aed24be66c20539ce779ef8e`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:33 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:16:33 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:16:33 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:16:33 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:17:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:17:13 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:17:13 GMT
USER user
# Wed, 21 Oct 2026 00:17:13 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ed7ef4d8bb8a16e6b1a4d6e74da037bb60ce864d336261b439c7da8595c0f49f`  
		Last Modified: Tue, 20 Oct 2026 23:30:51 GMT  
		Size: 31.4 MB (31353534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99c9207f582783c2bae5f11e6544aa0c36b4e98283667c277c4ffb1db9560877`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 18.7 MB (18737264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be56a1d4670f63a451aab73e2b4a82a9f44d088a33d1a8457d34901655994198`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3f1c768eef99d4c3b2699eff52a5c8b1425d0009a3afb48ee7cf809659aae1`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 4.9 MB (4869825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:4ec9c1468d13a4a7379bf6320e3b73faa80436920558c3cf75e591958b186505
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1066a66c0e95e34232e2cf4a573c493348c17b8317a97d03ec9ba343966bc1f4`

```dockerfile
```

-	Layers:
	-	`sha256:0ce94fe846a8bb2a65d58c790fadf00a2188edee5638040cf8713bc8339add0c`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 5.6 MB (5589405 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8823fbc72f91052b9ebae7f27338ea317663468b204e0090fb32d9b32d6d997`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 18.6 KB (18595 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; ppc64le

```console
$ docker pull irssi@sha256:379a58cf7fbb0ea95a4d97e0d49c260f9445eefce2944330da63e8b73ab1e314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58303343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df4ba4ce8cd1c0ed185e6d5c1e2b1a3afd8538772be4133276d38d14339821c4`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:32:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:32:21 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:32:21 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:32:21 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:32:21 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:34:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:34:18 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:34:18 GMT
USER user
# Wed, 21 Oct 2026 00:34:18 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cb33a61e7f8f252c0381ebd1e642dc9e1cb34c41973c0d6ada407130487e279`  
		Last Modified: Wed, 21 Oct 2026 00:34:44 GMT  
		Size: 19.5 MB (19547938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db5035ffdbbdc3bcabc4a940f73e511496bb486517b4d8fe2fb12a57c7c62c3a`  
		Last Modified: Wed, 21 Oct 2026 00:34:43 GMT  
		Size: 3.3 KB (3324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6da80ae16fa12f17fca54abecca9919767500d88bb1930a6b67f074b1cedb4aa`  
		Last Modified: Wed, 21 Oct 2026 00:34:43 GMT  
		Size: 5.1 MB (5100114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:961a33274cc424a25f863e238f10f1291a1703c9477ae7701929b578cce5e27d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5619036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d21e2809e9055b56d3934dbaa6436b863fe557a69d118fb1561752d6a2c6262a`

```dockerfile
```

-	Layers:
	-	`sha256:3db3598ef590a54465a322bb14eb6ce228fede3c672015231f4d09c43cb983eb`  
		Last Modified: Wed, 21 Oct 2026 00:34:43 GMT  
		Size: 5.6 MB (5600313 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b42ea1cc9de2011d0fa507a6210164453386ca91a3bb53093ec60cb72fbd627`  
		Last Modified: Wed, 21 Oct 2026 00:34:43 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4-trixie` - linux; riscv64

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

### `irssi:1.4-trixie` - unknown; unknown

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

### `irssi:1.4-trixie` - linux; s390x

```console
$ docker pull irssi@sha256:15ccf6d5a5fa3d7378ba2667cb39136a51acb476c1dca8986910c7559fce7543
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54591457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab85feb93217db676b979d37fb0a31afca9ce7673932e40dd9edaba27ac26ed7`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:18:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:18:24 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:18:24 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:18:24 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:18:24 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:19:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:19:00 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:19:00 GMT
USER user
# Wed, 21 Oct 2026 00:19:00 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8ea9a8c24bd3c92b5dfe24692234a4db47600db4bbc5b78a32119c1a1a244bb8`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 29.9 MB (29911438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68de19425eeed914f1457d29b779a32e2aeba057163e5704ccc432d75e99c5ed`  
		Last Modified: Wed, 21 Oct 2026 00:19:17 GMT  
		Size: 19.8 MB (19768195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afb503f8aac76879dfc5c4305864c0916aba847f5a5bb78d5ed102599bf0e40d`  
		Last Modified: Wed, 21 Oct 2026 00:19:16 GMT  
		Size: 3.3 KB (3330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7079454a155370ff81cf3631e39175cf9a39666f671ac7a7ca24ad2d802f429`  
		Last Modified: Wed, 21 Oct 2026 00:19:17 GMT  
		Size: 4.9 MB (4908462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:9061ab97c075216d91d70a2259500c50d1db47a8e4b679d2e94ce2061fad9733
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5612837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6af48bbb49bec1fd4970335d25b5598c1051cd21fead4c910d2284191b6b169d`

```dockerfile
```

-	Layers:
	-	`sha256:fba3e64eb3587fbca9057df36ff78633d9ccbef3b49080a88391b521be03b41a`  
		Last Modified: Wed, 21 Oct 2026 00:19:17 GMT  
		Size: 5.6 MB (5594187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1cf6c64caba513ddc55778fe329261833e325ef2411c213317815863c1d6051d`  
		Last Modified: Wed, 21 Oct 2026 00:19:16 GMT  
		Size: 18.6 KB (18650 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1.4.5`

```console
$ docker pull irssi@sha256:c1be243429965ee80da67b9a9f3e8360b242d663b508588486b244139b008654
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
$ docker pull irssi@sha256:38434aab2e4e861d82458eb30ff4fc82b9ff95e4878f9912b49f0f01245e7683
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53930783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:749229b84d768fe8a64d11a5d4d35f5464e85f5986b5d4954f04791cb4f53f7e`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:38 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:16:38 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:16:38 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:16:38 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:17:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:17:17 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:17:17 GMT
USER user
# Wed, 21 Oct 2026 00:17:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:981c90c5a5b9bfb503efc8257e0aa850b004559596afe9a923232c2e15af1b76`  
		Last Modified: Wed, 21 Oct 2026 00:17:28 GMT  
		Size: 19.2 MB (19214386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da8677829021eb3224e10f9077ebe4f87c5e2c0bafd3cedacab1c480efa7f636`  
		Last Modified: Wed, 21 Oct 2026 00:17:27 GMT  
		Size: 3.3 KB (3325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c69be0a85bdc8f905e5b403d4ae736de4daf2f3feb28f76c6a3fb076bc9e8cf`  
		Last Modified: Wed, 21 Oct 2026 00:17:27 GMT  
		Size: 4.9 MB (4869461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:69f907a1a64222c62edaccf5720f3beccb3dfaf1417d421f136249e1fe6fc801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5611931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc39a21cf0a40befc686ea1b51ed9f14bd33804f494bcf02c1c2fdf861794555`

```dockerfile
```

-	Layers:
	-	`sha256:927a615120e800302819774fe20f1b79e9dae5f8096a749b2cf0936b3e282985`  
		Last Modified: Wed, 21 Oct 2026 00:17:27 GMT  
		Size: 5.6 MB (5593282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:670d052390f58c504cc3e635b9f6a04da5f0872ff0816839d5e1cb17288689cf`  
		Last Modified: Wed, 21 Oct 2026 00:17:27 GMT  
		Size: 18.6 KB (18649 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; arm variant v5

```console
$ docker pull irssi@sha256:627919e5dcb9f32cc9ae81f9c7958fb2a7b74245939112e4391f08fe8de601fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (51009458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f8cf2cdad8245668b2f4e5ea5ea7e084127d984ccf24f64c4a398845a94cc98`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:32 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:16:32 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:16:32 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:16:32 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:17:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:17:19 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:17:19 GMT
USER user
# Wed, 21 Oct 2026 00:17:19 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b423d8e5b97d2d23134d76967247ce5a64b7ae164a954dbaa2a6ef745c63fb5f`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 18.3 MB (18287316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d77d2a048d3c59ef79537af667942a98e23aa4f6f696454166701ee9d108d8`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 3.3 KB (3327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b00273b8349d480c6c23ced3f37b08b15c850209e913e056006277d0770d8cd7`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 4.7 MB (4710989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:77616c9912f6c44b61c376f9565818a3eecf825e898a9b13c421be36164ac656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5609618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbd2e57a3055e6bede9f527002d97ba752158600abd23364a76c2103bb6d4d21`

```dockerfile
```

-	Layers:
	-	`sha256:558dd0a047d1cd74d6cee003d7eb984d88c8faf66a957d1d1adbf21d89000140`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 5.6 MB (5590831 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34b339f396b8f95b38e7cc4a1ab8e3345c8c7a7ea4aa2ba85583b1448b09acbe`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 18.8 KB (18787 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; arm variant v7

```console
$ docker pull irssi@sha256:d20c8497c8b0393bc6769c16426a170d84fe1bb46bce15229da64ff9fcc512ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48738829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:308166e3adb654a4dd1be5508a1a3e45b00b8bafb6ba689e22c462a7d5c11f58`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:20:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:20:43 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:20:43 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:20:43 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:20:43 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:21:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:21:24 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:21:24 GMT
USER user
# Wed, 21 Oct 2026 00:21:24 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f8eb073e557b2fb506b6faa9eae3677b1d49ea8721e51992a31cf5c5c4dd75da`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 26.3 MB (26258396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0997a0c07165995ae0f9544f1e6e2e3ec4f4c5be2bb0f3eaf45528f619ea54a3`  
		Last Modified: Wed, 21 Oct 2026 00:21:35 GMT  
		Size: 17.9 MB (17915695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:524dcfa64e981b6375dc773cdc60d6e27ae1ccf989ea86f3cf0f67afb030ce2b`  
		Last Modified: Wed, 21 Oct 2026 00:21:34 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2040987283fe3685e239ca0db9667392dc97c6afa29d9170b2af3c616dcd7f1`  
		Last Modified: Wed, 21 Oct 2026 00:21:35 GMT  
		Size: 4.6 MB (4561377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:f51abc58d60c827875919bdc32e920e1afe93fdcd73c5d0a85cec13aeec0e0b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5612642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e47b13517bd77e5f1b93e486352e79fbb116f9b916b40cd586954b5cfee043`

```dockerfile
```

-	Layers:
	-	`sha256:29db05cbf6fb62866b1ddbc2d0f9ea50010849d3193b1b34161162cdd003e48b`  
		Last Modified: Wed, 21 Oct 2026 00:21:35 GMT  
		Size: 5.6 MB (5593853 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5564e8b56867df135dde88e75c5fbbe577394bad0dfd8092b725765ebd5e6952`  
		Last Modified: Wed, 21 Oct 2026 00:21:35 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:49a10e244a6ff549c0bdedb2adbc444e782db57b4c6a6c7c277910804aa88044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (54039844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b1986f6d8faba50585ef34e8f403f1ff049ba10deca627f8e5f1d0d1da989e8`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:21 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:16:21 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:16:21 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:16:21 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:16:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:16:58 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:16:58 GMT
USER user
# Wed, 21 Oct 2026 00:16:58 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86fd62f9345e6e5204bb155204a502a5496073d2aac39f0f64dc3380840e3ac6`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 19.1 MB (19053813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46b83fec37491aea5ff75b3c0e4dd163231d38dbbcc9b433fe63e489df8d30a8`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d64793c825628bc871e6715226f725cb92d8ce3e5a20e8b517f27ab74c60a86a`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 4.8 MB (4782193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:00bff56c4b24759ef0bc7cc9752d61b69e058040e4fa6a05b2e13d22beb4a5b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5618589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b87233f492a07884170e40c69210db194815b90aacd1193d8c9e77e312e1e4b`

```dockerfile
```

-	Layers:
	-	`sha256:762d8c3d93d6a705430cff75705ba688e87a22bf0d7e5620adf9ac33a3cf3450`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 5.6 MB (5599758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e71b21b047d48ee0fdededc86784ee5eca972544c7e6f27bd1891f6ae5d1550`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 18.8 KB (18831 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; 386

```console
$ docker pull irssi@sha256:641da708ad66ee3428581679b84055068277df95ffc35a277524c33fa635ffcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54963983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9084667c0902fa0ab5eec112f0d28dbdcb57deb0aed24be66c20539ce779ef8e`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:33 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:16:33 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:16:33 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:16:33 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:17:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:17:13 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:17:13 GMT
USER user
# Wed, 21 Oct 2026 00:17:13 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ed7ef4d8bb8a16e6b1a4d6e74da037bb60ce864d336261b439c7da8595c0f49f`  
		Last Modified: Tue, 20 Oct 2026 23:30:51 GMT  
		Size: 31.4 MB (31353534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99c9207f582783c2bae5f11e6544aa0c36b4e98283667c277c4ffb1db9560877`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 18.7 MB (18737264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be56a1d4670f63a451aab73e2b4a82a9f44d088a33d1a8457d34901655994198`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3f1c768eef99d4c3b2699eff52a5c8b1425d0009a3afb48ee7cf809659aae1`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 4.9 MB (4869825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:4ec9c1468d13a4a7379bf6320e3b73faa80436920558c3cf75e591958b186505
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1066a66c0e95e34232e2cf4a573c493348c17b8317a97d03ec9ba343966bc1f4`

```dockerfile
```

-	Layers:
	-	`sha256:0ce94fe846a8bb2a65d58c790fadf00a2188edee5638040cf8713bc8339add0c`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 5.6 MB (5589405 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8823fbc72f91052b9ebae7f27338ea317663468b204e0090fb32d9b32d6d997`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 18.6 KB (18595 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; ppc64le

```console
$ docker pull irssi@sha256:379a58cf7fbb0ea95a4d97e0d49c260f9445eefce2944330da63e8b73ab1e314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58303343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df4ba4ce8cd1c0ed185e6d5c1e2b1a3afd8538772be4133276d38d14339821c4`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:32:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:32:21 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:32:21 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:32:21 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:32:21 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:34:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:34:18 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:34:18 GMT
USER user
# Wed, 21 Oct 2026 00:34:18 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cb33a61e7f8f252c0381ebd1e642dc9e1cb34c41973c0d6ada407130487e279`  
		Last Modified: Wed, 21 Oct 2026 00:34:44 GMT  
		Size: 19.5 MB (19547938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db5035ffdbbdc3bcabc4a940f73e511496bb486517b4d8fe2fb12a57c7c62c3a`  
		Last Modified: Wed, 21 Oct 2026 00:34:43 GMT  
		Size: 3.3 KB (3324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6da80ae16fa12f17fca54abecca9919767500d88bb1930a6b67f074b1cedb4aa`  
		Last Modified: Wed, 21 Oct 2026 00:34:43 GMT  
		Size: 5.1 MB (5100114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:961a33274cc424a25f863e238f10f1291a1703c9477ae7701929b578cce5e27d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5619036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d21e2809e9055b56d3934dbaa6436b863fe557a69d118fb1561752d6a2c6262a`

```dockerfile
```

-	Layers:
	-	`sha256:3db3598ef590a54465a322bb14eb6ce228fede3c672015231f4d09c43cb983eb`  
		Last Modified: Wed, 21 Oct 2026 00:34:43 GMT  
		Size: 5.6 MB (5600313 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b42ea1cc9de2011d0fa507a6210164453386ca91a3bb53093ec60cb72fbd627`  
		Last Modified: Wed, 21 Oct 2026 00:34:43 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5` - linux; riscv64

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

### `irssi:1.4.5` - unknown; unknown

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

### `irssi:1.4.5` - linux; s390x

```console
$ docker pull irssi@sha256:15ccf6d5a5fa3d7378ba2667cb39136a51acb476c1dca8986910c7559fce7543
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54591457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab85feb93217db676b979d37fb0a31afca9ce7673932e40dd9edaba27ac26ed7`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:18:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:18:24 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:18:24 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:18:24 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:18:24 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:19:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:19:00 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:19:00 GMT
USER user
# Wed, 21 Oct 2026 00:19:00 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8ea9a8c24bd3c92b5dfe24692234a4db47600db4bbc5b78a32119c1a1a244bb8`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 29.9 MB (29911438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68de19425eeed914f1457d29b779a32e2aeba057163e5704ccc432d75e99c5ed`  
		Last Modified: Wed, 21 Oct 2026 00:19:17 GMT  
		Size: 19.8 MB (19768195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afb503f8aac76879dfc5c4305864c0916aba847f5a5bb78d5ed102599bf0e40d`  
		Last Modified: Wed, 21 Oct 2026 00:19:16 GMT  
		Size: 3.3 KB (3330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7079454a155370ff81cf3631e39175cf9a39666f671ac7a7ca24ad2d802f429`  
		Last Modified: Wed, 21 Oct 2026 00:19:17 GMT  
		Size: 4.9 MB (4908462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5` - unknown; unknown

```console
$ docker pull irssi@sha256:9061ab97c075216d91d70a2259500c50d1db47a8e4b679d2e94ce2061fad9733
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5612837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6af48bbb49bec1fd4970335d25b5598c1051cd21fead4c910d2284191b6b169d`

```dockerfile
```

-	Layers:
	-	`sha256:fba3e64eb3587fbca9057df36ff78633d9ccbef3b49080a88391b521be03b41a`  
		Last Modified: Wed, 21 Oct 2026 00:19:17 GMT  
		Size: 5.6 MB (5594187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1cf6c64caba513ddc55778fe329261833e325ef2411c213317815863c1d6051d`  
		Last Modified: Wed, 21 Oct 2026 00:19:16 GMT  
		Size: 18.6 KB (18650 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:1.4.5-alpine`

```console
$ docker pull irssi@sha256:929f300088d21f30c4ee52458f1ce61a2a6ad57d32b6f8b64065d122b914a6a1
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
$ docker pull irssi@sha256:962513480d4394686b9756cae40588f7bd69360773c71a359a9f161740dafca3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19894669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a96d3e0525e3e3d10c5b274636a21e08595aef43b08c70507246608ce6ff7127`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Sat, 19 Sep 2026 06:12:19 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Sat, 19 Sep 2026 06:12:20 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 06:12:20 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 06:12:20 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 06:12:20 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 06:16:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Sat, 19 Sep 2026 06:16:22 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 06:16:22 GMT
USER user
# Sat, 19 Sep 2026 06:16:22 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:125f7ed2919501383cc2a463efb0a6d988a780211c71de97a05b674ca6bb8dde`  
		Last Modified: Fri, 18 Sep 2026 16:50:46 GMT  
		Size: 3.6 MB (3576321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afbd51ca02681bbe39a986700707521b548e29113e6468ecd792d2212ada05ed`  
		Last Modified: Sat, 19 Sep 2026 06:17:17 GMT  
		Size: 10.3 MB (10251614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0049ca4c752934f292f357ff6267055d415bf78671aaf92cdc3d1660dd024b65`  
		Last Modified: Sat, 19 Sep 2026 06:17:14 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97aedcb0a825edc4fa216b7f2b552422432a52f2689309daab35c566fc7c5f26`  
		Last Modified: Sat, 19 Sep 2026 06:17:16 GMT  
		Size: 6.1 MB (6065747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:f8ef3638059f55983a3b096e0efb7d44b6e68ae0671a33bd7c258e630925682d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:febc24d8710ec77e6d066f6516603112cf8d5a02ec545c3c9955f4229f75fdcf`

```dockerfile
```

-	Layers:
	-	`sha256:19d15bf32d13c84435568770433158c8a4965f67cd0f1696f67c6e80e2de5c3b`  
		Last Modified: Sat, 19 Sep 2026 06:17:15 GMT  
		Size: 1.3 MB (1290588 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28222b8426ba538a8317a57b6e5509ec334bfca641b3ec10d399177aac8e5d23`  
		Last Modified: Sat, 19 Sep 2026 06:17:14 GMT  
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
$ docker pull irssi@sha256:929f300088d21f30c4ee52458f1ce61a2a6ad57d32b6f8b64065d122b914a6a1
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
$ docker pull irssi@sha256:962513480d4394686b9756cae40588f7bd69360773c71a359a9f161740dafca3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19894669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a96d3e0525e3e3d10c5b274636a21e08595aef43b08c70507246608ce6ff7127`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Sat, 19 Sep 2026 06:12:19 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Sat, 19 Sep 2026 06:12:20 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 06:12:20 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 06:12:20 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 06:12:20 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 06:16:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Sat, 19 Sep 2026 06:16:22 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 06:16:22 GMT
USER user
# Sat, 19 Sep 2026 06:16:22 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:125f7ed2919501383cc2a463efb0a6d988a780211c71de97a05b674ca6bb8dde`  
		Last Modified: Fri, 18 Sep 2026 16:50:46 GMT  
		Size: 3.6 MB (3576321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afbd51ca02681bbe39a986700707521b548e29113e6468ecd792d2212ada05ed`  
		Last Modified: Sat, 19 Sep 2026 06:17:17 GMT  
		Size: 10.3 MB (10251614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0049ca4c752934f292f357ff6267055d415bf78671aaf92cdc3d1660dd024b65`  
		Last Modified: Sat, 19 Sep 2026 06:17:14 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97aedcb0a825edc4fa216b7f2b552422432a52f2689309daab35c566fc7c5f26`  
		Last Modified: Sat, 19 Sep 2026 06:17:16 GMT  
		Size: 6.1 MB (6065747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:f8ef3638059f55983a3b096e0efb7d44b6e68ae0671a33bd7c258e630925682d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:febc24d8710ec77e6d066f6516603112cf8d5a02ec545c3c9955f4229f75fdcf`

```dockerfile
```

-	Layers:
	-	`sha256:19d15bf32d13c84435568770433158c8a4965f67cd0f1696f67c6e80e2de5c3b`  
		Last Modified: Sat, 19 Sep 2026 06:17:15 GMT  
		Size: 1.3 MB (1290588 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28222b8426ba538a8317a57b6e5509ec334bfca641b3ec10d399177aac8e5d23`  
		Last Modified: Sat, 19 Sep 2026 06:17:14 GMT  
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
$ docker pull irssi@sha256:c1be243429965ee80da67b9a9f3e8360b242d663b508588486b244139b008654
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
$ docker pull irssi@sha256:38434aab2e4e861d82458eb30ff4fc82b9ff95e4878f9912b49f0f01245e7683
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53930783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:749229b84d768fe8a64d11a5d4d35f5464e85f5986b5d4954f04791cb4f53f7e`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:38 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:16:38 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:16:38 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:16:38 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:17:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:17:17 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:17:17 GMT
USER user
# Wed, 21 Oct 2026 00:17:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:981c90c5a5b9bfb503efc8257e0aa850b004559596afe9a923232c2e15af1b76`  
		Last Modified: Wed, 21 Oct 2026 00:17:28 GMT  
		Size: 19.2 MB (19214386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da8677829021eb3224e10f9077ebe4f87c5e2c0bafd3cedacab1c480efa7f636`  
		Last Modified: Wed, 21 Oct 2026 00:17:27 GMT  
		Size: 3.3 KB (3325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c69be0a85bdc8f905e5b403d4ae736de4daf2f3feb28f76c6a3fb076bc9e8cf`  
		Last Modified: Wed, 21 Oct 2026 00:17:27 GMT  
		Size: 4.9 MB (4869461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:69f907a1a64222c62edaccf5720f3beccb3dfaf1417d421f136249e1fe6fc801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5611931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc39a21cf0a40befc686ea1b51ed9f14bd33804f494bcf02c1c2fdf861794555`

```dockerfile
```

-	Layers:
	-	`sha256:927a615120e800302819774fe20f1b79e9dae5f8096a749b2cf0936b3e282985`  
		Last Modified: Wed, 21 Oct 2026 00:17:27 GMT  
		Size: 5.6 MB (5593282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:670d052390f58c504cc3e635b9f6a04da5f0872ff0816839d5e1cb17288689cf`  
		Last Modified: Wed, 21 Oct 2026 00:17:27 GMT  
		Size: 18.6 KB (18649 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; arm variant v5

```console
$ docker pull irssi@sha256:627919e5dcb9f32cc9ae81f9c7958fb2a7b74245939112e4391f08fe8de601fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (51009458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f8cf2cdad8245668b2f4e5ea5ea7e084127d984ccf24f64c4a398845a94cc98`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:32 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:16:32 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:16:32 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:16:32 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:17:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:17:19 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:17:19 GMT
USER user
# Wed, 21 Oct 2026 00:17:19 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b423d8e5b97d2d23134d76967247ce5a64b7ae164a954dbaa2a6ef745c63fb5f`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 18.3 MB (18287316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d77d2a048d3c59ef79537af667942a98e23aa4f6f696454166701ee9d108d8`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 3.3 KB (3327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b00273b8349d480c6c23ced3f37b08b15c850209e913e056006277d0770d8cd7`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 4.7 MB (4710989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:77616c9912f6c44b61c376f9565818a3eecf825e898a9b13c421be36164ac656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5609618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbd2e57a3055e6bede9f527002d97ba752158600abd23364a76c2103bb6d4d21`

```dockerfile
```

-	Layers:
	-	`sha256:558dd0a047d1cd74d6cee003d7eb984d88c8faf66a957d1d1adbf21d89000140`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 5.6 MB (5590831 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34b339f396b8f95b38e7cc4a1ab8e3345c8c7a7ea4aa2ba85583b1448b09acbe`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 18.8 KB (18787 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; arm variant v7

```console
$ docker pull irssi@sha256:d20c8497c8b0393bc6769c16426a170d84fe1bb46bce15229da64ff9fcc512ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48738829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:308166e3adb654a4dd1be5508a1a3e45b00b8bafb6ba689e22c462a7d5c11f58`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:20:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:20:43 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:20:43 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:20:43 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:20:43 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:21:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:21:24 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:21:24 GMT
USER user
# Wed, 21 Oct 2026 00:21:24 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f8eb073e557b2fb506b6faa9eae3677b1d49ea8721e51992a31cf5c5c4dd75da`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 26.3 MB (26258396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0997a0c07165995ae0f9544f1e6e2e3ec4f4c5be2bb0f3eaf45528f619ea54a3`  
		Last Modified: Wed, 21 Oct 2026 00:21:35 GMT  
		Size: 17.9 MB (17915695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:524dcfa64e981b6375dc773cdc60d6e27ae1ccf989ea86f3cf0f67afb030ce2b`  
		Last Modified: Wed, 21 Oct 2026 00:21:34 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2040987283fe3685e239ca0db9667392dc97c6afa29d9170b2af3c616dcd7f1`  
		Last Modified: Wed, 21 Oct 2026 00:21:35 GMT  
		Size: 4.6 MB (4561377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:f51abc58d60c827875919bdc32e920e1afe93fdcd73c5d0a85cec13aeec0e0b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5612642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e47b13517bd77e5f1b93e486352e79fbb116f9b916b40cd586954b5cfee043`

```dockerfile
```

-	Layers:
	-	`sha256:29db05cbf6fb62866b1ddbc2d0f9ea50010849d3193b1b34161162cdd003e48b`  
		Last Modified: Wed, 21 Oct 2026 00:21:35 GMT  
		Size: 5.6 MB (5593853 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5564e8b56867df135dde88e75c5fbbe577394bad0dfd8092b725765ebd5e6952`  
		Last Modified: Wed, 21 Oct 2026 00:21:35 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:49a10e244a6ff549c0bdedb2adbc444e782db57b4c6a6c7c277910804aa88044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (54039844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b1986f6d8faba50585ef34e8f403f1ff049ba10deca627f8e5f1d0d1da989e8`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:21 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:16:21 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:16:21 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:16:21 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:16:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:16:58 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:16:58 GMT
USER user
# Wed, 21 Oct 2026 00:16:58 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86fd62f9345e6e5204bb155204a502a5496073d2aac39f0f64dc3380840e3ac6`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 19.1 MB (19053813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46b83fec37491aea5ff75b3c0e4dd163231d38dbbcc9b433fe63e489df8d30a8`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d64793c825628bc871e6715226f725cb92d8ce3e5a20e8b517f27ab74c60a86a`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 4.8 MB (4782193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:00bff56c4b24759ef0bc7cc9752d61b69e058040e4fa6a05b2e13d22beb4a5b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5618589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b87233f492a07884170e40c69210db194815b90aacd1193d8c9e77e312e1e4b`

```dockerfile
```

-	Layers:
	-	`sha256:762d8c3d93d6a705430cff75705ba688e87a22bf0d7e5620adf9ac33a3cf3450`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 5.6 MB (5599758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e71b21b047d48ee0fdededc86784ee5eca972544c7e6f27bd1891f6ae5d1550`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 18.8 KB (18831 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; 386

```console
$ docker pull irssi@sha256:641da708ad66ee3428581679b84055068277df95ffc35a277524c33fa635ffcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54963983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9084667c0902fa0ab5eec112f0d28dbdcb57deb0aed24be66c20539ce779ef8e`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:33 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:16:33 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:16:33 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:16:33 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:17:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:17:13 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:17:13 GMT
USER user
# Wed, 21 Oct 2026 00:17:13 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ed7ef4d8bb8a16e6b1a4d6e74da037bb60ce864d336261b439c7da8595c0f49f`  
		Last Modified: Tue, 20 Oct 2026 23:30:51 GMT  
		Size: 31.4 MB (31353534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99c9207f582783c2bae5f11e6544aa0c36b4e98283667c277c4ffb1db9560877`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 18.7 MB (18737264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be56a1d4670f63a451aab73e2b4a82a9f44d088a33d1a8457d34901655994198`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3f1c768eef99d4c3b2699eff52a5c8b1425d0009a3afb48ee7cf809659aae1`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 4.9 MB (4869825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:4ec9c1468d13a4a7379bf6320e3b73faa80436920558c3cf75e591958b186505
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1066a66c0e95e34232e2cf4a573c493348c17b8317a97d03ec9ba343966bc1f4`

```dockerfile
```

-	Layers:
	-	`sha256:0ce94fe846a8bb2a65d58c790fadf00a2188edee5638040cf8713bc8339add0c`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 5.6 MB (5589405 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8823fbc72f91052b9ebae7f27338ea317663468b204e0090fb32d9b32d6d997`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 18.6 KB (18595 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; ppc64le

```console
$ docker pull irssi@sha256:379a58cf7fbb0ea95a4d97e0d49c260f9445eefce2944330da63e8b73ab1e314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58303343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df4ba4ce8cd1c0ed185e6d5c1e2b1a3afd8538772be4133276d38d14339821c4`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:32:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:32:21 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:32:21 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:32:21 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:32:21 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:34:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:34:18 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:34:18 GMT
USER user
# Wed, 21 Oct 2026 00:34:18 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cb33a61e7f8f252c0381ebd1e642dc9e1cb34c41973c0d6ada407130487e279`  
		Last Modified: Wed, 21 Oct 2026 00:34:44 GMT  
		Size: 19.5 MB (19547938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db5035ffdbbdc3bcabc4a940f73e511496bb486517b4d8fe2fb12a57c7c62c3a`  
		Last Modified: Wed, 21 Oct 2026 00:34:43 GMT  
		Size: 3.3 KB (3324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6da80ae16fa12f17fca54abecca9919767500d88bb1930a6b67f074b1cedb4aa`  
		Last Modified: Wed, 21 Oct 2026 00:34:43 GMT  
		Size: 5.1 MB (5100114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:961a33274cc424a25f863e238f10f1291a1703c9477ae7701929b578cce5e27d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5619036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d21e2809e9055b56d3934dbaa6436b863fe557a69d118fb1561752d6a2c6262a`

```dockerfile
```

-	Layers:
	-	`sha256:3db3598ef590a54465a322bb14eb6ce228fede3c672015231f4d09c43cb983eb`  
		Last Modified: Wed, 21 Oct 2026 00:34:43 GMT  
		Size: 5.6 MB (5600313 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b42ea1cc9de2011d0fa507a6210164453386ca91a3bb53093ec60cb72fbd627`  
		Last Modified: Wed, 21 Oct 2026 00:34:43 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1.4.5-trixie` - linux; riscv64

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

### `irssi:1.4.5-trixie` - unknown; unknown

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

### `irssi:1.4.5-trixie` - linux; s390x

```console
$ docker pull irssi@sha256:15ccf6d5a5fa3d7378ba2667cb39136a51acb476c1dca8986910c7559fce7543
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54591457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab85feb93217db676b979d37fb0a31afca9ce7673932e40dd9edaba27ac26ed7`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:18:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:18:24 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:18:24 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:18:24 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:18:24 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:19:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:19:00 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:19:00 GMT
USER user
# Wed, 21 Oct 2026 00:19:00 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8ea9a8c24bd3c92b5dfe24692234a4db47600db4bbc5b78a32119c1a1a244bb8`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 29.9 MB (29911438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68de19425eeed914f1457d29b779a32e2aeba057163e5704ccc432d75e99c5ed`  
		Last Modified: Wed, 21 Oct 2026 00:19:17 GMT  
		Size: 19.8 MB (19768195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afb503f8aac76879dfc5c4305864c0916aba847f5a5bb78d5ed102599bf0e40d`  
		Last Modified: Wed, 21 Oct 2026 00:19:16 GMT  
		Size: 3.3 KB (3330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7079454a155370ff81cf3631e39175cf9a39666f671ac7a7ca24ad2d802f429`  
		Last Modified: Wed, 21 Oct 2026 00:19:17 GMT  
		Size: 4.9 MB (4908462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1.4.5-trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:9061ab97c075216d91d70a2259500c50d1db47a8e4b679d2e94ce2061fad9733
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5612837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6af48bbb49bec1fd4970335d25b5598c1051cd21fead4c910d2284191b6b169d`

```dockerfile
```

-	Layers:
	-	`sha256:fba3e64eb3587fbca9057df36ff78633d9ccbef3b49080a88391b521be03b41a`  
		Last Modified: Wed, 21 Oct 2026 00:19:17 GMT  
		Size: 5.6 MB (5594187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1cf6c64caba513ddc55778fe329261833e325ef2411c213317815863c1d6051d`  
		Last Modified: Wed, 21 Oct 2026 00:19:16 GMT  
		Size: 18.6 KB (18650 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:alpine`

```console
$ docker pull irssi@sha256:929f300088d21f30c4ee52458f1ce61a2a6ad57d32b6f8b64065d122b914a6a1
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
$ docker pull irssi@sha256:962513480d4394686b9756cae40588f7bd69360773c71a359a9f161740dafca3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19894669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a96d3e0525e3e3d10c5b274636a21e08595aef43b08c70507246608ce6ff7127`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Sat, 19 Sep 2026 06:12:19 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Sat, 19 Sep 2026 06:12:20 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 06:12:20 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 06:12:20 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 06:12:20 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 06:16:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Sat, 19 Sep 2026 06:16:22 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 06:16:22 GMT
USER user
# Sat, 19 Sep 2026 06:16:22 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:125f7ed2919501383cc2a463efb0a6d988a780211c71de97a05b674ca6bb8dde`  
		Last Modified: Fri, 18 Sep 2026 16:50:46 GMT  
		Size: 3.6 MB (3576321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afbd51ca02681bbe39a986700707521b548e29113e6468ecd792d2212ada05ed`  
		Last Modified: Sat, 19 Sep 2026 06:17:17 GMT  
		Size: 10.3 MB (10251614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0049ca4c752934f292f357ff6267055d415bf78671aaf92cdc3d1660dd024b65`  
		Last Modified: Sat, 19 Sep 2026 06:17:14 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97aedcb0a825edc4fa216b7f2b552422432a52f2689309daab35c566fc7c5f26`  
		Last Modified: Sat, 19 Sep 2026 06:17:16 GMT  
		Size: 6.1 MB (6065747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:f8ef3638059f55983a3b096e0efb7d44b6e68ae0671a33bd7c258e630925682d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:febc24d8710ec77e6d066f6516603112cf8d5a02ec545c3c9955f4229f75fdcf`

```dockerfile
```

-	Layers:
	-	`sha256:19d15bf32d13c84435568770433158c8a4965f67cd0f1696f67c6e80e2de5c3b`  
		Last Modified: Sat, 19 Sep 2026 06:17:15 GMT  
		Size: 1.3 MB (1290588 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28222b8426ba538a8317a57b6e5509ec334bfca641b3ec10d399177aac8e5d23`  
		Last Modified: Sat, 19 Sep 2026 06:17:14 GMT  
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
$ docker pull irssi@sha256:929f300088d21f30c4ee52458f1ce61a2a6ad57d32b6f8b64065d122b914a6a1
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
$ docker pull irssi@sha256:962513480d4394686b9756cae40588f7bd69360773c71a359a9f161740dafca3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19894669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a96d3e0525e3e3d10c5b274636a21e08595aef43b08c70507246608ce6ff7127`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Sat, 19 Sep 2026 06:12:19 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Sat, 19 Sep 2026 06:12:20 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 06:12:20 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 06:12:20 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 06:12:20 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 06:16:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Sat, 19 Sep 2026 06:16:22 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 06:16:22 GMT
USER user
# Sat, 19 Sep 2026 06:16:22 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:125f7ed2919501383cc2a463efb0a6d988a780211c71de97a05b674ca6bb8dde`  
		Last Modified: Fri, 18 Sep 2026 16:50:46 GMT  
		Size: 3.6 MB (3576321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afbd51ca02681bbe39a986700707521b548e29113e6468ecd792d2212ada05ed`  
		Last Modified: Sat, 19 Sep 2026 06:17:17 GMT  
		Size: 10.3 MB (10251614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0049ca4c752934f292f357ff6267055d415bf78671aaf92cdc3d1660dd024b65`  
		Last Modified: Sat, 19 Sep 2026 06:17:14 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97aedcb0a825edc4fa216b7f2b552422432a52f2689309daab35c566fc7c5f26`  
		Last Modified: Sat, 19 Sep 2026 06:17:16 GMT  
		Size: 6.1 MB (6065747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:f8ef3638059f55983a3b096e0efb7d44b6e68ae0671a33bd7c258e630925682d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:febc24d8710ec77e6d066f6516603112cf8d5a02ec545c3c9955f4229f75fdcf`

```dockerfile
```

-	Layers:
	-	`sha256:19d15bf32d13c84435568770433158c8a4965f67cd0f1696f67c6e80e2de5c3b`  
		Last Modified: Sat, 19 Sep 2026 06:17:15 GMT  
		Size: 1.3 MB (1290588 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28222b8426ba538a8317a57b6e5509ec334bfca641b3ec10d399177aac8e5d23`  
		Last Modified: Sat, 19 Sep 2026 06:17:14 GMT  
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
$ docker pull irssi@sha256:c1be243429965ee80da67b9a9f3e8360b242d663b508588486b244139b008654
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
$ docker pull irssi@sha256:38434aab2e4e861d82458eb30ff4fc82b9ff95e4878f9912b49f0f01245e7683
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53930783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:749229b84d768fe8a64d11a5d4d35f5464e85f5986b5d4954f04791cb4f53f7e`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:38 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:16:38 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:16:38 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:16:38 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:17:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:17:17 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:17:17 GMT
USER user
# Wed, 21 Oct 2026 00:17:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:981c90c5a5b9bfb503efc8257e0aa850b004559596afe9a923232c2e15af1b76`  
		Last Modified: Wed, 21 Oct 2026 00:17:28 GMT  
		Size: 19.2 MB (19214386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da8677829021eb3224e10f9077ebe4f87c5e2c0bafd3cedacab1c480efa7f636`  
		Last Modified: Wed, 21 Oct 2026 00:17:27 GMT  
		Size: 3.3 KB (3325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c69be0a85bdc8f905e5b403d4ae736de4daf2f3feb28f76c6a3fb076bc9e8cf`  
		Last Modified: Wed, 21 Oct 2026 00:17:27 GMT  
		Size: 4.9 MB (4869461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:69f907a1a64222c62edaccf5720f3beccb3dfaf1417d421f136249e1fe6fc801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5611931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc39a21cf0a40befc686ea1b51ed9f14bd33804f494bcf02c1c2fdf861794555`

```dockerfile
```

-	Layers:
	-	`sha256:927a615120e800302819774fe20f1b79e9dae5f8096a749b2cf0936b3e282985`  
		Last Modified: Wed, 21 Oct 2026 00:17:27 GMT  
		Size: 5.6 MB (5593282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:670d052390f58c504cc3e635b9f6a04da5f0872ff0816839d5e1cb17288689cf`  
		Last Modified: Wed, 21 Oct 2026 00:17:27 GMT  
		Size: 18.6 KB (18649 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; arm variant v5

```console
$ docker pull irssi@sha256:627919e5dcb9f32cc9ae81f9c7958fb2a7b74245939112e4391f08fe8de601fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (51009458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f8cf2cdad8245668b2f4e5ea5ea7e084127d984ccf24f64c4a398845a94cc98`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:32 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:16:32 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:16:32 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:16:32 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:17:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:17:19 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:17:19 GMT
USER user
# Wed, 21 Oct 2026 00:17:19 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b423d8e5b97d2d23134d76967247ce5a64b7ae164a954dbaa2a6ef745c63fb5f`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 18.3 MB (18287316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d77d2a048d3c59ef79537af667942a98e23aa4f6f696454166701ee9d108d8`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 3.3 KB (3327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b00273b8349d480c6c23ced3f37b08b15c850209e913e056006277d0770d8cd7`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 4.7 MB (4710989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:77616c9912f6c44b61c376f9565818a3eecf825e898a9b13c421be36164ac656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5609618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbd2e57a3055e6bede9f527002d97ba752158600abd23364a76c2103bb6d4d21`

```dockerfile
```

-	Layers:
	-	`sha256:558dd0a047d1cd74d6cee003d7eb984d88c8faf66a957d1d1adbf21d89000140`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 5.6 MB (5590831 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34b339f396b8f95b38e7cc4a1ab8e3345c8c7a7ea4aa2ba85583b1448b09acbe`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 18.8 KB (18787 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; arm variant v7

```console
$ docker pull irssi@sha256:d20c8497c8b0393bc6769c16426a170d84fe1bb46bce15229da64ff9fcc512ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48738829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:308166e3adb654a4dd1be5508a1a3e45b00b8bafb6ba689e22c462a7d5c11f58`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:20:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:20:43 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:20:43 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:20:43 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:20:43 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:21:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:21:24 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:21:24 GMT
USER user
# Wed, 21 Oct 2026 00:21:24 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f8eb073e557b2fb506b6faa9eae3677b1d49ea8721e51992a31cf5c5c4dd75da`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 26.3 MB (26258396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0997a0c07165995ae0f9544f1e6e2e3ec4f4c5be2bb0f3eaf45528f619ea54a3`  
		Last Modified: Wed, 21 Oct 2026 00:21:35 GMT  
		Size: 17.9 MB (17915695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:524dcfa64e981b6375dc773cdc60d6e27ae1ccf989ea86f3cf0f67afb030ce2b`  
		Last Modified: Wed, 21 Oct 2026 00:21:34 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2040987283fe3685e239ca0db9667392dc97c6afa29d9170b2af3c616dcd7f1`  
		Last Modified: Wed, 21 Oct 2026 00:21:35 GMT  
		Size: 4.6 MB (4561377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:f51abc58d60c827875919bdc32e920e1afe93fdcd73c5d0a85cec13aeec0e0b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5612642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e47b13517bd77e5f1b93e486352e79fbb116f9b916b40cd586954b5cfee043`

```dockerfile
```

-	Layers:
	-	`sha256:29db05cbf6fb62866b1ddbc2d0f9ea50010849d3193b1b34161162cdd003e48b`  
		Last Modified: Wed, 21 Oct 2026 00:21:35 GMT  
		Size: 5.6 MB (5593853 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5564e8b56867df135dde88e75c5fbbe577394bad0dfd8092b725765ebd5e6952`  
		Last Modified: Wed, 21 Oct 2026 00:21:35 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:49a10e244a6ff549c0bdedb2adbc444e782db57b4c6a6c7c277910804aa88044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (54039844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b1986f6d8faba50585ef34e8f403f1ff049ba10deca627f8e5f1d0d1da989e8`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:21 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:16:21 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:16:21 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:16:21 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:16:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:16:58 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:16:58 GMT
USER user
# Wed, 21 Oct 2026 00:16:58 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86fd62f9345e6e5204bb155204a502a5496073d2aac39f0f64dc3380840e3ac6`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 19.1 MB (19053813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46b83fec37491aea5ff75b3c0e4dd163231d38dbbcc9b433fe63e489df8d30a8`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d64793c825628bc871e6715226f725cb92d8ce3e5a20e8b517f27ab74c60a86a`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 4.8 MB (4782193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:00bff56c4b24759ef0bc7cc9752d61b69e058040e4fa6a05b2e13d22beb4a5b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5618589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b87233f492a07884170e40c69210db194815b90aacd1193d8c9e77e312e1e4b`

```dockerfile
```

-	Layers:
	-	`sha256:762d8c3d93d6a705430cff75705ba688e87a22bf0d7e5620adf9ac33a3cf3450`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 5.6 MB (5599758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e71b21b047d48ee0fdededc86784ee5eca972544c7e6f27bd1891f6ae5d1550`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 18.8 KB (18831 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; 386

```console
$ docker pull irssi@sha256:641da708ad66ee3428581679b84055068277df95ffc35a277524c33fa635ffcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54963983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9084667c0902fa0ab5eec112f0d28dbdcb57deb0aed24be66c20539ce779ef8e`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:33 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:16:33 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:16:33 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:16:33 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:17:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:17:13 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:17:13 GMT
USER user
# Wed, 21 Oct 2026 00:17:13 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ed7ef4d8bb8a16e6b1a4d6e74da037bb60ce864d336261b439c7da8595c0f49f`  
		Last Modified: Tue, 20 Oct 2026 23:30:51 GMT  
		Size: 31.4 MB (31353534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99c9207f582783c2bae5f11e6544aa0c36b4e98283667c277c4ffb1db9560877`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 18.7 MB (18737264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be56a1d4670f63a451aab73e2b4a82a9f44d088a33d1a8457d34901655994198`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3f1c768eef99d4c3b2699eff52a5c8b1425d0009a3afb48ee7cf809659aae1`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 4.9 MB (4869825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:4ec9c1468d13a4a7379bf6320e3b73faa80436920558c3cf75e591958b186505
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1066a66c0e95e34232e2cf4a573c493348c17b8317a97d03ec9ba343966bc1f4`

```dockerfile
```

-	Layers:
	-	`sha256:0ce94fe846a8bb2a65d58c790fadf00a2188edee5638040cf8713bc8339add0c`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 5.6 MB (5589405 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8823fbc72f91052b9ebae7f27338ea317663468b204e0090fb32d9b32d6d997`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 18.6 KB (18595 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:latest` - linux; ppc64le

```console
$ docker pull irssi@sha256:379a58cf7fbb0ea95a4d97e0d49c260f9445eefce2944330da63e8b73ab1e314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58303343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df4ba4ce8cd1c0ed185e6d5c1e2b1a3afd8538772be4133276d38d14339821c4`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:32:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:32:21 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:32:21 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:32:21 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:32:21 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:34:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:34:18 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:34:18 GMT
USER user
# Wed, 21 Oct 2026 00:34:18 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cb33a61e7f8f252c0381ebd1e642dc9e1cb34c41973c0d6ada407130487e279`  
		Last Modified: Wed, 21 Oct 2026 00:34:44 GMT  
		Size: 19.5 MB (19547938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db5035ffdbbdc3bcabc4a940f73e511496bb486517b4d8fe2fb12a57c7c62c3a`  
		Last Modified: Wed, 21 Oct 2026 00:34:43 GMT  
		Size: 3.3 KB (3324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6da80ae16fa12f17fca54abecca9919767500d88bb1930a6b67f074b1cedb4aa`  
		Last Modified: Wed, 21 Oct 2026 00:34:43 GMT  
		Size: 5.1 MB (5100114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:961a33274cc424a25f863e238f10f1291a1703c9477ae7701929b578cce5e27d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5619036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d21e2809e9055b56d3934dbaa6436b863fe557a69d118fb1561752d6a2c6262a`

```dockerfile
```

-	Layers:
	-	`sha256:3db3598ef590a54465a322bb14eb6ce228fede3c672015231f4d09c43cb983eb`  
		Last Modified: Wed, 21 Oct 2026 00:34:43 GMT  
		Size: 5.6 MB (5600313 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b42ea1cc9de2011d0fa507a6210164453386ca91a3bb53093ec60cb72fbd627`  
		Last Modified: Wed, 21 Oct 2026 00:34:43 GMT  
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
$ docker pull irssi@sha256:15ccf6d5a5fa3d7378ba2667cb39136a51acb476c1dca8986910c7559fce7543
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54591457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab85feb93217db676b979d37fb0a31afca9ce7673932e40dd9edaba27ac26ed7`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:18:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:18:24 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:18:24 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:18:24 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:18:24 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:19:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:19:00 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:19:00 GMT
USER user
# Wed, 21 Oct 2026 00:19:00 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8ea9a8c24bd3c92b5dfe24692234a4db47600db4bbc5b78a32119c1a1a244bb8`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 29.9 MB (29911438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68de19425eeed914f1457d29b779a32e2aeba057163e5704ccc432d75e99c5ed`  
		Last Modified: Wed, 21 Oct 2026 00:19:17 GMT  
		Size: 19.8 MB (19768195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afb503f8aac76879dfc5c4305864c0916aba847f5a5bb78d5ed102599bf0e40d`  
		Last Modified: Wed, 21 Oct 2026 00:19:16 GMT  
		Size: 3.3 KB (3330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7079454a155370ff81cf3631e39175cf9a39666f671ac7a7ca24ad2d802f429`  
		Last Modified: Wed, 21 Oct 2026 00:19:17 GMT  
		Size: 4.9 MB (4908462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:latest` - unknown; unknown

```console
$ docker pull irssi@sha256:9061ab97c075216d91d70a2259500c50d1db47a8e4b679d2e94ce2061fad9733
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5612837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6af48bbb49bec1fd4970335d25b5598c1051cd21fead4c910d2284191b6b169d`

```dockerfile
```

-	Layers:
	-	`sha256:fba3e64eb3587fbca9057df36ff78633d9ccbef3b49080a88391b521be03b41a`  
		Last Modified: Wed, 21 Oct 2026 00:19:17 GMT  
		Size: 5.6 MB (5594187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1cf6c64caba513ddc55778fe329261833e325ef2411c213317815863c1d6051d`  
		Last Modified: Wed, 21 Oct 2026 00:19:16 GMT  
		Size: 18.6 KB (18650 bytes)  
		MIME: application/vnd.in-toto+json

## `irssi:trixie`

```console
$ docker pull irssi@sha256:c1be243429965ee80da67b9a9f3e8360b242d663b508588486b244139b008654
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
$ docker pull irssi@sha256:38434aab2e4e861d82458eb30ff4fc82b9ff95e4878f9912b49f0f01245e7683
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53930783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:749229b84d768fe8a64d11a5d4d35f5464e85f5986b5d4954f04791cb4f53f7e`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:38 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:16:38 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:16:38 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:16:38 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:17:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:17:17 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:17:17 GMT
USER user
# Wed, 21 Oct 2026 00:17:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:981c90c5a5b9bfb503efc8257e0aa850b004559596afe9a923232c2e15af1b76`  
		Last Modified: Wed, 21 Oct 2026 00:17:28 GMT  
		Size: 19.2 MB (19214386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da8677829021eb3224e10f9077ebe4f87c5e2c0bafd3cedacab1c480efa7f636`  
		Last Modified: Wed, 21 Oct 2026 00:17:27 GMT  
		Size: 3.3 KB (3325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c69be0a85bdc8f905e5b403d4ae736de4daf2f3feb28f76c6a3fb076bc9e8cf`  
		Last Modified: Wed, 21 Oct 2026 00:17:27 GMT  
		Size: 4.9 MB (4869461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:69f907a1a64222c62edaccf5720f3beccb3dfaf1417d421f136249e1fe6fc801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5611931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc39a21cf0a40befc686ea1b51ed9f14bd33804f494bcf02c1c2fdf861794555`

```dockerfile
```

-	Layers:
	-	`sha256:927a615120e800302819774fe20f1b79e9dae5f8096a749b2cf0936b3e282985`  
		Last Modified: Wed, 21 Oct 2026 00:17:27 GMT  
		Size: 5.6 MB (5593282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:670d052390f58c504cc3e635b9f6a04da5f0872ff0816839d5e1cb17288689cf`  
		Last Modified: Wed, 21 Oct 2026 00:17:27 GMT  
		Size: 18.6 KB (18649 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; arm variant v5

```console
$ docker pull irssi@sha256:627919e5dcb9f32cc9ae81f9c7958fb2a7b74245939112e4391f08fe8de601fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (51009458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f8cf2cdad8245668b2f4e5ea5ea7e084127d984ccf24f64c4a398845a94cc98`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:32 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:16:32 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:16:32 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:16:32 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:17:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:17:19 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:17:19 GMT
USER user
# Wed, 21 Oct 2026 00:17:19 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b423d8e5b97d2d23134d76967247ce5a64b7ae164a954dbaa2a6ef745c63fb5f`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 18.3 MB (18287316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d77d2a048d3c59ef79537af667942a98e23aa4f6f696454166701ee9d108d8`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 3.3 KB (3327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b00273b8349d480c6c23ced3f37b08b15c850209e913e056006277d0770d8cd7`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 4.7 MB (4710989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:77616c9912f6c44b61c376f9565818a3eecf825e898a9b13c421be36164ac656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5609618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbd2e57a3055e6bede9f527002d97ba752158600abd23364a76c2103bb6d4d21`

```dockerfile
```

-	Layers:
	-	`sha256:558dd0a047d1cd74d6cee003d7eb984d88c8faf66a957d1d1adbf21d89000140`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 5.6 MB (5590831 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34b339f396b8f95b38e7cc4a1ab8e3345c8c7a7ea4aa2ba85583b1448b09acbe`  
		Last Modified: Wed, 21 Oct 2026 00:17:30 GMT  
		Size: 18.8 KB (18787 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; arm variant v7

```console
$ docker pull irssi@sha256:d20c8497c8b0393bc6769c16426a170d84fe1bb46bce15229da64ff9fcc512ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48738829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:308166e3adb654a4dd1be5508a1a3e45b00b8bafb6ba689e22c462a7d5c11f58`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:20:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:20:43 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:20:43 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:20:43 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:20:43 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:21:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:21:24 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:21:24 GMT
USER user
# Wed, 21 Oct 2026 00:21:24 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f8eb073e557b2fb506b6faa9eae3677b1d49ea8721e51992a31cf5c5c4dd75da`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 26.3 MB (26258396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0997a0c07165995ae0f9544f1e6e2e3ec4f4c5be2bb0f3eaf45528f619ea54a3`  
		Last Modified: Wed, 21 Oct 2026 00:21:35 GMT  
		Size: 17.9 MB (17915695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:524dcfa64e981b6375dc773cdc60d6e27ae1ccf989ea86f3cf0f67afb030ce2b`  
		Last Modified: Wed, 21 Oct 2026 00:21:34 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2040987283fe3685e239ca0db9667392dc97c6afa29d9170b2af3c616dcd7f1`  
		Last Modified: Wed, 21 Oct 2026 00:21:35 GMT  
		Size: 4.6 MB (4561377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:f51abc58d60c827875919bdc32e920e1afe93fdcd73c5d0a85cec13aeec0e0b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5612642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e47b13517bd77e5f1b93e486352e79fbb116f9b916b40cd586954b5cfee043`

```dockerfile
```

-	Layers:
	-	`sha256:29db05cbf6fb62866b1ddbc2d0f9ea50010849d3193b1b34161162cdd003e48b`  
		Last Modified: Wed, 21 Oct 2026 00:21:35 GMT  
		Size: 5.6 MB (5593853 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5564e8b56867df135dde88e75c5fbbe577394bad0dfd8092b725765ebd5e6952`  
		Last Modified: Wed, 21 Oct 2026 00:21:35 GMT  
		Size: 18.8 KB (18789 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:49a10e244a6ff549c0bdedb2adbc444e782db57b4c6a6c7c277910804aa88044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (54039844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b1986f6d8faba50585ef34e8f403f1ff049ba10deca627f8e5f1d0d1da989e8`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:21 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:16:21 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:16:21 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:16:21 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:16:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:16:58 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:16:58 GMT
USER user
# Wed, 21 Oct 2026 00:16:58 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86fd62f9345e6e5204bb155204a502a5496073d2aac39f0f64dc3380840e3ac6`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 19.1 MB (19053813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46b83fec37491aea5ff75b3c0e4dd163231d38dbbcc9b433fe63e489df8d30a8`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d64793c825628bc871e6715226f725cb92d8ce3e5a20e8b517f27ab74c60a86a`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 4.8 MB (4782193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:00bff56c4b24759ef0bc7cc9752d61b69e058040e4fa6a05b2e13d22beb4a5b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5618589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b87233f492a07884170e40c69210db194815b90aacd1193d8c9e77e312e1e4b`

```dockerfile
```

-	Layers:
	-	`sha256:762d8c3d93d6a705430cff75705ba688e87a22bf0d7e5620adf9ac33a3cf3450`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 5.6 MB (5599758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e71b21b047d48ee0fdededc86784ee5eca972544c7e6f27bd1891f6ae5d1550`  
		Last Modified: Wed, 21 Oct 2026 00:17:09 GMT  
		Size: 18.8 KB (18831 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; 386

```console
$ docker pull irssi@sha256:641da708ad66ee3428581679b84055068277df95ffc35a277524c33fa635ffcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54963983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9084667c0902fa0ab5eec112f0d28dbdcb57deb0aed24be66c20539ce779ef8e`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:16:33 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:16:33 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:16:33 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:16:33 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:17:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:17:13 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:17:13 GMT
USER user
# Wed, 21 Oct 2026 00:17:13 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ed7ef4d8bb8a16e6b1a4d6e74da037bb60ce864d336261b439c7da8595c0f49f`  
		Last Modified: Tue, 20 Oct 2026 23:30:51 GMT  
		Size: 31.4 MB (31353534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99c9207f582783c2bae5f11e6544aa0c36b4e98283667c277c4ffb1db9560877`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 18.7 MB (18737264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be56a1d4670f63a451aab73e2b4a82a9f44d088a33d1a8457d34901655994198`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3f1c768eef99d4c3b2699eff52a5c8b1425d0009a3afb48ee7cf809659aae1`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 4.9 MB (4869825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:4ec9c1468d13a4a7379bf6320e3b73faa80436920558c3cf75e591958b186505
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5608000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1066a66c0e95e34232e2cf4a573c493348c17b8317a97d03ec9ba343966bc1f4`

```dockerfile
```

-	Layers:
	-	`sha256:0ce94fe846a8bb2a65d58c790fadf00a2188edee5638040cf8713bc8339add0c`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 5.6 MB (5589405 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8823fbc72f91052b9ebae7f27338ea317663468b204e0090fb32d9b32d6d997`  
		Last Modified: Wed, 21 Oct 2026 00:17:22 GMT  
		Size: 18.6 KB (18595 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; ppc64le

```console
$ docker pull irssi@sha256:379a58cf7fbb0ea95a4d97e0d49c260f9445eefce2944330da63e8b73ab1e314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.3 MB (58303343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df4ba4ce8cd1c0ed185e6d5c1e2b1a3afd8538772be4133276d38d14339821c4`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:32:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:32:21 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:32:21 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:32:21 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:32:21 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:34:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:34:18 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:34:18 GMT
USER user
# Wed, 21 Oct 2026 00:34:18 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cb33a61e7f8f252c0381ebd1e642dc9e1cb34c41973c0d6ada407130487e279`  
		Last Modified: Wed, 21 Oct 2026 00:34:44 GMT  
		Size: 19.5 MB (19547938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db5035ffdbbdc3bcabc4a940f73e511496bb486517b4d8fe2fb12a57c7c62c3a`  
		Last Modified: Wed, 21 Oct 2026 00:34:43 GMT  
		Size: 3.3 KB (3324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6da80ae16fa12f17fca54abecca9919767500d88bb1930a6b67f074b1cedb4aa`  
		Last Modified: Wed, 21 Oct 2026 00:34:43 GMT  
		Size: 5.1 MB (5100114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:961a33274cc424a25f863e238f10f1291a1703c9477ae7701929b578cce5e27d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5619036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d21e2809e9055b56d3934dbaa6436b863fe557a69d118fb1561752d6a2c6262a`

```dockerfile
```

-	Layers:
	-	`sha256:3db3598ef590a54465a322bb14eb6ce228fede3c672015231f4d09c43cb983eb`  
		Last Modified: Wed, 21 Oct 2026 00:34:43 GMT  
		Size: 5.6 MB (5600313 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b42ea1cc9de2011d0fa507a6210164453386ca91a3bb53093ec60cb72fbd627`  
		Last Modified: Wed, 21 Oct 2026 00:34:43 GMT  
		Size: 18.7 KB (18723 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:trixie` - linux; riscv64

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

### `irssi:trixie` - unknown; unknown

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

### `irssi:trixie` - linux; s390x

```console
$ docker pull irssi@sha256:15ccf6d5a5fa3d7378ba2667cb39136a51acb476c1dca8986910c7559fce7543
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54591457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab85feb93217db676b979d37fb0a31afca9ce7673932e40dd9edaba27ac26ed7`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:18:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		libdatetime-perl 		libwww-perl 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:18:24 GMT
ENV HOME=/home/user
# Wed, 21 Oct 2026 00:18:24 GMT
RUN set -eux; 	useradd --create-home --home-dir "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Wed, 21 Oct 2026 00:18:24 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:18:24 GMT
ENV IRSSI_VERSION=1.4.5
# Wed, 21 Oct 2026 00:19:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		gnupg 		libglib2.0-dev 		libncurses-dev 		libperl-dev 		libssl-dev 		libtool 		lynx 		meson 		ninja-build 		pkg-config 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		irssi --version # buildkit
# Wed, 21 Oct 2026 00:19:00 GMT
WORKDIR /home/user
# Wed, 21 Oct 2026 00:19:00 GMT
USER user
# Wed, 21 Oct 2026 00:19:00 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:8ea9a8c24bd3c92b5dfe24692234a4db47600db4bbc5b78a32119c1a1a244bb8`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 29.9 MB (29911438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68de19425eeed914f1457d29b779a32e2aeba057163e5704ccc432d75e99c5ed`  
		Last Modified: Wed, 21 Oct 2026 00:19:17 GMT  
		Size: 19.8 MB (19768195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afb503f8aac76879dfc5c4305864c0916aba847f5a5bb78d5ed102599bf0e40d`  
		Last Modified: Wed, 21 Oct 2026 00:19:16 GMT  
		Size: 3.3 KB (3330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7079454a155370ff81cf3631e39175cf9a39666f671ac7a7ca24ad2d802f429`  
		Last Modified: Wed, 21 Oct 2026 00:19:17 GMT  
		Size: 4.9 MB (4908462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:trixie` - unknown; unknown

```console
$ docker pull irssi@sha256:9061ab97c075216d91d70a2259500c50d1db47a8e4b679d2e94ce2061fad9733
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5612837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6af48bbb49bec1fd4970335d25b5598c1051cd21fead4c910d2284191b6b169d`

```dockerfile
```

-	Layers:
	-	`sha256:fba3e64eb3587fbca9057df36ff78633d9ccbef3b49080a88391b521be03b41a`  
		Last Modified: Wed, 21 Oct 2026 00:19:17 GMT  
		Size: 5.6 MB (5594187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1cf6c64caba513ddc55778fe329261833e325ef2411c213317815863c1d6051d`  
		Last Modified: Wed, 21 Oct 2026 00:19:16 GMT  
		Size: 18.6 KB (18650 bytes)  
		MIME: application/vnd.in-toto+json
