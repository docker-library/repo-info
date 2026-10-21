<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rethinkdb`

-	[`rethinkdb:2`](#rethinkdb2)
-	[`rethinkdb:2-bookworm-slim`](#rethinkdb2-bookworm-slim)
-	[`rethinkdb:2.4`](#rethinkdb24)
-	[`rethinkdb:2.4-bookworm-slim`](#rethinkdb24-bookworm-slim)
-	[`rethinkdb:2.4.3`](#rethinkdb243)
-	[`rethinkdb:2.4.4-bookworm-slim`](#rethinkdb244-bookworm-slim)
-	[`rethinkdb:bookworm-slim`](#rethinkdbbookworm-slim)
-	[`rethinkdb:latest`](#rethinkdblatest)

## `rethinkdb:2`

```console
$ docker pull rethinkdb@sha256:3a5ec73ae9d629ba5bb9508b53444c9dffe8b6109af7c7b3415d988ba2b66ba4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `rethinkdb:2` - linux; amd64

```console
$ docker pull rethinkdb@sha256:5e15372b391302c528ada2d2eb3f0548f2d6a5593de3eb0fc240dea98643d0c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47869514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aae517028c0706398139effedf51c3d670a0a29297699e70870c9ca4c8505396`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:39:23 GMT
RUN apt-get -qqy update     && apt-get install -y --no-install-recommends ca-certificates gnupg2 curl     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:39:24 GMT
RUN GNUPGHOME="$(mktemp -d)" && export GNUPGHOME     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F     && gpg --batch --export 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F > /usr/share/keyrings/rethinkdb.gpg     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb [signed-by=/usr/share/keyrings/rethinkdb.gpg] https://download.rethinkdb.com/repository/debian-bookworm bookworm main" > /etc/apt/sources.list.d/rethinkdb.list # buildkit
# Wed, 21 Oct 2026 00:39:29 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.4.4~0bookworm
# Wed, 21 Oct 2026 00:39:29 GMT
RUN apt-get -qqy update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:39:29 GMT
VOLUME [/data]
# Wed, 21 Oct 2026 00:39:29 GMT
WORKDIR /data
# Wed, 21 Oct 2026 00:39:29 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 21 Oct 2026 00:39:29 GMT
EXPOSE map[28015/tcp:{} 29015/tcp:{} 8080/tcp:{}]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35551d1e81ad7fa6a2b21b5da0bec1a341a2aa61af20fe5eefb9c658c0755723`  
		Last Modified: Wed, 21 Oct 2026 00:39:37 GMT  
		Size: 9.6 MB (9625627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d51d291c9cb9b211088ed36447e090b2e04b900586db91cc6e077af61ef7b684`  
		Last Modified: Wed, 21 Oct 2026 00:39:36 GMT  
		Size: 2.7 KB (2669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e196e4f29c0dbc875fafc9ee9af761c520bbf22d96b07ad1ad33242cc157ebcb`  
		Last Modified: Wed, 21 Oct 2026 00:39:37 GMT  
		Size: 10.0 MB (9993190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd95553a9ef9ab1627cc51da6d896d75885f9c24b15eca3c373363b21825bdce`  
		Last Modified: Wed, 21 Oct 2026 00:39:36 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rethinkdb:2` - unknown; unknown

```console
$ docker pull rethinkdb@sha256:c8e6d3c468ff9d8d1588db2f3d521dd78fe23f8f2dddaea6586e24ff20626602
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2802529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e1ada346587a458d34cd1acf411ed9269bca2f03b2901e6a911935888e3d78`

```dockerfile
```

-	Layers:
	-	`sha256:2b1ae623c03f6f209a2403a88c9fc10185229056e91aa5b0018e9e4439eedfd3`  
		Last Modified: Wed, 21 Oct 2026 00:39:37 GMT  
		Size: 2.8 MB (2789126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8633fb8b34849fe0a286e21b2586f5bf9b7612b3f9dde5782ce91a15ffb86aa`  
		Last Modified: Wed, 21 Oct 2026 00:39:36 GMT  
		Size: 13.4 KB (13403 bytes)  
		MIME: application/vnd.in-toto+json

### `rethinkdb:2` - linux; arm64 variant v8

```console
$ docker pull rethinkdb@sha256:3765ceebb8d85c3bc82652646e9089642bdf9072e387b6f4ccefe01da6ec9c3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.0 MB (46958291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:672fc8401f572c7b3b139073b37cef873bda9948c85c656fbdbabb44841a08aa`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:43:02 GMT
RUN apt-get -qqy update     && apt-get install -y --no-install-recommends ca-certificates gnupg2 curl     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:43:03 GMT
RUN GNUPGHOME="$(mktemp -d)" && export GNUPGHOME     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F     && gpg --batch --export 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F > /usr/share/keyrings/rethinkdb.gpg     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb [signed-by=/usr/share/keyrings/rethinkdb.gpg] https://download.rethinkdb.com/repository/debian-bookworm bookworm main" > /etc/apt/sources.list.d/rethinkdb.list # buildkit
# Wed, 21 Oct 2026 00:43:08 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.4.4~0bookworm
# Wed, 21 Oct 2026 00:43:08 GMT
RUN apt-get -qqy update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:43:08 GMT
VOLUME [/data]
# Wed, 21 Oct 2026 00:43:08 GMT
WORKDIR /data
# Wed, 21 Oct 2026 00:43:08 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 21 Oct 2026 00:43:08 GMT
EXPOSE map[28015/tcp:{} 29015/tcp:{} 8080/tcp:{}]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3a4d158c567768d07ecf5589de8b8f22e41da2088f07ab2b1aaa199d190e3a1`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 9.4 MB (9449686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11291e68ea196e80b22bd343eb76a01c244d21349ab7683d3abf7101a28b4da0`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 2.7 KB (2669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d671cf4cceeb7e7aa0380529502a56689fce80df65acdd5ec9d85888918bdde`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 9.4 MB (9367418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66d483093429c7d528cd84f539cb647b45dbfaa3dbc54bf5c5dfee33c4add665`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rethinkdb:2` - unknown; unknown

```console
$ docker pull rethinkdb@sha256:db9a7b2517ba86750299dec95a756dfb2f799f2db6b4d95bc363affeb95bb612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2803047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e0b3e268abb135e69e5933fdcf39736f5d46d2afe36530627a967260d69c679`

```dockerfile
```

-	Layers:
	-	`sha256:165378478f847b45166d6116cadf05286a6f2b76abd527ac650c0e009845a0d6`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 2.8 MB (2789461 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90225a902104acafa398e3994ecd44bd5ae7e4b078946773ad527fab974502e8`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 13.6 KB (13586 bytes)  
		MIME: application/vnd.in-toto+json

### `rethinkdb:2` - linux; s390x

```console
$ docker pull rethinkdb@sha256:2df8028f90406364827ccfed59e56268b1da506a56257a75527960a07a74a832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45492974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bebaf239522a8ecc68bcd62c1888a1e201b8d59fb5fda27318bb0c24bd52924b`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 03:06:33 GMT
RUN apt-get -qqy update     && apt-get install -y --no-install-recommends ca-certificates gnupg2 curl     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:06:34 GMT
RUN GNUPGHOME="$(mktemp -d)" && export GNUPGHOME     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F     && gpg --batch --export 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F > /usr/share/keyrings/rethinkdb.gpg     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb [signed-by=/usr/share/keyrings/rethinkdb.gpg] https://download.rethinkdb.com/repository/debian-bookworm bookworm main" > /etc/apt/sources.list.d/rethinkdb.list # buildkit
# Tue, 14 Jul 2026 03:06:39 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.4.4~0bookworm
# Tue, 14 Jul 2026 03:06:39 GMT
RUN apt-get -qqy update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:06:39 GMT
VOLUME [/data]
# Tue, 14 Jul 2026 03:06:39 GMT
WORKDIR /data
# Tue, 14 Jul 2026 03:06:39 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 14 Jul 2026 03:06:39 GMT
EXPOSE map[28015/tcp:{} 29015/tcp:{} 8080/tcp:{}]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6ae69bfad90ff9678fcdfafb9adec3466f669309c5d061ce72594b9a2f4497`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 9.3 MB (9298140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27bf0f2e0505e870fb7cea5f757ed087230a49551de0764b07810926cc651e8a`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 2.7 KB (2670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33ff3940e5d17f32064d546103044fae444af8fd79b7b86a6731f276cb394d1c`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 9.3 MB (9303803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b910af2a7cf798e124de52c3e32d4fc88a8aa2ff3fa375415cbac51e32e62379`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rethinkdb:2` - unknown; unknown

```console
$ docker pull rethinkdb@sha256:2c3c846491cea35632ad51e68efb280e6ae9335ebbe75813906d09abef4d1437
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2794760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:841727031985456b0b91f0a336d0f89cc91ef231dc293a5a3b6926733ca5382b`

```dockerfile
```

-	Layers:
	-	`sha256:47627dc719f4cde74bd69f848cadcc5996db6b2482c686cb75aaac2f09201c9c`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 2.8 MB (2781356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fac890842798d39986445d3030e5436f2435941c11aaebf1b112e9e351138c77`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 13.4 KB (13404 bytes)  
		MIME: application/vnd.in-toto+json

## `rethinkdb:2-bookworm-slim`

```console
$ docker pull rethinkdb@sha256:3a5ec73ae9d629ba5bb9508b53444c9dffe8b6109af7c7b3415d988ba2b66ba4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `rethinkdb:2-bookworm-slim` - linux; amd64

```console
$ docker pull rethinkdb@sha256:5e15372b391302c528ada2d2eb3f0548f2d6a5593de3eb0fc240dea98643d0c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47869514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aae517028c0706398139effedf51c3d670a0a29297699e70870c9ca4c8505396`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:39:23 GMT
RUN apt-get -qqy update     && apt-get install -y --no-install-recommends ca-certificates gnupg2 curl     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:39:24 GMT
RUN GNUPGHOME="$(mktemp -d)" && export GNUPGHOME     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F     && gpg --batch --export 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F > /usr/share/keyrings/rethinkdb.gpg     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb [signed-by=/usr/share/keyrings/rethinkdb.gpg] https://download.rethinkdb.com/repository/debian-bookworm bookworm main" > /etc/apt/sources.list.d/rethinkdb.list # buildkit
# Wed, 21 Oct 2026 00:39:29 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.4.4~0bookworm
# Wed, 21 Oct 2026 00:39:29 GMT
RUN apt-get -qqy update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:39:29 GMT
VOLUME [/data]
# Wed, 21 Oct 2026 00:39:29 GMT
WORKDIR /data
# Wed, 21 Oct 2026 00:39:29 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 21 Oct 2026 00:39:29 GMT
EXPOSE map[28015/tcp:{} 29015/tcp:{} 8080/tcp:{}]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35551d1e81ad7fa6a2b21b5da0bec1a341a2aa61af20fe5eefb9c658c0755723`  
		Last Modified: Wed, 21 Oct 2026 00:39:37 GMT  
		Size: 9.6 MB (9625627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d51d291c9cb9b211088ed36447e090b2e04b900586db91cc6e077af61ef7b684`  
		Last Modified: Wed, 21 Oct 2026 00:39:36 GMT  
		Size: 2.7 KB (2669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e196e4f29c0dbc875fafc9ee9af761c520bbf22d96b07ad1ad33242cc157ebcb`  
		Last Modified: Wed, 21 Oct 2026 00:39:37 GMT  
		Size: 10.0 MB (9993190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd95553a9ef9ab1627cc51da6d896d75885f9c24b15eca3c373363b21825bdce`  
		Last Modified: Wed, 21 Oct 2026 00:39:36 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rethinkdb:2-bookworm-slim` - unknown; unknown

```console
$ docker pull rethinkdb@sha256:c8e6d3c468ff9d8d1588db2f3d521dd78fe23f8f2dddaea6586e24ff20626602
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2802529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e1ada346587a458d34cd1acf411ed9269bca2f03b2901e6a911935888e3d78`

```dockerfile
```

-	Layers:
	-	`sha256:2b1ae623c03f6f209a2403a88c9fc10185229056e91aa5b0018e9e4439eedfd3`  
		Last Modified: Wed, 21 Oct 2026 00:39:37 GMT  
		Size: 2.8 MB (2789126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8633fb8b34849fe0a286e21b2586f5bf9b7612b3f9dde5782ce91a15ffb86aa`  
		Last Modified: Wed, 21 Oct 2026 00:39:36 GMT  
		Size: 13.4 KB (13403 bytes)  
		MIME: application/vnd.in-toto+json

### `rethinkdb:2-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull rethinkdb@sha256:3765ceebb8d85c3bc82652646e9089642bdf9072e387b6f4ccefe01da6ec9c3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.0 MB (46958291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:672fc8401f572c7b3b139073b37cef873bda9948c85c656fbdbabb44841a08aa`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:43:02 GMT
RUN apt-get -qqy update     && apt-get install -y --no-install-recommends ca-certificates gnupg2 curl     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:43:03 GMT
RUN GNUPGHOME="$(mktemp -d)" && export GNUPGHOME     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F     && gpg --batch --export 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F > /usr/share/keyrings/rethinkdb.gpg     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb [signed-by=/usr/share/keyrings/rethinkdb.gpg] https://download.rethinkdb.com/repository/debian-bookworm bookworm main" > /etc/apt/sources.list.d/rethinkdb.list # buildkit
# Wed, 21 Oct 2026 00:43:08 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.4.4~0bookworm
# Wed, 21 Oct 2026 00:43:08 GMT
RUN apt-get -qqy update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:43:08 GMT
VOLUME [/data]
# Wed, 21 Oct 2026 00:43:08 GMT
WORKDIR /data
# Wed, 21 Oct 2026 00:43:08 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 21 Oct 2026 00:43:08 GMT
EXPOSE map[28015/tcp:{} 29015/tcp:{} 8080/tcp:{}]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3a4d158c567768d07ecf5589de8b8f22e41da2088f07ab2b1aaa199d190e3a1`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 9.4 MB (9449686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11291e68ea196e80b22bd343eb76a01c244d21349ab7683d3abf7101a28b4da0`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 2.7 KB (2669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d671cf4cceeb7e7aa0380529502a56689fce80df65acdd5ec9d85888918bdde`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 9.4 MB (9367418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66d483093429c7d528cd84f539cb647b45dbfaa3dbc54bf5c5dfee33c4add665`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rethinkdb:2-bookworm-slim` - unknown; unknown

```console
$ docker pull rethinkdb@sha256:db9a7b2517ba86750299dec95a756dfb2f799f2db6b4d95bc363affeb95bb612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2803047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e0b3e268abb135e69e5933fdcf39736f5d46d2afe36530627a967260d69c679`

```dockerfile
```

-	Layers:
	-	`sha256:165378478f847b45166d6116cadf05286a6f2b76abd527ac650c0e009845a0d6`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 2.8 MB (2789461 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90225a902104acafa398e3994ecd44bd5ae7e4b078946773ad527fab974502e8`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 13.6 KB (13586 bytes)  
		MIME: application/vnd.in-toto+json

### `rethinkdb:2-bookworm-slim` - linux; s390x

```console
$ docker pull rethinkdb@sha256:2df8028f90406364827ccfed59e56268b1da506a56257a75527960a07a74a832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45492974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bebaf239522a8ecc68bcd62c1888a1e201b8d59fb5fda27318bb0c24bd52924b`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 03:06:33 GMT
RUN apt-get -qqy update     && apt-get install -y --no-install-recommends ca-certificates gnupg2 curl     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:06:34 GMT
RUN GNUPGHOME="$(mktemp -d)" && export GNUPGHOME     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F     && gpg --batch --export 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F > /usr/share/keyrings/rethinkdb.gpg     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb [signed-by=/usr/share/keyrings/rethinkdb.gpg] https://download.rethinkdb.com/repository/debian-bookworm bookworm main" > /etc/apt/sources.list.d/rethinkdb.list # buildkit
# Tue, 14 Jul 2026 03:06:39 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.4.4~0bookworm
# Tue, 14 Jul 2026 03:06:39 GMT
RUN apt-get -qqy update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:06:39 GMT
VOLUME [/data]
# Tue, 14 Jul 2026 03:06:39 GMT
WORKDIR /data
# Tue, 14 Jul 2026 03:06:39 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 14 Jul 2026 03:06:39 GMT
EXPOSE map[28015/tcp:{} 29015/tcp:{} 8080/tcp:{}]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6ae69bfad90ff9678fcdfafb9adec3466f669309c5d061ce72594b9a2f4497`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 9.3 MB (9298140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27bf0f2e0505e870fb7cea5f757ed087230a49551de0764b07810926cc651e8a`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 2.7 KB (2670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33ff3940e5d17f32064d546103044fae444af8fd79b7b86a6731f276cb394d1c`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 9.3 MB (9303803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b910af2a7cf798e124de52c3e32d4fc88a8aa2ff3fa375415cbac51e32e62379`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rethinkdb:2-bookworm-slim` - unknown; unknown

```console
$ docker pull rethinkdb@sha256:2c3c846491cea35632ad51e68efb280e6ae9335ebbe75813906d09abef4d1437
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2794760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:841727031985456b0b91f0a336d0f89cc91ef231dc293a5a3b6926733ca5382b`

```dockerfile
```

-	Layers:
	-	`sha256:47627dc719f4cde74bd69f848cadcc5996db6b2482c686cb75aaac2f09201c9c`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 2.8 MB (2781356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fac890842798d39986445d3030e5436f2435941c11aaebf1b112e9e351138c77`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 13.4 KB (13404 bytes)  
		MIME: application/vnd.in-toto+json

## `rethinkdb:2.4`

```console
$ docker pull rethinkdb@sha256:3a5ec73ae9d629ba5bb9508b53444c9dffe8b6109af7c7b3415d988ba2b66ba4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `rethinkdb:2.4` - linux; amd64

```console
$ docker pull rethinkdb@sha256:5e15372b391302c528ada2d2eb3f0548f2d6a5593de3eb0fc240dea98643d0c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47869514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aae517028c0706398139effedf51c3d670a0a29297699e70870c9ca4c8505396`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:39:23 GMT
RUN apt-get -qqy update     && apt-get install -y --no-install-recommends ca-certificates gnupg2 curl     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:39:24 GMT
RUN GNUPGHOME="$(mktemp -d)" && export GNUPGHOME     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F     && gpg --batch --export 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F > /usr/share/keyrings/rethinkdb.gpg     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb [signed-by=/usr/share/keyrings/rethinkdb.gpg] https://download.rethinkdb.com/repository/debian-bookworm bookworm main" > /etc/apt/sources.list.d/rethinkdb.list # buildkit
# Wed, 21 Oct 2026 00:39:29 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.4.4~0bookworm
# Wed, 21 Oct 2026 00:39:29 GMT
RUN apt-get -qqy update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:39:29 GMT
VOLUME [/data]
# Wed, 21 Oct 2026 00:39:29 GMT
WORKDIR /data
# Wed, 21 Oct 2026 00:39:29 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 21 Oct 2026 00:39:29 GMT
EXPOSE map[28015/tcp:{} 29015/tcp:{} 8080/tcp:{}]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35551d1e81ad7fa6a2b21b5da0bec1a341a2aa61af20fe5eefb9c658c0755723`  
		Last Modified: Wed, 21 Oct 2026 00:39:37 GMT  
		Size: 9.6 MB (9625627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d51d291c9cb9b211088ed36447e090b2e04b900586db91cc6e077af61ef7b684`  
		Last Modified: Wed, 21 Oct 2026 00:39:36 GMT  
		Size: 2.7 KB (2669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e196e4f29c0dbc875fafc9ee9af761c520bbf22d96b07ad1ad33242cc157ebcb`  
		Last Modified: Wed, 21 Oct 2026 00:39:37 GMT  
		Size: 10.0 MB (9993190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd95553a9ef9ab1627cc51da6d896d75885f9c24b15eca3c373363b21825bdce`  
		Last Modified: Wed, 21 Oct 2026 00:39:36 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rethinkdb:2.4` - unknown; unknown

```console
$ docker pull rethinkdb@sha256:c8e6d3c468ff9d8d1588db2f3d521dd78fe23f8f2dddaea6586e24ff20626602
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2802529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e1ada346587a458d34cd1acf411ed9269bca2f03b2901e6a911935888e3d78`

```dockerfile
```

-	Layers:
	-	`sha256:2b1ae623c03f6f209a2403a88c9fc10185229056e91aa5b0018e9e4439eedfd3`  
		Last Modified: Wed, 21 Oct 2026 00:39:37 GMT  
		Size: 2.8 MB (2789126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8633fb8b34849fe0a286e21b2586f5bf9b7612b3f9dde5782ce91a15ffb86aa`  
		Last Modified: Wed, 21 Oct 2026 00:39:36 GMT  
		Size: 13.4 KB (13403 bytes)  
		MIME: application/vnd.in-toto+json

### `rethinkdb:2.4` - linux; arm64 variant v8

```console
$ docker pull rethinkdb@sha256:3765ceebb8d85c3bc82652646e9089642bdf9072e387b6f4ccefe01da6ec9c3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.0 MB (46958291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:672fc8401f572c7b3b139073b37cef873bda9948c85c656fbdbabb44841a08aa`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:43:02 GMT
RUN apt-get -qqy update     && apt-get install -y --no-install-recommends ca-certificates gnupg2 curl     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:43:03 GMT
RUN GNUPGHOME="$(mktemp -d)" && export GNUPGHOME     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F     && gpg --batch --export 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F > /usr/share/keyrings/rethinkdb.gpg     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb [signed-by=/usr/share/keyrings/rethinkdb.gpg] https://download.rethinkdb.com/repository/debian-bookworm bookworm main" > /etc/apt/sources.list.d/rethinkdb.list # buildkit
# Wed, 21 Oct 2026 00:43:08 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.4.4~0bookworm
# Wed, 21 Oct 2026 00:43:08 GMT
RUN apt-get -qqy update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:43:08 GMT
VOLUME [/data]
# Wed, 21 Oct 2026 00:43:08 GMT
WORKDIR /data
# Wed, 21 Oct 2026 00:43:08 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 21 Oct 2026 00:43:08 GMT
EXPOSE map[28015/tcp:{} 29015/tcp:{} 8080/tcp:{}]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3a4d158c567768d07ecf5589de8b8f22e41da2088f07ab2b1aaa199d190e3a1`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 9.4 MB (9449686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11291e68ea196e80b22bd343eb76a01c244d21349ab7683d3abf7101a28b4da0`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 2.7 KB (2669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d671cf4cceeb7e7aa0380529502a56689fce80df65acdd5ec9d85888918bdde`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 9.4 MB (9367418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66d483093429c7d528cd84f539cb647b45dbfaa3dbc54bf5c5dfee33c4add665`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rethinkdb:2.4` - unknown; unknown

```console
$ docker pull rethinkdb@sha256:db9a7b2517ba86750299dec95a756dfb2f799f2db6b4d95bc363affeb95bb612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2803047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e0b3e268abb135e69e5933fdcf39736f5d46d2afe36530627a967260d69c679`

```dockerfile
```

-	Layers:
	-	`sha256:165378478f847b45166d6116cadf05286a6f2b76abd527ac650c0e009845a0d6`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 2.8 MB (2789461 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90225a902104acafa398e3994ecd44bd5ae7e4b078946773ad527fab974502e8`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 13.6 KB (13586 bytes)  
		MIME: application/vnd.in-toto+json

### `rethinkdb:2.4` - linux; s390x

```console
$ docker pull rethinkdb@sha256:2df8028f90406364827ccfed59e56268b1da506a56257a75527960a07a74a832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45492974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bebaf239522a8ecc68bcd62c1888a1e201b8d59fb5fda27318bb0c24bd52924b`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 03:06:33 GMT
RUN apt-get -qqy update     && apt-get install -y --no-install-recommends ca-certificates gnupg2 curl     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:06:34 GMT
RUN GNUPGHOME="$(mktemp -d)" && export GNUPGHOME     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F     && gpg --batch --export 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F > /usr/share/keyrings/rethinkdb.gpg     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb [signed-by=/usr/share/keyrings/rethinkdb.gpg] https://download.rethinkdb.com/repository/debian-bookworm bookworm main" > /etc/apt/sources.list.d/rethinkdb.list # buildkit
# Tue, 14 Jul 2026 03:06:39 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.4.4~0bookworm
# Tue, 14 Jul 2026 03:06:39 GMT
RUN apt-get -qqy update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:06:39 GMT
VOLUME [/data]
# Tue, 14 Jul 2026 03:06:39 GMT
WORKDIR /data
# Tue, 14 Jul 2026 03:06:39 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 14 Jul 2026 03:06:39 GMT
EXPOSE map[28015/tcp:{} 29015/tcp:{} 8080/tcp:{}]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6ae69bfad90ff9678fcdfafb9adec3466f669309c5d061ce72594b9a2f4497`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 9.3 MB (9298140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27bf0f2e0505e870fb7cea5f757ed087230a49551de0764b07810926cc651e8a`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 2.7 KB (2670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33ff3940e5d17f32064d546103044fae444af8fd79b7b86a6731f276cb394d1c`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 9.3 MB (9303803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b910af2a7cf798e124de52c3e32d4fc88a8aa2ff3fa375415cbac51e32e62379`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rethinkdb:2.4` - unknown; unknown

```console
$ docker pull rethinkdb@sha256:2c3c846491cea35632ad51e68efb280e6ae9335ebbe75813906d09abef4d1437
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2794760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:841727031985456b0b91f0a336d0f89cc91ef231dc293a5a3b6926733ca5382b`

```dockerfile
```

-	Layers:
	-	`sha256:47627dc719f4cde74bd69f848cadcc5996db6b2482c686cb75aaac2f09201c9c`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 2.8 MB (2781356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fac890842798d39986445d3030e5436f2435941c11aaebf1b112e9e351138c77`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 13.4 KB (13404 bytes)  
		MIME: application/vnd.in-toto+json

## `rethinkdb:2.4-bookworm-slim`

```console
$ docker pull rethinkdb@sha256:3a5ec73ae9d629ba5bb9508b53444c9dffe8b6109af7c7b3415d988ba2b66ba4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `rethinkdb:2.4-bookworm-slim` - linux; amd64

```console
$ docker pull rethinkdb@sha256:5e15372b391302c528ada2d2eb3f0548f2d6a5593de3eb0fc240dea98643d0c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47869514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aae517028c0706398139effedf51c3d670a0a29297699e70870c9ca4c8505396`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:39:23 GMT
RUN apt-get -qqy update     && apt-get install -y --no-install-recommends ca-certificates gnupg2 curl     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:39:24 GMT
RUN GNUPGHOME="$(mktemp -d)" && export GNUPGHOME     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F     && gpg --batch --export 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F > /usr/share/keyrings/rethinkdb.gpg     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb [signed-by=/usr/share/keyrings/rethinkdb.gpg] https://download.rethinkdb.com/repository/debian-bookworm bookworm main" > /etc/apt/sources.list.d/rethinkdb.list # buildkit
# Wed, 21 Oct 2026 00:39:29 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.4.4~0bookworm
# Wed, 21 Oct 2026 00:39:29 GMT
RUN apt-get -qqy update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:39:29 GMT
VOLUME [/data]
# Wed, 21 Oct 2026 00:39:29 GMT
WORKDIR /data
# Wed, 21 Oct 2026 00:39:29 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 21 Oct 2026 00:39:29 GMT
EXPOSE map[28015/tcp:{} 29015/tcp:{} 8080/tcp:{}]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35551d1e81ad7fa6a2b21b5da0bec1a341a2aa61af20fe5eefb9c658c0755723`  
		Last Modified: Wed, 21 Oct 2026 00:39:37 GMT  
		Size: 9.6 MB (9625627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d51d291c9cb9b211088ed36447e090b2e04b900586db91cc6e077af61ef7b684`  
		Last Modified: Wed, 21 Oct 2026 00:39:36 GMT  
		Size: 2.7 KB (2669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e196e4f29c0dbc875fafc9ee9af761c520bbf22d96b07ad1ad33242cc157ebcb`  
		Last Modified: Wed, 21 Oct 2026 00:39:37 GMT  
		Size: 10.0 MB (9993190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd95553a9ef9ab1627cc51da6d896d75885f9c24b15eca3c373363b21825bdce`  
		Last Modified: Wed, 21 Oct 2026 00:39:36 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rethinkdb:2.4-bookworm-slim` - unknown; unknown

```console
$ docker pull rethinkdb@sha256:c8e6d3c468ff9d8d1588db2f3d521dd78fe23f8f2dddaea6586e24ff20626602
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2802529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e1ada346587a458d34cd1acf411ed9269bca2f03b2901e6a911935888e3d78`

```dockerfile
```

-	Layers:
	-	`sha256:2b1ae623c03f6f209a2403a88c9fc10185229056e91aa5b0018e9e4439eedfd3`  
		Last Modified: Wed, 21 Oct 2026 00:39:37 GMT  
		Size: 2.8 MB (2789126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8633fb8b34849fe0a286e21b2586f5bf9b7612b3f9dde5782ce91a15ffb86aa`  
		Last Modified: Wed, 21 Oct 2026 00:39:36 GMT  
		Size: 13.4 KB (13403 bytes)  
		MIME: application/vnd.in-toto+json

### `rethinkdb:2.4-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull rethinkdb@sha256:3765ceebb8d85c3bc82652646e9089642bdf9072e387b6f4ccefe01da6ec9c3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.0 MB (46958291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:672fc8401f572c7b3b139073b37cef873bda9948c85c656fbdbabb44841a08aa`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:43:02 GMT
RUN apt-get -qqy update     && apt-get install -y --no-install-recommends ca-certificates gnupg2 curl     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:43:03 GMT
RUN GNUPGHOME="$(mktemp -d)" && export GNUPGHOME     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F     && gpg --batch --export 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F > /usr/share/keyrings/rethinkdb.gpg     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb [signed-by=/usr/share/keyrings/rethinkdb.gpg] https://download.rethinkdb.com/repository/debian-bookworm bookworm main" > /etc/apt/sources.list.d/rethinkdb.list # buildkit
# Wed, 21 Oct 2026 00:43:08 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.4.4~0bookworm
# Wed, 21 Oct 2026 00:43:08 GMT
RUN apt-get -qqy update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:43:08 GMT
VOLUME [/data]
# Wed, 21 Oct 2026 00:43:08 GMT
WORKDIR /data
# Wed, 21 Oct 2026 00:43:08 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 21 Oct 2026 00:43:08 GMT
EXPOSE map[28015/tcp:{} 29015/tcp:{} 8080/tcp:{}]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3a4d158c567768d07ecf5589de8b8f22e41da2088f07ab2b1aaa199d190e3a1`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 9.4 MB (9449686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11291e68ea196e80b22bd343eb76a01c244d21349ab7683d3abf7101a28b4da0`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 2.7 KB (2669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d671cf4cceeb7e7aa0380529502a56689fce80df65acdd5ec9d85888918bdde`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 9.4 MB (9367418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66d483093429c7d528cd84f539cb647b45dbfaa3dbc54bf5c5dfee33c4add665`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rethinkdb:2.4-bookworm-slim` - unknown; unknown

```console
$ docker pull rethinkdb@sha256:db9a7b2517ba86750299dec95a756dfb2f799f2db6b4d95bc363affeb95bb612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2803047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e0b3e268abb135e69e5933fdcf39736f5d46d2afe36530627a967260d69c679`

```dockerfile
```

-	Layers:
	-	`sha256:165378478f847b45166d6116cadf05286a6f2b76abd527ac650c0e009845a0d6`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 2.8 MB (2789461 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90225a902104acafa398e3994ecd44bd5ae7e4b078946773ad527fab974502e8`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 13.6 KB (13586 bytes)  
		MIME: application/vnd.in-toto+json

### `rethinkdb:2.4-bookworm-slim` - linux; s390x

```console
$ docker pull rethinkdb@sha256:2df8028f90406364827ccfed59e56268b1da506a56257a75527960a07a74a832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45492974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bebaf239522a8ecc68bcd62c1888a1e201b8d59fb5fda27318bb0c24bd52924b`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 03:06:33 GMT
RUN apt-get -qqy update     && apt-get install -y --no-install-recommends ca-certificates gnupg2 curl     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:06:34 GMT
RUN GNUPGHOME="$(mktemp -d)" && export GNUPGHOME     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F     && gpg --batch --export 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F > /usr/share/keyrings/rethinkdb.gpg     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb [signed-by=/usr/share/keyrings/rethinkdb.gpg] https://download.rethinkdb.com/repository/debian-bookworm bookworm main" > /etc/apt/sources.list.d/rethinkdb.list # buildkit
# Tue, 14 Jul 2026 03:06:39 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.4.4~0bookworm
# Tue, 14 Jul 2026 03:06:39 GMT
RUN apt-get -qqy update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:06:39 GMT
VOLUME [/data]
# Tue, 14 Jul 2026 03:06:39 GMT
WORKDIR /data
# Tue, 14 Jul 2026 03:06:39 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 14 Jul 2026 03:06:39 GMT
EXPOSE map[28015/tcp:{} 29015/tcp:{} 8080/tcp:{}]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6ae69bfad90ff9678fcdfafb9adec3466f669309c5d061ce72594b9a2f4497`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 9.3 MB (9298140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27bf0f2e0505e870fb7cea5f757ed087230a49551de0764b07810926cc651e8a`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 2.7 KB (2670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33ff3940e5d17f32064d546103044fae444af8fd79b7b86a6731f276cb394d1c`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 9.3 MB (9303803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b910af2a7cf798e124de52c3e32d4fc88a8aa2ff3fa375415cbac51e32e62379`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rethinkdb:2.4-bookworm-slim` - unknown; unknown

```console
$ docker pull rethinkdb@sha256:2c3c846491cea35632ad51e68efb280e6ae9335ebbe75813906d09abef4d1437
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2794760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:841727031985456b0b91f0a336d0f89cc91ef231dc293a5a3b6926733ca5382b`

```dockerfile
```

-	Layers:
	-	`sha256:47627dc719f4cde74bd69f848cadcc5996db6b2482c686cb75aaac2f09201c9c`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 2.8 MB (2781356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fac890842798d39986445d3030e5436f2435941c11aaebf1b112e9e351138c77`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 13.4 KB (13404 bytes)  
		MIME: application/vnd.in-toto+json

## `rethinkdb:2.4.3`

```console
$ docker pull rethinkdb@sha256:3a5ec73ae9d629ba5bb9508b53444c9dffe8b6109af7c7b3415d988ba2b66ba4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `rethinkdb:2.4.3` - linux; amd64

```console
$ docker pull rethinkdb@sha256:5e15372b391302c528ada2d2eb3f0548f2d6a5593de3eb0fc240dea98643d0c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47869514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aae517028c0706398139effedf51c3d670a0a29297699e70870c9ca4c8505396`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:39:23 GMT
RUN apt-get -qqy update     && apt-get install -y --no-install-recommends ca-certificates gnupg2 curl     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:39:24 GMT
RUN GNUPGHOME="$(mktemp -d)" && export GNUPGHOME     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F     && gpg --batch --export 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F > /usr/share/keyrings/rethinkdb.gpg     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb [signed-by=/usr/share/keyrings/rethinkdb.gpg] https://download.rethinkdb.com/repository/debian-bookworm bookworm main" > /etc/apt/sources.list.d/rethinkdb.list # buildkit
# Wed, 21 Oct 2026 00:39:29 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.4.4~0bookworm
# Wed, 21 Oct 2026 00:39:29 GMT
RUN apt-get -qqy update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:39:29 GMT
VOLUME [/data]
# Wed, 21 Oct 2026 00:39:29 GMT
WORKDIR /data
# Wed, 21 Oct 2026 00:39:29 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 21 Oct 2026 00:39:29 GMT
EXPOSE map[28015/tcp:{} 29015/tcp:{} 8080/tcp:{}]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35551d1e81ad7fa6a2b21b5da0bec1a341a2aa61af20fe5eefb9c658c0755723`  
		Last Modified: Wed, 21 Oct 2026 00:39:37 GMT  
		Size: 9.6 MB (9625627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d51d291c9cb9b211088ed36447e090b2e04b900586db91cc6e077af61ef7b684`  
		Last Modified: Wed, 21 Oct 2026 00:39:36 GMT  
		Size: 2.7 KB (2669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e196e4f29c0dbc875fafc9ee9af761c520bbf22d96b07ad1ad33242cc157ebcb`  
		Last Modified: Wed, 21 Oct 2026 00:39:37 GMT  
		Size: 10.0 MB (9993190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd95553a9ef9ab1627cc51da6d896d75885f9c24b15eca3c373363b21825bdce`  
		Last Modified: Wed, 21 Oct 2026 00:39:36 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rethinkdb:2.4.3` - unknown; unknown

```console
$ docker pull rethinkdb@sha256:c8e6d3c468ff9d8d1588db2f3d521dd78fe23f8f2dddaea6586e24ff20626602
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2802529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e1ada346587a458d34cd1acf411ed9269bca2f03b2901e6a911935888e3d78`

```dockerfile
```

-	Layers:
	-	`sha256:2b1ae623c03f6f209a2403a88c9fc10185229056e91aa5b0018e9e4439eedfd3`  
		Last Modified: Wed, 21 Oct 2026 00:39:37 GMT  
		Size: 2.8 MB (2789126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8633fb8b34849fe0a286e21b2586f5bf9b7612b3f9dde5782ce91a15ffb86aa`  
		Last Modified: Wed, 21 Oct 2026 00:39:36 GMT  
		Size: 13.4 KB (13403 bytes)  
		MIME: application/vnd.in-toto+json

### `rethinkdb:2.4.3` - linux; arm64 variant v8

```console
$ docker pull rethinkdb@sha256:3765ceebb8d85c3bc82652646e9089642bdf9072e387b6f4ccefe01da6ec9c3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.0 MB (46958291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:672fc8401f572c7b3b139073b37cef873bda9948c85c656fbdbabb44841a08aa`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:43:02 GMT
RUN apt-get -qqy update     && apt-get install -y --no-install-recommends ca-certificates gnupg2 curl     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:43:03 GMT
RUN GNUPGHOME="$(mktemp -d)" && export GNUPGHOME     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F     && gpg --batch --export 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F > /usr/share/keyrings/rethinkdb.gpg     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb [signed-by=/usr/share/keyrings/rethinkdb.gpg] https://download.rethinkdb.com/repository/debian-bookworm bookworm main" > /etc/apt/sources.list.d/rethinkdb.list # buildkit
# Wed, 21 Oct 2026 00:43:08 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.4.4~0bookworm
# Wed, 21 Oct 2026 00:43:08 GMT
RUN apt-get -qqy update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:43:08 GMT
VOLUME [/data]
# Wed, 21 Oct 2026 00:43:08 GMT
WORKDIR /data
# Wed, 21 Oct 2026 00:43:08 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 21 Oct 2026 00:43:08 GMT
EXPOSE map[28015/tcp:{} 29015/tcp:{} 8080/tcp:{}]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3a4d158c567768d07ecf5589de8b8f22e41da2088f07ab2b1aaa199d190e3a1`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 9.4 MB (9449686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11291e68ea196e80b22bd343eb76a01c244d21349ab7683d3abf7101a28b4da0`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 2.7 KB (2669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d671cf4cceeb7e7aa0380529502a56689fce80df65acdd5ec9d85888918bdde`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 9.4 MB (9367418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66d483093429c7d528cd84f539cb647b45dbfaa3dbc54bf5c5dfee33c4add665`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rethinkdb:2.4.3` - unknown; unknown

```console
$ docker pull rethinkdb@sha256:db9a7b2517ba86750299dec95a756dfb2f799f2db6b4d95bc363affeb95bb612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2803047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e0b3e268abb135e69e5933fdcf39736f5d46d2afe36530627a967260d69c679`

```dockerfile
```

-	Layers:
	-	`sha256:165378478f847b45166d6116cadf05286a6f2b76abd527ac650c0e009845a0d6`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 2.8 MB (2789461 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90225a902104acafa398e3994ecd44bd5ae7e4b078946773ad527fab974502e8`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 13.6 KB (13586 bytes)  
		MIME: application/vnd.in-toto+json

### `rethinkdb:2.4.3` - linux; s390x

```console
$ docker pull rethinkdb@sha256:2df8028f90406364827ccfed59e56268b1da506a56257a75527960a07a74a832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45492974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bebaf239522a8ecc68bcd62c1888a1e201b8d59fb5fda27318bb0c24bd52924b`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 03:06:33 GMT
RUN apt-get -qqy update     && apt-get install -y --no-install-recommends ca-certificates gnupg2 curl     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:06:34 GMT
RUN GNUPGHOME="$(mktemp -d)" && export GNUPGHOME     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F     && gpg --batch --export 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F > /usr/share/keyrings/rethinkdb.gpg     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb [signed-by=/usr/share/keyrings/rethinkdb.gpg] https://download.rethinkdb.com/repository/debian-bookworm bookworm main" > /etc/apt/sources.list.d/rethinkdb.list # buildkit
# Tue, 14 Jul 2026 03:06:39 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.4.4~0bookworm
# Tue, 14 Jul 2026 03:06:39 GMT
RUN apt-get -qqy update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:06:39 GMT
VOLUME [/data]
# Tue, 14 Jul 2026 03:06:39 GMT
WORKDIR /data
# Tue, 14 Jul 2026 03:06:39 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 14 Jul 2026 03:06:39 GMT
EXPOSE map[28015/tcp:{} 29015/tcp:{} 8080/tcp:{}]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6ae69bfad90ff9678fcdfafb9adec3466f669309c5d061ce72594b9a2f4497`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 9.3 MB (9298140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27bf0f2e0505e870fb7cea5f757ed087230a49551de0764b07810926cc651e8a`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 2.7 KB (2670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33ff3940e5d17f32064d546103044fae444af8fd79b7b86a6731f276cb394d1c`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 9.3 MB (9303803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b910af2a7cf798e124de52c3e32d4fc88a8aa2ff3fa375415cbac51e32e62379`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rethinkdb:2.4.3` - unknown; unknown

```console
$ docker pull rethinkdb@sha256:2c3c846491cea35632ad51e68efb280e6ae9335ebbe75813906d09abef4d1437
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2794760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:841727031985456b0b91f0a336d0f89cc91ef231dc293a5a3b6926733ca5382b`

```dockerfile
```

-	Layers:
	-	`sha256:47627dc719f4cde74bd69f848cadcc5996db6b2482c686cb75aaac2f09201c9c`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 2.8 MB (2781356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fac890842798d39986445d3030e5436f2435941c11aaebf1b112e9e351138c77`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 13.4 KB (13404 bytes)  
		MIME: application/vnd.in-toto+json

## `rethinkdb:2.4.4-bookworm-slim`

```console
$ docker pull rethinkdb@sha256:3a5ec73ae9d629ba5bb9508b53444c9dffe8b6109af7c7b3415d988ba2b66ba4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `rethinkdb:2.4.4-bookworm-slim` - linux; amd64

```console
$ docker pull rethinkdb@sha256:5e15372b391302c528ada2d2eb3f0548f2d6a5593de3eb0fc240dea98643d0c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47869514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aae517028c0706398139effedf51c3d670a0a29297699e70870c9ca4c8505396`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:39:23 GMT
RUN apt-get -qqy update     && apt-get install -y --no-install-recommends ca-certificates gnupg2 curl     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:39:24 GMT
RUN GNUPGHOME="$(mktemp -d)" && export GNUPGHOME     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F     && gpg --batch --export 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F > /usr/share/keyrings/rethinkdb.gpg     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb [signed-by=/usr/share/keyrings/rethinkdb.gpg] https://download.rethinkdb.com/repository/debian-bookworm bookworm main" > /etc/apt/sources.list.d/rethinkdb.list # buildkit
# Wed, 21 Oct 2026 00:39:29 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.4.4~0bookworm
# Wed, 21 Oct 2026 00:39:29 GMT
RUN apt-get -qqy update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:39:29 GMT
VOLUME [/data]
# Wed, 21 Oct 2026 00:39:29 GMT
WORKDIR /data
# Wed, 21 Oct 2026 00:39:29 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 21 Oct 2026 00:39:29 GMT
EXPOSE map[28015/tcp:{} 29015/tcp:{} 8080/tcp:{}]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35551d1e81ad7fa6a2b21b5da0bec1a341a2aa61af20fe5eefb9c658c0755723`  
		Last Modified: Wed, 21 Oct 2026 00:39:37 GMT  
		Size: 9.6 MB (9625627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d51d291c9cb9b211088ed36447e090b2e04b900586db91cc6e077af61ef7b684`  
		Last Modified: Wed, 21 Oct 2026 00:39:36 GMT  
		Size: 2.7 KB (2669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e196e4f29c0dbc875fafc9ee9af761c520bbf22d96b07ad1ad33242cc157ebcb`  
		Last Modified: Wed, 21 Oct 2026 00:39:37 GMT  
		Size: 10.0 MB (9993190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd95553a9ef9ab1627cc51da6d896d75885f9c24b15eca3c373363b21825bdce`  
		Last Modified: Wed, 21 Oct 2026 00:39:36 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rethinkdb:2.4.4-bookworm-slim` - unknown; unknown

```console
$ docker pull rethinkdb@sha256:c8e6d3c468ff9d8d1588db2f3d521dd78fe23f8f2dddaea6586e24ff20626602
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2802529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e1ada346587a458d34cd1acf411ed9269bca2f03b2901e6a911935888e3d78`

```dockerfile
```

-	Layers:
	-	`sha256:2b1ae623c03f6f209a2403a88c9fc10185229056e91aa5b0018e9e4439eedfd3`  
		Last Modified: Wed, 21 Oct 2026 00:39:37 GMT  
		Size: 2.8 MB (2789126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8633fb8b34849fe0a286e21b2586f5bf9b7612b3f9dde5782ce91a15ffb86aa`  
		Last Modified: Wed, 21 Oct 2026 00:39:36 GMT  
		Size: 13.4 KB (13403 bytes)  
		MIME: application/vnd.in-toto+json

### `rethinkdb:2.4.4-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull rethinkdb@sha256:3765ceebb8d85c3bc82652646e9089642bdf9072e387b6f4ccefe01da6ec9c3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.0 MB (46958291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:672fc8401f572c7b3b139073b37cef873bda9948c85c656fbdbabb44841a08aa`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:43:02 GMT
RUN apt-get -qqy update     && apt-get install -y --no-install-recommends ca-certificates gnupg2 curl     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:43:03 GMT
RUN GNUPGHOME="$(mktemp -d)" && export GNUPGHOME     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F     && gpg --batch --export 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F > /usr/share/keyrings/rethinkdb.gpg     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb [signed-by=/usr/share/keyrings/rethinkdb.gpg] https://download.rethinkdb.com/repository/debian-bookworm bookworm main" > /etc/apt/sources.list.d/rethinkdb.list # buildkit
# Wed, 21 Oct 2026 00:43:08 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.4.4~0bookworm
# Wed, 21 Oct 2026 00:43:08 GMT
RUN apt-get -qqy update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:43:08 GMT
VOLUME [/data]
# Wed, 21 Oct 2026 00:43:08 GMT
WORKDIR /data
# Wed, 21 Oct 2026 00:43:08 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 21 Oct 2026 00:43:08 GMT
EXPOSE map[28015/tcp:{} 29015/tcp:{} 8080/tcp:{}]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3a4d158c567768d07ecf5589de8b8f22e41da2088f07ab2b1aaa199d190e3a1`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 9.4 MB (9449686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11291e68ea196e80b22bd343eb76a01c244d21349ab7683d3abf7101a28b4da0`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 2.7 KB (2669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d671cf4cceeb7e7aa0380529502a56689fce80df65acdd5ec9d85888918bdde`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 9.4 MB (9367418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66d483093429c7d528cd84f539cb647b45dbfaa3dbc54bf5c5dfee33c4add665`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rethinkdb:2.4.4-bookworm-slim` - unknown; unknown

```console
$ docker pull rethinkdb@sha256:db9a7b2517ba86750299dec95a756dfb2f799f2db6b4d95bc363affeb95bb612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2803047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e0b3e268abb135e69e5933fdcf39736f5d46d2afe36530627a967260d69c679`

```dockerfile
```

-	Layers:
	-	`sha256:165378478f847b45166d6116cadf05286a6f2b76abd527ac650c0e009845a0d6`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 2.8 MB (2789461 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90225a902104acafa398e3994ecd44bd5ae7e4b078946773ad527fab974502e8`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 13.6 KB (13586 bytes)  
		MIME: application/vnd.in-toto+json

### `rethinkdb:2.4.4-bookworm-slim` - linux; s390x

```console
$ docker pull rethinkdb@sha256:2df8028f90406364827ccfed59e56268b1da506a56257a75527960a07a74a832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45492974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bebaf239522a8ecc68bcd62c1888a1e201b8d59fb5fda27318bb0c24bd52924b`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 03:06:33 GMT
RUN apt-get -qqy update     && apt-get install -y --no-install-recommends ca-certificates gnupg2 curl     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:06:34 GMT
RUN GNUPGHOME="$(mktemp -d)" && export GNUPGHOME     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F     && gpg --batch --export 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F > /usr/share/keyrings/rethinkdb.gpg     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb [signed-by=/usr/share/keyrings/rethinkdb.gpg] https://download.rethinkdb.com/repository/debian-bookworm bookworm main" > /etc/apt/sources.list.d/rethinkdb.list # buildkit
# Tue, 14 Jul 2026 03:06:39 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.4.4~0bookworm
# Tue, 14 Jul 2026 03:06:39 GMT
RUN apt-get -qqy update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:06:39 GMT
VOLUME [/data]
# Tue, 14 Jul 2026 03:06:39 GMT
WORKDIR /data
# Tue, 14 Jul 2026 03:06:39 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 14 Jul 2026 03:06:39 GMT
EXPOSE map[28015/tcp:{} 29015/tcp:{} 8080/tcp:{}]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6ae69bfad90ff9678fcdfafb9adec3466f669309c5d061ce72594b9a2f4497`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 9.3 MB (9298140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27bf0f2e0505e870fb7cea5f757ed087230a49551de0764b07810926cc651e8a`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 2.7 KB (2670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33ff3940e5d17f32064d546103044fae444af8fd79b7b86a6731f276cb394d1c`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 9.3 MB (9303803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b910af2a7cf798e124de52c3e32d4fc88a8aa2ff3fa375415cbac51e32e62379`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rethinkdb:2.4.4-bookworm-slim` - unknown; unknown

```console
$ docker pull rethinkdb@sha256:2c3c846491cea35632ad51e68efb280e6ae9335ebbe75813906d09abef4d1437
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2794760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:841727031985456b0b91f0a336d0f89cc91ef231dc293a5a3b6926733ca5382b`

```dockerfile
```

-	Layers:
	-	`sha256:47627dc719f4cde74bd69f848cadcc5996db6b2482c686cb75aaac2f09201c9c`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 2.8 MB (2781356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fac890842798d39986445d3030e5436f2435941c11aaebf1b112e9e351138c77`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 13.4 KB (13404 bytes)  
		MIME: application/vnd.in-toto+json

## `rethinkdb:bookworm-slim`

```console
$ docker pull rethinkdb@sha256:3a5ec73ae9d629ba5bb9508b53444c9dffe8b6109af7c7b3415d988ba2b66ba4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `rethinkdb:bookworm-slim` - linux; amd64

```console
$ docker pull rethinkdb@sha256:5e15372b391302c528ada2d2eb3f0548f2d6a5593de3eb0fc240dea98643d0c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47869514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aae517028c0706398139effedf51c3d670a0a29297699e70870c9ca4c8505396`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:39:23 GMT
RUN apt-get -qqy update     && apt-get install -y --no-install-recommends ca-certificates gnupg2 curl     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:39:24 GMT
RUN GNUPGHOME="$(mktemp -d)" && export GNUPGHOME     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F     && gpg --batch --export 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F > /usr/share/keyrings/rethinkdb.gpg     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb [signed-by=/usr/share/keyrings/rethinkdb.gpg] https://download.rethinkdb.com/repository/debian-bookworm bookworm main" > /etc/apt/sources.list.d/rethinkdb.list # buildkit
# Wed, 21 Oct 2026 00:39:29 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.4.4~0bookworm
# Wed, 21 Oct 2026 00:39:29 GMT
RUN apt-get -qqy update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:39:29 GMT
VOLUME [/data]
# Wed, 21 Oct 2026 00:39:29 GMT
WORKDIR /data
# Wed, 21 Oct 2026 00:39:29 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 21 Oct 2026 00:39:29 GMT
EXPOSE map[28015/tcp:{} 29015/tcp:{} 8080/tcp:{}]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35551d1e81ad7fa6a2b21b5da0bec1a341a2aa61af20fe5eefb9c658c0755723`  
		Last Modified: Wed, 21 Oct 2026 00:39:37 GMT  
		Size: 9.6 MB (9625627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d51d291c9cb9b211088ed36447e090b2e04b900586db91cc6e077af61ef7b684`  
		Last Modified: Wed, 21 Oct 2026 00:39:36 GMT  
		Size: 2.7 KB (2669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e196e4f29c0dbc875fafc9ee9af761c520bbf22d96b07ad1ad33242cc157ebcb`  
		Last Modified: Wed, 21 Oct 2026 00:39:37 GMT  
		Size: 10.0 MB (9993190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd95553a9ef9ab1627cc51da6d896d75885f9c24b15eca3c373363b21825bdce`  
		Last Modified: Wed, 21 Oct 2026 00:39:36 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rethinkdb:bookworm-slim` - unknown; unknown

```console
$ docker pull rethinkdb@sha256:c8e6d3c468ff9d8d1588db2f3d521dd78fe23f8f2dddaea6586e24ff20626602
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2802529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e1ada346587a458d34cd1acf411ed9269bca2f03b2901e6a911935888e3d78`

```dockerfile
```

-	Layers:
	-	`sha256:2b1ae623c03f6f209a2403a88c9fc10185229056e91aa5b0018e9e4439eedfd3`  
		Last Modified: Wed, 21 Oct 2026 00:39:37 GMT  
		Size: 2.8 MB (2789126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8633fb8b34849fe0a286e21b2586f5bf9b7612b3f9dde5782ce91a15ffb86aa`  
		Last Modified: Wed, 21 Oct 2026 00:39:36 GMT  
		Size: 13.4 KB (13403 bytes)  
		MIME: application/vnd.in-toto+json

### `rethinkdb:bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull rethinkdb@sha256:3765ceebb8d85c3bc82652646e9089642bdf9072e387b6f4ccefe01da6ec9c3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.0 MB (46958291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:672fc8401f572c7b3b139073b37cef873bda9948c85c656fbdbabb44841a08aa`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:43:02 GMT
RUN apt-get -qqy update     && apt-get install -y --no-install-recommends ca-certificates gnupg2 curl     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:43:03 GMT
RUN GNUPGHOME="$(mktemp -d)" && export GNUPGHOME     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F     && gpg --batch --export 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F > /usr/share/keyrings/rethinkdb.gpg     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb [signed-by=/usr/share/keyrings/rethinkdb.gpg] https://download.rethinkdb.com/repository/debian-bookworm bookworm main" > /etc/apt/sources.list.d/rethinkdb.list # buildkit
# Wed, 21 Oct 2026 00:43:08 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.4.4~0bookworm
# Wed, 21 Oct 2026 00:43:08 GMT
RUN apt-get -qqy update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:43:08 GMT
VOLUME [/data]
# Wed, 21 Oct 2026 00:43:08 GMT
WORKDIR /data
# Wed, 21 Oct 2026 00:43:08 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 21 Oct 2026 00:43:08 GMT
EXPOSE map[28015/tcp:{} 29015/tcp:{} 8080/tcp:{}]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3a4d158c567768d07ecf5589de8b8f22e41da2088f07ab2b1aaa199d190e3a1`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 9.4 MB (9449686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11291e68ea196e80b22bd343eb76a01c244d21349ab7683d3abf7101a28b4da0`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 2.7 KB (2669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d671cf4cceeb7e7aa0380529502a56689fce80df65acdd5ec9d85888918bdde`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 9.4 MB (9367418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66d483093429c7d528cd84f539cb647b45dbfaa3dbc54bf5c5dfee33c4add665`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rethinkdb:bookworm-slim` - unknown; unknown

```console
$ docker pull rethinkdb@sha256:db9a7b2517ba86750299dec95a756dfb2f799f2db6b4d95bc363affeb95bb612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2803047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e0b3e268abb135e69e5933fdcf39736f5d46d2afe36530627a967260d69c679`

```dockerfile
```

-	Layers:
	-	`sha256:165378478f847b45166d6116cadf05286a6f2b76abd527ac650c0e009845a0d6`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 2.8 MB (2789461 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90225a902104acafa398e3994ecd44bd5ae7e4b078946773ad527fab974502e8`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 13.6 KB (13586 bytes)  
		MIME: application/vnd.in-toto+json

### `rethinkdb:bookworm-slim` - linux; s390x

```console
$ docker pull rethinkdb@sha256:2df8028f90406364827ccfed59e56268b1da506a56257a75527960a07a74a832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45492974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bebaf239522a8ecc68bcd62c1888a1e201b8d59fb5fda27318bb0c24bd52924b`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 03:06:33 GMT
RUN apt-get -qqy update     && apt-get install -y --no-install-recommends ca-certificates gnupg2 curl     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:06:34 GMT
RUN GNUPGHOME="$(mktemp -d)" && export GNUPGHOME     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F     && gpg --batch --export 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F > /usr/share/keyrings/rethinkdb.gpg     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb [signed-by=/usr/share/keyrings/rethinkdb.gpg] https://download.rethinkdb.com/repository/debian-bookworm bookworm main" > /etc/apt/sources.list.d/rethinkdb.list # buildkit
# Tue, 14 Jul 2026 03:06:39 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.4.4~0bookworm
# Tue, 14 Jul 2026 03:06:39 GMT
RUN apt-get -qqy update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:06:39 GMT
VOLUME [/data]
# Tue, 14 Jul 2026 03:06:39 GMT
WORKDIR /data
# Tue, 14 Jul 2026 03:06:39 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 14 Jul 2026 03:06:39 GMT
EXPOSE map[28015/tcp:{} 29015/tcp:{} 8080/tcp:{}]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6ae69bfad90ff9678fcdfafb9adec3466f669309c5d061ce72594b9a2f4497`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 9.3 MB (9298140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27bf0f2e0505e870fb7cea5f757ed087230a49551de0764b07810926cc651e8a`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 2.7 KB (2670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33ff3940e5d17f32064d546103044fae444af8fd79b7b86a6731f276cb394d1c`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 9.3 MB (9303803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b910af2a7cf798e124de52c3e32d4fc88a8aa2ff3fa375415cbac51e32e62379`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rethinkdb:bookworm-slim` - unknown; unknown

```console
$ docker pull rethinkdb@sha256:2c3c846491cea35632ad51e68efb280e6ae9335ebbe75813906d09abef4d1437
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2794760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:841727031985456b0b91f0a336d0f89cc91ef231dc293a5a3b6926733ca5382b`

```dockerfile
```

-	Layers:
	-	`sha256:47627dc719f4cde74bd69f848cadcc5996db6b2482c686cb75aaac2f09201c9c`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 2.8 MB (2781356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fac890842798d39986445d3030e5436f2435941c11aaebf1b112e9e351138c77`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 13.4 KB (13404 bytes)  
		MIME: application/vnd.in-toto+json

## `rethinkdb:latest`

```console
$ docker pull rethinkdb@sha256:3a5ec73ae9d629ba5bb9508b53444c9dffe8b6109af7c7b3415d988ba2b66ba4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `rethinkdb:latest` - linux; amd64

```console
$ docker pull rethinkdb@sha256:5e15372b391302c528ada2d2eb3f0548f2d6a5593de3eb0fc240dea98643d0c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47869514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aae517028c0706398139effedf51c3d670a0a29297699e70870c9ca4c8505396`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:39:23 GMT
RUN apt-get -qqy update     && apt-get install -y --no-install-recommends ca-certificates gnupg2 curl     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:39:24 GMT
RUN GNUPGHOME="$(mktemp -d)" && export GNUPGHOME     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F     && gpg --batch --export 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F > /usr/share/keyrings/rethinkdb.gpg     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb [signed-by=/usr/share/keyrings/rethinkdb.gpg] https://download.rethinkdb.com/repository/debian-bookworm bookworm main" > /etc/apt/sources.list.d/rethinkdb.list # buildkit
# Wed, 21 Oct 2026 00:39:29 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.4.4~0bookworm
# Wed, 21 Oct 2026 00:39:29 GMT
RUN apt-get -qqy update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:39:29 GMT
VOLUME [/data]
# Wed, 21 Oct 2026 00:39:29 GMT
WORKDIR /data
# Wed, 21 Oct 2026 00:39:29 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 21 Oct 2026 00:39:29 GMT
EXPOSE map[28015/tcp:{} 29015/tcp:{} 8080/tcp:{}]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35551d1e81ad7fa6a2b21b5da0bec1a341a2aa61af20fe5eefb9c658c0755723`  
		Last Modified: Wed, 21 Oct 2026 00:39:37 GMT  
		Size: 9.6 MB (9625627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d51d291c9cb9b211088ed36447e090b2e04b900586db91cc6e077af61ef7b684`  
		Last Modified: Wed, 21 Oct 2026 00:39:36 GMT  
		Size: 2.7 KB (2669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e196e4f29c0dbc875fafc9ee9af761c520bbf22d96b07ad1ad33242cc157ebcb`  
		Last Modified: Wed, 21 Oct 2026 00:39:37 GMT  
		Size: 10.0 MB (9993190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd95553a9ef9ab1627cc51da6d896d75885f9c24b15eca3c373363b21825bdce`  
		Last Modified: Wed, 21 Oct 2026 00:39:36 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rethinkdb:latest` - unknown; unknown

```console
$ docker pull rethinkdb@sha256:c8e6d3c468ff9d8d1588db2f3d521dd78fe23f8f2dddaea6586e24ff20626602
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2802529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e1ada346587a458d34cd1acf411ed9269bca2f03b2901e6a911935888e3d78`

```dockerfile
```

-	Layers:
	-	`sha256:2b1ae623c03f6f209a2403a88c9fc10185229056e91aa5b0018e9e4439eedfd3`  
		Last Modified: Wed, 21 Oct 2026 00:39:37 GMT  
		Size: 2.8 MB (2789126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8633fb8b34849fe0a286e21b2586f5bf9b7612b3f9dde5782ce91a15ffb86aa`  
		Last Modified: Wed, 21 Oct 2026 00:39:36 GMT  
		Size: 13.4 KB (13403 bytes)  
		MIME: application/vnd.in-toto+json

### `rethinkdb:latest` - linux; arm64 variant v8

```console
$ docker pull rethinkdb@sha256:3765ceebb8d85c3bc82652646e9089642bdf9072e387b6f4ccefe01da6ec9c3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.0 MB (46958291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:672fc8401f572c7b3b139073b37cef873bda9948c85c656fbdbabb44841a08aa`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:43:02 GMT
RUN apt-get -qqy update     && apt-get install -y --no-install-recommends ca-certificates gnupg2 curl     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:43:03 GMT
RUN GNUPGHOME="$(mktemp -d)" && export GNUPGHOME     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F     && gpg --batch --export 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F > /usr/share/keyrings/rethinkdb.gpg     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb [signed-by=/usr/share/keyrings/rethinkdb.gpg] https://download.rethinkdb.com/repository/debian-bookworm bookworm main" > /etc/apt/sources.list.d/rethinkdb.list # buildkit
# Wed, 21 Oct 2026 00:43:08 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.4.4~0bookworm
# Wed, 21 Oct 2026 00:43:08 GMT
RUN apt-get -qqy update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:43:08 GMT
VOLUME [/data]
# Wed, 21 Oct 2026 00:43:08 GMT
WORKDIR /data
# Wed, 21 Oct 2026 00:43:08 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 21 Oct 2026 00:43:08 GMT
EXPOSE map[28015/tcp:{} 29015/tcp:{} 8080/tcp:{}]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3a4d158c567768d07ecf5589de8b8f22e41da2088f07ab2b1aaa199d190e3a1`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 9.4 MB (9449686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11291e68ea196e80b22bd343eb76a01c244d21349ab7683d3abf7101a28b4da0`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 2.7 KB (2669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d671cf4cceeb7e7aa0380529502a56689fce80df65acdd5ec9d85888918bdde`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 9.4 MB (9367418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66d483093429c7d528cd84f539cb647b45dbfaa3dbc54bf5c5dfee33c4add665`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rethinkdb:latest` - unknown; unknown

```console
$ docker pull rethinkdb@sha256:db9a7b2517ba86750299dec95a756dfb2f799f2db6b4d95bc363affeb95bb612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2803047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e0b3e268abb135e69e5933fdcf39736f5d46d2afe36530627a967260d69c679`

```dockerfile
```

-	Layers:
	-	`sha256:165378478f847b45166d6116cadf05286a6f2b76abd527ac650c0e009845a0d6`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 2.8 MB (2789461 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90225a902104acafa398e3994ecd44bd5ae7e4b078946773ad527fab974502e8`  
		Last Modified: Wed, 21 Oct 2026 00:43:16 GMT  
		Size: 13.6 KB (13586 bytes)  
		MIME: application/vnd.in-toto+json

### `rethinkdb:latest` - linux; s390x

```console
$ docker pull rethinkdb@sha256:2df8028f90406364827ccfed59e56268b1da506a56257a75527960a07a74a832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45492974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bebaf239522a8ecc68bcd62c1888a1e201b8d59fb5fda27318bb0c24bd52924b`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 03:06:33 GMT
RUN apt-get -qqy update     && apt-get install -y --no-install-recommends ca-certificates gnupg2 curl     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:06:34 GMT
RUN GNUPGHOME="$(mktemp -d)" && export GNUPGHOME     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F     && gpg --batch --export 539A3A8C6692E6E3F69B3FE81D85E93F801BB43F > /usr/share/keyrings/rethinkdb.gpg     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb [signed-by=/usr/share/keyrings/rethinkdb.gpg] https://download.rethinkdb.com/repository/debian-bookworm bookworm main" > /etc/apt/sources.list.d/rethinkdb.list # buildkit
# Tue, 14 Jul 2026 03:06:39 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.4.4~0bookworm
# Tue, 14 Jul 2026 03:06:39 GMT
RUN apt-get -qqy update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:06:39 GMT
VOLUME [/data]
# Tue, 14 Jul 2026 03:06:39 GMT
WORKDIR /data
# Tue, 14 Jul 2026 03:06:39 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 14 Jul 2026 03:06:39 GMT
EXPOSE map[28015/tcp:{} 29015/tcp:{} 8080/tcp:{}]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6ae69bfad90ff9678fcdfafb9adec3466f669309c5d061ce72594b9a2f4497`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 9.3 MB (9298140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27bf0f2e0505e870fb7cea5f757ed087230a49551de0764b07810926cc651e8a`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 2.7 KB (2670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33ff3940e5d17f32064d546103044fae444af8fd79b7b86a6731f276cb394d1c`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 9.3 MB (9303803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b910af2a7cf798e124de52c3e32d4fc88a8aa2ff3fa375415cbac51e32e62379`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rethinkdb:latest` - unknown; unknown

```console
$ docker pull rethinkdb@sha256:2c3c846491cea35632ad51e68efb280e6ae9335ebbe75813906d09abef4d1437
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2794760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:841727031985456b0b91f0a336d0f89cc91ef231dc293a5a3b6926733ca5382b`

```dockerfile
```

-	Layers:
	-	`sha256:47627dc719f4cde74bd69f848cadcc5996db6b2482c686cb75aaac2f09201c9c`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 2.8 MB (2781356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fac890842798d39986445d3030e5436f2435941c11aaebf1b112e9e351138c77`  
		Last Modified: Tue, 14 Jul 2026 03:06:52 GMT  
		Size: 13.4 KB (13404 bytes)  
		MIME: application/vnd.in-toto+json
