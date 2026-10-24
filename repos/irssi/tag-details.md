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
