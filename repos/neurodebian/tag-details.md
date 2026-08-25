<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `neurodebian`

-	[`neurodebian:bookworm`](#neurodebianbookworm)
-	[`neurodebian:bookworm-non-free`](#neurodebianbookworm-non-free)
-	[`neurodebian:bullseye`](#neurodebianbullseye)
-	[`neurodebian:bullseye-non-free`](#neurodebianbullseye-non-free)
-	[`neurodebian:forky`](#neurodebianforky)
-	[`neurodebian:forky-non-free`](#neurodebianforky-non-free)
-	[`neurodebian:jammy`](#neurodebianjammy)
-	[`neurodebian:jammy-non-free`](#neurodebianjammy-non-free)
-	[`neurodebian:latest`](#neurodebianlatest)
-	[`neurodebian:nd`](#neurodebiannd)
-	[`neurodebian:nd-non-free`](#neurodebiannd-non-free)
-	[`neurodebian:nd110`](#neurodebiannd110)
-	[`neurodebian:nd110-non-free`](#neurodebiannd110-non-free)
-	[`neurodebian:nd120`](#neurodebiannd120)
-	[`neurodebian:nd120-non-free`](#neurodebiannd120-non-free)
-	[`neurodebian:nd130`](#neurodebiannd130)
-	[`neurodebian:nd130-non-free`](#neurodebiannd130-non-free)
-	[`neurodebian:nd140`](#neurodebiannd140)
-	[`neurodebian:nd140-non-free`](#neurodebiannd140-non-free)
-	[`neurodebian:nd22.04`](#neurodebiannd2204)
-	[`neurodebian:nd22.04-non-free`](#neurodebiannd2204-non-free)
-	[`neurodebian:nd24.04`](#neurodebiannd2404)
-	[`neurodebian:nd24.04-non-free`](#neurodebiannd2404-non-free)
-	[`neurodebian:noble`](#neurodebiannoble)
-	[`neurodebian:noble-non-free`](#neurodebiannoble-non-free)
-	[`neurodebian:non-free`](#neurodebiannon-free)
-	[`neurodebian:sid`](#neurodebiansid)
-	[`neurodebian:sid-non-free`](#neurodebiansid-non-free)
-	[`neurodebian:trixie`](#neurodebiantrixie)
-	[`neurodebian:trixie-non-free`](#neurodebiantrixie-non-free)

## `neurodebian:bookworm`

```console
$ docker pull neurodebian@sha256:68e1cdc437695c84d269ac5d458c8d20acaefb7ce82bee2850ed51ebc0bce9f2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:bookworm` - linux; amd64

```console
$ docker pull neurodebian@sha256:d12e035abbaf95afd44a12dfb6081da94a30e455105022222f2e95635ec5bd96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59866455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8430ae997e6bb0c3f65441679fc1801aff4c7f7cdf2bd789b3ee8c00c8f44a63`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:54:11 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:11 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:54:12 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:54:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7336ae245b2f75e2b26e89ac0d831cf717fc229902d7f6cc13301a3013cbca3`  
		Last Modified: Tue, 25 Aug 2026 00:54:32 GMT  
		Size: 11.3 MB (11273529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0deeeed784b0fe9c85328f10d61eb7172ad822244be4beab84e267a8308c7d1`  
		Last Modified: Tue, 25 Aug 2026 00:54:32 GMT  
		Size: 1.9 KB (1900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab20587be59ec35a37d935ee51ed828fb4c5fcf2741b6823bdd98cf1602fe31c`  
		Last Modified: Tue, 25 Aug 2026 00:54:32 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06268731d9fb2f91db7c86f6b0dfbefee50ac39c5bcba25d38f52433201788ca`  
		Last Modified: Tue, 25 Aug 2026 00:54:32 GMT  
		Size: 93.4 KB (93391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:610cf74b24e92709bed0393d95913b6d09e66ce31af8bc211b365f56bd13578e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4089916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dffcb50a87f1c9303332979a47a1f9bc192488c3296465137865cb9ec9bd061d`

```dockerfile
```

-	Layers:
	-	`sha256:83d5cdf1d70eb9fde3db32038686248b40a6c5312f52fe41335a391a6b20e1e2`  
		Last Modified: Tue, 25 Aug 2026 00:54:32 GMT  
		Size: 4.1 MB (4075951 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:76ee5a3bcf33391a18c944039a44994f8ae9e82dc58db8142465481a82749bb4`  
		Last Modified: Tue, 25 Aug 2026 00:54:32 GMT  
		Size: 14.0 KB (13965 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:ed84c3bd6a2b9d196c1c1046f2df2d0cf595bd3e495764ecc2e1b31e410c729f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59732286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9b85c40ca270935c8379e29eb9fdc35d98c07c7c93cf0158307fb91a794f60b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:56:08 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:09 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:56:09 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:56:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bb473d834964aa6e85414151b9b130576002f4cc7b7e455c7fdfca220797b11`  
		Last Modified: Tue, 25 Aug 2026 00:56:19 GMT  
		Size: 11.3 MB (11252907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00ef85fd01e6d732af7d262be470c7767ef233835298cbdc627c4a5e82cdc17f`  
		Last Modified: Tue, 25 Aug 2026 00:56:19 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a16f36cd66a6bd3563ad0cd2aa4428ad056492378efdeaa34f9a92a3e21002b`  
		Last Modified: Tue, 25 Aug 2026 00:56:19 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b9ecc6cba59236cae2b6b6ddc889e6f984fe5a59f39b59cfce667651334cee3`  
		Last Modified: Tue, 25 Aug 2026 00:56:19 GMT  
		Size: 93.6 KB (93556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:980ab228217d3b88b03dd6d3bc0e4d598949464e42bb706a88599ac4c15c662f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:194bdbab9c6a9b1328dc108127a9ca0ca3e401b7de1a7ab9821725e68acf244e`

```dockerfile
```

-	Layers:
	-	`sha256:a23577eb52903b8c46f77587eeb4e22d581787b85a46869a37270b0ff86bbd38`  
		Last Modified: Tue, 25 Aug 2026 00:56:19 GMT  
		Size: 4.1 MB (4076193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8770028ffea3c693943fbcc22a42e463981b74a7377479f621e51fcc9de2b067`  
		Last Modified: Tue, 25 Aug 2026 00:56:19 GMT  
		Size: 14.1 KB (14090 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm` - linux; 386

```console
$ docker pull neurodebian@sha256:aff5bc42b7a1eeb4725c10135a836972b8ae7e9fe040b8ae91b438c5b8b7780c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61274166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0675ac7d612032b806d6ac658a7e213fd855eaca972196de42f256bdbc03c55`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:45 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:46 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:51:46 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:51:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:87896a92d6ed96e4c8127d574fb44191e126b11d1a05b77306bc1034c455ec5d`  
		Last Modified: Mon, 24 Aug 2026 23:20:08 GMT  
		Size: 49.5 MB (49485396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfdc54cbbf90d4683e40020bb9ac3d6a2bfc35f5b61f241f95548431e8761e81`  
		Last Modified: Tue, 25 Aug 2026 00:51:56 GMT  
		Size: 11.7 MB (11693174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11de585d12d59709b748ed1b55b3d775105a97a7159c3a13947bdfb5f0f5affd`  
		Last Modified: Tue, 25 Aug 2026 00:51:56 GMT  
		Size: 1.9 KB (1903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f1be1788e3fe9b565a3516067afd79a73b5502179fa3a41319221f91a913987`  
		Last Modified: Tue, 25 Aug 2026 00:51:56 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:024adb886ac6b6c9abd917a676dafbd58bfee472da7c51e79235870411b62d8a`  
		Last Modified: Tue, 25 Aug 2026 00:51:56 GMT  
		Size: 93.4 KB (93419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ee484a199d8128ce8c68ef573a34164aaf64cbdb88e21bbb51457a6835b0f4d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4087855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7da09bee78623eb081af3b47b13c28fc1f42b465666b8d65d90242791c82216`

```dockerfile
```

-	Layers:
	-	`sha256:788068166d8775d46608484bace8258d758f7d0dc5a2d1905f31433bfd61d8e6`  
		Last Modified: Tue, 25 Aug 2026 00:51:56 GMT  
		Size: 4.1 MB (4073918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4951ac794b6c8842e188d2bd06fcebdb545ec88232742cddf03c4b9d9b84bdd`  
		Last Modified: Tue, 25 Aug 2026 00:51:56 GMT  
		Size: 13.9 KB (13937 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:bookworm-non-free`

```console
$ docker pull neurodebian@sha256:bc694492031b8ec54b86f338766ccbc0353f961669de65b1ad53857d6c275158
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:bookworm-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:350b3b339573ddda73417a51ea68fcdedc0df06347453b23602ad34b76aa0b63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59866932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74d830a27ed956bd6273fd76f1f3473a47b0e3e0788298da3f7aadce314ce7ed`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:54:19 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:20 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:54:20 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:54:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:22 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49396bf6f048da2520e62e2054f85dc7bdae22b8d96121f5f44d8d896f6e3b60`  
		Last Modified: Tue, 25 Aug 2026 00:54:31 GMT  
		Size: 11.3 MB (11273562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:816baf9f402651077195bef00137b4682b085f60dbdbffa852dc07d230385675`  
		Last Modified: Tue, 25 Aug 2026 00:54:30 GMT  
		Size: 1.9 KB (1903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d11ef57d991f9e929bdb5ce98eb9daa294d45261b7aeadc7103b9bca90d7a811`  
		Last Modified: Tue, 25 Aug 2026 00:54:30 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e3e899cc2b89be46af928ff74cc113637ae22b6f82554e846196ca40000a37c`  
		Last Modified: Tue, 25 Aug 2026 00:54:30 GMT  
		Size: 93.4 KB (93382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb0313d6da1406b99d36694dbb720fff1666f28350851c7581b5aaf391ec40fe`  
		Last Modified: Tue, 25 Aug 2026 00:54:32 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9c1b2e3b939d22ac6b97d15ff427ee601fc810cadfeb31cd519e745cbcb650d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4091978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae33e2c84117be2114b48b8a6703c6df64fa6c4960a0841e72e3aa70e0c47a4b`

```dockerfile
```

-	Layers:
	-	`sha256:7662096bad904a8f7be933da3a4bd014211f8d7579fba36b71419366fed9094d`  
		Last Modified: Tue, 25 Aug 2026 00:54:30 GMT  
		Size: 4.1 MB (4075987 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63f506eca33811857e8eef432da5dd3bf2de6e050bff7b3e780f2470d8bb8ab8`  
		Last Modified: Tue, 25 Aug 2026 00:54:30 GMT  
		Size: 16.0 KB (15991 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:f9c927c0102fcd257f2bfc8a4eb6bbcc2cb7d7b9a523e54256f5c1731ccd9676
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59732833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fe032b86251656edcf9f4856191571986ba493e902ae066cd10ad9e1736a962`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:56:27 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:28 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:56:28 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:56:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:31 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6756e76b359130321fb6c3915f5a8fd23762c83aaa19a964e7c91689aca61dea`  
		Last Modified: Tue, 25 Aug 2026 00:56:39 GMT  
		Size: 11.3 MB (11252955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:975cd053eaa9e47c8b49dce9dc24863ff9f529c30080730cd2f2470ca87edec9`  
		Last Modified: Tue, 25 Aug 2026 00:56:38 GMT  
		Size: 1.9 KB (1903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b93b9b487059902387ea9e2d339cb992ff9902c916cc62ad8fd028966b5e0d8`  
		Last Modified: Tue, 25 Aug 2026 00:56:39 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:876884d649722e5f9d0b2568e730832d6ee0db4cd8fe9d8aac4e27c4be37a7bc`  
		Last Modified: Tue, 25 Aug 2026 00:56:39 GMT  
		Size: 93.6 KB (93605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0395bcd15135533f9ef590a4ba418b90727ac213d2a5345adc0c207d3b2c860e`  
		Last Modified: Tue, 25 Aug 2026 00:56:40 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:4bde0df1146bfda285bd898760be5b31f670dd66572a57b97320f549bf495420
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3077379394dd058859f1209d4aecffc80f47967c710e961f3444cd6b5e0f907`

```dockerfile
```

-	Layers:
	-	`sha256:0dd87b0bfe1f1dd6fbeaf641f561494523b75f23cc0c41e43f53428c0cfeb239`  
		Last Modified: Tue, 25 Aug 2026 00:56:39 GMT  
		Size: 4.1 MB (4076229 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b422b89c5363bc3b384cfb12cc55a0e5245b980d4ca3c60016248dedba92a50`  
		Last Modified: Tue, 25 Aug 2026 00:56:38 GMT  
		Size: 16.1 KB (16132 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:485125bdd521f34d500eaf2dd7609ac2610487a2085b9ba670a6c467f063f079
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61274593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c84a2eee08da2d90e64d7fc60cfbd37548049ad51299b02881db35440966f55d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:54 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:55 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:51:55 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:51:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:58 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:87896a92d6ed96e4c8127d574fb44191e126b11d1a05b77306bc1034c455ec5d`  
		Last Modified: Mon, 24 Aug 2026 23:20:08 GMT  
		Size: 49.5 MB (49485396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b47ede8a020b7efc17db637137af87827af522d21cbf9779aac12f104a5467c5`  
		Last Modified: Tue, 25 Aug 2026 00:52:06 GMT  
		Size: 11.7 MB (11693140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:124f18396c3472e69704d715b397018758fe9521ff5367f35f04ceb0a3eccb0f`  
		Last Modified: Tue, 25 Aug 2026 00:52:06 GMT  
		Size: 1.9 KB (1900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c8a8999c58524371f7e3ee2624d15834f4c58f186866e504f57b6537daba0ca`  
		Last Modified: Tue, 25 Aug 2026 00:52:06 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a7b72d2bd04af921b406cc596b24766c78e6361bb848fb02ba867c1fa1f805`  
		Last Modified: Tue, 25 Aug 2026 00:52:06 GMT  
		Size: 93.4 KB (93435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e24da90c0bd4d6aae80bd77bd1279651f5acda53684efe9343152cf4b124e0`  
		Last Modified: Tue, 25 Aug 2026 00:52:07 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:e02316f7ed78dcbb846b1a97090723559dcc9fd7670d7a86e7e16ca628102596
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4089916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12a24039678c7140be6ad18580b957ebf4249204acbdd06518f5947da5be80bc`

```dockerfile
```

-	Layers:
	-	`sha256:e6462134b03c821343078db774924b0a7f8e4f1a01a7a6842fb3ccf0f39f8135`  
		Last Modified: Tue, 25 Aug 2026 00:52:06 GMT  
		Size: 4.1 MB (4073954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e497ca6e602ea1a1c1272ce5c2c1226bd176f52f1f4254ea7362424e0f0bea0`  
		Last Modified: Tue, 25 Aug 2026 00:52:06 GMT  
		Size: 16.0 KB (15962 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:bullseye`

```console
$ docker pull neurodebian@sha256:e4b3734c909afcc26d893e27aa72089cc8812dbc85f0483d41e10c63e57efdb0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:bullseye` - linux; amd64

```console
$ docker pull neurodebian@sha256:c4e146a63d0da80337add33e80e84ade9dcd28bfd853c3b1ed4e289e646e93da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64984285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9e3db308e407fea4d3851ca8b0cc172890dad416819817a321cb187646e4065`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:53:57 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:57 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:53:57 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:54:00 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:94b0efe6d4f788b1b894c04a6c6885d53a41bcd0b85757fffacd2bc4de142847`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 53.8 MB (53777392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76000aafacd8816fbd8cf97ee81a6a2fce234b4dcd65868c7af2e0c3feae6de9`  
		Last Modified: Tue, 25 Aug 2026 00:54:07 GMT  
		Size: 11.1 MB (11103350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b09a9c2a463bb512ca01dbcbf50ddc96cff0661750b19ef34abf93ca38272566`  
		Last Modified: Tue, 25 Aug 2026 00:54:07 GMT  
		Size: 1.9 KB (1892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d0158e4d7144df5b8075d9119f67e2b58504f5c865db9eb07dd667a357344df`  
		Last Modified: Tue, 25 Aug 2026 00:54:07 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2432e2df63ed9bd4a2d928366c732eeae57d30ea5623b0ac09579ecef4f321ad`  
		Last Modified: Tue, 25 Aug 2026 00:54:07 GMT  
		Size: 101.4 KB (101386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bullseye` - unknown; unknown

```console
$ docker pull neurodebian@sha256:19c7b8162d90a5d152b473cc26cef7ad7e9af3c10ab3112d1a44ebf9ec646074
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4381884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7295d88b5d13736fd29394bdf2ebe407af76d0c7733e9ffe1d086d786f21c60`

```dockerfile
```

-	Layers:
	-	`sha256:8b3cb19f44668ed1f325c084d55e059f9896456946bdca051e4d5bbef95ba111`  
		Last Modified: Tue, 25 Aug 2026 00:54:07 GMT  
		Size: 4.4 MB (4367918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:599e8e7516fb2631a8091ce2f4695390b41cd0aabe30a5caf74034c03181c5af`  
		Last Modified: Tue, 25 Aug 2026 00:54:07 GMT  
		Size: 14.0 KB (13966 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bullseye` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:33963c667b694d0ca22c1d75de40a8f4e605636d7c8d6a47a167f7693cebb14b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 MB (63474740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18884dab2f7c4e948656d123566cbf96f94fc2e31d3da559ae207726f832f331`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:56:13 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:13 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:56:13 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:56:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:efeeefc1421af2e3b9b27f2b236e6fca6b6df5f1f1d5919c2608f27cc4503c31`  
		Last Modified: Mon, 24 Aug 2026 23:20:19 GMT  
		Size: 52.3 MB (52261343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a5a7542207426662effd3e699135ad2bf524acda8906028fcd0846364c40fbe`  
		Last Modified: Tue, 25 Aug 2026 00:56:27 GMT  
		Size: 11.1 MB (11109978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:312289dacd6459491d155bc367e065ead4c48053cd7eaeaa4e31982d2a6fdbd2`  
		Last Modified: Tue, 25 Aug 2026 00:56:27 GMT  
		Size: 1.9 KB (1891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0105e6997f403ddbebce613326588d8f91c37c51fdbf04c6f80333a5de65621d`  
		Last Modified: Tue, 25 Aug 2026 00:56:27 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78646afeedc40ba8fdfe088ceac1649498608db070697fa0e0e34c7c0c4d0ad7`  
		Last Modified: Tue, 25 Aug 2026 00:56:27 GMT  
		Size: 101.3 KB (101264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bullseye` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ed3c3799752649aae6238e3676a27f4e2f628ba669093857203f7cf0f78f0715
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4381616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbd2860cffea387b0fc36a6416e74e0502a2ab3da3a1a8fdcd13435d03587ce5`

```dockerfile
```

-	Layers:
	-	`sha256:a6492380268d2cdba9ef2fd9b1150d9c496d63b233f4405853431280305c6a71`  
		Last Modified: Tue, 25 Aug 2026 00:56:27 GMT  
		Size: 4.4 MB (4367525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:600582c0a6823188743ada767c7695ac2b3a29914aad192fbe60f33abfd0d534`  
		Last Modified: Tue, 25 Aug 2026 00:56:27 GMT  
		Size: 14.1 KB (14091 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bullseye` - linux; 386

```console
$ docker pull neurodebian@sha256:ea4c2d937d34187cb11976acb5ea2742a40e0e8e5df2458e8b52f47f4eadf63c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66322024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a085fc93cdd59cc39668f60ca3ea5f4f5c17e4a9f023e697b1fc91ca0007e1b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:51:22 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:22 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:51:22 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:51:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f64e33df6f56ecdb94ffda8ff8b3392edefc222230e3c0514b62a3448a7e7e0c`  
		Last Modified: Mon, 24 Aug 2026 23:20:35 GMT  
		Size: 54.7 MB (54716169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cb8dc8200f61140c45a29b8ad59cc971698bdc77a8aa0e2e11712d651d9d99b`  
		Last Modified: Tue, 25 Aug 2026 00:51:34 GMT  
		Size: 11.5 MB (11502420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36d03e1f53fa510826f0d8f3386b290fcb87f234316ad96bd186c91770ec6d09`  
		Last Modified: Tue, 25 Aug 2026 00:51:33 GMT  
		Size: 1.9 KB (1891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73826de2ad6c8e2b918da4fddd8255d89d3ec47ddf331f2ef3c34919e12ef0fc`  
		Last Modified: Tue, 25 Aug 2026 00:51:33 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:172becca597faa21aebaf85822ce2cc02490238cba10ed90adff93972f6b0fde`  
		Last Modified: Tue, 25 Aug 2026 00:51:34 GMT  
		Size: 101.3 KB (101279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bullseye` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8c6fef6a08a1a1114b2ccb0c1d9c77f303b1bc3015e5f67e118f71cc0411767b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4378375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41c7778a694e4c625d5f3e6931b99b17fecb6e09ca6bd4df904b399fed8b896f`

```dockerfile
```

-	Layers:
	-	`sha256:710e858810f0b6883c6c01e5cc80311f17d1264173682516958aaf5e0409de93`  
		Last Modified: Tue, 25 Aug 2026 00:51:34 GMT  
		Size: 4.4 MB (4364437 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a319c8b0cbe746dc64f86c74eb53ebcd08fca33b5294c1b76e49e065ac97204`  
		Last Modified: Tue, 25 Aug 2026 00:51:33 GMT  
		Size: 13.9 KB (13938 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:bullseye-non-free`

```console
$ docker pull neurodebian@sha256:7e97da8b6892d33e557e688e7b5795f730f7304cede7fd866f27d56b1f37af82
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:bullseye-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:0d0fa351aaf9757917863b4d57f1c361143d352b7a31d9c10f74efe3084f12f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64984738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13b8d1a07ac8b9c7bf1f0d9b07ab2b9108229ff0e7717ff1fd7e050d4eedaf80`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:53:59 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:59 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:53:59 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:54:01 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:02 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:94b0efe6d4f788b1b894c04a6c6885d53a41bcd0b85757fffacd2bc4de142847`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 53.8 MB (53777392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4124e8f54912c16b2111a87ff0e79902ba790f490abd2a4eb79289f7d2b51c2`  
		Last Modified: Tue, 25 Aug 2026 00:54:09 GMT  
		Size: 11.1 MB (11103414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35d81fdd92194a0187437e48f00142eb39694e0a9db33d436babc46aed7ae622`  
		Last Modified: Tue, 25 Aug 2026 00:54:09 GMT  
		Size: 1.9 KB (1892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbb577a9e54e29a4bf6d5e88ad422f5ac835569b6a5297be9cc83f8104317d46`  
		Last Modified: Tue, 25 Aug 2026 00:54:09 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094c2a9113f514c53c25db0e533db45af17e770af47fe9214cd7c33d8d336c40`  
		Last Modified: Tue, 25 Aug 2026 00:54:09 GMT  
		Size: 101.4 KB (101386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57ac35525dd8d5e50f337bfba5a14f20f1ffc7c14b016918eed2860a250866a4`  
		Last Modified: Tue, 25 Aug 2026 00:54:10 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bullseye-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:3825ea79b9e8db9cb7f2722684de720a55529b1dbf209c78bd824821581cee21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4383946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb2e086f608d93629ef18776ffd5f89739cabb2ace9d422f911134f236e006c9`

```dockerfile
```

-	Layers:
	-	`sha256:6631cc8e1aec11ffb259941f17faced3fbb40db982ef81bfa6c61d47d87b2c10`  
		Last Modified: Tue, 25 Aug 2026 00:54:09 GMT  
		Size: 4.4 MB (4367954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9cdb897c72854335107ab8111cd1037f5ab1b0ce4ee2955a5f691954ddf5c19e`  
		Last Modified: Tue, 25 Aug 2026 00:54:09 GMT  
		Size: 16.0 KB (15992 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bullseye-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:e6d87a01005f8ed4f5bf8d6201973341ea9abd57f0fa145501416dd46714b1db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 MB (63475076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f50f681c917d9f057fe0c4cad0e0016ab746294418a822a1ac7eadbd21ec64df`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:56:14 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:14 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:56:14 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:56:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:17 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:efeeefc1421af2e3b9b27f2b236e6fca6b6df5f1f1d5919c2608f27cc4503c31`  
		Last Modified: Mon, 24 Aug 2026 23:20:19 GMT  
		Size: 52.3 MB (52261343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5bdbdeeffb7b29a91e6d886ab9b6cc41d4f84d594057885734b05710f9cf903`  
		Last Modified: Tue, 25 Aug 2026 00:56:25 GMT  
		Size: 11.1 MB (11109935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72131d3391fc34884a7134b186d48509013cf962c3b1ac8ae4475ffed4d38586`  
		Last Modified: Tue, 25 Aug 2026 00:56:25 GMT  
		Size: 1.9 KB (1892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c4ab63acd5e9e64b7b41c1cf6c8bcecd614339063052844d3d5050e4bf93db9`  
		Last Modified: Tue, 25 Aug 2026 00:56:25 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee5a6a0013ea40c96d46e4daaefb13d988511949fbbc7646162228f6942d6368`  
		Last Modified: Tue, 25 Aug 2026 00:56:25 GMT  
		Size: 101.3 KB (101253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40c5da5680ad0f83a3cb0e76cfaf824d4231f039402a43bbfb592198ac628c71`  
		Last Modified: Tue, 25 Aug 2026 00:56:26 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bullseye-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9ab8c9fd7e86e6eef946ebdd8700368ad6c1a26367f6544201daf868d27e5921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4383695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a50cb9e0062fce01e92afc2c2baa66e097c6b735302e28aa50c6a794c7324fc`

```dockerfile
```

-	Layers:
	-	`sha256:69d0fa87784592d621c64f0b6eeb3ab878ea8f9c6f860d5a74deedc8f49a1f0c`  
		Last Modified: Tue, 25 Aug 2026 00:56:25 GMT  
		Size: 4.4 MB (4367561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2901dc5f7ec3adc9f9905b6b3757cd949a6071d1d6386f1126b38b3d38ab6b16`  
		Last Modified: Tue, 25 Aug 2026 00:56:25 GMT  
		Size: 16.1 KB (16134 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bullseye-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:c4db051361d46bc0c23e7268368f46b1f2f164830ea01ae620bdc31b91845b91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66322428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6adce4ff8d29856da035d71fe508666b82c8cac257d90f7b3101c14effeab66c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:51:30 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:31 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:51:31 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:51:34 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:34 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:f64e33df6f56ecdb94ffda8ff8b3392edefc222230e3c0514b62a3448a7e7e0c`  
		Last Modified: Mon, 24 Aug 2026 23:20:35 GMT  
		Size: 54.7 MB (54716169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7072e62a6d4e449ac0df726896aafdaf13b77a88a028b25f91e356ad9f80611`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 11.5 MB (11502444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a1d757649f936df42263da41ee6afc02a10191445f56997d24f05d5b79fb2f1`  
		Last Modified: Tue, 25 Aug 2026 00:51:41 GMT  
		Size: 1.9 KB (1891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76471cbeee5d83a2ceccd7a91211531d73f88160cbe4062a1e818815afe9fbd2`  
		Last Modified: Tue, 25 Aug 2026 00:51:41 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7fdfe1792ce7ccacc30f06304a5be7b81712e1a22ef57208f582378cd68ef8`  
		Last Modified: Tue, 25 Aug 2026 00:51:41 GMT  
		Size: 101.3 KB (101268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6137b62f177ffb6436227e59ac961ef6151a1b4faaabc21a2cdd6313e77260db`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bullseye-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:88c2674b5b6aab18a598642c31857a6f177faddc2bc12f5cd6d617474bfac84a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4380437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7989a2c3effaa8f3de7d2add9af0b47a47bf24fbdbdcc04560cfae80af5219d3`

```dockerfile
```

-	Layers:
	-	`sha256:67eb7f1b4cfa4b714a541cdc27564e5ccd1de389abdc9ce31ce98c0b5287ab95`  
		Last Modified: Tue, 25 Aug 2026 00:51:41 GMT  
		Size: 4.4 MB (4364473 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:276c2691ff11ddf8a3882b10eea0e7ee0ee1e9294c53966cf1411cc1f355d796`  
		Last Modified: Tue, 25 Aug 2026 00:51:41 GMT  
		Size: 16.0 KB (15964 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:forky`

```console
$ docker pull neurodebian@sha256:26e88d5d1c4ef479aeb6e820e3d8ded7942b9329d9d53197156c74ef0098d000
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:forky` - linux; amd64

```console
$ docker pull neurodebian@sha256:e375beeae6e80e05b809366b331659980fc4600990a1f342b0d322e2961eeb67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61388299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c71fe264abf878cecfd80f66a075590d80ad05604d66de1f0840f2e9225cfbd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 00:54:46 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:46 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:54:46 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:54:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:11241ba38bb772621a206eff61590aea7dec9f95a23f267942b9b02ca75b7a37`  
		Last Modified: Mon, 24 Aug 2026 23:20:44 GMT  
		Size: 49.7 MB (49685515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fae85a670541ca046cd962a33939ef317149f1ec2fc97fd8616295863d09793`  
		Last Modified: Tue, 25 Aug 2026 00:54:57 GMT  
		Size: 11.6 MB (11609859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d75220ec19c5cbb39bbd24498c23aa446298e23a089cd30d4b61681743d901d`  
		Last Modified: Tue, 25 Aug 2026 00:54:56 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c36fc3151b1cc4706bd10a09fcf0ad6221d2832a8d53955301511af20036972f`  
		Last Modified: Tue, 25 Aug 2026 00:54:56 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b35e6f6037018bd03bd65cfa5941cde5e290dc4a65f74512dd7b4825f75a430`  
		Last Modified: Tue, 25 Aug 2026 00:54:57 GMT  
		Size: 90.0 KB (90022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8604efcbd495fcea1efb256fca9c3822aebd38f2dddaa6ec37db76d164d09dda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3619927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:382e03722b72363a2eb7123843bb3915062aca3510aa2632bb98c70e0d0eed09`

```dockerfile
```

-	Layers:
	-	`sha256:1d3edb7ed3b74ccc2e39d0e454f61d4a4d4aeffab8a38dd4af3ab06d4ce3e67b`  
		Last Modified: Tue, 25 Aug 2026 00:54:57 GMT  
		Size: 3.6 MB (3605996 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0dfafccb467850665faa2cdf973b22aca68b96ccd2548bcf9cb6bb6b9923b528`  
		Last Modified: Tue, 25 Aug 2026 00:54:57 GMT  
		Size: 13.9 KB (13931 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:a9f6d836107ccf77d7142ab36c69620806493c233a2570b9150f13fa8c2c82cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60763147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2beab25839e0d0913d782d8c154e34052c4f27db24fe25682ff9085790ef7cc8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 00:56:42 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:42 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:56:42 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:56:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ad280b75322e6e78371ef86f07cf13a9b43130485f6088f3c11bc956d28be45d`  
		Last Modified: Mon, 24 Aug 2026 23:20:38 GMT  
		Size: 49.5 MB (49503919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04ed7995d253183d337039707e99ce97f80733ca22bc52d236cec5245500bbe8`  
		Last Modified: Tue, 25 Aug 2026 00:56:54 GMT  
		Size: 11.2 MB (11165734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2bb3de7138eae1c5e3b21a155af63669876bbc264cc7c62fd904c1fd4db4142`  
		Last Modified: Tue, 25 Aug 2026 00:56:54 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5819ca1b35dd6dd19ad2637b41294db533861d126142f9060741e7fe69588a7f`  
		Last Modified: Tue, 25 Aug 2026 00:56:54 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90be8321a639564f1b56da54e415f10e8a032acf45fb5982cdc34c069cc3acd6`  
		Last Modified: Tue, 25 Aug 2026 00:56:54 GMT  
		Size: 90.6 KB (90590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:4684a970437e9889b0a6b5c48a32a64686de743f089147c9f1320699f0f80a30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3624174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0390bad2dbecfa084590e9a820f94151e8b71ce6e74c42cbf4a69ebcd45e838`

```dockerfile
```

-	Layers:
	-	`sha256:01a73d015f9c1927b03ba6252bf844a6ac49d6815ed8d9f1846d30d8cab5cf0a`  
		Last Modified: Tue, 25 Aug 2026 00:56:54 GMT  
		Size: 3.6 MB (3610118 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a12a027008e8cf9673a67c2fdf47033378540088b6681749b5bc1d80f704f8b7`  
		Last Modified: Tue, 25 Aug 2026 00:56:54 GMT  
		Size: 14.1 KB (14056 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky` - linux; 386

```console
$ docker pull neurodebian@sha256:b108051d7e11e43f2f8458e979909d94421f2d01401f98cfd968972caec091a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.8 MB (62800098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd27f4c13be9e438686fbedc81dc20d1197a299251e2f83655ce7c14cb72a4c6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 00:52:40 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:52:41 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:52:41 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:52:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:aaf68b813d1715d979a28cb2734f0c4792e12b8f67526d02f1eb51e9f0ab73d6`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 50.9 MB (50891162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc05c85fe346e2cc27f7e3d612dce630f7c939ad72bd5e46164fe7093c2fcc6f`  
		Last Modified: Tue, 25 Aug 2026 00:52:54 GMT  
		Size: 11.8 MB (11815687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79f0216e262d6f2df19a8cda9429779358e661bfb789f1014f3bcce9053c0629`  
		Last Modified: Tue, 25 Aug 2026 00:52:53 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31a62bfba51f1120f827123597f8678a23a4a77a70eac130760a2c3e8e0b7de7`  
		Last Modified: Tue, 25 Aug 2026 00:52:53 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34d5c4688970c2f67c2737991bc1f1272729e0948d0f404f75ccbcb484b9c5e9`  
		Last Modified: Tue, 25 Aug 2026 00:52:54 GMT  
		Size: 90.3 KB (90346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:05df8b0fb3265565263911879d9a5bf317455ef7a14f4708c3e3961417a2b42f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3617745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a97e51846e3016e2232b5b93e43a263671348a700956cfc0fbadf6e68cd7ef9`

```dockerfile
```

-	Layers:
	-	`sha256:32912fdd2cc939790264677e24f6c44149dd038467dc698b199e4b4d9f17d84b`  
		Last Modified: Tue, 25 Aug 2026 00:52:54 GMT  
		Size: 3.6 MB (3603841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99fb00f61605ca11bce01ebfe172299dbdad232358d7daacd586ed06b7e6024b`  
		Last Modified: Tue, 25 Aug 2026 00:52:54 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:forky-non-free`

```console
$ docker pull neurodebian@sha256:3337668507e82f98e71f46d301bc58e0238aa03337d65062225764ce08434f4b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:forky-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:24bc32af7a36f82b3c5ed36998a7916685fc525050f01d8b667a6dcb81a40771
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61388751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37d1dcb3f87dc32eec278d59ee9badbb0719d5df69b296536cc5eaf0b908b59f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 00:54:46 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:46 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:54:46 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:54:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:49 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:11241ba38bb772621a206eff61590aea7dec9f95a23f267942b9b02ca75b7a37`  
		Last Modified: Mon, 24 Aug 2026 23:20:44 GMT  
		Size: 49.7 MB (49685515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27cea94de4ffaafb2d5601eeb8bfa2a61eac0b8fd10461fdd83efd9c4fda5cd0`  
		Last Modified: Tue, 25 Aug 2026 00:54:57 GMT  
		Size: 11.6 MB (11609840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d75220ec19c5cbb39bbd24498c23aa446298e23a089cd30d4b61681743d901d`  
		Last Modified: Tue, 25 Aug 2026 00:54:56 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c36fc3151b1cc4706bd10a09fcf0ad6221d2832a8d53955301511af20036972f`  
		Last Modified: Tue, 25 Aug 2026 00:54:56 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b150ec5b6f958a1c2eb883716bf1d4ab625412537c47c466f28a80dc57bea2eb`  
		Last Modified: Tue, 25 Aug 2026 00:54:56 GMT  
		Size: 90.0 KB (90044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beae668ad463198c406d6d54b06614973a243c4f9b48d10d424b392f9783c3f6`  
		Last Modified: Tue, 25 Aug 2026 00:54:58 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:7939ec9309a08b86d3bbe7b12c25302ca2cf88e742b474df44d62a7c346f14db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3621991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2efa92cc27446c3d76c13d3e2270f17569e57d6a3680415463fe1d2ef76fe038`

```dockerfile
```

-	Layers:
	-	`sha256:6d2726fa8318292a7f7849187e419e076a79fcf7c7baabbe235585dfe963f98c`  
		Last Modified: Tue, 25 Aug 2026 00:54:57 GMT  
		Size: 3.6 MB (3606032 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed74cc17733d16da2f600ad681c6d92728d94c2420d9db41280c8a82ac5fd025`  
		Last Modified: Tue, 25 Aug 2026 00:54:56 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:e3c2f3285f323df5a6c0b584dd503c3d3577cb3db95db2caea2478460e7ce74c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60763633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7e63fed3be29a5bff1027cd7b28fb687519b38a52a0692c33f4a14098f31be7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 00:57:02 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:57:02 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:57:02 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:57:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:57:06 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:ad280b75322e6e78371ef86f07cf13a9b43130485f6088f3c11bc956d28be45d`  
		Last Modified: Mon, 24 Aug 2026 23:20:38 GMT  
		Size: 49.5 MB (49503919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2fb9c931d678a3ffd45cd4f122621cdc9455a67ad7053f7f41a5f97677dee93`  
		Last Modified: Tue, 25 Aug 2026 00:57:15 GMT  
		Size: 11.2 MB (11165763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:990076b7e93f48e4d614e653e9115818022c2d9ac14b273514f4a67c08c5a4ab`  
		Last Modified: Tue, 25 Aug 2026 00:57:14 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:356b657bcc670eff756605426dd4e56b8860581f4c169f5399b7eabb2cdd0424`  
		Last Modified: Tue, 25 Aug 2026 00:57:14 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f3e81197a52ddc49a3df4ddd25a2cb1ac5d034e45260c147d3640759d67e3c7`  
		Last Modified: Tue, 25 Aug 2026 00:57:15 GMT  
		Size: 90.6 KB (90600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73b546041f9777edeb41179fb1b938d45f8fad808c6dd0400b48c35093b5c5ed`  
		Last Modified: Tue, 25 Aug 2026 00:57:16 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:aa582480471d5525cc7f751180f68b595536ae58b5c19e96f58cdd28379e5b98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3626249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fda1193a5cfb5ebe0557e9d6c27440b35b38601baa57064189f1b30856e09769`

```dockerfile
```

-	Layers:
	-	`sha256:a12ca6adb075122453c6f02c6d04a8fe032b2f5fc9c55ebe4a32b51d585277f7`  
		Last Modified: Tue, 25 Aug 2026 00:57:15 GMT  
		Size: 3.6 MB (3610154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2bc6eeb70be3234a8b73ca64467d9f7b68d861afd819ae620c836dd110157d4f`  
		Last Modified: Tue, 25 Aug 2026 00:57:14 GMT  
		Size: 16.1 KB (16095 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:9a42fa91b39b15f67548bdc0d49bce933fb4671c694da09e62807546ac45e8d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.8 MB (62800708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdf5cf2d7ac1f90f3a2c5e515bfa97318f86518bad892ff0b659224856cbe00c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 00:52:49 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:52:50 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:52:50 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:52:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:52:53 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:aaf68b813d1715d979a28cb2734f0c4792e12b8f67526d02f1eb51e9f0ab73d6`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 50.9 MB (50891162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6e9afd663e8e25027717273cbfc9ecadbceeb33d3a40f9ff1fc96c4f56661bd`  
		Last Modified: Tue, 25 Aug 2026 00:53:01 GMT  
		Size: 11.8 MB (11815841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b38f3c299e66ef16b1c45bb235868bdb393ae8a7adfe99034fda658a847817a`  
		Last Modified: Tue, 25 Aug 2026 00:53:01 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:987c0b9b811e2122f62ac9f3ebc079f41067d2242757e7381c313cf4be5f324c`  
		Last Modified: Tue, 25 Aug 2026 00:53:01 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f195cce14e3a3cca4385d6bcb839e0e6f2b76a71b23f7938740cad9b588446e3`  
		Last Modified: Tue, 25 Aug 2026 00:53:01 GMT  
		Size: 90.4 KB (90354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f45460598d7a98fefcfcc015b375b5f689f5f689b9e0591d6775d14d0d79bb`  
		Last Modified: Tue, 25 Aug 2026 00:53:02 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:5d7623edd424fac7504527d45910edf1c5d547417a36eef404ad61364e64a9e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3619806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a473896e0ce5418d0862487b4a3fd907b3a4b5b6a77c38ac57ff5b3b1da98a8`

```dockerfile
```

-	Layers:
	-	`sha256:ebc61c17e659b9af2688ade39618253d71381bfd06006b5a0d29461afaba8e4f`  
		Last Modified: Tue, 25 Aug 2026 00:53:01 GMT  
		Size: 3.6 MB (3603877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8927b24121c799aec59b63c28e586bae3bb84e8ebb4a4afd0c941b93fee92bae`  
		Last Modified: Tue, 25 Aug 2026 00:53:01 GMT  
		Size: 15.9 KB (15929 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:jammy`

```console
$ docker pull neurodebian@sha256:13705a55d8f65dd6729df6134d0ad3afb07607f9a20cf8987685d4d55dec6220
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:jammy` - linux; amd64

```console
$ docker pull neurodebian@sha256:86fbeb3f29a1e117b965a93115c6dda3c6c7c451466b2a8bc73fba644149da2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33475466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae3ea9d8e05634f34232a2364dae2a67a7f589f6cfb67adf49d2b3e19ba81714`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:29 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:30 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 18 Aug 2026 01:19:30 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 18 Aug 2026 01:19:37 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e044d3d083c15f7b5d83d6c090cbb223898498587b8a48ca6ac3b38baf5962b4`  
		Last Modified: Tue, 18 Aug 2026 01:19:43 GMT  
		Size: 3.6 MB (3624872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ff70f22bd2fe734eecb46622d617fd417490bbe17c9c5c97d30e46d9904957`  
		Last Modified: Tue, 18 Aug 2026 01:19:43 GMT  
		Size: 1.9 KB (1905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9859f96fa6483dfa40792acf6cc391027f32df83ea8e07518b02fd2b7ab8a13e`  
		Last Modified: Tue, 18 Aug 2026 01:19:43 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0ea1934a4e61b5e46ac8a41cf7d992fa570f3710d5e4b4b6d835884ca99566f`  
		Last Modified: Tue, 18 Aug 2026 01:19:43 GMT  
		Size: 111.5 KB (111470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy` - unknown; unknown

```console
$ docker pull neurodebian@sha256:2493a84cdf8de73b7e87a64f96e9843755f423f67458743062c6781c31b76249
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcf1f1f1272741c9f484aaba469d68dea636fd8f545e6c31ea2dd1365ab53747`

```dockerfile
```

-	Layers:
	-	`sha256:d3622f0227189c1ee58eb249c56a724b42c2afdb01e8ed3f0e44289aa43bc392`  
		Last Modified: Tue, 18 Aug 2026 01:19:43 GMT  
		Size: 2.2 MB (2198336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d39ebcf1516c45add7aa941d0ac895b0a50ea4b31a3522dc9bc8bb39e46ede9`  
		Last Modified: Tue, 18 Aug 2026 01:19:43 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:jammy` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:dea94749034b24fd489c5641b37f65ab10405ee0e78023c6ffebadd62828a554
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31342530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98720de307e4e68b751c6082d0d00058e9f3415bf4f3f8cc114b4bc14e5f4ba3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:12 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:13 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 18 Aug 2026 01:19:13 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 18 Aug 2026 01:19:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49f99f27e0eb7ccf53479ca26156f51bf26012dbe8592240f4bae11709ed2867`  
		Last Modified: Tue, 18 Aug 2026 01:19:27 GMT  
		Size: 3.6 MB (3608586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6555850d3e3d8ab6a9e1df7dc16027068ed9de7cb5954c9b27c6c06daa667611`  
		Last Modified: Tue, 18 Aug 2026 01:19:27 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1efb60589f50c2381ee2c45db028b7ed037bea79b5314da166ff3ce40d631b4`  
		Last Modified: Tue, 18 Aug 2026 01:19:27 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec15fcdef73ad7de5b57ac78cd80d3b2a7ee122ddbfd6a4ea74c4c4fe29083b`  
		Last Modified: Tue, 18 Aug 2026 01:19:27 GMT  
		Size: 111.3 KB (111315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy` - unknown; unknown

```console
$ docker pull neurodebian@sha256:4cace0b9c78739e1b561f903af189d8a7a726c63f5b6fd8f169b66a6ab7d5f8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fcf2cddb420006e9184758bbc06780361c538d94f7bca6fa98b1b9b0463e4af`

```dockerfile
```

-	Layers:
	-	`sha256:e39817a3f2749f6bad4a3c90ef2adde15893ef69861dd30b76998e68d156ec31`  
		Last Modified: Tue, 18 Aug 2026 01:19:27 GMT  
		Size: 2.2 MB (2198596 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ccf09072c03a81f18495938d32ef5326b107eb19da0e79aa1953335ecf2b4eaa`  
		Last Modified: Tue, 18 Aug 2026 01:19:27 GMT  
		Size: 14.1 KB (14058 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:jammy-non-free`

```console
$ docker pull neurodebian@sha256:72dfd4d53d61a36406526e5d490e04a529efb4e1e49d9a13cfa74db463565f1c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:jammy-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:aa366d330da5d87f5e122658e1f822f9a341950a67d48f343d2078ec9f6eb3e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33475744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:561fd776a9a4a75f2e62a4b2a517aea50aff61be2653d7933fe8505a7734f1d9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:30 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:31 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 18 Aug 2026 01:19:31 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 18 Aug 2026 01:19:37 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:37 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fedab5ddb1bf6578f39f6cbd2dc33fdbcc88a68a181be6c9f48c819b03ba2fcc`  
		Last Modified: Tue, 18 Aug 2026 01:19:43 GMT  
		Size: 3.6 MB (3624867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1824fc5bd77818841a1d604c185ba7af72d8d2eae27d09c1d4145a6db67324fb`  
		Last Modified: Tue, 18 Aug 2026 01:19:42 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7925b9eb1f935de529c44822563c2bdfac7c5690cafc0aa6d9b85134a517d605`  
		Last Modified: Tue, 18 Aug 2026 01:19:42 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5b38bdc8074b3ff7d9619aa2f710a0edd828ab6f52ce18394ba22be75ae6dba`  
		Last Modified: Tue, 18 Aug 2026 01:19:43 GMT  
		Size: 111.5 KB (111471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b79ffb08daaceb848d85ce8185b6aadd659a14555b3be93ecabff9bbd2520321`  
		Last Modified: Tue, 18 Aug 2026 01:19:43 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:277f2ef0af5c7741641bdade25aa71f09fd5686d92b6907e43a43c2a6e21ec1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2214535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97ac834c6c607cd41dac1d5bdc46d4f28b2fd95db9927bcd25734ddfaa4711c7`

```dockerfile
```

-	Layers:
	-	`sha256:afb50e1403ba640d40118e30dec61d408f61cd062ed86c444525d322b3d3b2b5`  
		Last Modified: Tue, 18 Aug 2026 01:19:43 GMT  
		Size: 2.2 MB (2198372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04c0f2b7759a6ab9294999ce29bedd0a370720ba9aff1a1f56a57561dd69aa3e`  
		Last Modified: Tue, 18 Aug 2026 01:19:43 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:jammy-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:fd1c123c951e8b5902a958fe49d5e8f7cda641b4958d8a03867363e9d79b7cca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31342817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bae45c95270bcb65b855bf59448c17914029f8fae0464c2e3ac33d3ccd213487`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:15 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:15 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 18 Aug 2026 01:19:15 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 18 Aug 2026 01:19:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:24 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3303233f378dd86cf77a3d560746289b432ad7b4bf0b9787ae72f585f43e26c6`  
		Last Modified: Tue, 18 Aug 2026 01:19:30 GMT  
		Size: 3.6 MB (3608578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c7cee341b5475cafafe2e6abd9a19378b48141cfef2550a35210dbb21d37088`  
		Last Modified: Tue, 18 Aug 2026 01:19:30 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1e4dfcac2e6e3a53ce0c19cfea185bfe7d076b4595e2a99afa85d7311187e74`  
		Last Modified: Tue, 18 Aug 2026 01:19:30 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c459099516e31ac00656fa77639085a7e7eda1557475d4912f12dbae7b90f60`  
		Last Modified: Tue, 18 Aug 2026 01:19:31 GMT  
		Size: 111.3 KB (111325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dbb8531e4bbefbb0c7647ca1fe68d4d7ff4c43a94f088fc633c1edbf9fc3894`  
		Last Modified: Tue, 18 Aug 2026 01:19:31 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:498fe44317def53d64778ff6ffbb6af731f66fb862927547451fb7022a32572f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2214935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27462a1d568d692065d2b4801bd6e13ad034ef4e343c1d937325a1adab6bafe0`

```dockerfile
```

-	Layers:
	-	`sha256:3ab486108d86c421a00bfaeebcc92ba21724774c8f080888bf5170315ecc0d4b`  
		Last Modified: Tue, 18 Aug 2026 01:19:30 GMT  
		Size: 2.2 MB (2198632 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3dba9a51cd7e847826dfbc09f6de8ab48c57d51e5202c408021cf8b7c9e6ac5d`  
		Last Modified: Tue, 18 Aug 2026 01:19:30 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:latest`

```console
$ docker pull neurodebian@sha256:90442b03d1539d20325c20279ec1b8a05267bdedcbdf3a6a79bab51496096d28
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:latest` - linux; amd64

```console
$ docker pull neurodebian@sha256:f6d5c72938cad91ee0fd30c3654c6587db01d24191a483f8b822ca5e5410dced
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59725313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc1ba1614dcdb127df00cb66046ee5a392a686e41b9c5b2cc8ba5e62333774c1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:54:23 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:24 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:54:24 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:54:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c88aa34e88b514a6fc663c20e2587d082385503604bd7ec752ffc94014e185af`  
		Last Modified: Tue, 25 Aug 2026 00:54:34 GMT  
		Size: 10.3 MB (10294197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b60ec1baed9a52493741097e33fcc892da307fb597f9f0f4d23a8c606ce2d295`  
		Last Modified: Tue, 25 Aug 2026 00:54:34 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c641e6eb7dabfded1b82e2d57c505c86d543e80107de5395f258291ce5158b2`  
		Last Modified: Tue, 25 Aug 2026 00:54:34 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a342d6a62bb570e42252bddfdbef07b74fd7fe0d2027f42d5317aafd1d0205ac`  
		Last Modified: Tue, 25 Aug 2026 00:54:34 GMT  
		Size: 90.4 KB (90383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:latest` - unknown; unknown

```console
$ docker pull neurodebian@sha256:501c62ec8d37e53afb960ac5f2175e4bf11f0a3b7d7691b407b3502fd61dd71d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58827c38b278a78a633bb64d02f11264f6cd8bab6910857946231ca19ce4e64b`

```dockerfile
```

-	Layers:
	-	`sha256:7468c7f1e72c047f4e786e7385a0980133ef8ad548f313079979dbc8a343a6e6`  
		Last Modified: Tue, 25 Aug 2026 00:54:34 GMT  
		Size: 3.6 MB (3619196 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68ceb0233fc51b778035f144201dfb10251a91ce25539a14ff4baf91ef4923a4`  
		Last Modified: Tue, 25 Aug 2026 00:54:34 GMT  
		Size: 14.3 KB (14251 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:latest` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:f08fb22a2ac015904871bee246d74a1e52639a489ac1c9f5278cca89ad1c2c8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59877638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4790cf48f05352841a014ee45a8803633929677a93f1dbb84f5382f556804035`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:56:33 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:34 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:56:34 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:56:37 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8470dde52347be92c29a219d0ec9b6feb51da133748dc414f0266666b4a272e8`  
		Last Modified: Tue, 25 Aug 2026 00:56:45 GMT  
		Size: 10.1 MB (10078864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3467360f2cebf7f0387dd86ea24af03765585193acd42c1d782e3985efbabc11`  
		Last Modified: Tue, 25 Aug 2026 00:56:44 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:333f6d90a17033ac694be8e8ea1719852732ddd7460bda09301c0d23d95ec34a`  
		Last Modified: Tue, 25 Aug 2026 00:56:44 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e024d9a3d10a754cfebe6bd0aa2aafb58dda70b31a5c16748c39f8942c39a68d`  
		Last Modified: Tue, 25 Aug 2026 00:56:44 GMT  
		Size: 91.0 KB (91013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:latest` - unknown; unknown

```console
$ docker pull neurodebian@sha256:132029423ffb394a29c0e7562ae07b592f88407ca08792f388c4538d464d48b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3634474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fea72597f9e6f28217523e6debc9a5dc431cad6bf69dca0712f3783d86b3ff9`

```dockerfile
```

-	Layers:
	-	`sha256:e4e5b7408e84ae71a11946dc3f3ff4ec7c651afb3f7cfd38bd1904c7ddba94a4`  
		Last Modified: Tue, 25 Aug 2026 00:56:45 GMT  
		Size: 3.6 MB (3620086 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88949446fcc5fa21445d318b7dbfcdabda6715cc377c0d5620dc2ff10bb0957d`  
		Last Modified: Tue, 25 Aug 2026 00:56:44 GMT  
		Size: 14.4 KB (14388 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:latest` - linux; 386

```console
$ docker pull neurodebian@sha256:0143a67c141e95ccf347b6d3a3d7d99011ca68caf61caacf55a5a3a2fc0ac86b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61411415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e184366ead5044b1c957dfa04a210019e2eea84e91854d140decae7ad021006c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:52:11 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:52:12 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:52:12 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:52:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:b893e4e8ae50bbe3f6f662d089d78bdcec599d1f4f6ffcc53ea4c77eba1418a5`  
		Last Modified: Mon, 24 Aug 2026 23:21:29 GMT  
		Size: 50.8 MB (50849582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfdbe5b9045c6f4c7b65146f2c919ed53f3d20a607314fc64c93b839732b7aaf`  
		Last Modified: Tue, 25 Aug 2026 00:52:24 GMT  
		Size: 10.5 MB (10468169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44faa7eba53c76d328e74262ddc1cc1e2721331d09a6711795f3cbc32b8f7577`  
		Last Modified: Tue, 25 Aug 2026 00:52:24 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c892473b9707fea4d058a0bc57f6c9797631ab94f46fadb8a523c635b1fb6a59`  
		Last Modified: Tue, 25 Aug 2026 00:52:24 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad6aa94ad1f53f196e47b28600d0f0318ac58fe27be04b91350ab8e093bbd929`  
		Last Modified: Tue, 25 Aug 2026 00:52:24 GMT  
		Size: 90.8 KB (90757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:latest` - unknown; unknown

```console
$ docker pull neurodebian@sha256:747de5536533068d15779efba06a757f9942ef8e71b18d6d8c4acc3a763c26e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3631362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26e953c79b15a3e61e16af95e76e6bd041282d01a7deab1083cea2067b2d2c9b`

```dockerfile
```

-	Layers:
	-	`sha256:634024d10ab256787f98fbdca8088419911bcd38f03928e07655574e34f9d22b`  
		Last Modified: Tue, 25 Aug 2026 00:52:24 GMT  
		Size: 3.6 MB (3617144 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e294c92a076503cc4d7b05f08e7f6cc9aaf947b0689f6728b1400ec89378d7d4`  
		Last Modified: Tue, 25 Aug 2026 00:52:24 GMT  
		Size: 14.2 KB (14218 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd`

```console
$ docker pull neurodebian@sha256:2f4ea1a65dfa7e47c4c96725af8e194bd1bedd528a35f0d7f8c2a3824c837c3a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:nd` - linux; amd64

```console
$ docker pull neurodebian@sha256:2c5f4a3b777c62b947a2abc074d6a7708fd1ea315cedc4dee00daba08a50b8e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61544654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95c06f657ff76f240428d0dac760b18ceca76944a59ac0b16ae9f1f25cad8d62`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 00:54:54 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:54 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:54:54 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:54:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f16f5a97d51498e5eccf3dd3e5e6ca2746febdb9dc2913a353263b85031a5c09`  
		Last Modified: Mon, 24 Aug 2026 23:20:40 GMT  
		Size: 49.8 MB (49841754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b211eb1458562948456608481f7b1d889be5f3d9081b801aa1e8141861e93c41`  
		Last Modified: Tue, 25 Aug 2026 00:55:06 GMT  
		Size: 11.6 MB (11609927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b07207ef0788a5d0d763b41c99dbeea2bb97492e71aff39c4221508bcc02aaa1`  
		Last Modified: Tue, 25 Aug 2026 00:55:05 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:393a25bd147b242eda3d4ba1cf660313bd17485ab17885f05f27dc31f9b5ac2b`  
		Last Modified: Tue, 25 Aug 2026 00:55:05 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11735447b7f45c39b0fd251892926600d4f98ce7679be17eb849ba10a89ef736`  
		Last Modified: Tue, 25 Aug 2026 00:55:05 GMT  
		Size: 90.1 KB (90070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd` - unknown; unknown

```console
$ docker pull neurodebian@sha256:be7f0179bb1201c6fe45864116ba3d62e7bbbc3dd3ffddc053617487a41b56e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3619823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69fe42d521cc225175a76f12aa5f9d489371253ad64cc81a259350a71d3ea664`

```dockerfile
```

-	Layers:
	-	`sha256:17139fc1afc85db5f947250815fd33ff84a8e391e687c1a673a25708c3e030b5`  
		Last Modified: Tue, 25 Aug 2026 00:55:05 GMT  
		Size: 3.6 MB (3605920 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:543ac00753219c7c046ff0a210ca07b737d6b17ab676b5eeb0bd55c6fe695ad0`  
		Last Modified: Tue, 25 Aug 2026 00:55:05 GMT  
		Size: 13.9 KB (13903 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:8db426407991f762f1407a61d12bb630bbf2d3d24055b930c03b92aac217eddd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60752988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7e5e08846191013e2321203d6fb671dd6f176200f60ff984027130f5439d90c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 00:57:05 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:57:06 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:57:06 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:57:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:af77545e1040c204ae857564446e939a826968bdb50dffaaaaeb4179e7b846d3`  
		Last Modified: Mon, 24 Aug 2026 23:20:32 GMT  
		Size: 49.5 MB (49493769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6005b5acaa3a0b2bd1252afec311d3eb9a6eccd9f61344a24db71eea1023c2`  
		Last Modified: Tue, 25 Aug 2026 00:57:18 GMT  
		Size: 11.2 MB (11165710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b541020cf7c9541e1172f8bdbb821478373672d83dc914d33adece748eefbdc4`  
		Last Modified: Tue, 25 Aug 2026 00:57:18 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c3570fa9af3d2d7da40505a9a55ec5616165fc1d63115b3779926291a272010`  
		Last Modified: Tue, 25 Aug 2026 00:57:18 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6553ed43ca213b706e7400e04b7a5c480fc87d47d7791393a0d22f41d93b0f6b`  
		Last Modified: Tue, 25 Aug 2026 00:57:18 GMT  
		Size: 90.6 KB (90603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd` - unknown; unknown

```console
$ docker pull neurodebian@sha256:7a2ffae65ef3e88bbd38fd9450b99b06c719c9ecd482fa697696c2c8ef220aac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3624069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07f95cf8beb667022257f101daf0b81b635b7ec1e945fefc5fbb701d999ed200`

```dockerfile
```

-	Layers:
	-	`sha256:68fbd0a9fcf5603e170fc87deeee7c1710dd07daedac1c87abd933fcd398302f`  
		Last Modified: Tue, 25 Aug 2026 00:57:18 GMT  
		Size: 3.6 MB (3610042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b004c344a5142a42d88fe87c4c8d13e319c4438f8e9c3e0dac1e45acafd5728`  
		Last Modified: Tue, 25 Aug 2026 00:57:18 GMT  
		Size: 14.0 KB (14027 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd` - linux; 386

```console
$ docker pull neurodebian@sha256:39a9f8f8a0b6098150bc5afa58d6c9fcade2082c8b12a8a912ac35b57fdc9aab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62926512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4d02b01d136f5fb53458c3e3fa7f4428e61f838ab5d1be5c1429a5f1e4e6573`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 00:53:10 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:11 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:53:11 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:53:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e01d3901aa4016b5ea48582531a16356a61eed1c133860429fd1cae83ee61798`  
		Last Modified: Mon, 24 Aug 2026 23:20:39 GMT  
		Size: 51.0 MB (51017431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4371e7626550b21b08dfe985c6c582c43fe7a37ef95b3a89a91c0dfef61c795`  
		Last Modified: Tue, 25 Aug 2026 00:53:24 GMT  
		Size: 11.8 MB (11815808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a699418efaa4471a4a7788fb05a01539a0803fe4ad4b5840b9bb4470fcf95cf`  
		Last Modified: Tue, 25 Aug 2026 00:53:23 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd58aa25429eae77116a3ecb3a10bac50adb0060eedff57d08e95a9a9f58e6a`  
		Last Modified: Tue, 25 Aug 2026 00:53:23 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:354e0092d1fff4b29d30cf9fa2c8ee5e8d880ee93f5ff3a9cd69b89c7199d9ce`  
		Last Modified: Tue, 25 Aug 2026 00:53:23 GMT  
		Size: 90.4 KB (90367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd` - unknown; unknown

```console
$ docker pull neurodebian@sha256:daded7ba1a6867f0f291e22340d54f7ad27782c2aab90f4048ae0198b3c32224
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3617641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2018931a0ff6e5ebecaa831e09ef786af9c0649b49c21e988e4462d71878c316`

```dockerfile
```

-	Layers:
	-	`sha256:ee97205b2cc2ceee733e18766b7c863a007a49641390d648fb597b5e618ea126`  
		Last Modified: Tue, 25 Aug 2026 00:53:23 GMT  
		Size: 3.6 MB (3603765 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8fadbaaecbefe5f776238084d57aaa316adc45877287b81fbfed6d9424945df`  
		Last Modified: Tue, 25 Aug 2026 00:53:23 GMT  
		Size: 13.9 KB (13876 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd-non-free`

```console
$ docker pull neurodebian@sha256:a1d964fe4f69fec4b6153fe4dee56ef78e967713ecea84ae032b36b185dd3971
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:nd-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:28b3bcc71ae70f4a5fc6f65aee15d1817ebac8f11469e88125ca8acf8b8b7c7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61544953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b5b4921b866e155ef7ac5bd9026883983e0b166655d8af3217ae020ae03b86`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 00:55:04 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:55:05 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:55:05 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:55:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:55:09 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:f16f5a97d51498e5eccf3dd3e5e6ca2746febdb9dc2913a353263b85031a5c09`  
		Last Modified: Mon, 24 Aug 2026 23:20:40 GMT  
		Size: 49.8 MB (49841754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1c186af471100f13a8ab5207c0b3e4fc44b0c93975c4ff468187425b9d9dbb3`  
		Last Modified: Tue, 25 Aug 2026 00:55:17 GMT  
		Size: 11.6 MB (11609790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e4f890879362abb16ab8d0acba340632615f7669c21c6d025d8142628f74d27`  
		Last Modified: Tue, 25 Aug 2026 00:55:16 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:354d868b45b86de340c31ab52667967a25816d15f01f672c9b8cca7f61b5abf7`  
		Last Modified: Tue, 25 Aug 2026 00:55:16 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e80d760783c8f907062f9d5a7f7cb7f0fa23523b902b7119198d8be01925be00`  
		Last Modified: Tue, 25 Aug 2026 00:55:16 GMT  
		Size: 90.1 KB (90085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33b72176c3f5378e62d5fe6184e9f8d7763e13fdc054227901449ef9fa9c7e3`  
		Last Modified: Tue, 25 Aug 2026 00:55:17 GMT  
		Size: 417.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ea1abe7f38f669d7616fa9394a7ae25011aa547cf244aefe893fae027d357c84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3621887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbf2c490fe4934e7ac90a948aeafd55f2c554514a34d0b3c35d0e2bc168f7285`

```dockerfile
```

-	Layers:
	-	`sha256:eed627add6390ec514da310551acbb2afaca7c70f2fa71fb5126d5f7792f1270`  
		Last Modified: Tue, 25 Aug 2026 00:55:16 GMT  
		Size: 3.6 MB (3605956 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0db967fe0026be04d988906ba56b8e808612eb88a85b428f323443a89b0386a6`  
		Last Modified: Tue, 25 Aug 2026 00:55:16 GMT  
		Size: 15.9 KB (15931 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:b788befdfdb7b29bd6ed30a2e334c67298666b2410ec032969f85ca5ac33757f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60753400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5801edf86b317c127775ea83987e51ee130b78334ef8d7217d1914986f88c74`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 00:57:06 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:57:06 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:57:06 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:57:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:57:10 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:af77545e1040c204ae857564446e939a826968bdb50dffaaaaeb4179e7b846d3`  
		Last Modified: Mon, 24 Aug 2026 23:20:32 GMT  
		Size: 49.5 MB (49493769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06e266dd9e6c6d06fe75210f4fc731c23df1102a2d8b0784098f518ece6db334`  
		Last Modified: Tue, 25 Aug 2026 00:57:19 GMT  
		Size: 11.2 MB (11165697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b2646b2dc6eee765d273e31aa9a0fc7308dad8f07b2590ce0669dc3bcb0f413`  
		Last Modified: Tue, 25 Aug 2026 00:57:18 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c3570fa9af3d2d7da40505a9a55ec5616165fc1d63115b3779926291a272010`  
		Last Modified: Tue, 25 Aug 2026 00:57:18 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cdb98edd6cc4d22b65f3cd3293691759f2fd3145430f8834f6e54a26a8d5ce0`  
		Last Modified: Tue, 25 Aug 2026 00:57:18 GMT  
		Size: 90.6 KB (90612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e3bac78a665db68371d34871abd1cc4c85230d206b84eaef6080bcee1939479`  
		Last Modified: Tue, 25 Aug 2026 00:57:19 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8da7fd3a4cc7cb18431a58376c5cdacabe0b55b29f0e7cf06db408466323e83d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3626148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f305d444c7d000d35d55622ecb1c1887d362019e58231ab5b3d7fb82596ac20`

```dockerfile
```

-	Layers:
	-	`sha256:66b73b651c06db393829c3472081927473b7527ae73592d690a86f05ab6ba8c9`  
		Last Modified: Tue, 25 Aug 2026 00:57:18 GMT  
		Size: 3.6 MB (3610078 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90ccb5fcba62b8fdade65bee53f0e7ab15fa11d00a548c3f65ef5ff69903b500`  
		Last Modified: Tue, 25 Aug 2026 00:57:18 GMT  
		Size: 16.1 KB (16070 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:2829cedfc1b3a7226e231d1fd856feeb91edcd6000bcd5993e45a3929f8d23b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62926963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f82ec4e39427c17b6918d54425ff2880bc1fe08bf6308ab00cfe0893c5d9f4d7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 00:53:17 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:18 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:53:18 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:53:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:22 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:e01d3901aa4016b5ea48582531a16356a61eed1c133860429fd1cae83ee61798`  
		Last Modified: Mon, 24 Aug 2026 23:20:39 GMT  
		Size: 51.0 MB (51017431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c1796804f4e15eb68dd7db971fe4c99e58304b3c5c6dac6bb99642bdc7d53a9`  
		Last Modified: Tue, 25 Aug 2026 00:53:30 GMT  
		Size: 11.8 MB (11815826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7772a68959ea962c480cead241cd6783ec8248a110cd658991eecb0d8ed75dd`  
		Last Modified: Tue, 25 Aug 2026 00:53:29 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1e1f63ab6ff862cf461766660538d6950c49b7acd92a7590990268914e6d27b`  
		Last Modified: Tue, 25 Aug 2026 00:53:29 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ace446340aa875574ea6bae6d5d66fd735682e907a0d563d01ffd015fd871c81`  
		Last Modified: Tue, 25 Aug 2026 00:53:30 GMT  
		Size: 90.4 KB (90380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea76f06486d22e15a9f6b738f70fff12999030cf1d28373dde621523b4f20f12`  
		Last Modified: Tue, 25 Aug 2026 00:53:30 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:adb16adf39387fbfa3b1a0ba43d068e44ff62b7efc13e9c4adabffc1d3d6c406
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3619702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0093dd83204aa715d6716c85898a9a88441f4f2ae8ab677c0380f6b38e7c744`

```dockerfile
```

-	Layers:
	-	`sha256:4e307d0a13a6c178816033d3687606e7d7091a0f78b34ee142228409de0daacb`  
		Last Modified: Tue, 25 Aug 2026 00:53:30 GMT  
		Size: 3.6 MB (3603801 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e7f54d31a55ae33d20593b31599d8f5edc87a650d1404f3bcf2fd80b0e58ed7`  
		Last Modified: Tue, 25 Aug 2026 00:53:29 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd110`

```console
$ docker pull neurodebian@sha256:e4b3734c909afcc26d893e27aa72089cc8812dbc85f0483d41e10c63e57efdb0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:nd110` - linux; amd64

```console
$ docker pull neurodebian@sha256:c4e146a63d0da80337add33e80e84ade9dcd28bfd853c3b1ed4e289e646e93da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64984285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9e3db308e407fea4d3851ca8b0cc172890dad416819817a321cb187646e4065`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:53:57 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:57 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:53:57 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:54:00 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:94b0efe6d4f788b1b894c04a6c6885d53a41bcd0b85757fffacd2bc4de142847`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 53.8 MB (53777392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76000aafacd8816fbd8cf97ee81a6a2fce234b4dcd65868c7af2e0c3feae6de9`  
		Last Modified: Tue, 25 Aug 2026 00:54:07 GMT  
		Size: 11.1 MB (11103350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b09a9c2a463bb512ca01dbcbf50ddc96cff0661750b19ef34abf93ca38272566`  
		Last Modified: Tue, 25 Aug 2026 00:54:07 GMT  
		Size: 1.9 KB (1892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d0158e4d7144df5b8075d9119f67e2b58504f5c865db9eb07dd667a357344df`  
		Last Modified: Tue, 25 Aug 2026 00:54:07 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2432e2df63ed9bd4a2d928366c732eeae57d30ea5623b0ac09579ecef4f321ad`  
		Last Modified: Tue, 25 Aug 2026 00:54:07 GMT  
		Size: 101.4 KB (101386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd110` - unknown; unknown

```console
$ docker pull neurodebian@sha256:19c7b8162d90a5d152b473cc26cef7ad7e9af3c10ab3112d1a44ebf9ec646074
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4381884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7295d88b5d13736fd29394bdf2ebe407af76d0c7733e9ffe1d086d786f21c60`

```dockerfile
```

-	Layers:
	-	`sha256:8b3cb19f44668ed1f325c084d55e059f9896456946bdca051e4d5bbef95ba111`  
		Last Modified: Tue, 25 Aug 2026 00:54:07 GMT  
		Size: 4.4 MB (4367918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:599e8e7516fb2631a8091ce2f4695390b41cd0aabe30a5caf74034c03181c5af`  
		Last Modified: Tue, 25 Aug 2026 00:54:07 GMT  
		Size: 14.0 KB (13966 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd110` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:33963c667b694d0ca22c1d75de40a8f4e605636d7c8d6a47a167f7693cebb14b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 MB (63474740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18884dab2f7c4e948656d123566cbf96f94fc2e31d3da559ae207726f832f331`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:56:13 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:13 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:56:13 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:56:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:efeeefc1421af2e3b9b27f2b236e6fca6b6df5f1f1d5919c2608f27cc4503c31`  
		Last Modified: Mon, 24 Aug 2026 23:20:19 GMT  
		Size: 52.3 MB (52261343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a5a7542207426662effd3e699135ad2bf524acda8906028fcd0846364c40fbe`  
		Last Modified: Tue, 25 Aug 2026 00:56:27 GMT  
		Size: 11.1 MB (11109978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:312289dacd6459491d155bc367e065ead4c48053cd7eaeaa4e31982d2a6fdbd2`  
		Last Modified: Tue, 25 Aug 2026 00:56:27 GMT  
		Size: 1.9 KB (1891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0105e6997f403ddbebce613326588d8f91c37c51fdbf04c6f80333a5de65621d`  
		Last Modified: Tue, 25 Aug 2026 00:56:27 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78646afeedc40ba8fdfe088ceac1649498608db070697fa0e0e34c7c0c4d0ad7`  
		Last Modified: Tue, 25 Aug 2026 00:56:27 GMT  
		Size: 101.3 KB (101264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd110` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ed3c3799752649aae6238e3676a27f4e2f628ba669093857203f7cf0f78f0715
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4381616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbd2860cffea387b0fc36a6416e74e0502a2ab3da3a1a8fdcd13435d03587ce5`

```dockerfile
```

-	Layers:
	-	`sha256:a6492380268d2cdba9ef2fd9b1150d9c496d63b233f4405853431280305c6a71`  
		Last Modified: Tue, 25 Aug 2026 00:56:27 GMT  
		Size: 4.4 MB (4367525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:600582c0a6823188743ada767c7695ac2b3a29914aad192fbe60f33abfd0d534`  
		Last Modified: Tue, 25 Aug 2026 00:56:27 GMT  
		Size: 14.1 KB (14091 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd110` - linux; 386

```console
$ docker pull neurodebian@sha256:ea4c2d937d34187cb11976acb5ea2742a40e0e8e5df2458e8b52f47f4eadf63c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66322024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a085fc93cdd59cc39668f60ca3ea5f4f5c17e4a9f023e697b1fc91ca0007e1b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:51:22 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:22 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:51:22 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:51:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f64e33df6f56ecdb94ffda8ff8b3392edefc222230e3c0514b62a3448a7e7e0c`  
		Last Modified: Mon, 24 Aug 2026 23:20:35 GMT  
		Size: 54.7 MB (54716169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cb8dc8200f61140c45a29b8ad59cc971698bdc77a8aa0e2e11712d651d9d99b`  
		Last Modified: Tue, 25 Aug 2026 00:51:34 GMT  
		Size: 11.5 MB (11502420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36d03e1f53fa510826f0d8f3386b290fcb87f234316ad96bd186c91770ec6d09`  
		Last Modified: Tue, 25 Aug 2026 00:51:33 GMT  
		Size: 1.9 KB (1891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73826de2ad6c8e2b918da4fddd8255d89d3ec47ddf331f2ef3c34919e12ef0fc`  
		Last Modified: Tue, 25 Aug 2026 00:51:33 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:172becca597faa21aebaf85822ce2cc02490238cba10ed90adff93972f6b0fde`  
		Last Modified: Tue, 25 Aug 2026 00:51:34 GMT  
		Size: 101.3 KB (101279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd110` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8c6fef6a08a1a1114b2ccb0c1d9c77f303b1bc3015e5f67e118f71cc0411767b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4378375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41c7778a694e4c625d5f3e6931b99b17fecb6e09ca6bd4df904b399fed8b896f`

```dockerfile
```

-	Layers:
	-	`sha256:710e858810f0b6883c6c01e5cc80311f17d1264173682516958aaf5e0409de93`  
		Last Modified: Tue, 25 Aug 2026 00:51:34 GMT  
		Size: 4.4 MB (4364437 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a319c8b0cbe746dc64f86c74eb53ebcd08fca33b5294c1b76e49e065ac97204`  
		Last Modified: Tue, 25 Aug 2026 00:51:33 GMT  
		Size: 13.9 KB (13938 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd110-non-free`

```console
$ docker pull neurodebian@sha256:7e97da8b6892d33e557e688e7b5795f730f7304cede7fd866f27d56b1f37af82
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:nd110-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:0d0fa351aaf9757917863b4d57f1c361143d352b7a31d9c10f74efe3084f12f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64984738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13b8d1a07ac8b9c7bf1f0d9b07ab2b9108229ff0e7717ff1fd7e050d4eedaf80`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:53:59 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:59 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:53:59 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:54:01 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:02 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:94b0efe6d4f788b1b894c04a6c6885d53a41bcd0b85757fffacd2bc4de142847`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 53.8 MB (53777392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4124e8f54912c16b2111a87ff0e79902ba790f490abd2a4eb79289f7d2b51c2`  
		Last Modified: Tue, 25 Aug 2026 00:54:09 GMT  
		Size: 11.1 MB (11103414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35d81fdd92194a0187437e48f00142eb39694e0a9db33d436babc46aed7ae622`  
		Last Modified: Tue, 25 Aug 2026 00:54:09 GMT  
		Size: 1.9 KB (1892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbb577a9e54e29a4bf6d5e88ad422f5ac835569b6a5297be9cc83f8104317d46`  
		Last Modified: Tue, 25 Aug 2026 00:54:09 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094c2a9113f514c53c25db0e533db45af17e770af47fe9214cd7c33d8d336c40`  
		Last Modified: Tue, 25 Aug 2026 00:54:09 GMT  
		Size: 101.4 KB (101386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57ac35525dd8d5e50f337bfba5a14f20f1ffc7c14b016918eed2860a250866a4`  
		Last Modified: Tue, 25 Aug 2026 00:54:10 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd110-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:3825ea79b9e8db9cb7f2722684de720a55529b1dbf209c78bd824821581cee21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4383946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb2e086f608d93629ef18776ffd5f89739cabb2ace9d422f911134f236e006c9`

```dockerfile
```

-	Layers:
	-	`sha256:6631cc8e1aec11ffb259941f17faced3fbb40db982ef81bfa6c61d47d87b2c10`  
		Last Modified: Tue, 25 Aug 2026 00:54:09 GMT  
		Size: 4.4 MB (4367954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9cdb897c72854335107ab8111cd1037f5ab1b0ce4ee2955a5f691954ddf5c19e`  
		Last Modified: Tue, 25 Aug 2026 00:54:09 GMT  
		Size: 16.0 KB (15992 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd110-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:e6d87a01005f8ed4f5bf8d6201973341ea9abd57f0fa145501416dd46714b1db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 MB (63475076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f50f681c917d9f057fe0c4cad0e0016ab746294418a822a1ac7eadbd21ec64df`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:56:14 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:14 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:56:14 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:56:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:17 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:efeeefc1421af2e3b9b27f2b236e6fca6b6df5f1f1d5919c2608f27cc4503c31`  
		Last Modified: Mon, 24 Aug 2026 23:20:19 GMT  
		Size: 52.3 MB (52261343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5bdbdeeffb7b29a91e6d886ab9b6cc41d4f84d594057885734b05710f9cf903`  
		Last Modified: Tue, 25 Aug 2026 00:56:25 GMT  
		Size: 11.1 MB (11109935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72131d3391fc34884a7134b186d48509013cf962c3b1ac8ae4475ffed4d38586`  
		Last Modified: Tue, 25 Aug 2026 00:56:25 GMT  
		Size: 1.9 KB (1892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c4ab63acd5e9e64b7b41c1cf6c8bcecd614339063052844d3d5050e4bf93db9`  
		Last Modified: Tue, 25 Aug 2026 00:56:25 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee5a6a0013ea40c96d46e4daaefb13d988511949fbbc7646162228f6942d6368`  
		Last Modified: Tue, 25 Aug 2026 00:56:25 GMT  
		Size: 101.3 KB (101253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40c5da5680ad0f83a3cb0e76cfaf824d4231f039402a43bbfb592198ac628c71`  
		Last Modified: Tue, 25 Aug 2026 00:56:26 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd110-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9ab8c9fd7e86e6eef946ebdd8700368ad6c1a26367f6544201daf868d27e5921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4383695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a50cb9e0062fce01e92afc2c2baa66e097c6b735302e28aa50c6a794c7324fc`

```dockerfile
```

-	Layers:
	-	`sha256:69d0fa87784592d621c64f0b6eeb3ab878ea8f9c6f860d5a74deedc8f49a1f0c`  
		Last Modified: Tue, 25 Aug 2026 00:56:25 GMT  
		Size: 4.4 MB (4367561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2901dc5f7ec3adc9f9905b6b3757cd949a6071d1d6386f1126b38b3d38ab6b16`  
		Last Modified: Tue, 25 Aug 2026 00:56:25 GMT  
		Size: 16.1 KB (16134 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd110-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:c4db051361d46bc0c23e7268368f46b1f2f164830ea01ae620bdc31b91845b91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66322428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6adce4ff8d29856da035d71fe508666b82c8cac257d90f7b3101c14effeab66c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:51:30 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:31 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:51:31 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:51:34 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:34 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:f64e33df6f56ecdb94ffda8ff8b3392edefc222230e3c0514b62a3448a7e7e0c`  
		Last Modified: Mon, 24 Aug 2026 23:20:35 GMT  
		Size: 54.7 MB (54716169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7072e62a6d4e449ac0df726896aafdaf13b77a88a028b25f91e356ad9f80611`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 11.5 MB (11502444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a1d757649f936df42263da41ee6afc02a10191445f56997d24f05d5b79fb2f1`  
		Last Modified: Tue, 25 Aug 2026 00:51:41 GMT  
		Size: 1.9 KB (1891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76471cbeee5d83a2ceccd7a91211531d73f88160cbe4062a1e818815afe9fbd2`  
		Last Modified: Tue, 25 Aug 2026 00:51:41 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7fdfe1792ce7ccacc30f06304a5be7b81712e1a22ef57208f582378cd68ef8`  
		Last Modified: Tue, 25 Aug 2026 00:51:41 GMT  
		Size: 101.3 KB (101268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6137b62f177ffb6436227e59ac961ef6151a1b4faaabc21a2cdd6313e77260db`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd110-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:88c2674b5b6aab18a598642c31857a6f177faddc2bc12f5cd6d617474bfac84a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4380437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7989a2c3effaa8f3de7d2add9af0b47a47bf24fbdbdcc04560cfae80af5219d3`

```dockerfile
```

-	Layers:
	-	`sha256:67eb7f1b4cfa4b714a541cdc27564e5ccd1de389abdc9ce31ce98c0b5287ab95`  
		Last Modified: Tue, 25 Aug 2026 00:51:41 GMT  
		Size: 4.4 MB (4364473 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:276c2691ff11ddf8a3882b10eea0e7ee0ee1e9294c53966cf1411cc1f355d796`  
		Last Modified: Tue, 25 Aug 2026 00:51:41 GMT  
		Size: 16.0 KB (15964 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd120`

```console
$ docker pull neurodebian@sha256:68e1cdc437695c84d269ac5d458c8d20acaefb7ce82bee2850ed51ebc0bce9f2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:nd120` - linux; amd64

```console
$ docker pull neurodebian@sha256:d12e035abbaf95afd44a12dfb6081da94a30e455105022222f2e95635ec5bd96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59866455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8430ae997e6bb0c3f65441679fc1801aff4c7f7cdf2bd789b3ee8c00c8f44a63`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:54:11 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:11 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:54:12 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:54:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7336ae245b2f75e2b26e89ac0d831cf717fc229902d7f6cc13301a3013cbca3`  
		Last Modified: Tue, 25 Aug 2026 00:54:32 GMT  
		Size: 11.3 MB (11273529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0deeeed784b0fe9c85328f10d61eb7172ad822244be4beab84e267a8308c7d1`  
		Last Modified: Tue, 25 Aug 2026 00:54:32 GMT  
		Size: 1.9 KB (1900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab20587be59ec35a37d935ee51ed828fb4c5fcf2741b6823bdd98cf1602fe31c`  
		Last Modified: Tue, 25 Aug 2026 00:54:32 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06268731d9fb2f91db7c86f6b0dfbefee50ac39c5bcba25d38f52433201788ca`  
		Last Modified: Tue, 25 Aug 2026 00:54:32 GMT  
		Size: 93.4 KB (93391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120` - unknown; unknown

```console
$ docker pull neurodebian@sha256:610cf74b24e92709bed0393d95913b6d09e66ce31af8bc211b365f56bd13578e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4089916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dffcb50a87f1c9303332979a47a1f9bc192488c3296465137865cb9ec9bd061d`

```dockerfile
```

-	Layers:
	-	`sha256:83d5cdf1d70eb9fde3db32038686248b40a6c5312f52fe41335a391a6b20e1e2`  
		Last Modified: Tue, 25 Aug 2026 00:54:32 GMT  
		Size: 4.1 MB (4075951 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:76ee5a3bcf33391a18c944039a44994f8ae9e82dc58db8142465481a82749bb4`  
		Last Modified: Tue, 25 Aug 2026 00:54:32 GMT  
		Size: 14.0 KB (13965 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd120` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:ed84c3bd6a2b9d196c1c1046f2df2d0cf595bd3e495764ecc2e1b31e410c729f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59732286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9b85c40ca270935c8379e29eb9fdc35d98c07c7c93cf0158307fb91a794f60b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:56:08 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:09 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:56:09 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:56:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bb473d834964aa6e85414151b9b130576002f4cc7b7e455c7fdfca220797b11`  
		Last Modified: Tue, 25 Aug 2026 00:56:19 GMT  
		Size: 11.3 MB (11252907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00ef85fd01e6d732af7d262be470c7767ef233835298cbdc627c4a5e82cdc17f`  
		Last Modified: Tue, 25 Aug 2026 00:56:19 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a16f36cd66a6bd3563ad0cd2aa4428ad056492378efdeaa34f9a92a3e21002b`  
		Last Modified: Tue, 25 Aug 2026 00:56:19 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b9ecc6cba59236cae2b6b6ddc889e6f984fe5a59f39b59cfce667651334cee3`  
		Last Modified: Tue, 25 Aug 2026 00:56:19 GMT  
		Size: 93.6 KB (93556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120` - unknown; unknown

```console
$ docker pull neurodebian@sha256:980ab228217d3b88b03dd6d3bc0e4d598949464e42bb706a88599ac4c15c662f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:194bdbab9c6a9b1328dc108127a9ca0ca3e401b7de1a7ab9821725e68acf244e`

```dockerfile
```

-	Layers:
	-	`sha256:a23577eb52903b8c46f77587eeb4e22d581787b85a46869a37270b0ff86bbd38`  
		Last Modified: Tue, 25 Aug 2026 00:56:19 GMT  
		Size: 4.1 MB (4076193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8770028ffea3c693943fbcc22a42e463981b74a7377479f621e51fcc9de2b067`  
		Last Modified: Tue, 25 Aug 2026 00:56:19 GMT  
		Size: 14.1 KB (14090 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd120` - linux; 386

```console
$ docker pull neurodebian@sha256:aff5bc42b7a1eeb4725c10135a836972b8ae7e9fe040b8ae91b438c5b8b7780c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61274166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0675ac7d612032b806d6ac658a7e213fd855eaca972196de42f256bdbc03c55`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:45 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:46 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:51:46 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:51:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:87896a92d6ed96e4c8127d574fb44191e126b11d1a05b77306bc1034c455ec5d`  
		Last Modified: Mon, 24 Aug 2026 23:20:08 GMT  
		Size: 49.5 MB (49485396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfdc54cbbf90d4683e40020bb9ac3d6a2bfc35f5b61f241f95548431e8761e81`  
		Last Modified: Tue, 25 Aug 2026 00:51:56 GMT  
		Size: 11.7 MB (11693174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11de585d12d59709b748ed1b55b3d775105a97a7159c3a13947bdfb5f0f5affd`  
		Last Modified: Tue, 25 Aug 2026 00:51:56 GMT  
		Size: 1.9 KB (1903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f1be1788e3fe9b565a3516067afd79a73b5502179fa3a41319221f91a913987`  
		Last Modified: Tue, 25 Aug 2026 00:51:56 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:024adb886ac6b6c9abd917a676dafbd58bfee472da7c51e79235870411b62d8a`  
		Last Modified: Tue, 25 Aug 2026 00:51:56 GMT  
		Size: 93.4 KB (93419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ee484a199d8128ce8c68ef573a34164aaf64cbdb88e21bbb51457a6835b0f4d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4087855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7da09bee78623eb081af3b47b13c28fc1f42b465666b8d65d90242791c82216`

```dockerfile
```

-	Layers:
	-	`sha256:788068166d8775d46608484bace8258d758f7d0dc5a2d1905f31433bfd61d8e6`  
		Last Modified: Tue, 25 Aug 2026 00:51:56 GMT  
		Size: 4.1 MB (4073918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4951ac794b6c8842e188d2bd06fcebdb545ec88232742cddf03c4b9d9b84bdd`  
		Last Modified: Tue, 25 Aug 2026 00:51:56 GMT  
		Size: 13.9 KB (13937 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd120-non-free`

```console
$ docker pull neurodebian@sha256:bc694492031b8ec54b86f338766ccbc0353f961669de65b1ad53857d6c275158
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:nd120-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:350b3b339573ddda73417a51ea68fcdedc0df06347453b23602ad34b76aa0b63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59866932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74d830a27ed956bd6273fd76f1f3473a47b0e3e0788298da3f7aadce314ce7ed`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:54:19 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:20 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:54:20 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:54:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:22 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49396bf6f048da2520e62e2054f85dc7bdae22b8d96121f5f44d8d896f6e3b60`  
		Last Modified: Tue, 25 Aug 2026 00:54:31 GMT  
		Size: 11.3 MB (11273562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:816baf9f402651077195bef00137b4682b085f60dbdbffa852dc07d230385675`  
		Last Modified: Tue, 25 Aug 2026 00:54:30 GMT  
		Size: 1.9 KB (1903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d11ef57d991f9e929bdb5ce98eb9daa294d45261b7aeadc7103b9bca90d7a811`  
		Last Modified: Tue, 25 Aug 2026 00:54:30 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e3e899cc2b89be46af928ff74cc113637ae22b6f82554e846196ca40000a37c`  
		Last Modified: Tue, 25 Aug 2026 00:54:30 GMT  
		Size: 93.4 KB (93382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb0313d6da1406b99d36694dbb720fff1666f28350851c7581b5aaf391ec40fe`  
		Last Modified: Tue, 25 Aug 2026 00:54:32 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9c1b2e3b939d22ac6b97d15ff427ee601fc810cadfeb31cd519e745cbcb650d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4091978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae33e2c84117be2114b48b8a6703c6df64fa6c4960a0841e72e3aa70e0c47a4b`

```dockerfile
```

-	Layers:
	-	`sha256:7662096bad904a8f7be933da3a4bd014211f8d7579fba36b71419366fed9094d`  
		Last Modified: Tue, 25 Aug 2026 00:54:30 GMT  
		Size: 4.1 MB (4075987 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63f506eca33811857e8eef432da5dd3bf2de6e050bff7b3e780f2470d8bb8ab8`  
		Last Modified: Tue, 25 Aug 2026 00:54:30 GMT  
		Size: 16.0 KB (15991 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd120-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:f9c927c0102fcd257f2bfc8a4eb6bbcc2cb7d7b9a523e54256f5c1731ccd9676
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59732833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fe032b86251656edcf9f4856191571986ba493e902ae066cd10ad9e1736a962`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:56:27 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:28 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:56:28 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:56:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:31 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6756e76b359130321fb6c3915f5a8fd23762c83aaa19a964e7c91689aca61dea`  
		Last Modified: Tue, 25 Aug 2026 00:56:39 GMT  
		Size: 11.3 MB (11252955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:975cd053eaa9e47c8b49dce9dc24863ff9f529c30080730cd2f2470ca87edec9`  
		Last Modified: Tue, 25 Aug 2026 00:56:38 GMT  
		Size: 1.9 KB (1903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b93b9b487059902387ea9e2d339cb992ff9902c916cc62ad8fd028966b5e0d8`  
		Last Modified: Tue, 25 Aug 2026 00:56:39 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:876884d649722e5f9d0b2568e730832d6ee0db4cd8fe9d8aac4e27c4be37a7bc`  
		Last Modified: Tue, 25 Aug 2026 00:56:39 GMT  
		Size: 93.6 KB (93605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0395bcd15135533f9ef590a4ba418b90727ac213d2a5345adc0c207d3b2c860e`  
		Last Modified: Tue, 25 Aug 2026 00:56:40 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:4bde0df1146bfda285bd898760be5b31f670dd66572a57b97320f549bf495420
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3077379394dd058859f1209d4aecffc80f47967c710e961f3444cd6b5e0f907`

```dockerfile
```

-	Layers:
	-	`sha256:0dd87b0bfe1f1dd6fbeaf641f561494523b75f23cc0c41e43f53428c0cfeb239`  
		Last Modified: Tue, 25 Aug 2026 00:56:39 GMT  
		Size: 4.1 MB (4076229 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b422b89c5363bc3b384cfb12cc55a0e5245b980d4ca3c60016248dedba92a50`  
		Last Modified: Tue, 25 Aug 2026 00:56:38 GMT  
		Size: 16.1 KB (16132 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd120-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:485125bdd521f34d500eaf2dd7609ac2610487a2085b9ba670a6c467f063f079
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61274593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c84a2eee08da2d90e64d7fc60cfbd37548049ad51299b02881db35440966f55d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:54 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:55 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:51:55 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:51:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:58 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:87896a92d6ed96e4c8127d574fb44191e126b11d1a05b77306bc1034c455ec5d`  
		Last Modified: Mon, 24 Aug 2026 23:20:08 GMT  
		Size: 49.5 MB (49485396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b47ede8a020b7efc17db637137af87827af522d21cbf9779aac12f104a5467c5`  
		Last Modified: Tue, 25 Aug 2026 00:52:06 GMT  
		Size: 11.7 MB (11693140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:124f18396c3472e69704d715b397018758fe9521ff5367f35f04ceb0a3eccb0f`  
		Last Modified: Tue, 25 Aug 2026 00:52:06 GMT  
		Size: 1.9 KB (1900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c8a8999c58524371f7e3ee2624d15834f4c58f186866e504f57b6537daba0ca`  
		Last Modified: Tue, 25 Aug 2026 00:52:06 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a7b72d2bd04af921b406cc596b24766c78e6361bb848fb02ba867c1fa1f805`  
		Last Modified: Tue, 25 Aug 2026 00:52:06 GMT  
		Size: 93.4 KB (93435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e24da90c0bd4d6aae80bd77bd1279651f5acda53684efe9343152cf4b124e0`  
		Last Modified: Tue, 25 Aug 2026 00:52:07 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:e02316f7ed78dcbb846b1a97090723559dcc9fd7670d7a86e7e16ca628102596
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4089916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12a24039678c7140be6ad18580b957ebf4249204acbdd06518f5947da5be80bc`

```dockerfile
```

-	Layers:
	-	`sha256:e6462134b03c821343078db774924b0a7f8e4f1a01a7a6842fb3ccf0f39f8135`  
		Last Modified: Tue, 25 Aug 2026 00:52:06 GMT  
		Size: 4.1 MB (4073954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e497ca6e602ea1a1c1272ce5c2c1226bd176f52f1f4254ea7362424e0f0bea0`  
		Last Modified: Tue, 25 Aug 2026 00:52:06 GMT  
		Size: 16.0 KB (15962 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd130`

```console
$ docker pull neurodebian@sha256:90442b03d1539d20325c20279ec1b8a05267bdedcbdf3a6a79bab51496096d28
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:nd130` - linux; amd64

```console
$ docker pull neurodebian@sha256:f6d5c72938cad91ee0fd30c3654c6587db01d24191a483f8b822ca5e5410dced
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59725313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc1ba1614dcdb127df00cb66046ee5a392a686e41b9c5b2cc8ba5e62333774c1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:54:23 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:24 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:54:24 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:54:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c88aa34e88b514a6fc663c20e2587d082385503604bd7ec752ffc94014e185af`  
		Last Modified: Tue, 25 Aug 2026 00:54:34 GMT  
		Size: 10.3 MB (10294197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b60ec1baed9a52493741097e33fcc892da307fb597f9f0f4d23a8c606ce2d295`  
		Last Modified: Tue, 25 Aug 2026 00:54:34 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c641e6eb7dabfded1b82e2d57c505c86d543e80107de5395f258291ce5158b2`  
		Last Modified: Tue, 25 Aug 2026 00:54:34 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a342d6a62bb570e42252bddfdbef07b74fd7fe0d2027f42d5317aafd1d0205ac`  
		Last Modified: Tue, 25 Aug 2026 00:54:34 GMT  
		Size: 90.4 KB (90383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130` - unknown; unknown

```console
$ docker pull neurodebian@sha256:501c62ec8d37e53afb960ac5f2175e4bf11f0a3b7d7691b407b3502fd61dd71d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58827c38b278a78a633bb64d02f11264f6cd8bab6910857946231ca19ce4e64b`

```dockerfile
```

-	Layers:
	-	`sha256:7468c7f1e72c047f4e786e7385a0980133ef8ad548f313079979dbc8a343a6e6`  
		Last Modified: Tue, 25 Aug 2026 00:54:34 GMT  
		Size: 3.6 MB (3619196 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68ceb0233fc51b778035f144201dfb10251a91ce25539a14ff4baf91ef4923a4`  
		Last Modified: Tue, 25 Aug 2026 00:54:34 GMT  
		Size: 14.3 KB (14251 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:f08fb22a2ac015904871bee246d74a1e52639a489ac1c9f5278cca89ad1c2c8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59877638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4790cf48f05352841a014ee45a8803633929677a93f1dbb84f5382f556804035`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:56:33 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:34 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:56:34 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:56:37 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8470dde52347be92c29a219d0ec9b6feb51da133748dc414f0266666b4a272e8`  
		Last Modified: Tue, 25 Aug 2026 00:56:45 GMT  
		Size: 10.1 MB (10078864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3467360f2cebf7f0387dd86ea24af03765585193acd42c1d782e3985efbabc11`  
		Last Modified: Tue, 25 Aug 2026 00:56:44 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:333f6d90a17033ac694be8e8ea1719852732ddd7460bda09301c0d23d95ec34a`  
		Last Modified: Tue, 25 Aug 2026 00:56:44 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e024d9a3d10a754cfebe6bd0aa2aafb58dda70b31a5c16748c39f8942c39a68d`  
		Last Modified: Tue, 25 Aug 2026 00:56:44 GMT  
		Size: 91.0 KB (91013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130` - unknown; unknown

```console
$ docker pull neurodebian@sha256:132029423ffb394a29c0e7562ae07b592f88407ca08792f388c4538d464d48b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3634474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fea72597f9e6f28217523e6debc9a5dc431cad6bf69dca0712f3783d86b3ff9`

```dockerfile
```

-	Layers:
	-	`sha256:e4e5b7408e84ae71a11946dc3f3ff4ec7c651afb3f7cfd38bd1904c7ddba94a4`  
		Last Modified: Tue, 25 Aug 2026 00:56:45 GMT  
		Size: 3.6 MB (3620086 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88949446fcc5fa21445d318b7dbfcdabda6715cc377c0d5620dc2ff10bb0957d`  
		Last Modified: Tue, 25 Aug 2026 00:56:44 GMT  
		Size: 14.4 KB (14388 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130` - linux; 386

```console
$ docker pull neurodebian@sha256:0143a67c141e95ccf347b6d3a3d7d99011ca68caf61caacf55a5a3a2fc0ac86b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61411415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e184366ead5044b1c957dfa04a210019e2eea84e91854d140decae7ad021006c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:52:11 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:52:12 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:52:12 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:52:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:b893e4e8ae50bbe3f6f662d089d78bdcec599d1f4f6ffcc53ea4c77eba1418a5`  
		Last Modified: Mon, 24 Aug 2026 23:21:29 GMT  
		Size: 50.8 MB (50849582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfdbe5b9045c6f4c7b65146f2c919ed53f3d20a607314fc64c93b839732b7aaf`  
		Last Modified: Tue, 25 Aug 2026 00:52:24 GMT  
		Size: 10.5 MB (10468169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44faa7eba53c76d328e74262ddc1cc1e2721331d09a6711795f3cbc32b8f7577`  
		Last Modified: Tue, 25 Aug 2026 00:52:24 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c892473b9707fea4d058a0bc57f6c9797631ab94f46fadb8a523c635b1fb6a59`  
		Last Modified: Tue, 25 Aug 2026 00:52:24 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad6aa94ad1f53f196e47b28600d0f0318ac58fe27be04b91350ab8e093bbd929`  
		Last Modified: Tue, 25 Aug 2026 00:52:24 GMT  
		Size: 90.8 KB (90757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130` - unknown; unknown

```console
$ docker pull neurodebian@sha256:747de5536533068d15779efba06a757f9942ef8e71b18d6d8c4acc3a763c26e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3631362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26e953c79b15a3e61e16af95e76e6bd041282d01a7deab1083cea2067b2d2c9b`

```dockerfile
```

-	Layers:
	-	`sha256:634024d10ab256787f98fbdca8088419911bcd38f03928e07655574e34f9d22b`  
		Last Modified: Tue, 25 Aug 2026 00:52:24 GMT  
		Size: 3.6 MB (3617144 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e294c92a076503cc4d7b05f08e7f6cc9aaf947b0689f6728b1400ec89378d7d4`  
		Last Modified: Tue, 25 Aug 2026 00:52:24 GMT  
		Size: 14.2 KB (14218 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd130-non-free`

```console
$ docker pull neurodebian@sha256:6cbb92e4348029f024d0376c348e19e520413fe1242f1eb39eccd802df38b9b6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:nd130-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:585d4e57e66aa723b87419f06d00117448d8210da84990f53c5843dc76f1ce2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59725690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eed4dd46f57dd6dbb03c4fdbaff037ff14d0e896c70f4447b236b2c958f2f365`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:54:46 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:47 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:54:47 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:54:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:50 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64ad5d9f3fd4e2cb063a7e2df838d2a47b1d7dd8e8b3f65687f861908a7d7af`  
		Last Modified: Tue, 25 Aug 2026 00:54:59 GMT  
		Size: 10.3 MB (10294135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b92b2637641beb37fe403e7131f2f55ac1c8afff80d68b11de0924e3aa3074b9`  
		Last Modified: Tue, 25 Aug 2026 00:54:58 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1083e2a2691b7df480c0f33fa9019fcfdef0e2f8a520e21ed85116834afb4409`  
		Last Modified: Tue, 25 Aug 2026 00:54:58 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7195558f7b5aa2b5acc05bf1a0e9ea0a2ffe2b9c8c45ea7a76c4fac932c2ce33`  
		Last Modified: Tue, 25 Aug 2026 00:54:58 GMT  
		Size: 90.4 KB (90372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c54cfb8daa375972df1eeb51a7cdb1085b4a42529f259fa77bab62aa81a1558`  
		Last Modified: Tue, 25 Aug 2026 00:54:59 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ce6cfba84205a5e7e1bc9a1ef58ea8511fa18d97eb9a980625a5eec2fd201308
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9420510e3d88ccc2a6099964dbb45f35f9ba39138dad791573e25a5d1d5a6d2b`

```dockerfile
```

-	Layers:
	-	`sha256:42704e9007a9e84a191dd9c58499825b7c0ff69c93774c5a04560c6b030bd6e7`  
		Last Modified: Tue, 25 Aug 2026 00:54:59 GMT  
		Size: 3.6 MB (3619236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:373b4a68b3fa1227d46bfb6b5004f5dcf976b010073c707400c0662277da705a`  
		Last Modified: Tue, 25 Aug 2026 00:54:58 GMT  
		Size: 16.3 KB (16282 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:c38c5fac28fddd7bad3aa59153c46cea064f7b5cdd221c86b5d37b98fcd1859b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59878132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f277230f9ac4f2ab1b29bbeee51284919bb180385fcd8e2e06ca454d3b1bbb5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:56:40 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:41 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:56:41 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:56:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:45 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7097863ad40529713edf41cdebe89b47cc47e8a45a7d58b28666c5d33d50228`  
		Last Modified: Tue, 25 Aug 2026 00:56:53 GMT  
		Size: 10.1 MB (10078877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0f9a2dc15cc9fa5e9c135f95ccf7940ab0474022ad9d4525c9c746252370ec6`  
		Last Modified: Tue, 25 Aug 2026 00:56:52 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cc154c9d1d1d86dfeed14ec614a129a574fa540cd708dfcbf0f7f6949274b58`  
		Last Modified: Tue, 25 Aug 2026 00:56:52 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c30fd05d00524c4efacdece6a71abe09d836911e7f851b0c3a07e38a1050af65`  
		Last Modified: Tue, 25 Aug 2026 00:56:52 GMT  
		Size: 91.0 KB (91048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b659f5cfffaa647365fc2fc522e59f738559ebf75f2e5575cd8458a6716007`  
		Last Modified: Tue, 25 Aug 2026 00:56:53 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:b3e6d9b1d684009389e9cb021c7d98e3ff8109da37b16ccfc80be2d2bac611d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3636560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6dd3aa458d5fabc006c88dbfff018f3096c10e68968c019c7c666772af48480`

```dockerfile
```

-	Layers:
	-	`sha256:c5677fb4e7b8e20cad7625372c152cdad4234eb9f48e6816d94b1263a4e99c03`  
		Last Modified: Tue, 25 Aug 2026 00:56:53 GMT  
		Size: 3.6 MB (3620126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe0398cbdbf2c08bc4efea86ef4055096232886297c5f6a0bf5dfcc623d08d96`  
		Last Modified: Tue, 25 Aug 2026 00:56:52 GMT  
		Size: 16.4 KB (16434 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:e836ea9a1ba54fa0de85dc9632dbda7afdbef52eb368e0cb2f1aa85bd0f6722c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61411803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c1725c23372567d68105f2cff90c0927b6311a1f5adb5ed25c0b72f220a1244`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:52:21 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:52:22 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:52:22 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:52:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:52:26 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:b893e4e8ae50bbe3f6f662d089d78bdcec599d1f4f6ffcc53ea4c77eba1418a5`  
		Last Modified: Mon, 24 Aug 2026 23:21:29 GMT  
		Size: 50.8 MB (50849582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:479d199f2c8d8b85449cb45f741f35bf110ebcb25cf9ea717e05fe98a89fae5c`  
		Last Modified: Tue, 25 Aug 2026 00:52:34 GMT  
		Size: 10.5 MB (10468123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b64e11807109081e0c34c3584cb71570b13c7b598319f7445a0afc3025876f0`  
		Last Modified: Tue, 25 Aug 2026 00:52:34 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28395131873e7649c73fc75a3e865132252ea0b5f9e062fc1c2c211f698b7700`  
		Last Modified: Tue, 25 Aug 2026 00:52:33 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23b36bb10eb18abcab26c9e21acfdad1237410a8f5072f072f70b3bf4fdb755a`  
		Last Modified: Tue, 25 Aug 2026 00:52:34 GMT  
		Size: 90.7 KB (90744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3cad72be0573046258a1c91db088d374cfe4e4a8da4f585fda1e704e7f0f105`  
		Last Modified: Tue, 25 Aug 2026 00:52:34 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:1a9f1753550e7b5b868b25e388724fe1cbac11583e79246c37727c570271809c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85a0f3018dbcd8262565a2fda8c0457b46898cf15ac4ea8589f856b29d2c5a82`

```dockerfile
```

-	Layers:
	-	`sha256:f5d836b5a40467bd30eb4fbde50c9858a1a4dafa10e6c589dadb749a7c452be5`  
		Last Modified: Tue, 25 Aug 2026 00:52:34 GMT  
		Size: 3.6 MB (3617184 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e899670c9ac1983e3b70c0e88e2ecb75d8ba9155ed9bb9d9f3aca9bb0e67450e`  
		Last Modified: Tue, 25 Aug 2026 00:52:33 GMT  
		Size: 16.2 KB (16246 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd140`

```console
$ docker pull neurodebian@sha256:26e88d5d1c4ef479aeb6e820e3d8ded7942b9329d9d53197156c74ef0098d000
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:nd140` - linux; amd64

```console
$ docker pull neurodebian@sha256:e375beeae6e80e05b809366b331659980fc4600990a1f342b0d322e2961eeb67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61388299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c71fe264abf878cecfd80f66a075590d80ad05604d66de1f0840f2e9225cfbd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 00:54:46 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:46 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:54:46 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:54:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:11241ba38bb772621a206eff61590aea7dec9f95a23f267942b9b02ca75b7a37`  
		Last Modified: Mon, 24 Aug 2026 23:20:44 GMT  
		Size: 49.7 MB (49685515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fae85a670541ca046cd962a33939ef317149f1ec2fc97fd8616295863d09793`  
		Last Modified: Tue, 25 Aug 2026 00:54:57 GMT  
		Size: 11.6 MB (11609859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d75220ec19c5cbb39bbd24498c23aa446298e23a089cd30d4b61681743d901d`  
		Last Modified: Tue, 25 Aug 2026 00:54:56 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c36fc3151b1cc4706bd10a09fcf0ad6221d2832a8d53955301511af20036972f`  
		Last Modified: Tue, 25 Aug 2026 00:54:56 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b35e6f6037018bd03bd65cfa5941cde5e290dc4a65f74512dd7b4825f75a430`  
		Last Modified: Tue, 25 Aug 2026 00:54:57 GMT  
		Size: 90.0 KB (90022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8604efcbd495fcea1efb256fca9c3822aebd38f2dddaa6ec37db76d164d09dda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3619927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:382e03722b72363a2eb7123843bb3915062aca3510aa2632bb98c70e0d0eed09`

```dockerfile
```

-	Layers:
	-	`sha256:1d3edb7ed3b74ccc2e39d0e454f61d4a4d4aeffab8a38dd4af3ab06d4ce3e67b`  
		Last Modified: Tue, 25 Aug 2026 00:54:57 GMT  
		Size: 3.6 MB (3605996 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0dfafccb467850665faa2cdf973b22aca68b96ccd2548bcf9cb6bb6b9923b528`  
		Last Modified: Tue, 25 Aug 2026 00:54:57 GMT  
		Size: 13.9 KB (13931 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:a9f6d836107ccf77d7142ab36c69620806493c233a2570b9150f13fa8c2c82cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60763147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2beab25839e0d0913d782d8c154e34052c4f27db24fe25682ff9085790ef7cc8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 00:56:42 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:42 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:56:42 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:56:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ad280b75322e6e78371ef86f07cf13a9b43130485f6088f3c11bc956d28be45d`  
		Last Modified: Mon, 24 Aug 2026 23:20:38 GMT  
		Size: 49.5 MB (49503919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04ed7995d253183d337039707e99ce97f80733ca22bc52d236cec5245500bbe8`  
		Last Modified: Tue, 25 Aug 2026 00:56:54 GMT  
		Size: 11.2 MB (11165734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2bb3de7138eae1c5e3b21a155af63669876bbc264cc7c62fd904c1fd4db4142`  
		Last Modified: Tue, 25 Aug 2026 00:56:54 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5819ca1b35dd6dd19ad2637b41294db533861d126142f9060741e7fe69588a7f`  
		Last Modified: Tue, 25 Aug 2026 00:56:54 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90be8321a639564f1b56da54e415f10e8a032acf45fb5982cdc34c069cc3acd6`  
		Last Modified: Tue, 25 Aug 2026 00:56:54 GMT  
		Size: 90.6 KB (90590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140` - unknown; unknown

```console
$ docker pull neurodebian@sha256:4684a970437e9889b0a6b5c48a32a64686de743f089147c9f1320699f0f80a30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3624174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0390bad2dbecfa084590e9a820f94151e8b71ce6e74c42cbf4a69ebcd45e838`

```dockerfile
```

-	Layers:
	-	`sha256:01a73d015f9c1927b03ba6252bf844a6ac49d6815ed8d9f1846d30d8cab5cf0a`  
		Last Modified: Tue, 25 Aug 2026 00:56:54 GMT  
		Size: 3.6 MB (3610118 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a12a027008e8cf9673a67c2fdf47033378540088b6681749b5bc1d80f704f8b7`  
		Last Modified: Tue, 25 Aug 2026 00:56:54 GMT  
		Size: 14.1 KB (14056 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140` - linux; 386

```console
$ docker pull neurodebian@sha256:b108051d7e11e43f2f8458e979909d94421f2d01401f98cfd968972caec091a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.8 MB (62800098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd27f4c13be9e438686fbedc81dc20d1197a299251e2f83655ce7c14cb72a4c6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 00:52:40 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:52:41 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:52:41 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:52:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:aaf68b813d1715d979a28cb2734f0c4792e12b8f67526d02f1eb51e9f0ab73d6`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 50.9 MB (50891162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc05c85fe346e2cc27f7e3d612dce630f7c939ad72bd5e46164fe7093c2fcc6f`  
		Last Modified: Tue, 25 Aug 2026 00:52:54 GMT  
		Size: 11.8 MB (11815687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79f0216e262d6f2df19a8cda9429779358e661bfb789f1014f3bcce9053c0629`  
		Last Modified: Tue, 25 Aug 2026 00:52:53 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31a62bfba51f1120f827123597f8678a23a4a77a70eac130760a2c3e8e0b7de7`  
		Last Modified: Tue, 25 Aug 2026 00:52:53 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34d5c4688970c2f67c2737991bc1f1272729e0948d0f404f75ccbcb484b9c5e9`  
		Last Modified: Tue, 25 Aug 2026 00:52:54 GMT  
		Size: 90.3 KB (90346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140` - unknown; unknown

```console
$ docker pull neurodebian@sha256:05df8b0fb3265565263911879d9a5bf317455ef7a14f4708c3e3961417a2b42f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3617745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a97e51846e3016e2232b5b93e43a263671348a700956cfc0fbadf6e68cd7ef9`

```dockerfile
```

-	Layers:
	-	`sha256:32912fdd2cc939790264677e24f6c44149dd038467dc698b199e4b4d9f17d84b`  
		Last Modified: Tue, 25 Aug 2026 00:52:54 GMT  
		Size: 3.6 MB (3603841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99fb00f61605ca11bce01ebfe172299dbdad232358d7daacd586ed06b7e6024b`  
		Last Modified: Tue, 25 Aug 2026 00:52:54 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd140-non-free`

```console
$ docker pull neurodebian@sha256:3337668507e82f98e71f46d301bc58e0238aa03337d65062225764ce08434f4b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:nd140-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:24bc32af7a36f82b3c5ed36998a7916685fc525050f01d8b667a6dcb81a40771
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61388751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37d1dcb3f87dc32eec278d59ee9badbb0719d5df69b296536cc5eaf0b908b59f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 00:54:46 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:46 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:54:46 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:54:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:49 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:11241ba38bb772621a206eff61590aea7dec9f95a23f267942b9b02ca75b7a37`  
		Last Modified: Mon, 24 Aug 2026 23:20:44 GMT  
		Size: 49.7 MB (49685515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27cea94de4ffaafb2d5601eeb8bfa2a61eac0b8fd10461fdd83efd9c4fda5cd0`  
		Last Modified: Tue, 25 Aug 2026 00:54:57 GMT  
		Size: 11.6 MB (11609840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d75220ec19c5cbb39bbd24498c23aa446298e23a089cd30d4b61681743d901d`  
		Last Modified: Tue, 25 Aug 2026 00:54:56 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c36fc3151b1cc4706bd10a09fcf0ad6221d2832a8d53955301511af20036972f`  
		Last Modified: Tue, 25 Aug 2026 00:54:56 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b150ec5b6f958a1c2eb883716bf1d4ab625412537c47c466f28a80dc57bea2eb`  
		Last Modified: Tue, 25 Aug 2026 00:54:56 GMT  
		Size: 90.0 KB (90044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beae668ad463198c406d6d54b06614973a243c4f9b48d10d424b392f9783c3f6`  
		Last Modified: Tue, 25 Aug 2026 00:54:58 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:7939ec9309a08b86d3bbe7b12c25302ca2cf88e742b474df44d62a7c346f14db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3621991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2efa92cc27446c3d76c13d3e2270f17569e57d6a3680415463fe1d2ef76fe038`

```dockerfile
```

-	Layers:
	-	`sha256:6d2726fa8318292a7f7849187e419e076a79fcf7c7baabbe235585dfe963f98c`  
		Last Modified: Tue, 25 Aug 2026 00:54:57 GMT  
		Size: 3.6 MB (3606032 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed74cc17733d16da2f600ad681c6d92728d94c2420d9db41280c8a82ac5fd025`  
		Last Modified: Tue, 25 Aug 2026 00:54:56 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:e3c2f3285f323df5a6c0b584dd503c3d3577cb3db95db2caea2478460e7ce74c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60763633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7e63fed3be29a5bff1027cd7b28fb687519b38a52a0692c33f4a14098f31be7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 00:57:02 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:57:02 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:57:02 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:57:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:57:06 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:ad280b75322e6e78371ef86f07cf13a9b43130485f6088f3c11bc956d28be45d`  
		Last Modified: Mon, 24 Aug 2026 23:20:38 GMT  
		Size: 49.5 MB (49503919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2fb9c931d678a3ffd45cd4f122621cdc9455a67ad7053f7f41a5f97677dee93`  
		Last Modified: Tue, 25 Aug 2026 00:57:15 GMT  
		Size: 11.2 MB (11165763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:990076b7e93f48e4d614e653e9115818022c2d9ac14b273514f4a67c08c5a4ab`  
		Last Modified: Tue, 25 Aug 2026 00:57:14 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:356b657bcc670eff756605426dd4e56b8860581f4c169f5399b7eabb2cdd0424`  
		Last Modified: Tue, 25 Aug 2026 00:57:14 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f3e81197a52ddc49a3df4ddd25a2cb1ac5d034e45260c147d3640759d67e3c7`  
		Last Modified: Tue, 25 Aug 2026 00:57:15 GMT  
		Size: 90.6 KB (90600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73b546041f9777edeb41179fb1b938d45f8fad808c6dd0400b48c35093b5c5ed`  
		Last Modified: Tue, 25 Aug 2026 00:57:16 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:aa582480471d5525cc7f751180f68b595536ae58b5c19e96f58cdd28379e5b98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3626249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fda1193a5cfb5ebe0557e9d6c27440b35b38601baa57064189f1b30856e09769`

```dockerfile
```

-	Layers:
	-	`sha256:a12ca6adb075122453c6f02c6d04a8fe032b2f5fc9c55ebe4a32b51d585277f7`  
		Last Modified: Tue, 25 Aug 2026 00:57:15 GMT  
		Size: 3.6 MB (3610154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2bc6eeb70be3234a8b73ca64467d9f7b68d861afd819ae620c836dd110157d4f`  
		Last Modified: Tue, 25 Aug 2026 00:57:14 GMT  
		Size: 16.1 KB (16095 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:9a42fa91b39b15f67548bdc0d49bce933fb4671c694da09e62807546ac45e8d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.8 MB (62800708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdf5cf2d7ac1f90f3a2c5e515bfa97318f86518bad892ff0b659224856cbe00c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 00:52:49 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:52:50 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:52:50 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:52:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:52:53 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:aaf68b813d1715d979a28cb2734f0c4792e12b8f67526d02f1eb51e9f0ab73d6`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 50.9 MB (50891162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6e9afd663e8e25027717273cbfc9ecadbceeb33d3a40f9ff1fc96c4f56661bd`  
		Last Modified: Tue, 25 Aug 2026 00:53:01 GMT  
		Size: 11.8 MB (11815841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b38f3c299e66ef16b1c45bb235868bdb393ae8a7adfe99034fda658a847817a`  
		Last Modified: Tue, 25 Aug 2026 00:53:01 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:987c0b9b811e2122f62ac9f3ebc079f41067d2242757e7381c313cf4be5f324c`  
		Last Modified: Tue, 25 Aug 2026 00:53:01 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f195cce14e3a3cca4385d6bcb839e0e6f2b76a71b23f7938740cad9b588446e3`  
		Last Modified: Tue, 25 Aug 2026 00:53:01 GMT  
		Size: 90.4 KB (90354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f45460598d7a98fefcfcc015b375b5f689f5f689b9e0591d6775d14d0d79bb`  
		Last Modified: Tue, 25 Aug 2026 00:53:02 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:5d7623edd424fac7504527d45910edf1c5d547417a36eef404ad61364e64a9e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3619806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a473896e0ce5418d0862487b4a3fd907b3a4b5b6a77c38ac57ff5b3b1da98a8`

```dockerfile
```

-	Layers:
	-	`sha256:ebc61c17e659b9af2688ade39618253d71381bfd06006b5a0d29461afaba8e4f`  
		Last Modified: Tue, 25 Aug 2026 00:53:01 GMT  
		Size: 3.6 MB (3603877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8927b24121c799aec59b63c28e586bae3bb84e8ebb4a4afd0c941b93fee92bae`  
		Last Modified: Tue, 25 Aug 2026 00:53:01 GMT  
		Size: 15.9 KB (15929 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd22.04`

```console
$ docker pull neurodebian@sha256:13705a55d8f65dd6729df6134d0ad3afb07607f9a20cf8987685d4d55dec6220
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:nd22.04` - linux; amd64

```console
$ docker pull neurodebian@sha256:86fbeb3f29a1e117b965a93115c6dda3c6c7c451466b2a8bc73fba644149da2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33475466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae3ea9d8e05634f34232a2364dae2a67a7f589f6cfb67adf49d2b3e19ba81714`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:29 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:30 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 18 Aug 2026 01:19:30 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 18 Aug 2026 01:19:37 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e044d3d083c15f7b5d83d6c090cbb223898498587b8a48ca6ac3b38baf5962b4`  
		Last Modified: Tue, 18 Aug 2026 01:19:43 GMT  
		Size: 3.6 MB (3624872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ff70f22bd2fe734eecb46622d617fd417490bbe17c9c5c97d30e46d9904957`  
		Last Modified: Tue, 18 Aug 2026 01:19:43 GMT  
		Size: 1.9 KB (1905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9859f96fa6483dfa40792acf6cc391027f32df83ea8e07518b02fd2b7ab8a13e`  
		Last Modified: Tue, 18 Aug 2026 01:19:43 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0ea1934a4e61b5e46ac8a41cf7d992fa570f3710d5e4b4b6d835884ca99566f`  
		Last Modified: Tue, 18 Aug 2026 01:19:43 GMT  
		Size: 111.5 KB (111470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd22.04` - unknown; unknown

```console
$ docker pull neurodebian@sha256:2493a84cdf8de73b7e87a64f96e9843755f423f67458743062c6781c31b76249
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcf1f1f1272741c9f484aaba469d68dea636fd8f545e6c31ea2dd1365ab53747`

```dockerfile
```

-	Layers:
	-	`sha256:d3622f0227189c1ee58eb249c56a724b42c2afdb01e8ed3f0e44289aa43bc392`  
		Last Modified: Tue, 18 Aug 2026 01:19:43 GMT  
		Size: 2.2 MB (2198336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d39ebcf1516c45add7aa941d0ac895b0a50ea4b31a3522dc9bc8bb39e46ede9`  
		Last Modified: Tue, 18 Aug 2026 01:19:43 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd22.04` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:dea94749034b24fd489c5641b37f65ab10405ee0e78023c6ffebadd62828a554
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31342530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98720de307e4e68b751c6082d0d00058e9f3415bf4f3f8cc114b4bc14e5f4ba3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:12 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:13 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 18 Aug 2026 01:19:13 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 18 Aug 2026 01:19:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49f99f27e0eb7ccf53479ca26156f51bf26012dbe8592240f4bae11709ed2867`  
		Last Modified: Tue, 18 Aug 2026 01:19:27 GMT  
		Size: 3.6 MB (3608586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6555850d3e3d8ab6a9e1df7dc16027068ed9de7cb5954c9b27c6c06daa667611`  
		Last Modified: Tue, 18 Aug 2026 01:19:27 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1efb60589f50c2381ee2c45db028b7ed037bea79b5314da166ff3ce40d631b4`  
		Last Modified: Tue, 18 Aug 2026 01:19:27 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec15fcdef73ad7de5b57ac78cd80d3b2a7ee122ddbfd6a4ea74c4c4fe29083b`  
		Last Modified: Tue, 18 Aug 2026 01:19:27 GMT  
		Size: 111.3 KB (111315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd22.04` - unknown; unknown

```console
$ docker pull neurodebian@sha256:4cace0b9c78739e1b561f903af189d8a7a726c63f5b6fd8f169b66a6ab7d5f8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fcf2cddb420006e9184758bbc06780361c538d94f7bca6fa98b1b9b0463e4af`

```dockerfile
```

-	Layers:
	-	`sha256:e39817a3f2749f6bad4a3c90ef2adde15893ef69861dd30b76998e68d156ec31`  
		Last Modified: Tue, 18 Aug 2026 01:19:27 GMT  
		Size: 2.2 MB (2198596 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ccf09072c03a81f18495938d32ef5326b107eb19da0e79aa1953335ecf2b4eaa`  
		Last Modified: Tue, 18 Aug 2026 01:19:27 GMT  
		Size: 14.1 KB (14058 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd22.04-non-free`

```console
$ docker pull neurodebian@sha256:72dfd4d53d61a36406526e5d490e04a529efb4e1e49d9a13cfa74db463565f1c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:nd22.04-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:aa366d330da5d87f5e122658e1f822f9a341950a67d48f343d2078ec9f6eb3e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33475744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:561fd776a9a4a75f2e62a4b2a517aea50aff61be2653d7933fe8505a7734f1d9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:30 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:31 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 18 Aug 2026 01:19:31 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 18 Aug 2026 01:19:37 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:37 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fedab5ddb1bf6578f39f6cbd2dc33fdbcc88a68a181be6c9f48c819b03ba2fcc`  
		Last Modified: Tue, 18 Aug 2026 01:19:43 GMT  
		Size: 3.6 MB (3624867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1824fc5bd77818841a1d604c185ba7af72d8d2eae27d09c1d4145a6db67324fb`  
		Last Modified: Tue, 18 Aug 2026 01:19:42 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7925b9eb1f935de529c44822563c2bdfac7c5690cafc0aa6d9b85134a517d605`  
		Last Modified: Tue, 18 Aug 2026 01:19:42 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5b38bdc8074b3ff7d9619aa2f710a0edd828ab6f52ce18394ba22be75ae6dba`  
		Last Modified: Tue, 18 Aug 2026 01:19:43 GMT  
		Size: 111.5 KB (111471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b79ffb08daaceb848d85ce8185b6aadd659a14555b3be93ecabff9bbd2520321`  
		Last Modified: Tue, 18 Aug 2026 01:19:43 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd22.04-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:277f2ef0af5c7741641bdade25aa71f09fd5686d92b6907e43a43c2a6e21ec1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2214535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97ac834c6c607cd41dac1d5bdc46d4f28b2fd95db9927bcd25734ddfaa4711c7`

```dockerfile
```

-	Layers:
	-	`sha256:afb50e1403ba640d40118e30dec61d408f61cd062ed86c444525d322b3d3b2b5`  
		Last Modified: Tue, 18 Aug 2026 01:19:43 GMT  
		Size: 2.2 MB (2198372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04c0f2b7759a6ab9294999ce29bedd0a370720ba9aff1a1f56a57561dd69aa3e`  
		Last Modified: Tue, 18 Aug 2026 01:19:43 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd22.04-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:fd1c123c951e8b5902a958fe49d5e8f7cda641b4958d8a03867363e9d79b7cca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31342817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bae45c95270bcb65b855bf59448c17914029f8fae0464c2e3ac33d3ccd213487`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:15 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:15 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 18 Aug 2026 01:19:15 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 18 Aug 2026 01:19:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:24 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3303233f378dd86cf77a3d560746289b432ad7b4bf0b9787ae72f585f43e26c6`  
		Last Modified: Tue, 18 Aug 2026 01:19:30 GMT  
		Size: 3.6 MB (3608578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c7cee341b5475cafafe2e6abd9a19378b48141cfef2550a35210dbb21d37088`  
		Last Modified: Tue, 18 Aug 2026 01:19:30 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1e4dfcac2e6e3a53ce0c19cfea185bfe7d076b4595e2a99afa85d7311187e74`  
		Last Modified: Tue, 18 Aug 2026 01:19:30 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c459099516e31ac00656fa77639085a7e7eda1557475d4912f12dbae7b90f60`  
		Last Modified: Tue, 18 Aug 2026 01:19:31 GMT  
		Size: 111.3 KB (111325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dbb8531e4bbefbb0c7647ca1fe68d4d7ff4c43a94f088fc633c1edbf9fc3894`  
		Last Modified: Tue, 18 Aug 2026 01:19:31 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd22.04-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:498fe44317def53d64778ff6ffbb6af731f66fb862927547451fb7022a32572f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2214935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27462a1d568d692065d2b4801bd6e13ad034ef4e343c1d937325a1adab6bafe0`

```dockerfile
```

-	Layers:
	-	`sha256:3ab486108d86c421a00bfaeebcc92ba21724774c8f080888bf5170315ecc0d4b`  
		Last Modified: Tue, 18 Aug 2026 01:19:30 GMT  
		Size: 2.2 MB (2198632 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3dba9a51cd7e847826dfbc09f6de8ab48c57d51e5202c408021cf8b7c9e6ac5d`  
		Last Modified: Tue, 18 Aug 2026 01:19:30 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd24.04`

```console
$ docker pull neurodebian@sha256:f28645eb4a2e1581708a1e1f4255569d00486bd8928fe1111edc141ac415d22a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:nd24.04` - linux; amd64

```console
$ docker pull neurodebian@sha256:5c127038298c2aeb5b38b43e14b00b20c6d214549969721a9cdb85711996d527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33426033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32e9a5a48bafdbb0ca6f6e7096e2944b8050720b6a1557018d4e44354040a466`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:24:16 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:24:17 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 18 Aug 2026 19:24:17 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 18 Aug 2026 19:24:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09c2316f3d14a7ecbbbf7cdf2faff41598f8a69e46e68ecb2122ebf814c8686c`  
		Last Modified: Tue, 18 Aug 2026 19:24:27 GMT  
		Size: 3.6 MB (3565301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa24935fcdef69779d36871d547b0c1bf6df87a770532498c8fc8978b979e149`  
		Last Modified: Tue, 18 Aug 2026 19:24:27 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9ab2d4a915902c6cf4b9baeba7f53572da625b288866161106561bb4619a24e`  
		Last Modified: Tue, 18 Aug 2026 19:24:27 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebbe469755289a3a81e224b4ec7945cb2bb80c4195981a928cf08bdd91e866f4`  
		Last Modified: Tue, 18 Aug 2026 19:24:27 GMT  
		Size: 105.0 KB (105014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd24.04` - unknown; unknown

```console
$ docker pull neurodebian@sha256:3bba7f1d36209021473aca097151e2b33e9224ed0a4e362a771c46fa1e76c11a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2134876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e940c36cd3cc352c3a5d1e3221bd09f5d47ad19bdd6a66fac7da0a554126141b`

```dockerfile
```

-	Layers:
	-	`sha256:d2cea581ca662bdc5d3f9accc223a57eaa3199cf198b9453734e78607171fb01`  
		Last Modified: Tue, 18 Aug 2026 19:24:27 GMT  
		Size: 2.1 MB (2120943 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59a5fa7a049ede8f54131599b7d49c128ec6a481108294df43df6a3e535a0197`  
		Last Modified: Tue, 18 Aug 2026 19:24:27 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd24.04` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:a15738dfa1f47f6b575fd680a7b8714935e25f08b69a7935ce4e25584909a6c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32558304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83a2850cab6de742a7c356e7d77dc40bbc5593a0d13a8b70681304fef2aa941e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:24:22 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:24:22 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 18 Aug 2026 19:24:23 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 18 Aug 2026 19:24:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76e266538328c0ccb382d092b3de895af780f334cc5608b92f3de287274a8cab`  
		Last Modified: Tue, 18 Aug 2026 19:24:33 GMT  
		Size: 3.6 MB (3562493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f6e0accc8ff2fa1710a1a78331df3b559f4e1079aa3ee49127542c3d0b0bb38`  
		Last Modified: Tue, 18 Aug 2026 19:24:33 GMT  
		Size: 2.6 KB (2639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14977ca124fa8877b1c948a4c527481d09b4fa7f50c646e43bdaace03e482d4e`  
		Last Modified: Tue, 18 Aug 2026 19:24:33 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22bfc0baa244912b89a98433df057af2d026c48fddb728a11c2df169b1b82504`  
		Last Modified: Tue, 18 Aug 2026 19:24:33 GMT  
		Size: 105.7 KB (105663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd24.04` - unknown; unknown

```console
$ docker pull neurodebian@sha256:6b46016ee4298af53f3c0692466e2b8bcffb362a6be3a1aa469080a2c6228284
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2136045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1523a311444a3a5789c721f79560f5a50ed07d6672403d33126f70c02d58a2c2`

```dockerfile
```

-	Layers:
	-	`sha256:e7582cd78150d32a2e729d41f964cfc0b5f506505f3f2ee99b372d89eb5e3c5e`  
		Last Modified: Tue, 18 Aug 2026 19:24:33 GMT  
		Size: 2.1 MB (2121988 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0ba04cabdf0e842a3172094e17366bab5a4123481e8cb74d09a13bd398747f9`  
		Last Modified: Tue, 18 Aug 2026 19:24:33 GMT  
		Size: 14.1 KB (14057 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd24.04-non-free`

```console
$ docker pull neurodebian@sha256:8b7f3787f1c4ba9eb53b319e5965521257173a695bf4aa7c5e09a572bf5a5e0a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:nd24.04-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:4d1e21aee4455b8e5e804aab93dc0de5684ff0dd25ca65c9b7f3232f8b06b4ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33426524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c8062a94ca7b4d40ab9f228c2fd6fac55861ac98bc2851552b4e2602b1ffe87`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:24:34 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:24:34 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 18 Aug 2026 19:24:34 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 18 Aug 2026 19:24:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:24:38 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc023b9a0e1d4a3a99b8d302207ce9d0e6fbbae344fd252573d2f7b3f9b70995`  
		Last Modified: Tue, 18 Aug 2026 19:24:45 GMT  
		Size: 3.6 MB (3565352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:481ed492505329b3b880d0de85124c0400d19fda81bba618f13bcc8ebedd430b`  
		Last Modified: Tue, 18 Aug 2026 19:24:44 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8eb3cf108a4c8e43793578e4f8d24d21a40b179ea15f714df1aae8131e88d54`  
		Last Modified: Tue, 18 Aug 2026 19:24:44 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd7999951399165eb1882d71fc22d48b1c6b8f9e77e9293a6cc812a9c7083e57`  
		Last Modified: Tue, 18 Aug 2026 19:24:45 GMT  
		Size: 105.0 KB (105024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26d4ef2f666677a25d83a4609f05c23828e008f5d96bb6bc0ca0d8babec95f28`  
		Last Modified: Tue, 18 Aug 2026 19:24:46 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd24.04-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8046446c1e466f34d0c937969904de8d4620414cf9eaa1f102768bfb3b9a9447
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2137142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e39789e5e78fc8570764b5f1290d83807db93b3cdc41ae31185464e34529b3b`

```dockerfile
```

-	Layers:
	-	`sha256:27cbd4130c749ef0158da8a79386c1efb7d32487ef7f77050d9715ce21a75931`  
		Last Modified: Tue, 18 Aug 2026 19:24:45 GMT  
		Size: 2.1 MB (2120979 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9895ff975d0caa68aff006bc35f86d7c831c8d54862b5f54ab6e5fbe1a4d505e`  
		Last Modified: Tue, 18 Aug 2026 19:24:44 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd24.04-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:098823fb2095ecb9a2e304031854ef613abe0ed8963b5de41ea18442836abf8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32558668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51fb258a56aa2417082aef6976806938a0f7e486681634b6cae7d801caf39542`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:24:48 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:24:48 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 18 Aug 2026 19:24:48 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 18 Aug 2026 19:24:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:24:54 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eecd207801e195b39e571e41e3b57677c1e6f6c992d0026ccd51df760a5dc174`  
		Last Modified: Tue, 18 Aug 2026 19:25:00 GMT  
		Size: 3.6 MB (3562445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:099734a317c85b10e352c503b24c9201dee0512c9110479dbc78778231db7d46`  
		Last Modified: Tue, 18 Aug 2026 19:25:00 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b708ca8547505a9092ca46240794b9a4cda3dbe7f69a09c2e9b3ab1eb8dec0af`  
		Last Modified: Tue, 18 Aug 2026 19:25:00 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bce285ad8458b0c8fdda4aa945b4346bc356e29f3426cde4c45979374d169184`  
		Last Modified: Tue, 18 Aug 2026 19:25:00 GMT  
		Size: 105.6 KB (105649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84903e7ce31c974d17dfffc6ce49226662ecce0b7283025db1812b0b7faabaf1`  
		Last Modified: Tue, 18 Aug 2026 19:25:01 GMT  
		Size: 428.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd24.04-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:88e7586f834e7b1a7cfc265694f779d883df8babc8fd2610efdb2d7bf0e2f7eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2138327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec6fa8fc6a7f74e4284397a2131d0f803fb0d2f654a158793e0f97a7e9c07755`

```dockerfile
```

-	Layers:
	-	`sha256:c7a7a3c93386f41428e0ac8d94149f46fe0040c5fdfe73a50411efe44d2ee2fb`  
		Last Modified: Tue, 18 Aug 2026 19:25:00 GMT  
		Size: 2.1 MB (2122024 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbc9136e9ccc7a623b822e2d2cb101a018fc631c855ba2c9c31881f373f95e1c`  
		Last Modified: Tue, 18 Aug 2026 19:25:00 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:noble`

```console
$ docker pull neurodebian@sha256:f28645eb4a2e1581708a1e1f4255569d00486bd8928fe1111edc141ac415d22a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:noble` - linux; amd64

```console
$ docker pull neurodebian@sha256:5c127038298c2aeb5b38b43e14b00b20c6d214549969721a9cdb85711996d527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33426033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32e9a5a48bafdbb0ca6f6e7096e2944b8050720b6a1557018d4e44354040a466`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:24:16 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:24:17 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 18 Aug 2026 19:24:17 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 18 Aug 2026 19:24:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09c2316f3d14a7ecbbbf7cdf2faff41598f8a69e46e68ecb2122ebf814c8686c`  
		Last Modified: Tue, 18 Aug 2026 19:24:27 GMT  
		Size: 3.6 MB (3565301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa24935fcdef69779d36871d547b0c1bf6df87a770532498c8fc8978b979e149`  
		Last Modified: Tue, 18 Aug 2026 19:24:27 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9ab2d4a915902c6cf4b9baeba7f53572da625b288866161106561bb4619a24e`  
		Last Modified: Tue, 18 Aug 2026 19:24:27 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebbe469755289a3a81e224b4ec7945cb2bb80c4195981a928cf08bdd91e866f4`  
		Last Modified: Tue, 18 Aug 2026 19:24:27 GMT  
		Size: 105.0 KB (105014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble` - unknown; unknown

```console
$ docker pull neurodebian@sha256:3bba7f1d36209021473aca097151e2b33e9224ed0a4e362a771c46fa1e76c11a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2134876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e940c36cd3cc352c3a5d1e3221bd09f5d47ad19bdd6a66fac7da0a554126141b`

```dockerfile
```

-	Layers:
	-	`sha256:d2cea581ca662bdc5d3f9accc223a57eaa3199cf198b9453734e78607171fb01`  
		Last Modified: Tue, 18 Aug 2026 19:24:27 GMT  
		Size: 2.1 MB (2120943 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59a5fa7a049ede8f54131599b7d49c128ec6a481108294df43df6a3e535a0197`  
		Last Modified: Tue, 18 Aug 2026 19:24:27 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:noble` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:a15738dfa1f47f6b575fd680a7b8714935e25f08b69a7935ce4e25584909a6c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32558304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83a2850cab6de742a7c356e7d77dc40bbc5593a0d13a8b70681304fef2aa941e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:24:22 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:24:22 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 18 Aug 2026 19:24:23 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 18 Aug 2026 19:24:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76e266538328c0ccb382d092b3de895af780f334cc5608b92f3de287274a8cab`  
		Last Modified: Tue, 18 Aug 2026 19:24:33 GMT  
		Size: 3.6 MB (3562493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f6e0accc8ff2fa1710a1a78331df3b559f4e1079aa3ee49127542c3d0b0bb38`  
		Last Modified: Tue, 18 Aug 2026 19:24:33 GMT  
		Size: 2.6 KB (2639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14977ca124fa8877b1c948a4c527481d09b4fa7f50c646e43bdaace03e482d4e`  
		Last Modified: Tue, 18 Aug 2026 19:24:33 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22bfc0baa244912b89a98433df057af2d026c48fddb728a11c2df169b1b82504`  
		Last Modified: Tue, 18 Aug 2026 19:24:33 GMT  
		Size: 105.7 KB (105663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble` - unknown; unknown

```console
$ docker pull neurodebian@sha256:6b46016ee4298af53f3c0692466e2b8bcffb362a6be3a1aa469080a2c6228284
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2136045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1523a311444a3a5789c721f79560f5a50ed07d6672403d33126f70c02d58a2c2`

```dockerfile
```

-	Layers:
	-	`sha256:e7582cd78150d32a2e729d41f964cfc0b5f506505f3f2ee99b372d89eb5e3c5e`  
		Last Modified: Tue, 18 Aug 2026 19:24:33 GMT  
		Size: 2.1 MB (2121988 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0ba04cabdf0e842a3172094e17366bab5a4123481e8cb74d09a13bd398747f9`  
		Last Modified: Tue, 18 Aug 2026 19:24:33 GMT  
		Size: 14.1 KB (14057 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:noble-non-free`

```console
$ docker pull neurodebian@sha256:8b7f3787f1c4ba9eb53b319e5965521257173a695bf4aa7c5e09a572bf5a5e0a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:noble-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:4d1e21aee4455b8e5e804aab93dc0de5684ff0dd25ca65c9b7f3232f8b06b4ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33426524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c8062a94ca7b4d40ab9f228c2fd6fac55861ac98bc2851552b4e2602b1ffe87`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:24:34 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:24:34 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 18 Aug 2026 19:24:34 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 18 Aug 2026 19:24:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:24:38 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc023b9a0e1d4a3a99b8d302207ce9d0e6fbbae344fd252573d2f7b3f9b70995`  
		Last Modified: Tue, 18 Aug 2026 19:24:45 GMT  
		Size: 3.6 MB (3565352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:481ed492505329b3b880d0de85124c0400d19fda81bba618f13bcc8ebedd430b`  
		Last Modified: Tue, 18 Aug 2026 19:24:44 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8eb3cf108a4c8e43793578e4f8d24d21a40b179ea15f714df1aae8131e88d54`  
		Last Modified: Tue, 18 Aug 2026 19:24:44 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd7999951399165eb1882d71fc22d48b1c6b8f9e77e9293a6cc812a9c7083e57`  
		Last Modified: Tue, 18 Aug 2026 19:24:45 GMT  
		Size: 105.0 KB (105024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26d4ef2f666677a25d83a4609f05c23828e008f5d96bb6bc0ca0d8babec95f28`  
		Last Modified: Tue, 18 Aug 2026 19:24:46 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8046446c1e466f34d0c937969904de8d4620414cf9eaa1f102768bfb3b9a9447
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2137142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e39789e5e78fc8570764b5f1290d83807db93b3cdc41ae31185464e34529b3b`

```dockerfile
```

-	Layers:
	-	`sha256:27cbd4130c749ef0158da8a79386c1efb7d32487ef7f77050d9715ce21a75931`  
		Last Modified: Tue, 18 Aug 2026 19:24:45 GMT  
		Size: 2.1 MB (2120979 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9895ff975d0caa68aff006bc35f86d7c831c8d54862b5f54ab6e5fbe1a4d505e`  
		Last Modified: Tue, 18 Aug 2026 19:24:44 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:noble-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:098823fb2095ecb9a2e304031854ef613abe0ed8963b5de41ea18442836abf8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32558668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51fb258a56aa2417082aef6976806938a0f7e486681634b6cae7d801caf39542`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:24:48 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:24:48 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 18 Aug 2026 19:24:48 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 18 Aug 2026 19:24:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:24:54 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eecd207801e195b39e571e41e3b57677c1e6f6c992d0026ccd51df760a5dc174`  
		Last Modified: Tue, 18 Aug 2026 19:25:00 GMT  
		Size: 3.6 MB (3562445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:099734a317c85b10e352c503b24c9201dee0512c9110479dbc78778231db7d46`  
		Last Modified: Tue, 18 Aug 2026 19:25:00 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b708ca8547505a9092ca46240794b9a4cda3dbe7f69a09c2e9b3ab1eb8dec0af`  
		Last Modified: Tue, 18 Aug 2026 19:25:00 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bce285ad8458b0c8fdda4aa945b4346bc356e29f3426cde4c45979374d169184`  
		Last Modified: Tue, 18 Aug 2026 19:25:00 GMT  
		Size: 105.6 KB (105649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84903e7ce31c974d17dfffc6ce49226662ecce0b7283025db1812b0b7faabaf1`  
		Last Modified: Tue, 18 Aug 2026 19:25:01 GMT  
		Size: 428.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:88e7586f834e7b1a7cfc265694f779d883df8babc8fd2610efdb2d7bf0e2f7eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2138327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec6fa8fc6a7f74e4284397a2131d0f803fb0d2f654a158793e0f97a7e9c07755`

```dockerfile
```

-	Layers:
	-	`sha256:c7a7a3c93386f41428e0ac8d94149f46fe0040c5fdfe73a50411efe44d2ee2fb`  
		Last Modified: Tue, 18 Aug 2026 19:25:00 GMT  
		Size: 2.1 MB (2122024 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbc9136e9ccc7a623b822e2d2cb101a018fc631c855ba2c9c31881f373f95e1c`  
		Last Modified: Tue, 18 Aug 2026 19:25:00 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:non-free`

```console
$ docker pull neurodebian@sha256:6cbb92e4348029f024d0376c348e19e520413fe1242f1eb39eccd802df38b9b6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:585d4e57e66aa723b87419f06d00117448d8210da84990f53c5843dc76f1ce2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59725690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eed4dd46f57dd6dbb03c4fdbaff037ff14d0e896c70f4447b236b2c958f2f365`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:54:46 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:47 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:54:47 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:54:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:50 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64ad5d9f3fd4e2cb063a7e2df838d2a47b1d7dd8e8b3f65687f861908a7d7af`  
		Last Modified: Tue, 25 Aug 2026 00:54:59 GMT  
		Size: 10.3 MB (10294135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b92b2637641beb37fe403e7131f2f55ac1c8afff80d68b11de0924e3aa3074b9`  
		Last Modified: Tue, 25 Aug 2026 00:54:58 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1083e2a2691b7df480c0f33fa9019fcfdef0e2f8a520e21ed85116834afb4409`  
		Last Modified: Tue, 25 Aug 2026 00:54:58 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7195558f7b5aa2b5acc05bf1a0e9ea0a2ffe2b9c8c45ea7a76c4fac932c2ce33`  
		Last Modified: Tue, 25 Aug 2026 00:54:58 GMT  
		Size: 90.4 KB (90372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c54cfb8daa375972df1eeb51a7cdb1085b4a42529f259fa77bab62aa81a1558`  
		Last Modified: Tue, 25 Aug 2026 00:54:59 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ce6cfba84205a5e7e1bc9a1ef58ea8511fa18d97eb9a980625a5eec2fd201308
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9420510e3d88ccc2a6099964dbb45f35f9ba39138dad791573e25a5d1d5a6d2b`

```dockerfile
```

-	Layers:
	-	`sha256:42704e9007a9e84a191dd9c58499825b7c0ff69c93774c5a04560c6b030bd6e7`  
		Last Modified: Tue, 25 Aug 2026 00:54:59 GMT  
		Size: 3.6 MB (3619236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:373b4a68b3fa1227d46bfb6b5004f5dcf976b010073c707400c0662277da705a`  
		Last Modified: Tue, 25 Aug 2026 00:54:58 GMT  
		Size: 16.3 KB (16282 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:c38c5fac28fddd7bad3aa59153c46cea064f7b5cdd221c86b5d37b98fcd1859b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59878132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f277230f9ac4f2ab1b29bbeee51284919bb180385fcd8e2e06ca454d3b1bbb5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:56:40 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:41 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:56:41 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:56:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:45 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7097863ad40529713edf41cdebe89b47cc47e8a45a7d58b28666c5d33d50228`  
		Last Modified: Tue, 25 Aug 2026 00:56:53 GMT  
		Size: 10.1 MB (10078877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0f9a2dc15cc9fa5e9c135f95ccf7940ab0474022ad9d4525c9c746252370ec6`  
		Last Modified: Tue, 25 Aug 2026 00:56:52 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cc154c9d1d1d86dfeed14ec614a129a574fa540cd708dfcbf0f7f6949274b58`  
		Last Modified: Tue, 25 Aug 2026 00:56:52 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c30fd05d00524c4efacdece6a71abe09d836911e7f851b0c3a07e38a1050af65`  
		Last Modified: Tue, 25 Aug 2026 00:56:52 GMT  
		Size: 91.0 KB (91048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b659f5cfffaa647365fc2fc522e59f738559ebf75f2e5575cd8458a6716007`  
		Last Modified: Tue, 25 Aug 2026 00:56:53 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:b3e6d9b1d684009389e9cb021c7d98e3ff8109da37b16ccfc80be2d2bac611d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3636560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6dd3aa458d5fabc006c88dbfff018f3096c10e68968c019c7c666772af48480`

```dockerfile
```

-	Layers:
	-	`sha256:c5677fb4e7b8e20cad7625372c152cdad4234eb9f48e6816d94b1263a4e99c03`  
		Last Modified: Tue, 25 Aug 2026 00:56:53 GMT  
		Size: 3.6 MB (3620126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe0398cbdbf2c08bc4efea86ef4055096232886297c5f6a0bf5dfcc623d08d96`  
		Last Modified: Tue, 25 Aug 2026 00:56:52 GMT  
		Size: 16.4 KB (16434 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:e836ea9a1ba54fa0de85dc9632dbda7afdbef52eb368e0cb2f1aa85bd0f6722c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61411803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c1725c23372567d68105f2cff90c0927b6311a1f5adb5ed25c0b72f220a1244`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:52:21 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:52:22 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:52:22 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:52:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:52:26 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:b893e4e8ae50bbe3f6f662d089d78bdcec599d1f4f6ffcc53ea4c77eba1418a5`  
		Last Modified: Mon, 24 Aug 2026 23:21:29 GMT  
		Size: 50.8 MB (50849582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:479d199f2c8d8b85449cb45f741f35bf110ebcb25cf9ea717e05fe98a89fae5c`  
		Last Modified: Tue, 25 Aug 2026 00:52:34 GMT  
		Size: 10.5 MB (10468123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b64e11807109081e0c34c3584cb71570b13c7b598319f7445a0afc3025876f0`  
		Last Modified: Tue, 25 Aug 2026 00:52:34 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28395131873e7649c73fc75a3e865132252ea0b5f9e062fc1c2c211f698b7700`  
		Last Modified: Tue, 25 Aug 2026 00:52:33 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23b36bb10eb18abcab26c9e21acfdad1237410a8f5072f072f70b3bf4fdb755a`  
		Last Modified: Tue, 25 Aug 2026 00:52:34 GMT  
		Size: 90.7 KB (90744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3cad72be0573046258a1c91db088d374cfe4e4a8da4f585fda1e704e7f0f105`  
		Last Modified: Tue, 25 Aug 2026 00:52:34 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:1a9f1753550e7b5b868b25e388724fe1cbac11583e79246c37727c570271809c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85a0f3018dbcd8262565a2fda8c0457b46898cf15ac4ea8589f856b29d2c5a82`

```dockerfile
```

-	Layers:
	-	`sha256:f5d836b5a40467bd30eb4fbde50c9858a1a4dafa10e6c589dadb749a7c452be5`  
		Last Modified: Tue, 25 Aug 2026 00:52:34 GMT  
		Size: 3.6 MB (3617184 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e899670c9ac1983e3b70c0e88e2ecb75d8ba9155ed9bb9d9f3aca9bb0e67450e`  
		Last Modified: Tue, 25 Aug 2026 00:52:33 GMT  
		Size: 16.2 KB (16246 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:sid`

```console
$ docker pull neurodebian@sha256:2f4ea1a65dfa7e47c4c96725af8e194bd1bedd528a35f0d7f8c2a3824c837c3a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:sid` - linux; amd64

```console
$ docker pull neurodebian@sha256:2c5f4a3b777c62b947a2abc074d6a7708fd1ea315cedc4dee00daba08a50b8e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61544654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95c06f657ff76f240428d0dac760b18ceca76944a59ac0b16ae9f1f25cad8d62`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 00:54:54 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:54 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:54:54 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:54:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f16f5a97d51498e5eccf3dd3e5e6ca2746febdb9dc2913a353263b85031a5c09`  
		Last Modified: Mon, 24 Aug 2026 23:20:40 GMT  
		Size: 49.8 MB (49841754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b211eb1458562948456608481f7b1d889be5f3d9081b801aa1e8141861e93c41`  
		Last Modified: Tue, 25 Aug 2026 00:55:06 GMT  
		Size: 11.6 MB (11609927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b07207ef0788a5d0d763b41c99dbeea2bb97492e71aff39c4221508bcc02aaa1`  
		Last Modified: Tue, 25 Aug 2026 00:55:05 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:393a25bd147b242eda3d4ba1cf660313bd17485ab17885f05f27dc31f9b5ac2b`  
		Last Modified: Tue, 25 Aug 2026 00:55:05 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11735447b7f45c39b0fd251892926600d4f98ce7679be17eb849ba10a89ef736`  
		Last Modified: Tue, 25 Aug 2026 00:55:05 GMT  
		Size: 90.1 KB (90070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:be7f0179bb1201c6fe45864116ba3d62e7bbbc3dd3ffddc053617487a41b56e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3619823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69fe42d521cc225175a76f12aa5f9d489371253ad64cc81a259350a71d3ea664`

```dockerfile
```

-	Layers:
	-	`sha256:17139fc1afc85db5f947250815fd33ff84a8e391e687c1a673a25708c3e030b5`  
		Last Modified: Tue, 25 Aug 2026 00:55:05 GMT  
		Size: 3.6 MB (3605920 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:543ac00753219c7c046ff0a210ca07b737d6b17ab676b5eeb0bd55c6fe695ad0`  
		Last Modified: Tue, 25 Aug 2026 00:55:05 GMT  
		Size: 13.9 KB (13903 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:8db426407991f762f1407a61d12bb630bbf2d3d24055b930c03b92aac217eddd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60752988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7e5e08846191013e2321203d6fb671dd6f176200f60ff984027130f5439d90c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 00:57:05 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:57:06 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:57:06 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:57:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:af77545e1040c204ae857564446e939a826968bdb50dffaaaaeb4179e7b846d3`  
		Last Modified: Mon, 24 Aug 2026 23:20:32 GMT  
		Size: 49.5 MB (49493769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6005b5acaa3a0b2bd1252afec311d3eb9a6eccd9f61344a24db71eea1023c2`  
		Last Modified: Tue, 25 Aug 2026 00:57:18 GMT  
		Size: 11.2 MB (11165710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b541020cf7c9541e1172f8bdbb821478373672d83dc914d33adece748eefbdc4`  
		Last Modified: Tue, 25 Aug 2026 00:57:18 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c3570fa9af3d2d7da40505a9a55ec5616165fc1d63115b3779926291a272010`  
		Last Modified: Tue, 25 Aug 2026 00:57:18 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6553ed43ca213b706e7400e04b7a5c480fc87d47d7791393a0d22f41d93b0f6b`  
		Last Modified: Tue, 25 Aug 2026 00:57:18 GMT  
		Size: 90.6 KB (90603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:7a2ffae65ef3e88bbd38fd9450b99b06c719c9ecd482fa697696c2c8ef220aac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3624069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07f95cf8beb667022257f101daf0b81b635b7ec1e945fefc5fbb701d999ed200`

```dockerfile
```

-	Layers:
	-	`sha256:68fbd0a9fcf5603e170fc87deeee7c1710dd07daedac1c87abd933fcd398302f`  
		Last Modified: Tue, 25 Aug 2026 00:57:18 GMT  
		Size: 3.6 MB (3610042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b004c344a5142a42d88fe87c4c8d13e319c4438f8e9c3e0dac1e45acafd5728`  
		Last Modified: Tue, 25 Aug 2026 00:57:18 GMT  
		Size: 14.0 KB (14027 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid` - linux; 386

```console
$ docker pull neurodebian@sha256:39a9f8f8a0b6098150bc5afa58d6c9fcade2082c8b12a8a912ac35b57fdc9aab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62926512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4d02b01d136f5fb53458c3e3fa7f4428e61f838ab5d1be5c1429a5f1e4e6573`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 00:53:10 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:11 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:53:11 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:53:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e01d3901aa4016b5ea48582531a16356a61eed1c133860429fd1cae83ee61798`  
		Last Modified: Mon, 24 Aug 2026 23:20:39 GMT  
		Size: 51.0 MB (51017431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4371e7626550b21b08dfe985c6c582c43fe7a37ef95b3a89a91c0dfef61c795`  
		Last Modified: Tue, 25 Aug 2026 00:53:24 GMT  
		Size: 11.8 MB (11815808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a699418efaa4471a4a7788fb05a01539a0803fe4ad4b5840b9bb4470fcf95cf`  
		Last Modified: Tue, 25 Aug 2026 00:53:23 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd58aa25429eae77116a3ecb3a10bac50adb0060eedff57d08e95a9a9f58e6a`  
		Last Modified: Tue, 25 Aug 2026 00:53:23 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:354e0092d1fff4b29d30cf9fa2c8ee5e8d880ee93f5ff3a9cd69b89c7199d9ce`  
		Last Modified: Tue, 25 Aug 2026 00:53:23 GMT  
		Size: 90.4 KB (90367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:daded7ba1a6867f0f291e22340d54f7ad27782c2aab90f4048ae0198b3c32224
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3617641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2018931a0ff6e5ebecaa831e09ef786af9c0649b49c21e988e4462d71878c316`

```dockerfile
```

-	Layers:
	-	`sha256:ee97205b2cc2ceee733e18766b7c863a007a49641390d648fb597b5e618ea126`  
		Last Modified: Tue, 25 Aug 2026 00:53:23 GMT  
		Size: 3.6 MB (3603765 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8fadbaaecbefe5f776238084d57aaa316adc45877287b81fbfed6d9424945df`  
		Last Modified: Tue, 25 Aug 2026 00:53:23 GMT  
		Size: 13.9 KB (13876 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:sid-non-free`

```console
$ docker pull neurodebian@sha256:a1d964fe4f69fec4b6153fe4dee56ef78e967713ecea84ae032b36b185dd3971
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:sid-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:28b3bcc71ae70f4a5fc6f65aee15d1817ebac8f11469e88125ca8acf8b8b7c7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61544953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b5b4921b866e155ef7ac5bd9026883983e0b166655d8af3217ae020ae03b86`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 00:55:04 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:55:05 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:55:05 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:55:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:55:09 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:f16f5a97d51498e5eccf3dd3e5e6ca2746febdb9dc2913a353263b85031a5c09`  
		Last Modified: Mon, 24 Aug 2026 23:20:40 GMT  
		Size: 49.8 MB (49841754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1c186af471100f13a8ab5207c0b3e4fc44b0c93975c4ff468187425b9d9dbb3`  
		Last Modified: Tue, 25 Aug 2026 00:55:17 GMT  
		Size: 11.6 MB (11609790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e4f890879362abb16ab8d0acba340632615f7669c21c6d025d8142628f74d27`  
		Last Modified: Tue, 25 Aug 2026 00:55:16 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:354d868b45b86de340c31ab52667967a25816d15f01f672c9b8cca7f61b5abf7`  
		Last Modified: Tue, 25 Aug 2026 00:55:16 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e80d760783c8f907062f9d5a7f7cb7f0fa23523b902b7119198d8be01925be00`  
		Last Modified: Tue, 25 Aug 2026 00:55:16 GMT  
		Size: 90.1 KB (90085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33b72176c3f5378e62d5fe6184e9f8d7763e13fdc054227901449ef9fa9c7e3`  
		Last Modified: Tue, 25 Aug 2026 00:55:17 GMT  
		Size: 417.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ea1abe7f38f669d7616fa9394a7ae25011aa547cf244aefe893fae027d357c84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3621887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbf2c490fe4934e7ac90a948aeafd55f2c554514a34d0b3c35d0e2bc168f7285`

```dockerfile
```

-	Layers:
	-	`sha256:eed627add6390ec514da310551acbb2afaca7c70f2fa71fb5126d5f7792f1270`  
		Last Modified: Tue, 25 Aug 2026 00:55:16 GMT  
		Size: 3.6 MB (3605956 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0db967fe0026be04d988906ba56b8e808612eb88a85b428f323443a89b0386a6`  
		Last Modified: Tue, 25 Aug 2026 00:55:16 GMT  
		Size: 15.9 KB (15931 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:b788befdfdb7b29bd6ed30a2e334c67298666b2410ec032969f85ca5ac33757f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60753400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5801edf86b317c127775ea83987e51ee130b78334ef8d7217d1914986f88c74`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 00:57:06 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:57:06 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:57:06 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:57:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:57:10 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:af77545e1040c204ae857564446e939a826968bdb50dffaaaaeb4179e7b846d3`  
		Last Modified: Mon, 24 Aug 2026 23:20:32 GMT  
		Size: 49.5 MB (49493769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06e266dd9e6c6d06fe75210f4fc731c23df1102a2d8b0784098f518ece6db334`  
		Last Modified: Tue, 25 Aug 2026 00:57:19 GMT  
		Size: 11.2 MB (11165697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b2646b2dc6eee765d273e31aa9a0fc7308dad8f07b2590ce0669dc3bcb0f413`  
		Last Modified: Tue, 25 Aug 2026 00:57:18 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c3570fa9af3d2d7da40505a9a55ec5616165fc1d63115b3779926291a272010`  
		Last Modified: Tue, 25 Aug 2026 00:57:18 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cdb98edd6cc4d22b65f3cd3293691759f2fd3145430f8834f6e54a26a8d5ce0`  
		Last Modified: Tue, 25 Aug 2026 00:57:18 GMT  
		Size: 90.6 KB (90612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e3bac78a665db68371d34871abd1cc4c85230d206b84eaef6080bcee1939479`  
		Last Modified: Tue, 25 Aug 2026 00:57:19 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8da7fd3a4cc7cb18431a58376c5cdacabe0b55b29f0e7cf06db408466323e83d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3626148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f305d444c7d000d35d55622ecb1c1887d362019e58231ab5b3d7fb82596ac20`

```dockerfile
```

-	Layers:
	-	`sha256:66b73b651c06db393829c3472081927473b7527ae73592d690a86f05ab6ba8c9`  
		Last Modified: Tue, 25 Aug 2026 00:57:18 GMT  
		Size: 3.6 MB (3610078 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90ccb5fcba62b8fdade65bee53f0e7ab15fa11d00a548c3f65ef5ff69903b500`  
		Last Modified: Tue, 25 Aug 2026 00:57:18 GMT  
		Size: 16.1 KB (16070 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:2829cedfc1b3a7226e231d1fd856feeb91edcd6000bcd5993e45a3929f8d23b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62926963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f82ec4e39427c17b6918d54425ff2880bc1fe08bf6308ab00cfe0893c5d9f4d7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 00:53:17 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:18 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:53:18 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:53:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:22 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:e01d3901aa4016b5ea48582531a16356a61eed1c133860429fd1cae83ee61798`  
		Last Modified: Mon, 24 Aug 2026 23:20:39 GMT  
		Size: 51.0 MB (51017431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c1796804f4e15eb68dd7db971fe4c99e58304b3c5c6dac6bb99642bdc7d53a9`  
		Last Modified: Tue, 25 Aug 2026 00:53:30 GMT  
		Size: 11.8 MB (11815826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7772a68959ea962c480cead241cd6783ec8248a110cd658991eecb0d8ed75dd`  
		Last Modified: Tue, 25 Aug 2026 00:53:29 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1e1f63ab6ff862cf461766660538d6950c49b7acd92a7590990268914e6d27b`  
		Last Modified: Tue, 25 Aug 2026 00:53:29 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ace446340aa875574ea6bae6d5d66fd735682e907a0d563d01ffd015fd871c81`  
		Last Modified: Tue, 25 Aug 2026 00:53:30 GMT  
		Size: 90.4 KB (90380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea76f06486d22e15a9f6b738f70fff12999030cf1d28373dde621523b4f20f12`  
		Last Modified: Tue, 25 Aug 2026 00:53:30 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:adb16adf39387fbfa3b1a0ba43d068e44ff62b7efc13e9c4adabffc1d3d6c406
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3619702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0093dd83204aa715d6716c85898a9a88441f4f2ae8ab677c0380f6b38e7c744`

```dockerfile
```

-	Layers:
	-	`sha256:4e307d0a13a6c178816033d3687606e7d7091a0f78b34ee142228409de0daacb`  
		Last Modified: Tue, 25 Aug 2026 00:53:30 GMT  
		Size: 3.6 MB (3603801 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e7f54d31a55ae33d20593b31599d8f5edc87a650d1404f3bcf2fd80b0e58ed7`  
		Last Modified: Tue, 25 Aug 2026 00:53:29 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:trixie`

```console
$ docker pull neurodebian@sha256:90442b03d1539d20325c20279ec1b8a05267bdedcbdf3a6a79bab51496096d28
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:trixie` - linux; amd64

```console
$ docker pull neurodebian@sha256:f6d5c72938cad91ee0fd30c3654c6587db01d24191a483f8b822ca5e5410dced
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59725313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc1ba1614dcdb127df00cb66046ee5a392a686e41b9c5b2cc8ba5e62333774c1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:54:23 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:24 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:54:24 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:54:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c88aa34e88b514a6fc663c20e2587d082385503604bd7ec752ffc94014e185af`  
		Last Modified: Tue, 25 Aug 2026 00:54:34 GMT  
		Size: 10.3 MB (10294197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b60ec1baed9a52493741097e33fcc892da307fb597f9f0f4d23a8c606ce2d295`  
		Last Modified: Tue, 25 Aug 2026 00:54:34 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c641e6eb7dabfded1b82e2d57c505c86d543e80107de5395f258291ce5158b2`  
		Last Modified: Tue, 25 Aug 2026 00:54:34 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a342d6a62bb570e42252bddfdbef07b74fd7fe0d2027f42d5317aafd1d0205ac`  
		Last Modified: Tue, 25 Aug 2026 00:54:34 GMT  
		Size: 90.4 KB (90383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie` - unknown; unknown

```console
$ docker pull neurodebian@sha256:501c62ec8d37e53afb960ac5f2175e4bf11f0a3b7d7691b407b3502fd61dd71d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58827c38b278a78a633bb64d02f11264f6cd8bab6910857946231ca19ce4e64b`

```dockerfile
```

-	Layers:
	-	`sha256:7468c7f1e72c047f4e786e7385a0980133ef8ad548f313079979dbc8a343a6e6`  
		Last Modified: Tue, 25 Aug 2026 00:54:34 GMT  
		Size: 3.6 MB (3619196 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68ceb0233fc51b778035f144201dfb10251a91ce25539a14ff4baf91ef4923a4`  
		Last Modified: Tue, 25 Aug 2026 00:54:34 GMT  
		Size: 14.3 KB (14251 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:f08fb22a2ac015904871bee246d74a1e52639a489ac1c9f5278cca89ad1c2c8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59877638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4790cf48f05352841a014ee45a8803633929677a93f1dbb84f5382f556804035`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:56:33 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:34 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:56:34 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:56:37 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8470dde52347be92c29a219d0ec9b6feb51da133748dc414f0266666b4a272e8`  
		Last Modified: Tue, 25 Aug 2026 00:56:45 GMT  
		Size: 10.1 MB (10078864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3467360f2cebf7f0387dd86ea24af03765585193acd42c1d782e3985efbabc11`  
		Last Modified: Tue, 25 Aug 2026 00:56:44 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:333f6d90a17033ac694be8e8ea1719852732ddd7460bda09301c0d23d95ec34a`  
		Last Modified: Tue, 25 Aug 2026 00:56:44 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e024d9a3d10a754cfebe6bd0aa2aafb58dda70b31a5c16748c39f8942c39a68d`  
		Last Modified: Tue, 25 Aug 2026 00:56:44 GMT  
		Size: 91.0 KB (91013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie` - unknown; unknown

```console
$ docker pull neurodebian@sha256:132029423ffb394a29c0e7562ae07b592f88407ca08792f388c4538d464d48b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3634474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fea72597f9e6f28217523e6debc9a5dc431cad6bf69dca0712f3783d86b3ff9`

```dockerfile
```

-	Layers:
	-	`sha256:e4e5b7408e84ae71a11946dc3f3ff4ec7c651afb3f7cfd38bd1904c7ddba94a4`  
		Last Modified: Tue, 25 Aug 2026 00:56:45 GMT  
		Size: 3.6 MB (3620086 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88949446fcc5fa21445d318b7dbfcdabda6715cc377c0d5620dc2ff10bb0957d`  
		Last Modified: Tue, 25 Aug 2026 00:56:44 GMT  
		Size: 14.4 KB (14388 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie` - linux; 386

```console
$ docker pull neurodebian@sha256:0143a67c141e95ccf347b6d3a3d7d99011ca68caf61caacf55a5a3a2fc0ac86b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61411415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e184366ead5044b1c957dfa04a210019e2eea84e91854d140decae7ad021006c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:52:11 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:52:12 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:52:12 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:52:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:b893e4e8ae50bbe3f6f662d089d78bdcec599d1f4f6ffcc53ea4c77eba1418a5`  
		Last Modified: Mon, 24 Aug 2026 23:21:29 GMT  
		Size: 50.8 MB (50849582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfdbe5b9045c6f4c7b65146f2c919ed53f3d20a607314fc64c93b839732b7aaf`  
		Last Modified: Tue, 25 Aug 2026 00:52:24 GMT  
		Size: 10.5 MB (10468169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44faa7eba53c76d328e74262ddc1cc1e2721331d09a6711795f3cbc32b8f7577`  
		Last Modified: Tue, 25 Aug 2026 00:52:24 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c892473b9707fea4d058a0bc57f6c9797631ab94f46fadb8a523c635b1fb6a59`  
		Last Modified: Tue, 25 Aug 2026 00:52:24 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad6aa94ad1f53f196e47b28600d0f0318ac58fe27be04b91350ab8e093bbd929`  
		Last Modified: Tue, 25 Aug 2026 00:52:24 GMT  
		Size: 90.8 KB (90757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie` - unknown; unknown

```console
$ docker pull neurodebian@sha256:747de5536533068d15779efba06a757f9942ef8e71b18d6d8c4acc3a763c26e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3631362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26e953c79b15a3e61e16af95e76e6bd041282d01a7deab1083cea2067b2d2c9b`

```dockerfile
```

-	Layers:
	-	`sha256:634024d10ab256787f98fbdca8088419911bcd38f03928e07655574e34f9d22b`  
		Last Modified: Tue, 25 Aug 2026 00:52:24 GMT  
		Size: 3.6 MB (3617144 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e294c92a076503cc4d7b05f08e7f6cc9aaf947b0689f6728b1400ec89378d7d4`  
		Last Modified: Tue, 25 Aug 2026 00:52:24 GMT  
		Size: 14.2 KB (14218 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:trixie-non-free`

```console
$ docker pull neurodebian@sha256:6cbb92e4348029f024d0376c348e19e520413fe1242f1eb39eccd802df38b9b6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:trixie-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:585d4e57e66aa723b87419f06d00117448d8210da84990f53c5843dc76f1ce2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59725690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eed4dd46f57dd6dbb03c4fdbaff037ff14d0e896c70f4447b236b2c958f2f365`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:54:46 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:47 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:54:47 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:54:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:50 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64ad5d9f3fd4e2cb063a7e2df838d2a47b1d7dd8e8b3f65687f861908a7d7af`  
		Last Modified: Tue, 25 Aug 2026 00:54:59 GMT  
		Size: 10.3 MB (10294135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b92b2637641beb37fe403e7131f2f55ac1c8afff80d68b11de0924e3aa3074b9`  
		Last Modified: Tue, 25 Aug 2026 00:54:58 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1083e2a2691b7df480c0f33fa9019fcfdef0e2f8a520e21ed85116834afb4409`  
		Last Modified: Tue, 25 Aug 2026 00:54:58 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7195558f7b5aa2b5acc05bf1a0e9ea0a2ffe2b9c8c45ea7a76c4fac932c2ce33`  
		Last Modified: Tue, 25 Aug 2026 00:54:58 GMT  
		Size: 90.4 KB (90372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c54cfb8daa375972df1eeb51a7cdb1085b4a42529f259fa77bab62aa81a1558`  
		Last Modified: Tue, 25 Aug 2026 00:54:59 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ce6cfba84205a5e7e1bc9a1ef58ea8511fa18d97eb9a980625a5eec2fd201308
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9420510e3d88ccc2a6099964dbb45f35f9ba39138dad791573e25a5d1d5a6d2b`

```dockerfile
```

-	Layers:
	-	`sha256:42704e9007a9e84a191dd9c58499825b7c0ff69c93774c5a04560c6b030bd6e7`  
		Last Modified: Tue, 25 Aug 2026 00:54:59 GMT  
		Size: 3.6 MB (3619236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:373b4a68b3fa1227d46bfb6b5004f5dcf976b010073c707400c0662277da705a`  
		Last Modified: Tue, 25 Aug 2026 00:54:58 GMT  
		Size: 16.3 KB (16282 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:c38c5fac28fddd7bad3aa59153c46cea064f7b5cdd221c86b5d37b98fcd1859b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59878132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f277230f9ac4f2ab1b29bbeee51284919bb180385fcd8e2e06ca454d3b1bbb5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:56:40 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:41 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:56:41 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:56:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:45 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7097863ad40529713edf41cdebe89b47cc47e8a45a7d58b28666c5d33d50228`  
		Last Modified: Tue, 25 Aug 2026 00:56:53 GMT  
		Size: 10.1 MB (10078877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0f9a2dc15cc9fa5e9c135f95ccf7940ab0474022ad9d4525c9c746252370ec6`  
		Last Modified: Tue, 25 Aug 2026 00:56:52 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cc154c9d1d1d86dfeed14ec614a129a574fa540cd708dfcbf0f7f6949274b58`  
		Last Modified: Tue, 25 Aug 2026 00:56:52 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c30fd05d00524c4efacdece6a71abe09d836911e7f851b0c3a07e38a1050af65`  
		Last Modified: Tue, 25 Aug 2026 00:56:52 GMT  
		Size: 91.0 KB (91048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b659f5cfffaa647365fc2fc522e59f738559ebf75f2e5575cd8458a6716007`  
		Last Modified: Tue, 25 Aug 2026 00:56:53 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:b3e6d9b1d684009389e9cb021c7d98e3ff8109da37b16ccfc80be2d2bac611d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3636560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6dd3aa458d5fabc006c88dbfff018f3096c10e68968c019c7c666772af48480`

```dockerfile
```

-	Layers:
	-	`sha256:c5677fb4e7b8e20cad7625372c152cdad4234eb9f48e6816d94b1263a4e99c03`  
		Last Modified: Tue, 25 Aug 2026 00:56:53 GMT  
		Size: 3.6 MB (3620126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe0398cbdbf2c08bc4efea86ef4055096232886297c5f6a0bf5dfcc623d08d96`  
		Last Modified: Tue, 25 Aug 2026 00:56:52 GMT  
		Size: 16.4 KB (16434 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:e836ea9a1ba54fa0de85dc9632dbda7afdbef52eb368e0cb2f1aa85bd0f6722c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61411803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c1725c23372567d68105f2cff90c0927b6311a1f5adb5ed25c0b72f220a1244`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:52:21 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:52:22 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:52:22 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:52:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:52:26 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:b893e4e8ae50bbe3f6f662d089d78bdcec599d1f4f6ffcc53ea4c77eba1418a5`  
		Last Modified: Mon, 24 Aug 2026 23:21:29 GMT  
		Size: 50.8 MB (50849582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:479d199f2c8d8b85449cb45f741f35bf110ebcb25cf9ea717e05fe98a89fae5c`  
		Last Modified: Tue, 25 Aug 2026 00:52:34 GMT  
		Size: 10.5 MB (10468123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b64e11807109081e0c34c3584cb71570b13c7b598319f7445a0afc3025876f0`  
		Last Modified: Tue, 25 Aug 2026 00:52:34 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28395131873e7649c73fc75a3e865132252ea0b5f9e062fc1c2c211f698b7700`  
		Last Modified: Tue, 25 Aug 2026 00:52:33 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23b36bb10eb18abcab26c9e21acfdad1237410a8f5072f072f70b3bf4fdb755a`  
		Last Modified: Tue, 25 Aug 2026 00:52:34 GMT  
		Size: 90.7 KB (90744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3cad72be0573046258a1c91db088d374cfe4e4a8da4f585fda1e704e7f0f105`  
		Last Modified: Tue, 25 Aug 2026 00:52:34 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:1a9f1753550e7b5b868b25e388724fe1cbac11583e79246c37727c570271809c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85a0f3018dbcd8262565a2fda8c0457b46898cf15ac4ea8589f856b29d2c5a82`

```dockerfile
```

-	Layers:
	-	`sha256:f5d836b5a40467bd30eb4fbde50c9858a1a4dafa10e6c589dadb749a7c452be5`  
		Last Modified: Tue, 25 Aug 2026 00:52:34 GMT  
		Size: 3.6 MB (3617184 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e899670c9ac1983e3b70c0e88e2ecb75d8ba9155ed9bb9d9f3aca9bb0e67450e`  
		Last Modified: Tue, 25 Aug 2026 00:52:33 GMT  
		Size: 16.2 KB (16246 bytes)  
		MIME: application/vnd.in-toto+json
