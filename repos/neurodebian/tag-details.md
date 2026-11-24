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
$ docker pull neurodebian@sha256:2c49427986e939e7cb532a08f0c74198fd73255bbf78e3334e3b8bc8a371ed6d
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
$ docker pull neurodebian@sha256:bbfe8d96dd61d71a7ec60e19b51d598e0f7795f60e49f4361978717374f455b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59895542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fe6f717ac07832134cba1c3fc199f3e5b102e14e6addd8860eb443d9de8288c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:41:45 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:41:45 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:41:45 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:41:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0369d94cf4170880ceeb138667f803e08ef65ecec05a0b7c67d013ad5d4be9c`  
		Last Modified: Tue, 24 Nov 2026 04:41:55 GMT  
		Size: 11.3 MB (11273606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8833a911308e3adad61dc6620c209d0b48e12a35caf02ae16bab9de2abb6e478`  
		Last Modified: Tue, 24 Nov 2026 04:41:54 GMT  
		Size: 1.9 KB (1897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45dc09f6518723f2553e07faef8429872e6bb06361da13e29f94252615a834e5`  
		Last Modified: Tue, 24 Nov 2026 04:41:55 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01d4fd6dd3cb4ff6245b0d0ce4318c2de859f955512c43f7da08abbbe62ac6bf`  
		Last Modified: Tue, 24 Nov 2026 04:41:55 GMT  
		Size: 93.4 KB (93388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:73623c123947c059d6883308a730961958ed3e0bfab31d976c13655c5ad050b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab4587a2e51630e7121db1515df54091ac59b16db51a537ebbc2bbbe677b2d6c`

```dockerfile
```

-	Layers:
	-	`sha256:972d3c6a2e6227422d535e9b06449dbbd2f90a6884458a6fe81f102269c1746b`  
		Last Modified: Tue, 24 Nov 2026 04:41:55 GMT  
		Size: 4.1 MB (4076041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c273db6e5d35d1f65d245d3e719e224b25b148e2784ce4d37c69c2afa450f9b0`  
		Last Modified: Tue, 24 Nov 2026 04:41:54 GMT  
		Size: 14.0 KB (13965 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:da346b907c488e929f8b68ece86e8244b4265036d1cf4281aea3e96769e17f9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59761064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:982bb4d034f1b659bd1a6cdb06337727c5ddf083d5fa5aa0ce61c1288e502cb0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:46:10 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:11 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:46:11 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:46:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:5253071eb43403aa847239c81e354ab7f008a222e5f909eb323f9db555504a95`  
		Last Modified: Tue, 24 Nov 2026 03:39:43 GMT  
		Size: 48.4 MB (48412261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d887c81f8f526fc0f52b6db9298e3d5c18e74606ad8cce19ece4822642200e3`  
		Last Modified: Tue, 24 Nov 2026 04:46:23 GMT  
		Size: 11.3 MB (11253017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11fc4d856d28d59d565066913305e7ebb31cfb0150cbfab05d3c7f8c840aa45b`  
		Last Modified: Tue, 24 Nov 2026 04:46:22 GMT  
		Size: 1.9 KB (1901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e2f07f5e6d4c014802c223ff3a9dcbc4fc3e3f20fb3a9b244bd83920a587f96`  
		Last Modified: Tue, 24 Nov 2026 04:46:22 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c2878724494234f64ec4a1e9becc7c58a563d47e3375ed78d256801f4ddb370`  
		Last Modified: Tue, 24 Nov 2026 04:46:22 GMT  
		Size: 93.6 KB (93613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:1f374988f590269bb92a236bc498742dfd278f3d4a381003d028ed29e3a31956
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a14fdd55733fb5120ad6320aaf73d862a772977d3f967769d8a2f2bbde788c8f`

```dockerfile
```

-	Layers:
	-	`sha256:ad82676f03c63e87c901e9ba99b7b0f6a3046d32441818a5907716273797a6a2`  
		Last Modified: Tue, 24 Nov 2026 04:46:22 GMT  
		Size: 4.1 MB (4076283 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:565cf0fe32c17495a4c3b0c83021cd3ada7d55b391c6b002bfb7065ea2ececdd`  
		Last Modified: Tue, 24 Nov 2026 04:46:22 GMT  
		Size: 14.1 KB (14089 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm` - linux; 386

```console
$ docker pull neurodebian@sha256:72c96a3aac480efa2b57bd3d0571030172479e460d0006f7c56f7bdd15763a11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61305245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5d5abee26b15f0d375aba6fe3a4044f7d8636e65b4cbeee9ccd4c8723113571`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:41:47 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:41:48 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:41:48 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:41:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:09060430fb43c1c139cc1889a4b8e7bb0d465c2c692e898e363029cce671f6ce`  
		Last Modified: Tue, 24 Nov 2026 03:39:50 GMT  
		Size: 49.5 MB (49515532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdf9031ee15c1aa5df2dc8b6fe9966a623d475a4edf95bcf024ac46f86ccfa97`  
		Last Modified: Tue, 24 Nov 2026 04:41:58 GMT  
		Size: 11.7 MB (11694098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc9e16d211008e8c7d96563224b69b8d1a7435789d5a72b77b846cd3a1adfbe`  
		Last Modified: Tue, 24 Nov 2026 04:41:58 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0ae9d6a020bef5e2acbe773448eec5e1465288cfbd7b01a92ff7c9aaef44b23`  
		Last Modified: Tue, 24 Nov 2026 04:41:58 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0244c02d2afbe77ee5ff2bdcee7dbd0e3daad8c80edd77d9f56c8f6f88e6d43c`  
		Last Modified: Tue, 24 Nov 2026 04:41:58 GMT  
		Size: 93.4 KB (93441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:3ec53fa4485e5ef9bd3ec2ffb44b92a0e4694767eda16193d9a87023e6206b7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4087944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7b337f5b83b9bf9f17406373d14867ceca4e935d5c5b844be221d55e36439c1`

```dockerfile
```

-	Layers:
	-	`sha256:cc27c910644f72ba62101cb1ca78bc5b0eefa8eac58a97d40dea10a72672823a`  
		Last Modified: Tue, 24 Nov 2026 04:41:58 GMT  
		Size: 4.1 MB (4074008 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d44bcd3e24e3c64ca0c27ef5d6b2d769dd80ecbb399db312f8175c53d1e47db`  
		Last Modified: Tue, 24 Nov 2026 04:41:58 GMT  
		Size: 13.9 KB (13936 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:bookworm-non-free`

```console
$ docker pull neurodebian@sha256:fb4ea36fde52c125e22b6833758e700469d83af1f43286c7dacf353e01716dc7
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
$ docker pull neurodebian@sha256:f105992944e8933ac240928594ffdd74062963500c7630c6b77497a310df723e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59896161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f6fa60a7da453e6bc765614ac880283e292664b82851a37b01273469c75873f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:09:32 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:09:33 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 05:09:33 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 05:09:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:09:35 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c98bc0b7a106be143daa9d95938165fdc617245480cebe515b03ef5352170ba`  
		Last Modified: Tue, 24 Nov 2026 05:09:43 GMT  
		Size: 11.3 MB (11273721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05f4669c4c208b8cddf3acca25ef017c557a3d6e0fee4efe787012d79045ec2a`  
		Last Modified: Tue, 24 Nov 2026 05:09:43 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6e1befdcf23ebaa4620dc06071ee2e83d7f454e2bbaef97780a0931e254a056`  
		Last Modified: Tue, 24 Nov 2026 05:09:42 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9abfdcbbf4687d671feaff8d706875dc8bb02932acf0777eda2f677d1e2a9558`  
		Last Modified: Tue, 24 Nov 2026 05:09:43 GMT  
		Size: 93.4 KB (93437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4af8792bcf15a138b315d7556f9ccb9ad45a36ad220b51acac27de07fae86057`  
		Last Modified: Tue, 24 Nov 2026 05:09:44 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:94820b823d1c0181f39803eb1d9783e1bb8cf8ef777c0e9f47c1eaa275d7ff13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efccca7d94c23bf31e9c7a6d8dc5dd314b7c4f0518b3e18ca71bdd72b787554d`

```dockerfile
```

-	Layers:
	-	`sha256:c9cb44e27d17ec220cc4910b6ef5f35ebbccc2a0877cb3d2a64a4290eb440893`  
		Last Modified: Tue, 24 Nov 2026 05:09:43 GMT  
		Size: 4.1 MB (4076077 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ddb6dc399568c55973cd945938e56c95b96b0fdf30d384a19e9ae9de7a1c2c0a`  
		Last Modified: Tue, 24 Nov 2026 05:09:43 GMT  
		Size: 16.0 KB (15992 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:9a2798157be4c1d445218d23fca80af2d9b2ad2e80a819b2b0047b0a9d62edda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59761426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5887b7db656d6c4530adc4ede7dcafe9e7bf92e7153f6d522c8a667f8a6662e0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:46:13 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:13 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:46:14 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:46:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:16 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:5253071eb43403aa847239c81e354ab7f008a222e5f909eb323f9db555504a95`  
		Last Modified: Tue, 24 Nov 2026 03:39:43 GMT  
		Size: 48.4 MB (48412261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:964d85ca968ca5cde4b47a075f756078b51ce263e0d30893b138a8d092ba0fec`  
		Last Modified: Tue, 24 Nov 2026 04:46:24 GMT  
		Size: 11.3 MB (11252976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe88250a8ab895c72e5e0cc83a4a533e8a068b481179e5c9ea24ebe3f26beca7`  
		Last Modified: Tue, 24 Nov 2026 04:46:24 GMT  
		Size: 1.9 KB (1898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a514945fd2c19c557905d76f7c49673aae8709f21d0731bc2ded7a7f6dc0a838`  
		Last Modified: Tue, 24 Nov 2026 04:46:24 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f3750aff4f2df0e781c0bd2713241f699406428a19c8c7a705f517c215ae6b`  
		Last Modified: Tue, 24 Nov 2026 04:46:24 GMT  
		Size: 93.6 KB (93571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:608941939947017d51460cb3f022d2e8a1c006bfc16924661bb4697376b695cc`  
		Last Modified: Tue, 24 Nov 2026 04:46:25 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:03ddf135f3877cd1debf15b42c3d0e41b5ae7391ab7e2d4b5020e7221c5ef1c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfeeda65a87b903f0f427f48f2b574eb4736d6f8a807fdabbb2d08f29de34747`

```dockerfile
```

-	Layers:
	-	`sha256:8d68ae53473f683749924960a5757bdb17b6fca694f41282a3ea2148d426b10b`  
		Last Modified: Tue, 24 Nov 2026 04:46:24 GMT  
		Size: 4.1 MB (4076319 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e47ab7154119e0e84dbc0cd866c0a7e6c2616fe763ac7100f96ee71a49a6cb2`  
		Last Modified: Tue, 24 Nov 2026 04:46:24 GMT  
		Size: 16.1 KB (16132 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:2a57daa1ec3ba29c06817329119b31f1f5741cedc3bb6c1477ad74a5766bae2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61305766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40279a8a5248964f9ebc63f6887de89423717864160c92a5db5e452a54cb404d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:41:49 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:41:50 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:41:50 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:41:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:41:53 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:09060430fb43c1c139cc1889a4b8e7bb0d465c2c692e898e363029cce671f6ce`  
		Last Modified: Tue, 24 Nov 2026 03:39:50 GMT  
		Size: 49.5 MB (49515532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37050afe46d46602aec7ba6e593adecfc2a6edcb1bf9a9e237bf622f1f6b3256`  
		Last Modified: Tue, 24 Nov 2026 04:42:01 GMT  
		Size: 11.7 MB (11694149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb23c1dfa9edc158f80a17649cbd610e1119a0bf9c8df95f850c1055b1801b66`  
		Last Modified: Tue, 24 Nov 2026 04:42:00 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddad520486416a43ec84a12ea399a379d386fc8954db407ca44a53b2c9090411`  
		Last Modified: Tue, 24 Nov 2026 04:42:00 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc57fe6bc595a4e7248af93b81d81f02d970f4196976a042e1b4ddc5177d0e1b`  
		Last Modified: Tue, 24 Nov 2026 04:42:00 GMT  
		Size: 93.5 KB (93461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2dfff8c2aeb3cbc2174ec9f63b001d1b8de2b0ce1c1286dbe69481bdaf04ccc`  
		Last Modified: Tue, 24 Nov 2026 04:42:01 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:636c7d7f223bfa7aff780578345229a0fe9548c0e2c5286893ea6c77a5bbda20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7cb40dda4278114bf695ced3986fe2f123cea448b6934ad1d9c566da92d31ec`

```dockerfile
```

-	Layers:
	-	`sha256:15fb229ccd6ed3aa40ca16216136edc1089086a0268304b67dc91967abe722f6`  
		Last Modified: Tue, 24 Nov 2026 04:42:00 GMT  
		Size: 4.1 MB (4074044 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:338aaa29dfc59295151527542b6598b75ef1220c89161045501c5c17329e83d0`  
		Last Modified: Tue, 24 Nov 2026 04:42:00 GMT  
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
$ docker pull neurodebian@sha256:48ca2df9cf52c490eb9111cb3422110b489dee6f4ac121ad23788d21d59b452e
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
$ docker pull neurodebian@sha256:dc029598b04e241af722235f64b36669d282f7463bafee86a75fec2824a30122
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62664618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38100b4af194a0f9d2534ec69ae505f4988a09290c9b2d8d0e819d3de7a85f4b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 04:42:01 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:02 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:42:02 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:42:05 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e0532024bbbbe838be5cdb81657e837efca9a68f1a5e2c55bc6bd02a30fae548`  
		Last Modified: Tue, 24 Nov 2026 03:40:04 GMT  
		Size: 50.8 MB (50824479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59c2ca2751c76e8c6b494737107c23e91d587b675bffe3e911f24bff7eda8590`  
		Last Modified: Tue, 24 Nov 2026 04:42:13 GMT  
		Size: 11.7 MB (11746804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f601d320d19b41ed5464a7a694e3b565f3755cf17ff6142790dbf0a07bc2e3b`  
		Last Modified: Tue, 24 Nov 2026 04:42:13 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b401663fc58449e12edfaa4600a335efd1a2e3ab92b6cb37fed3231d80bae8`  
		Last Modified: Tue, 24 Nov 2026 04:42:13 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:957b51196246c3e6b2f13631929664a33961d8d27a0fa3cb9b40304c4177e7d6`  
		Last Modified: Tue, 24 Nov 2026 04:42:13 GMT  
		Size: 90.4 KB (90432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:0efeaa5221cbb115ad45ec2f70249230e18ec2a9e4f7a8873d4024a77b73479c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3613848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:392e6c773b6e92130e3bb27961303657f03b1fc770c224ffb49dd79ed490d093`

```dockerfile
```

-	Layers:
	-	`sha256:fbd0c9933515a0c5f13bc241e0776d314c5b2300186da9ad5b5fc630671a8388`  
		Last Modified: Tue, 24 Nov 2026 04:42:13 GMT  
		Size: 3.6 MB (3599916 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a4fa6f74c093773310d6253530dbc281b26592cef75e59701e17e56438447fd`  
		Last Modified: Tue, 24 Nov 2026 04:42:13 GMT  
		Size: 13.9 KB (13932 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:195014940c871e993c5dbb8471ef939c3fd531814a6f0b4d64dedf91d866d28c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61272518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83df77239dfb8565155e6c9d19e503ac6e2979836ba58f1893f4da53ca8044d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 04:46:24 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:24 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:46:24 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:46:28 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f2d0466274a27fafe53b0ab31eac3d74e9c4c21ed2c12e050bfaffdc8a143a68`  
		Last Modified: Tue, 24 Nov 2026 03:40:15 GMT  
		Size: 50.0 MB (49959536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6111f25e9c0b74b98dd1c413ef6ef9489efb5ff05fa3d1044cf44347b37fa9ba`  
		Last Modified: Tue, 24 Nov 2026 04:46:36 GMT  
		Size: 11.2 MB (11219131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2703a50fbca788e3056a6238ac4088c232ba84837070d97613b433f4d240c9c`  
		Last Modified: Tue, 24 Nov 2026 04:46:36 GMT  
		Size: 2.6 KB (2631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:982883ab5b073d8fabc3406a3abf81de064e3c61a471415e73b55c514a9878a3`  
		Last Modified: Tue, 24 Nov 2026 04:46:35 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa8f0012bfc03a7c509f02b378e8a14c74709300f1e4fd2d1bd596967f85f539`  
		Last Modified: Tue, 24 Nov 2026 04:46:36 GMT  
		Size: 91.0 KB (90950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ac1d27ce3c8f336b21028b2f1ea53f1f8def12903855d6b001fc3521082bafe0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3617472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cf0490d0db720d492025616641b50ddde6d59d578654564bf4f776e88494cb7`

```dockerfile
```

-	Layers:
	-	`sha256:0ca382e05b0c731487edaebfa1f9222e001141daaaa9602eef2e8f061bac18cf`  
		Last Modified: Tue, 24 Nov 2026 04:46:36 GMT  
		Size: 3.6 MB (3603415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59682b1cb6a1bd037bed68b2100f3501cf6118a5547c0bb89e8c4e7a259cc2bf`  
		Last Modified: Tue, 24 Nov 2026 04:46:36 GMT  
		Size: 14.1 KB (14057 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky` - linux; 386

```console
$ docker pull neurodebian@sha256:66f0768dd7ac7e7d94dfe31af3ca9a90efdfd4112738571ba9f3379d1c94ce8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63917261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7ee5170654a59f15e3d2400965724efe04e27d519bd8b6133e19f87027f053f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 04:42:15 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:16 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:42:16 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:42:20 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ad24eb7477cf6ec6782c9a4f3e0669cb79bb950b4d715dd6243dfd2cc7f5069c`  
		Last Modified: Tue, 24 Nov 2026 03:40:12 GMT  
		Size: 51.9 MB (51898500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63f19a4739736188af2c372249449db423d63e21e580a19e3e279830d74eee68`  
		Last Modified: Tue, 24 Nov 2026 04:42:27 GMT  
		Size: 11.9 MB (11925062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3900916d28fe65106c44591b0dcbefa376b3e45680a7b9fdbbbf0deea9ec0f8`  
		Last Modified: Tue, 24 Nov 2026 04:42:27 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69880bd62c781efeda9f3fd49687a6159a8f99b9c1787674045a56622755552b`  
		Last Modified: Tue, 24 Nov 2026 04:42:27 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1421396c2e44a016cbd13b405f71d7eae1d37ecd97fd1951ee047d5cb36f1d4`  
		Last Modified: Tue, 24 Nov 2026 04:42:27 GMT  
		Size: 90.8 KB (90793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:f25d011e7716088b4e6b3861c44fe86de405a29b899608d43f480399231a7dd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3611638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:533de85fa84079cc565ce134b0a7f3eda3902ccda3e6e510615feba531c5ce71`

```dockerfile
```

-	Layers:
	-	`sha256:7e6d5f6c2909bfa64a305f99ac9b84e32e36f54921388b5d98dbaf0e001b63a2`  
		Last Modified: Tue, 24 Nov 2026 04:42:27 GMT  
		Size: 3.6 MB (3597734 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e13f63f2b4430d90ff3e6fe91a906713f4d562edacdc2b70dc65009735eb4d4`  
		Last Modified: Tue, 24 Nov 2026 04:42:27 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:forky-non-free`

```console
$ docker pull neurodebian@sha256:b54b63d2cdd6e00e8d5003cf91b3b045e53f1cea31e3705fd14d029192bceeb2
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
$ docker pull neurodebian@sha256:d2111e8f25bd58a2c941d2373483872b259bad5d33ec6980924d24754323fa57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62664961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:520757eae91138041ec987ae27629b85a5f092cfcb75f516c27948099f670cdb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 04:42:06 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:07 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:42:07 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:42:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:09 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:e0532024bbbbe838be5cdb81657e837efca9a68f1a5e2c55bc6bd02a30fae548`  
		Last Modified: Tue, 24 Nov 2026 03:40:04 GMT  
		Size: 50.8 MB (50824479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:324649216c993fd2c09ae0cca3754e067999ec5f396eb6adc456a9cf9bf54879`  
		Last Modified: Tue, 24 Nov 2026 04:42:17 GMT  
		Size: 11.7 MB (11746707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fcae05a342c839129eb542f11b3bc7516b00f8f23e6e3e6111d058338eb1056`  
		Last Modified: Tue, 24 Nov 2026 04:42:16 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:959ce98b6ce52bfe8425cd09e8493b2a06f4e5e96da5fecc276cb2e5d3302225`  
		Last Modified: Tue, 24 Nov 2026 04:42:16 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bcd26fc7e722ab7ec170d97a9ca47c06b175e37ce21b41e6cf2c5873d3e0298`  
		Last Modified: Tue, 24 Nov 2026 04:42:16 GMT  
		Size: 90.4 KB (90420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd489154168eea720b08dc8181b5c8546f27222ac0fd9f66b430064eefa7adc`  
		Last Modified: Tue, 24 Nov 2026 04:42:17 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:deda16613fa0722eec6e5e6e1ab179df53978d443c2341c0bdbd438a67ba80dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3615911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:957312b63a1ab928e5c0563d3b646d22c48c0ad05e81be99e2136183aeca6a0b`

```dockerfile
```

-	Layers:
	-	`sha256:fffa2588b8deb7865949797e508ecc99759c9085879018931f3771cc65ad02ae`  
		Last Modified: Tue, 24 Nov 2026 04:42:16 GMT  
		Size: 3.6 MB (3599952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d96dbbe3bf8a4d9d17ac3745d30b9641830d22a9efab708508f87c8df2169f7f`  
		Last Modified: Tue, 24 Nov 2026 04:42:16 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:d0e47941e5c038361c17bc01630dcdeff473ec87f4be30c351874f971f996bfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61272923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0824d0737984483fb59cec4cc19dff00d49d93c621b8726fcb42b43c3afad996`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 04:46:29 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:29 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:46:30 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:46:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:33 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:f2d0466274a27fafe53b0ab31eac3d74e9c4c21ed2c12e050bfaffdc8a143a68`  
		Last Modified: Tue, 24 Nov 2026 03:40:15 GMT  
		Size: 50.0 MB (49959536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e5cea1c7192e8f29df702bd75746abba7820dafe444c6861e2097249ec26c9`  
		Last Modified: Tue, 24 Nov 2026 04:46:41 GMT  
		Size: 11.2 MB (11219081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fa0b560e698ce283dcc96f29779c1f5214b30a0cdb4d34b982645e6739c9988`  
		Last Modified: Tue, 24 Nov 2026 04:46:41 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ee466607585370903892b91c9c7591b08193174fafcf0f5b9155c1a12f7a48e`  
		Last Modified: Tue, 24 Nov 2026 04:46:41 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3bb6806c97554d4c91b8a87aa1d1d054712299d4411cedb36f93002c9932fb4`  
		Last Modified: Tue, 24 Nov 2026 04:46:41 GMT  
		Size: 91.0 KB (90953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6e86fb3e5f3f1da934341880925e342ba1bcd263b27f4e80d7988b79597421`  
		Last Modified: Tue, 24 Nov 2026 04:46:42 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:987a8e6198259fdb89df7f947898fb216c74f213f92b59fa82c385285f241cf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3619550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d753ae28ff3e9da1d795f320c284016a601951ed9a98a3baad1214ec2577d67`

```dockerfile
```

-	Layers:
	-	`sha256:6426eef9225437e6d35406d448270a523a52ba0b8ee3fff1792b2d7fef881579`  
		Last Modified: Tue, 24 Nov 2026 04:46:41 GMT  
		Size: 3.6 MB (3603451 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f48266016403d74194c95a31465ba08582461b2a8451dcbd55695e23409c349f`  
		Last Modified: Tue, 24 Nov 2026 04:46:41 GMT  
		Size: 16.1 KB (16099 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:960d0cc2b57bae1de24daa789b748eb4d5142b43bfff8151fb432503accd634c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63917674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6d0bd928e378f246405af4af35116dbff114a6270dc220078cd45424da7ba7b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 04:42:16 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:17 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:42:17 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:42:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:21 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:ad24eb7477cf6ec6782c9a4f3e0669cb79bb950b4d715dd6243dfd2cc7f5069c`  
		Last Modified: Tue, 24 Nov 2026 03:40:12 GMT  
		Size: 51.9 MB (51898500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67f5ce881250056b9d3061a938c5aa48cff1d70441f84519c89cbf3e4ab085bb`  
		Last Modified: Tue, 24 Nov 2026 04:42:28 GMT  
		Size: 11.9 MB (11925058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7408ca7ea5353e62a0c62b4ae2f017aa7f338635eef068b1f62a219b44781003`  
		Last Modified: Tue, 24 Nov 2026 04:42:28 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f77ba7ba68248cfd3661774ab10b63c2f7c79f82e0cf59f39d3762905996a772`  
		Last Modified: Tue, 24 Nov 2026 04:42:28 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da7d889d740b59902cb3e2fd928a34f4851a16961a1eadc3c27f1e4cbaaea2bd`  
		Last Modified: Tue, 24 Nov 2026 04:42:28 GMT  
		Size: 90.8 KB (90765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71bd0adbb3c8a37335c4bc6097fc95b5b0efd9a507247bf85adbb298788a45ca`  
		Last Modified: Tue, 24 Nov 2026 04:42:29 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:0bf531886ed125281c680e585df5837159c09c989a532f9ab8b38eab4710bae3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3613698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18d1e46da1d0af249490b6b0b87c0c2da2ed63401bc0aa40f895eb60174ee28d`

```dockerfile
```

-	Layers:
	-	`sha256:51ebfab3ef579c0d30b02114e1aed54d0acb11c89e373a3f991912277a05685b`  
		Last Modified: Tue, 24 Nov 2026 04:42:28 GMT  
		Size: 3.6 MB (3597770 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d71b71c94b270bb4127a0851261394dc2d671adef1203e61098dcc8eb407fa4`  
		Last Modified: Tue, 24 Nov 2026 04:42:28 GMT  
		Size: 15.9 KB (15928 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:jammy`

```console
$ docker pull neurodebian@sha256:c48934a3e303bc44d6bc2ca172c2d3c04d3770c608e19e1a2ae98ef4c0f3c885
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:jammy` - linux; amd64

```console
$ docker pull neurodebian@sha256:6112aa9167b2698b26352fb97bd0d4de83ee9a5ee24ce352c0b4d198414de970
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33809130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d1aef59807144636298bf3f095f3489a7a29bfcdf7da2281b39f0fd0378d902`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:25:33 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:25:33 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Fri, 20 Nov 2026 03:25:33 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Fri, 20 Nov 2026 03:25:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d78c76b27449e50a4f6520868d23611765a8d624ceb1f8f049043c9c5bb92806`  
		Last Modified: Fri, 20 Nov 2026 03:25:44 GMT  
		Size: 3.6 MB (3625254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce2ccaa75ace41f8f128643257fe0cfb666542d7c9d8dd9930405d5b4c46d184`  
		Last Modified: Fri, 20 Nov 2026 03:25:43 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:262266cbfb114fb07f7a7175e6695e1eb2dd1c2d574fdbb651a8b600db5078b7`  
		Last Modified: Fri, 20 Nov 2026 03:25:43 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20f4c868c1a1e7ec7f8e23039360409a0d71082e7fc8402e0673409f6262e7b6`  
		Last Modified: Fri, 20 Nov 2026 03:25:44 GMT  
		Size: 111.9 KB (111885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy` - unknown; unknown

```console
$ docker pull neurodebian@sha256:e603c4d8de2dc275c607bfe9862ec6ee1059cabf761cd3a5daaa8514249d4ba5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb2d9ade2237d683c51724eb94d31870f4fbae47f50150709044bf47eaab649c`

```dockerfile
```

-	Layers:
	-	`sha256:25eb41b7381106761adee7a4dabf889d318545f168bf5c73d9fa6ad6abe19481`  
		Last Modified: Fri, 20 Nov 2026 03:25:43 GMT  
		Size: 2.2 MB (2199012 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be896e3211433c3f5723fbdc6a7523fe7c02820905317ab98a79f50022eb2842`  
		Last Modified: Fri, 20 Nov 2026 03:25:43 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:jammy` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:2fbd52c42d1da39f69360a1b7a22bf2b5b121b666483f7bd0082e1a35200c10b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.7 MB (31724727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61221008a603b91e4e8af76e3bc034d1c05db182d2892ce304f58169acb52d39`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:26:04 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:26:05 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Fri, 20 Nov 2026 03:26:05 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Fri, 20 Nov 2026 03:26:11 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fea8a487836b9d30aeb54a82599ba62c62e5c07e9e08fcb82a355bf63bae5e7`  
		Last Modified: Fri, 20 Nov 2026 03:26:18 GMT  
		Size: 3.6 MB (3609328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2980c451d55a9d70e355b11bf9c67b51277173739fbb7143e6e50abb44f702d1`  
		Last Modified: Fri, 20 Nov 2026 03:26:18 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78b2d54b05348a92f8b106093047f75cd757feb2d94badbc0e65589cb60e1d48`  
		Last Modified: Fri, 20 Nov 2026 03:26:18 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb1362237aab16b910a750aab6c24909125887c07f7c067ac4f20ea15f52197c`  
		Last Modified: Fri, 20 Nov 2026 03:26:18 GMT  
		Size: 111.8 KB (111823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9591a26e9c5fd0f7882ff4449c5e5f979a39c74a852283ed0cc3db442b8b114d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2213329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:177ecc2d1b9a7ca93e731fcb6e58b83e9c8098c8fd6f071143e9bf01f1bce853`

```dockerfile
```

-	Layers:
	-	`sha256:d77a947093f9b4682bc11361d5b6e40035fed7b40419e0399410f977dcdefcf6`  
		Last Modified: Fri, 20 Nov 2026 03:26:18 GMT  
		Size: 2.2 MB (2199272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88a11e38b61ecb2a30ce3308b957b63b055e6edbbe27234fa4249197eeafae14`  
		Last Modified: Fri, 20 Nov 2026 03:26:18 GMT  
		Size: 14.1 KB (14057 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:jammy-non-free`

```console
$ docker pull neurodebian@sha256:ff92d1a66e5c74cdd7b4b2fb9592775377eea48904550122f95466d7c0784810
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:jammy-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:f6f5e0b9eaf1c85b7c66af78ee27e109e1d6ce5f1e455e9b392f1c1c7167f65d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33809370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6dcf6a5489915b4953c6b0177dd02ebbe2ec34349c5dda389fb1faea09d018c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:25:44 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:25:44 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Fri, 20 Nov 2026 03:25:44 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Fri, 20 Nov 2026 03:25:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:25:49 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d43622fd26cb837486475d5126fc77dde86487f9daafcf9fb5e997688fb982c`  
		Last Modified: Fri, 20 Nov 2026 03:25:55 GMT  
		Size: 3.6 MB (3625232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fc74c3ac5fd802c4699b868d5fdb3f9d53aae7d1d698d810a530cff1d4c374e`  
		Last Modified: Fri, 20 Nov 2026 03:25:55 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:662409a080c1f6387355ba596a21d3c20fbe57bd71127fee44c5103b20f75b69`  
		Last Modified: Fri, 20 Nov 2026 03:25:55 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a182ad8843fe7dbba71134d8f7b7e9133757800f61ea5f793a761ac6d7b6eebd`  
		Last Modified: Fri, 20 Nov 2026 03:25:55 GMT  
		Size: 111.9 KB (111859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:995771b610572e7fc912dec6d14e9300ad15b13dee8d854a3892453e5164a710`  
		Last Modified: Fri, 20 Nov 2026 03:25:56 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:5343f9f5c18e1ea713500e1f3de1a3616abad9396338ece84556e494934e3e5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2215211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a17082c58e62b4d1ff0621e8aa39d1619a964457ade1c4f81985b2b5018ef79`

```dockerfile
```

-	Layers:
	-	`sha256:48b37580acccffd6aa7efeebf83ee7dbeb3d3ba2c74af911fd81d5331c800e09`  
		Last Modified: Fri, 20 Nov 2026 03:25:55 GMT  
		Size: 2.2 MB (2199048 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce94e1b160bf47360d15d9b215adc0c346616bc3485b45d387e7491545b6cbab`  
		Last Modified: Fri, 20 Nov 2026 03:25:55 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:jammy-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:ee8a42a78900e4d32968f2b2ac9ec76b35b8b59cb1372bbd7c3f2abd60192ec7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.7 MB (31725049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6230e25eb2bd03b2fc8bb9d221abe477ee3fb6587e3821a0d2a4395a677b5bd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:26:15 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:26:16 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Fri, 20 Nov 2026 03:26:16 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Fri, 20 Nov 2026 03:26:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:26:21 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3952e5f00e71a2463aea1892a9f95cb3198bc83f65bd59a4d2bb91a6bdb5a753`  
		Last Modified: Fri, 20 Nov 2026 03:26:28 GMT  
		Size: 3.6 MB (3609359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6210268f0044f7b81903462f97a600067d274a941f9c1f452fb5c8a2b08a227`  
		Last Modified: Fri, 20 Nov 2026 03:26:28 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be0e7b005efebedcf3b80d8c127d2b116e82c154248ea7ee91808bda097a57aa`  
		Last Modified: Fri, 20 Nov 2026 03:26:28 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb26e538dd5e9e3b067e65725a0f868d209f0dc98e3add0eebb6cb93e54d3861`  
		Last Modified: Fri, 20 Nov 2026 03:26:28 GMT  
		Size: 111.8 KB (111829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9350a55d48f8363c4bc4f39897af23bc824101394ae1a2ce987b261d13b19509`  
		Last Modified: Fri, 20 Nov 2026 03:26:29 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:0bc2dc2e720db7c7a7e49d30e6caaba11e0b7098afc7fa38c579372449b08068
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2215611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ada90101696f9c968d04c33dfdabd13b3e08b36a4c1deb7d138493cb8b2a072`

```dockerfile
```

-	Layers:
	-	`sha256:2bebbe756c98c9a969794e2578bbcd1ce4002ea153d1c19df6c1a010c104189f`  
		Last Modified: Fri, 20 Nov 2026 03:26:28 GMT  
		Size: 2.2 MB (2199308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89ae3941c06f2886b2d7832dae1ae2f6611b45c0b804188569a63b4e72fe1077`  
		Last Modified: Fri, 20 Nov 2026 03:26:28 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:latest`

```console
$ docker pull neurodebian@sha256:5a190a8c4691b81e625eccb89fee0548cf16242cd13e3c93b668d7cd42fcaa09
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
$ docker pull neurodebian@sha256:a592075a5719288ad94a43a6a1f42f87498e6e643e683ccb5d5e7386ef2c9d58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59796597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7961630d4468d35a764820d296199dcc66aa4c6546fe24492db09934794dbf4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:41:47 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:41:48 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:41:48 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:41:51 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:133e21d3e00f3d2179ee10bc16a86f143abd8d09d42089b8b8542a3f01c80448`  
		Last Modified: Tue, 24 Nov 2026 03:40:25 GMT  
		Size: 49.4 MB (49409288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:219c0d6cf466acc9f499707f9f081026cdc2feba77731832a5ec8af57e49f2b3`  
		Last Modified: Tue, 24 Nov 2026 04:41:59 GMT  
		Size: 10.3 MB (10294038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953955c30b68b366d46593bc86f36987d6f8c63f804f39002a00ce74f78fa9b9`  
		Last Modified: Tue, 24 Nov 2026 04:41:59 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58d9d290022b95ca564248be0aefd725c28264b727ac6ebb7939ee4da796c996`  
		Last Modified: Tue, 24 Nov 2026 04:41:59 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fed7b88bd85fd156803abb232784e6fa093e10ce28325468a75c28843735f16c`  
		Last Modified: Tue, 24 Nov 2026 04:41:59 GMT  
		Size: 90.4 KB (90364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:latest` - unknown; unknown

```console
$ docker pull neurodebian@sha256:7fc1c6c6df5483614ce49a84ff8fa830b59205619fb17dabf5fe0e8bbd2e28a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3637582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:101b6e64b0b2034d622676ee2a260bc7c1a60957220afd6936ef9947fefe72e6`

```dockerfile
```

-	Layers:
	-	`sha256:822aa6f2da9707b679d4e720c38388ca8aee792013e78d06ff0ac817f427cae7`  
		Last Modified: Tue, 24 Nov 2026 04:41:59 GMT  
		Size: 3.6 MB (3623331 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfda64c4db6be1273e9d56171e30b5dd1ecdc5234370f73dd1e0ef486c5a53c0`  
		Last Modified: Tue, 24 Nov 2026 04:41:59 GMT  
		Size: 14.3 KB (14251 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:latest` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:c1c1fc0e0407bea55636865ea7af6d413f2330d77fa2d92788657369988fc1c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59942915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b66da903f149d6a71bd292e694972491858e2f0b4d784d7e161a7de7009a84d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:46:16 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:17 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:46:17 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:46:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:6bf9dd8e528e8b59aba65241842ec43567ab9ff163d6d444bb4701ece0f11093`  
		Last Modified: Tue, 24 Nov 2026 03:40:31 GMT  
		Size: 49.8 MB (49770086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c60af25ed01c646425039b1ab6e45ee62ea248a2641c3cb4e729de5d9d3b12e`  
		Last Modified: Tue, 24 Nov 2026 04:46:29 GMT  
		Size: 10.1 MB (10078849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41af3b474f36ebdf5a3e8644808854eae838c796b28966def9560f6d9429d7b1`  
		Last Modified: Tue, 24 Nov 2026 04:46:28 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d309c8ea8d3587b6c213e305d6fc49e6e5e409f3d56965c786b029dfc0eee3`  
		Last Modified: Tue, 24 Nov 2026 04:46:28 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51d5bc3ac8c8deebdccdc1f0279561689e6d5abd5d4b88d77d79525a23889c03`  
		Last Modified: Tue, 24 Nov 2026 04:46:28 GMT  
		Size: 91.1 KB (91075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:latest` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8af2eb7f63949e3ca9ee745c911e8cedd7bc73e9b689631b546014c997ff63bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3638609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a670f761ec390aca1bb7e22eeb7f6e5056858b575dc00aebb77c85dfc7088c8`

```dockerfile
```

-	Layers:
	-	`sha256:1424891c66502c72d5e9cff7fe21a4d594f8216995da15de5f90a011fdc58a67`  
		Last Modified: Tue, 24 Nov 2026 04:46:28 GMT  
		Size: 3.6 MB (3624221 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5261abf33a3171875de774db6a7c00f8b63ccb1901512045408532cb3287aff`  
		Last Modified: Tue, 24 Nov 2026 04:46:28 GMT  
		Size: 14.4 KB (14388 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:latest` - linux; 386

```console
$ docker pull neurodebian@sha256:ccdd5f847cab04ec76a73cc93d5431cfa75ea602219a5d886472409ad7a18ccd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61487270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83de8f28433d20d4551ae039bef28bc6be14ee207908c856578b427d90bbcba6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:41:52 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:41:52 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:41:52 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:41:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:9af4383b67e6d57ef0b9b950c7fd66e6f3be9666b3ba1dfd64327e86ab4a7c8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 50.9 MB (50925445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e59495aa700b827199d6242ccbaac37e97662ef3173b368e97877b7d10cdff9`  
		Last Modified: Tue, 24 Nov 2026 04:42:03 GMT  
		Size: 10.5 MB (10468184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd3436360dd824461b1c68255474e447b5f8866fc343cf299a2d6fc7a5d3d4cf`  
		Last Modified: Tue, 24 Nov 2026 04:42:02 GMT  
		Size: 2.6 KB (2631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abb8fec9bc472500ada51c9e156ce3e00f42372781f3408c3e1038f8d11a0b9f`  
		Last Modified: Tue, 24 Nov 2026 04:42:03 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:521ee35b59b9f19dbe7cb0f6307a311749f100ddb459183f57707732709a2c32`  
		Last Modified: Tue, 24 Nov 2026 04:42:03 GMT  
		Size: 90.7 KB (90741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:latest` - unknown; unknown

```console
$ docker pull neurodebian@sha256:a3e9e2da2e544f23a7a9cc0891f2f1808d8f4ae24fb4bbad1a9fc0616b2905b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dbabf22e9e68b78ba4a1345701ccb7c81092d5c2fe31f65e5302b7e4e3023c5`

```dockerfile
```

-	Layers:
	-	`sha256:c41ef32451d69c4edaf35bacc1b5188d054a66027d87538becac44f5a9c06fa0`  
		Last Modified: Tue, 24 Nov 2026 04:42:03 GMT  
		Size: 3.6 MB (3621281 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64d3815c6afa123e6f58974e19f603d623d3f5bb27012f178e1b7ab731cf2a2f`  
		Last Modified: Tue, 24 Nov 2026 04:42:03 GMT  
		Size: 14.2 KB (14217 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd`

```console
$ docker pull neurodebian@sha256:04302737b595fe56e2b4e30b1b89afd1f048a558adb8388814487f260b79c16d
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
$ docker pull neurodebian@sha256:6a9a5eefaa9bc13005d08825e6cc44b4cfb0a7f1ce577910db0a4951fdcfbf72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62882627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:307b5447db74abea504c4131542d6c85d4c5524c129ab28fd924133794402e5a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1795392000'
# Tue, 24 Nov 2026 04:42:11 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:12 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:42:12 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:42:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:b4bf59dc11d7745e5ddcfcb9b9a074170e9b2ccc7ede1d4670741b1fa0d98245`  
		Last Modified: Tue, 24 Nov 2026 03:40:37 GMT  
		Size: 50.9 MB (50936743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b94e1d849a8a9bda44820f989dbc0876c9a27cd0643425c81c1d5a9adf2542ee`  
		Last Modified: Tue, 24 Nov 2026 04:42:22 GMT  
		Size: 11.9 MB (11852538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec21bca0f928c56c9883ee2032800d94f9eb7d31b98fba782be42ca085cdb1a9`  
		Last Modified: Tue, 24 Nov 2026 04:42:21 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a767a68654adf6dd0aca25aa8718907c795da56f9cfab74c51718408a43ecb3c`  
		Last Modified: Tue, 24 Nov 2026 04:42:22 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e3e1ca4ba93336c8a12697b2fef74f8bfa0d3b898af1b746fc2e4a7658931ed`  
		Last Modified: Tue, 24 Nov 2026 04:42:22 GMT  
		Size: 90.4 KB (90441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd` - unknown; unknown

```console
$ docker pull neurodebian@sha256:e7bb41a1f6f2f600bff3f8c679a0f74bc4244f3d978a83ed1351e080167e4f6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3618839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a29c6727367dde1ea11a0f9cbf33aa802f34e9205ba5d4c424f6a48b0e7bd289`

```dockerfile
```

-	Layers:
	-	`sha256:23f1e6aba4954dd88eba9569494b0521bb424756858ef6f21dce667ec061ed14`  
		Last Modified: Tue, 24 Nov 2026 04:42:22 GMT  
		Size: 3.6 MB (3604935 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01af5a50d3978b963e902929504c33c590c6b96a7fc69e67027aa9c042084e35`  
		Last Modified: Tue, 24 Nov 2026 04:42:22 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:26cdb8b7ea0b9f02aca2da0e1acd19d08bd1eaff32f5c6f4393246cd22d82d37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61401720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78afe327abda91009f1609df4a86ea3c69ee8bf3c556ef545d1f8aac0d793381`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1795392000'
# Tue, 24 Nov 2026 04:46:34 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:34 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:46:34 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:46:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e0251d745f256ccdf7e2644516fa7dcb9490b66fb6c78c0179db84762ba3a203`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 50.1 MB (50059613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c9a6575d0c4b55ed87541629ee109730259a9f2926119add3c09fd4f512f3e`  
		Last Modified: Tue, 24 Nov 2026 04:46:47 GMT  
		Size: 11.2 MB (11248243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aabbc1954d66d07b215ad7181082648f6297fb2e9ea8783c737bb227d058398b`  
		Last Modified: Tue, 24 Nov 2026 04:46:46 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56c7e2dd001011015acdd22ca2a6d4e3818098410ecf5064b67c4a52053f6f12`  
		Last Modified: Tue, 24 Nov 2026 04:46:46 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5036f4a7040e8f700b38f44f2b6a1d6cd246e366a68068b8eab5f4a5e95059`  
		Last Modified: Tue, 24 Nov 2026 04:46:46 GMT  
		Size: 91.0 KB (90963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd` - unknown; unknown

```console
$ docker pull neurodebian@sha256:1e454e035d17d64f412683dcb41a7b1c79db5fe5ca759113bff60b45b7cddd01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3621825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fcc4b063ac264339f940d723705b34956acbcb90a15556e213da8afdf2fc628`

```dockerfile
```

-	Layers:
	-	`sha256:521f92eda87f621be3dd9324b71852f1e1c6e0dde8d5abb7b487fdb12efe5e67`  
		Last Modified: Tue, 24 Nov 2026 04:46:46 GMT  
		Size: 3.6 MB (3607796 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ef8f9cb3a87654edc234f4dc0eb70138aa8b282af0ee585a81ea5d4543c0998`  
		Last Modified: Tue, 24 Nov 2026 04:46:46 GMT  
		Size: 14.0 KB (14029 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd` - linux; 386

```console
$ docker pull neurodebian@sha256:6d560dd821eef6ad287dffc8a8376c7e6f82dbd8fdeb0dab3b6efc55caa0e455
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.1 MB (64124345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc942b7181ac4285bf3df159ab50bdf42423b8f94d1fb0220a93216b48853f3c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1795392000'
# Tue, 24 Nov 2026 04:42:35 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:36 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:42:36 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:42:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:95b9c91a07cce4096de861d03d4aee07ac0ec481852d0a91ee07530ac54eac64`  
		Last Modified: Tue, 24 Nov 2026 03:40:42 GMT  
		Size: 52.0 MB (52015015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37a20e4809edb1d7aa2a6c183c9301af94dc0320ee08231f26ec99cd94347025`  
		Last Modified: Tue, 24 Nov 2026 04:42:49 GMT  
		Size: 12.0 MB (12015672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557e1cfd5571c553907d9f9025ce432cf5e885cf5cf613609824bd01037a5514`  
		Last Modified: Tue, 24 Nov 2026 04:42:49 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c7543480e02e7927c352bf39ee2ac78c7231fcf30ab177426147dd2f4f35cbb`  
		Last Modified: Tue, 24 Nov 2026 04:42:49 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6877bbbe071c2b43e8f171c848933f091e18a157e71efb1dc50dfc22f74f8714`  
		Last Modified: Tue, 24 Nov 2026 04:42:49 GMT  
		Size: 90.8 KB (90752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd` - unknown; unknown

```console
$ docker pull neurodebian@sha256:f164566adfe4c98ee922657a7a69d74c03688b1a48a7e415b13ad1132640cf8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3616630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:905f395c3a519456dfaed72b3bffd840a7579b003ab805bd03161d63500f430e`

```dockerfile
```

-	Layers:
	-	`sha256:0387db4acab9c8d7ae9a2472350678ba29e92b1f7eb4518eec8ce1234e48970a`  
		Last Modified: Tue, 24 Nov 2026 04:42:49 GMT  
		Size: 3.6 MB (3602755 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3d9048a0700e0790e68cad4cbe64131fdc40a1cafcc61d5645cae8577945a10`  
		Last Modified: Tue, 24 Nov 2026 04:42:48 GMT  
		Size: 13.9 KB (13875 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd-non-free`

```console
$ docker pull neurodebian@sha256:601c1f7edfef7674f1a49fd90e3e7796c49bca69d109e717e9822f5c7083af61
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
$ docker pull neurodebian@sha256:6c5d08586268183ca109f9b73e66f015ef6861a1ec1eb5387422e8b1256752a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62883121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44c758474597510ddff83f7d74fd062f75ad5a19d9a3509934f804c8325fac45`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1795392000'
# Tue, 24 Nov 2026 04:42:12 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:13 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:42:13 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:42:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:16 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:b4bf59dc11d7745e5ddcfcb9b9a074170e9b2ccc7ede1d4670741b1fa0d98245`  
		Last Modified: Tue, 24 Nov 2026 03:40:37 GMT  
		Size: 50.9 MB (50936743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ab1d01acec30c9bde2ed63b6f7129ba4df0adc651d5a7e67b2143a95ae327be`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 11.9 MB (11852626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f35ebb7139ce6dfdb9331d69d6375ad462b3c64fda7c1001dc75ef87595fb1d5`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d1bb6050e5afb37c6ea95dd638a1e9937bb40b26a72a0bd687e31cd4538e0c0`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d4acb618530577794cdfbaafc1a7cd3dc1c3fa94d9d15e4632c22f021bcb2e0`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 90.4 KB (90432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85e4056001f46f0a94ae12dc9ae53d30728b69c7a9cbc92b2b41e225428ed774`  
		Last Modified: Tue, 24 Nov 2026 04:42:25 GMT  
		Size: 416.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:f9737e07924994931429ee2b9a3f48e2a9a4ee877e0944d6785bd1446acae99f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3620902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7a42d8a43d4ea3ce864dfba7c86d226da9401b65963428578eae4d0a10c9284`

```dockerfile
```

-	Layers:
	-	`sha256:794034b8cb3d9c93e30a71cca071d552a1188699a4fd88511c9337ab5b62a3eb`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 3.6 MB (3604971 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24740ab8c12e9d5057c1e82f708f0429636b1ede794526139e3b807f839cdd10`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 15.9 KB (15931 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:15098c5dae2c41ed71a2edf52c106125b90fd7ed954dfe06f24aed2ee6d24911
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61402184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5554d2f38897c2b490d923cd6fa475a528d5f40fdff4681c7432cb09d44d687`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1795392000'
# Tue, 24 Nov 2026 04:46:36 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:37 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:46:37 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:46:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:41 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:e0251d745f256ccdf7e2644516fa7dcb9490b66fb6c78c0179db84762ba3a203`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 50.1 MB (50059613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92cc2c8a59b428a585f764452ef04cfeefd5ee2fa0e378a598421b1dcc136754`  
		Last Modified: Tue, 24 Nov 2026 04:46:49 GMT  
		Size: 11.2 MB (11248283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da647b4cf3d5291ac25eb9563242030f3d42fbd4cfaaf3d3272a4478c767d592`  
		Last Modified: Tue, 24 Nov 2026 04:46:48 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c1ac978aa45476713596a35479a91cb061fe8b186e0acb56e878bbdb0f483ee`  
		Last Modified: Tue, 24 Nov 2026 04:46:48 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94e56c8944297fa5967a2c202c4c8151e428ef66e7e023ac38727a6e938ed97f`  
		Last Modified: Tue, 24 Nov 2026 04:46:48 GMT  
		Size: 91.0 KB (90964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae0450591e3b070555cb3b517ae5480f261ec7ff1b2ed23993de8461a01f336`  
		Last Modified: Tue, 24 Nov 2026 04:46:49 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:52d2a9ab8cd6c3292017a83b9fd00a3058768ef8205777910aa220727a7b17e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3623903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:757cb9704de6ac965199361d88021872c7580badd9e03140d3fdb5d430372e9b`

```dockerfile
```

-	Layers:
	-	`sha256:fd7669cbdd396f294ba1087cfdc0d921f16132e7308450de77299c06a7860724`  
		Last Modified: Tue, 24 Nov 2026 04:46:48 GMT  
		Size: 3.6 MB (3607832 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:841f19b1f1da11fefbc559456b7145adbf75d06fb72fc21c84951587a77711ce`  
		Last Modified: Tue, 24 Nov 2026 04:46:48 GMT  
		Size: 16.1 KB (16071 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:be8b2a0423a0c7cef6407639bc9848f1e26a654759b5f34849bc0f9fa0b3dd40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.1 MB (64125027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66b9bc3a81bc5a8e0ac4f78812782c75605e70a889145b0eedb2292fc809e734`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1795392000'
# Tue, 24 Nov 2026 04:42:38 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:39 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:42:39 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:42:43 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:43 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:95b9c91a07cce4096de861d03d4aee07ac0ec481852d0a91ee07530ac54eac64`  
		Last Modified: Tue, 24 Nov 2026 03:40:42 GMT  
		Size: 52.0 MB (52015015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c98a65a6e35d2d2e7d07dcc7b7234c907bdbf36f0f112cacb518c9fb72bb783`  
		Last Modified: Tue, 24 Nov 2026 04:42:51 GMT  
		Size: 12.0 MB (12015868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dd4cb552664b24dbea298b5339cef8e578b4c1ad3485c5b6a682e9a5468c782`  
		Last Modified: Tue, 24 Nov 2026 04:42:50 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19b6ffd030d033f19b467195174745f52e0169ddc3af7951cc85858caeda3bd2`  
		Last Modified: Tue, 24 Nov 2026 04:42:50 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0addbecfe6356e882ccdd8409f2cb7e05935c68efe291986f8817bb6dfc5a19`  
		Last Modified: Tue, 24 Nov 2026 04:42:50 GMT  
		Size: 90.8 KB (90819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7da2fd8b37294363d6c44e40a1ddc75122dfe8328cdc089d9497d14ac3bb637`  
		Last Modified: Tue, 24 Nov 2026 04:42:51 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:46cd9313bf35bac993a659a4deb827c881e7dd44500a20f58ab7cbba4daa08b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3618691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32acf75de652d28bf3d43d12862ae57edc18931edb2547756c12b491c383c0d6`

```dockerfile
```

-	Layers:
	-	`sha256:aa935d2ae74b9dec57e258ba8805432fbb9065c1008d521cf2dba1b1b54418ef`  
		Last Modified: Tue, 24 Nov 2026 04:42:50 GMT  
		Size: 3.6 MB (3602791 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4e000dff95b8b03011fd0ff7ed629b1f427eb508a49defc89fe65a3eed22f56`  
		Last Modified: Tue, 24 Nov 2026 04:42:50 GMT  
		Size: 15.9 KB (15900 bytes)  
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
$ docker pull neurodebian@sha256:2c49427986e939e7cb532a08f0c74198fd73255bbf78e3334e3b8bc8a371ed6d
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
$ docker pull neurodebian@sha256:bbfe8d96dd61d71a7ec60e19b51d598e0f7795f60e49f4361978717374f455b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59895542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fe6f717ac07832134cba1c3fc199f3e5b102e14e6addd8860eb443d9de8288c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:41:45 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:41:45 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:41:45 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:41:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0369d94cf4170880ceeb138667f803e08ef65ecec05a0b7c67d013ad5d4be9c`  
		Last Modified: Tue, 24 Nov 2026 04:41:55 GMT  
		Size: 11.3 MB (11273606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8833a911308e3adad61dc6620c209d0b48e12a35caf02ae16bab9de2abb6e478`  
		Last Modified: Tue, 24 Nov 2026 04:41:54 GMT  
		Size: 1.9 KB (1897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45dc09f6518723f2553e07faef8429872e6bb06361da13e29f94252615a834e5`  
		Last Modified: Tue, 24 Nov 2026 04:41:55 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01d4fd6dd3cb4ff6245b0d0ce4318c2de859f955512c43f7da08abbbe62ac6bf`  
		Last Modified: Tue, 24 Nov 2026 04:41:55 GMT  
		Size: 93.4 KB (93388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120` - unknown; unknown

```console
$ docker pull neurodebian@sha256:73623c123947c059d6883308a730961958ed3e0bfab31d976c13655c5ad050b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab4587a2e51630e7121db1515df54091ac59b16db51a537ebbc2bbbe677b2d6c`

```dockerfile
```

-	Layers:
	-	`sha256:972d3c6a2e6227422d535e9b06449dbbd2f90a6884458a6fe81f102269c1746b`  
		Last Modified: Tue, 24 Nov 2026 04:41:55 GMT  
		Size: 4.1 MB (4076041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c273db6e5d35d1f65d245d3e719e224b25b148e2784ce4d37c69c2afa450f9b0`  
		Last Modified: Tue, 24 Nov 2026 04:41:54 GMT  
		Size: 14.0 KB (13965 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd120` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:da346b907c488e929f8b68ece86e8244b4265036d1cf4281aea3e96769e17f9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59761064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:982bb4d034f1b659bd1a6cdb06337727c5ddf083d5fa5aa0ce61c1288e502cb0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:46:10 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:11 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:46:11 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:46:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:5253071eb43403aa847239c81e354ab7f008a222e5f909eb323f9db555504a95`  
		Last Modified: Tue, 24 Nov 2026 03:39:43 GMT  
		Size: 48.4 MB (48412261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d887c81f8f526fc0f52b6db9298e3d5c18e74606ad8cce19ece4822642200e3`  
		Last Modified: Tue, 24 Nov 2026 04:46:23 GMT  
		Size: 11.3 MB (11253017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11fc4d856d28d59d565066913305e7ebb31cfb0150cbfab05d3c7f8c840aa45b`  
		Last Modified: Tue, 24 Nov 2026 04:46:22 GMT  
		Size: 1.9 KB (1901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e2f07f5e6d4c014802c223ff3a9dcbc4fc3e3f20fb3a9b244bd83920a587f96`  
		Last Modified: Tue, 24 Nov 2026 04:46:22 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c2878724494234f64ec4a1e9becc7c58a563d47e3375ed78d256801f4ddb370`  
		Last Modified: Tue, 24 Nov 2026 04:46:22 GMT  
		Size: 93.6 KB (93613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120` - unknown; unknown

```console
$ docker pull neurodebian@sha256:1f374988f590269bb92a236bc498742dfd278f3d4a381003d028ed29e3a31956
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a14fdd55733fb5120ad6320aaf73d862a772977d3f967769d8a2f2bbde788c8f`

```dockerfile
```

-	Layers:
	-	`sha256:ad82676f03c63e87c901e9ba99b7b0f6a3046d32441818a5907716273797a6a2`  
		Last Modified: Tue, 24 Nov 2026 04:46:22 GMT  
		Size: 4.1 MB (4076283 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:565cf0fe32c17495a4c3b0c83021cd3ada7d55b391c6b002bfb7065ea2ececdd`  
		Last Modified: Tue, 24 Nov 2026 04:46:22 GMT  
		Size: 14.1 KB (14089 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd120` - linux; 386

```console
$ docker pull neurodebian@sha256:72c96a3aac480efa2b57bd3d0571030172479e460d0006f7c56f7bdd15763a11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61305245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5d5abee26b15f0d375aba6fe3a4044f7d8636e65b4cbeee9ccd4c8723113571`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:41:47 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:41:48 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:41:48 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:41:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:09060430fb43c1c139cc1889a4b8e7bb0d465c2c692e898e363029cce671f6ce`  
		Last Modified: Tue, 24 Nov 2026 03:39:50 GMT  
		Size: 49.5 MB (49515532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdf9031ee15c1aa5df2dc8b6fe9966a623d475a4edf95bcf024ac46f86ccfa97`  
		Last Modified: Tue, 24 Nov 2026 04:41:58 GMT  
		Size: 11.7 MB (11694098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc9e16d211008e8c7d96563224b69b8d1a7435789d5a72b77b846cd3a1adfbe`  
		Last Modified: Tue, 24 Nov 2026 04:41:58 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0ae9d6a020bef5e2acbe773448eec5e1465288cfbd7b01a92ff7c9aaef44b23`  
		Last Modified: Tue, 24 Nov 2026 04:41:58 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0244c02d2afbe77ee5ff2bdcee7dbd0e3daad8c80edd77d9f56c8f6f88e6d43c`  
		Last Modified: Tue, 24 Nov 2026 04:41:58 GMT  
		Size: 93.4 KB (93441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120` - unknown; unknown

```console
$ docker pull neurodebian@sha256:3ec53fa4485e5ef9bd3ec2ffb44b92a0e4694767eda16193d9a87023e6206b7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4087944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7b337f5b83b9bf9f17406373d14867ceca4e935d5c5b844be221d55e36439c1`

```dockerfile
```

-	Layers:
	-	`sha256:cc27c910644f72ba62101cb1ca78bc5b0eefa8eac58a97d40dea10a72672823a`  
		Last Modified: Tue, 24 Nov 2026 04:41:58 GMT  
		Size: 4.1 MB (4074008 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d44bcd3e24e3c64ca0c27ef5d6b2d769dd80ecbb399db312f8175c53d1e47db`  
		Last Modified: Tue, 24 Nov 2026 04:41:58 GMT  
		Size: 13.9 KB (13936 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd120-non-free`

```console
$ docker pull neurodebian@sha256:fb4ea36fde52c125e22b6833758e700469d83af1f43286c7dacf353e01716dc7
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
$ docker pull neurodebian@sha256:f105992944e8933ac240928594ffdd74062963500c7630c6b77497a310df723e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59896161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f6fa60a7da453e6bc765614ac880283e292664b82851a37b01273469c75873f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:09:32 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:09:33 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 05:09:33 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 05:09:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:09:35 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c98bc0b7a106be143daa9d95938165fdc617245480cebe515b03ef5352170ba`  
		Last Modified: Tue, 24 Nov 2026 05:09:43 GMT  
		Size: 11.3 MB (11273721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05f4669c4c208b8cddf3acca25ef017c557a3d6e0fee4efe787012d79045ec2a`  
		Last Modified: Tue, 24 Nov 2026 05:09:43 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6e1befdcf23ebaa4620dc06071ee2e83d7f454e2bbaef97780a0931e254a056`  
		Last Modified: Tue, 24 Nov 2026 05:09:42 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9abfdcbbf4687d671feaff8d706875dc8bb02932acf0777eda2f677d1e2a9558`  
		Last Modified: Tue, 24 Nov 2026 05:09:43 GMT  
		Size: 93.4 KB (93437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4af8792bcf15a138b315d7556f9ccb9ad45a36ad220b51acac27de07fae86057`  
		Last Modified: Tue, 24 Nov 2026 05:09:44 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:94820b823d1c0181f39803eb1d9783e1bb8cf8ef777c0e9f47c1eaa275d7ff13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efccca7d94c23bf31e9c7a6d8dc5dd314b7c4f0518b3e18ca71bdd72b787554d`

```dockerfile
```

-	Layers:
	-	`sha256:c9cb44e27d17ec220cc4910b6ef5f35ebbccc2a0877cb3d2a64a4290eb440893`  
		Last Modified: Tue, 24 Nov 2026 05:09:43 GMT  
		Size: 4.1 MB (4076077 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ddb6dc399568c55973cd945938e56c95b96b0fdf30d384a19e9ae9de7a1c2c0a`  
		Last Modified: Tue, 24 Nov 2026 05:09:43 GMT  
		Size: 16.0 KB (15992 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd120-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:9a2798157be4c1d445218d23fca80af2d9b2ad2e80a819b2b0047b0a9d62edda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59761426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5887b7db656d6c4530adc4ede7dcafe9e7bf92e7153f6d522c8a667f8a6662e0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:46:13 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:13 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:46:14 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:46:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:16 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:5253071eb43403aa847239c81e354ab7f008a222e5f909eb323f9db555504a95`  
		Last Modified: Tue, 24 Nov 2026 03:39:43 GMT  
		Size: 48.4 MB (48412261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:964d85ca968ca5cde4b47a075f756078b51ce263e0d30893b138a8d092ba0fec`  
		Last Modified: Tue, 24 Nov 2026 04:46:24 GMT  
		Size: 11.3 MB (11252976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe88250a8ab895c72e5e0cc83a4a533e8a068b481179e5c9ea24ebe3f26beca7`  
		Last Modified: Tue, 24 Nov 2026 04:46:24 GMT  
		Size: 1.9 KB (1898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a514945fd2c19c557905d76f7c49673aae8709f21d0731bc2ded7a7f6dc0a838`  
		Last Modified: Tue, 24 Nov 2026 04:46:24 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f3750aff4f2df0e781c0bd2713241f699406428a19c8c7a705f517c215ae6b`  
		Last Modified: Tue, 24 Nov 2026 04:46:24 GMT  
		Size: 93.6 KB (93571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:608941939947017d51460cb3f022d2e8a1c006bfc16924661bb4697376b695cc`  
		Last Modified: Tue, 24 Nov 2026 04:46:25 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:03ddf135f3877cd1debf15b42c3d0e41b5ae7391ab7e2d4b5020e7221c5ef1c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfeeda65a87b903f0f427f48f2b574eb4736d6f8a807fdabbb2d08f29de34747`

```dockerfile
```

-	Layers:
	-	`sha256:8d68ae53473f683749924960a5757bdb17b6fca694f41282a3ea2148d426b10b`  
		Last Modified: Tue, 24 Nov 2026 04:46:24 GMT  
		Size: 4.1 MB (4076319 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e47ab7154119e0e84dbc0cd866c0a7e6c2616fe763ac7100f96ee71a49a6cb2`  
		Last Modified: Tue, 24 Nov 2026 04:46:24 GMT  
		Size: 16.1 KB (16132 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd120-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:2a57daa1ec3ba29c06817329119b31f1f5741cedc3bb6c1477ad74a5766bae2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61305766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40279a8a5248964f9ebc63f6887de89423717864160c92a5db5e452a54cb404d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:41:49 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:41:50 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:41:50 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:41:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:41:53 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:09060430fb43c1c139cc1889a4b8e7bb0d465c2c692e898e363029cce671f6ce`  
		Last Modified: Tue, 24 Nov 2026 03:39:50 GMT  
		Size: 49.5 MB (49515532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37050afe46d46602aec7ba6e593adecfc2a6edcb1bf9a9e237bf622f1f6b3256`  
		Last Modified: Tue, 24 Nov 2026 04:42:01 GMT  
		Size: 11.7 MB (11694149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb23c1dfa9edc158f80a17649cbd610e1119a0bf9c8df95f850c1055b1801b66`  
		Last Modified: Tue, 24 Nov 2026 04:42:00 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddad520486416a43ec84a12ea399a379d386fc8954db407ca44a53b2c9090411`  
		Last Modified: Tue, 24 Nov 2026 04:42:00 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc57fe6bc595a4e7248af93b81d81f02d970f4196976a042e1b4ddc5177d0e1b`  
		Last Modified: Tue, 24 Nov 2026 04:42:00 GMT  
		Size: 93.5 KB (93461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2dfff8c2aeb3cbc2174ec9f63b001d1b8de2b0ce1c1286dbe69481bdaf04ccc`  
		Last Modified: Tue, 24 Nov 2026 04:42:01 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:636c7d7f223bfa7aff780578345229a0fe9548c0e2c5286893ea6c77a5bbda20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7cb40dda4278114bf695ced3986fe2f123cea448b6934ad1d9c566da92d31ec`

```dockerfile
```

-	Layers:
	-	`sha256:15fb229ccd6ed3aa40ca16216136edc1089086a0268304b67dc91967abe722f6`  
		Last Modified: Tue, 24 Nov 2026 04:42:00 GMT  
		Size: 4.1 MB (4074044 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:338aaa29dfc59295151527542b6598b75ef1220c89161045501c5c17329e83d0`  
		Last Modified: Tue, 24 Nov 2026 04:42:00 GMT  
		Size: 16.0 KB (15962 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd130`

```console
$ docker pull neurodebian@sha256:5a190a8c4691b81e625eccb89fee0548cf16242cd13e3c93b668d7cd42fcaa09
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
$ docker pull neurodebian@sha256:a592075a5719288ad94a43a6a1f42f87498e6e643e683ccb5d5e7386ef2c9d58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59796597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7961630d4468d35a764820d296199dcc66aa4c6546fe24492db09934794dbf4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:41:47 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:41:48 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:41:48 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:41:51 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:133e21d3e00f3d2179ee10bc16a86f143abd8d09d42089b8b8542a3f01c80448`  
		Last Modified: Tue, 24 Nov 2026 03:40:25 GMT  
		Size: 49.4 MB (49409288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:219c0d6cf466acc9f499707f9f081026cdc2feba77731832a5ec8af57e49f2b3`  
		Last Modified: Tue, 24 Nov 2026 04:41:59 GMT  
		Size: 10.3 MB (10294038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953955c30b68b366d46593bc86f36987d6f8c63f804f39002a00ce74f78fa9b9`  
		Last Modified: Tue, 24 Nov 2026 04:41:59 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58d9d290022b95ca564248be0aefd725c28264b727ac6ebb7939ee4da796c996`  
		Last Modified: Tue, 24 Nov 2026 04:41:59 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fed7b88bd85fd156803abb232784e6fa093e10ce28325468a75c28843735f16c`  
		Last Modified: Tue, 24 Nov 2026 04:41:59 GMT  
		Size: 90.4 KB (90364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130` - unknown; unknown

```console
$ docker pull neurodebian@sha256:7fc1c6c6df5483614ce49a84ff8fa830b59205619fb17dabf5fe0e8bbd2e28a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3637582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:101b6e64b0b2034d622676ee2a260bc7c1a60957220afd6936ef9947fefe72e6`

```dockerfile
```

-	Layers:
	-	`sha256:822aa6f2da9707b679d4e720c38388ca8aee792013e78d06ff0ac817f427cae7`  
		Last Modified: Tue, 24 Nov 2026 04:41:59 GMT  
		Size: 3.6 MB (3623331 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfda64c4db6be1273e9d56171e30b5dd1ecdc5234370f73dd1e0ef486c5a53c0`  
		Last Modified: Tue, 24 Nov 2026 04:41:59 GMT  
		Size: 14.3 KB (14251 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:c1c1fc0e0407bea55636865ea7af6d413f2330d77fa2d92788657369988fc1c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59942915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b66da903f149d6a71bd292e694972491858e2f0b4d784d7e161a7de7009a84d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:46:16 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:17 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:46:17 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:46:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:6bf9dd8e528e8b59aba65241842ec43567ab9ff163d6d444bb4701ece0f11093`  
		Last Modified: Tue, 24 Nov 2026 03:40:31 GMT  
		Size: 49.8 MB (49770086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c60af25ed01c646425039b1ab6e45ee62ea248a2641c3cb4e729de5d9d3b12e`  
		Last Modified: Tue, 24 Nov 2026 04:46:29 GMT  
		Size: 10.1 MB (10078849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41af3b474f36ebdf5a3e8644808854eae838c796b28966def9560f6d9429d7b1`  
		Last Modified: Tue, 24 Nov 2026 04:46:28 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d309c8ea8d3587b6c213e305d6fc49e6e5e409f3d56965c786b029dfc0eee3`  
		Last Modified: Tue, 24 Nov 2026 04:46:28 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51d5bc3ac8c8deebdccdc1f0279561689e6d5abd5d4b88d77d79525a23889c03`  
		Last Modified: Tue, 24 Nov 2026 04:46:28 GMT  
		Size: 91.1 KB (91075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8af2eb7f63949e3ca9ee745c911e8cedd7bc73e9b689631b546014c997ff63bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3638609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a670f761ec390aca1bb7e22eeb7f6e5056858b575dc00aebb77c85dfc7088c8`

```dockerfile
```

-	Layers:
	-	`sha256:1424891c66502c72d5e9cff7fe21a4d594f8216995da15de5f90a011fdc58a67`  
		Last Modified: Tue, 24 Nov 2026 04:46:28 GMT  
		Size: 3.6 MB (3624221 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5261abf33a3171875de774db6a7c00f8b63ccb1901512045408532cb3287aff`  
		Last Modified: Tue, 24 Nov 2026 04:46:28 GMT  
		Size: 14.4 KB (14388 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130` - linux; 386

```console
$ docker pull neurodebian@sha256:ccdd5f847cab04ec76a73cc93d5431cfa75ea602219a5d886472409ad7a18ccd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61487270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83de8f28433d20d4551ae039bef28bc6be14ee207908c856578b427d90bbcba6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:41:52 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:41:52 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:41:52 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:41:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:9af4383b67e6d57ef0b9b950c7fd66e6f3be9666b3ba1dfd64327e86ab4a7c8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 50.9 MB (50925445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e59495aa700b827199d6242ccbaac37e97662ef3173b368e97877b7d10cdff9`  
		Last Modified: Tue, 24 Nov 2026 04:42:03 GMT  
		Size: 10.5 MB (10468184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd3436360dd824461b1c68255474e447b5f8866fc343cf299a2d6fc7a5d3d4cf`  
		Last Modified: Tue, 24 Nov 2026 04:42:02 GMT  
		Size: 2.6 KB (2631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abb8fec9bc472500ada51c9e156ce3e00f42372781f3408c3e1038f8d11a0b9f`  
		Last Modified: Tue, 24 Nov 2026 04:42:03 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:521ee35b59b9f19dbe7cb0f6307a311749f100ddb459183f57707732709a2c32`  
		Last Modified: Tue, 24 Nov 2026 04:42:03 GMT  
		Size: 90.7 KB (90741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130` - unknown; unknown

```console
$ docker pull neurodebian@sha256:a3e9e2da2e544f23a7a9cc0891f2f1808d8f4ae24fb4bbad1a9fc0616b2905b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dbabf22e9e68b78ba4a1345701ccb7c81092d5c2fe31f65e5302b7e4e3023c5`

```dockerfile
```

-	Layers:
	-	`sha256:c41ef32451d69c4edaf35bacc1b5188d054a66027d87538becac44f5a9c06fa0`  
		Last Modified: Tue, 24 Nov 2026 04:42:03 GMT  
		Size: 3.6 MB (3621281 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64d3815c6afa123e6f58974e19f603d623d3f5bb27012f178e1b7ab731cf2a2f`  
		Last Modified: Tue, 24 Nov 2026 04:42:03 GMT  
		Size: 14.2 KB (14217 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd130-non-free`

```console
$ docker pull neurodebian@sha256:1f959c2806dbde3f8a90d722b86030f9141c863011a7de1f0259db6ae6717e1e
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
$ docker pull neurodebian@sha256:3a20426d069527c2ba0ffa4d7f3f4d32eaaf41b4698e175637de1cda1205c075
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59797067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68d1be872f0a9de7d8780eac77012b5cf02d85544627f17e78858df7c9ea13ff`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:41:50 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:41:51 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:41:51 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:41:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:41:54 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:133e21d3e00f3d2179ee10bc16a86f143abd8d09d42089b8b8542a3f01c80448`  
		Last Modified: Tue, 24 Nov 2026 03:40:25 GMT  
		Size: 49.4 MB (49409288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7583622af9c94ce113de110b671cb9a557d6b8d088de8284abd5edd60ec3216`  
		Last Modified: Tue, 24 Nov 2026 04:42:01 GMT  
		Size: 10.3 MB (10294078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a6d2f3be76f30475d171975723732e3320c1624d924b05e67d0320f8f3a192`  
		Last Modified: Tue, 24 Nov 2026 04:42:01 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38b522db3fe8951d4016168610a48f7ec4d3b0319eb2e7868dafb41ae7e3f2fd`  
		Last Modified: Tue, 24 Nov 2026 04:42:01 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2490208194c5f6cac66e2b1bb23fa3b08cbcdb3f955f87c018f18548797ea87a`  
		Last Modified: Tue, 24 Nov 2026 04:42:01 GMT  
		Size: 90.3 KB (90348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c2244bca4e7fc9964db82aece0604d6049c1f7dcda7e657369c6c3975bb6042`  
		Last Modified: Tue, 24 Nov 2026 04:42:02 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:2be2950da03deb62074622e81854f1e5f99864e35db4c6065391a1b3d2a34233
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3639652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dad8cdeaa0cc45939a4b9e0dc53713c6bae3d0bebcc6ef7ba2085f98ba7b497`

```dockerfile
```

-	Layers:
	-	`sha256:051cc19d4f7ce42c9d7f687aaa679859c6d8a29e69e174e146a29e758f60a541`  
		Last Modified: Tue, 24 Nov 2026 04:42:01 GMT  
		Size: 3.6 MB (3623371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f8a1d961999d07fa0722227e6c1c45754aa89d53562d1ea59b38dc10b601e610`  
		Last Modified: Tue, 24 Nov 2026 04:42:01 GMT  
		Size: 16.3 KB (16281 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:4cd24211f0e15647a5f0aa6eb6df52a207818ee3069a9686d640865cf6de7d85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59943327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e54dde7aaf1e38f218f72476a92d96bcd7121fbdf8501adfb09fd183c4819af8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:46:15 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:16 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:46:16 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:46:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:19 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:6bf9dd8e528e8b59aba65241842ec43567ab9ff163d6d444bb4701ece0f11093`  
		Last Modified: Tue, 24 Nov 2026 03:40:31 GMT  
		Size: 49.8 MB (49770086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b208b9f2830596436e5566c417972553d43675252aa44f2dda28c0e19b1f14`  
		Last Modified: Tue, 24 Nov 2026 04:46:27 GMT  
		Size: 10.1 MB (10078828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcdb911e04030e6616befc55be4532fd97a14f382d92b768f157a82372471e3e`  
		Last Modified: Tue, 24 Nov 2026 04:46:26 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6200e0fdf6a0175e0f60cb3fca86939ba856ef7df0c3ce593a2d693d0f130920`  
		Last Modified: Tue, 24 Nov 2026 04:46:26 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:107074aca3a1ecf70edf613c1e9d0c5c62ad49b044fd2536daaf5ad192c3492e`  
		Last Modified: Tue, 24 Nov 2026 04:46:26 GMT  
		Size: 91.1 KB (91063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:171ca9253076c09f3d7a89d6e5184e05d11ddc7dd542aa42d394c8c30d3ea558`  
		Last Modified: Tue, 24 Nov 2026 04:46:27 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:10298e5530f610f115e840e2b65279a433476aa84c5037629725e63901ff1b0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f426c022c8e36c52f4b68b3bbaaa22879b797f516d1b566a5d9c9b862b39114`

```dockerfile
```

-	Layers:
	-	`sha256:496bbcc37dc7efa68117fdde7f4a8a895ca4c85e99eea47f7514b68b728963d9`  
		Last Modified: Tue, 24 Nov 2026 04:46:26 GMT  
		Size: 3.6 MB (3624261 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41948f655f00f039b4061e6d2897dc4fe7ac13a3b9cdda2be116071b0e97b291`  
		Last Modified: Tue, 24 Nov 2026 04:46:26 GMT  
		Size: 16.4 KB (16434 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:af1e0430798153bc3d03ee10718be3a0d64c83768b1cb8bc5b5f17e0e8988b97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61487701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdbe2c72c670bf15e1e949d87adc5b883405cb492489e4e16bf915d59a8b0a35`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:42:12 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:12 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:42:13 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:42:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:16 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:9af4383b67e6d57ef0b9b950c7fd66e6f3be9666b3ba1dfd64327e86ab4a7c8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 50.9 MB (50925445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17bc1b523832df9e70d5c6e3bee797a29f073a501220873e38fa394f764038b1`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 10.5 MB (10468173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f2fc313ca2acab1dc644093355cc39cdaee3e9fdad7fd30401683d71081dd64`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:130a07ca339f557e162eb91ecff7443baefdc50adc511d62cf2f7272c460fcbe`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd5927ce40cb99ea1a91ba898416a818b1ee5b711a2cf745f062e857cefaf8b`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 90.7 KB (90736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:322bb34715f1deb4e8ef57b94d4fe6fc71d0f4006c412f30e32f6bf2428ce73c`  
		Last Modified: Tue, 24 Nov 2026 04:42:25 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:dc566b903626fe3a3cc42c8d0d8e5138dad614562215531975207106cbbf3267
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3637568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0b06860354c5b0b58b20be74a413eccb1a7bdbaf6c13b64acc5975ed9c5507f`

```dockerfile
```

-	Layers:
	-	`sha256:e526cbbd7eab6c2541f9413b7f00a2138e53ce5ede1e418bdd8d4ccd9934afe7`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 3.6 MB (3621321 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ccd6c77515a6bd0080639575b8159369ea5d689f35059ca2d8c0911d1401c473`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 16.2 KB (16247 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd140`

```console
$ docker pull neurodebian@sha256:48ca2df9cf52c490eb9111cb3422110b489dee6f4ac121ad23788d21d59b452e
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
$ docker pull neurodebian@sha256:dc029598b04e241af722235f64b36669d282f7463bafee86a75fec2824a30122
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62664618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38100b4af194a0f9d2534ec69ae505f4988a09290c9b2d8d0e819d3de7a85f4b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 04:42:01 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:02 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:42:02 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:42:05 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e0532024bbbbe838be5cdb81657e837efca9a68f1a5e2c55bc6bd02a30fae548`  
		Last Modified: Tue, 24 Nov 2026 03:40:04 GMT  
		Size: 50.8 MB (50824479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59c2ca2751c76e8c6b494737107c23e91d587b675bffe3e911f24bff7eda8590`  
		Last Modified: Tue, 24 Nov 2026 04:42:13 GMT  
		Size: 11.7 MB (11746804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f601d320d19b41ed5464a7a694e3b565f3755cf17ff6142790dbf0a07bc2e3b`  
		Last Modified: Tue, 24 Nov 2026 04:42:13 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b401663fc58449e12edfaa4600a335efd1a2e3ab92b6cb37fed3231d80bae8`  
		Last Modified: Tue, 24 Nov 2026 04:42:13 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:957b51196246c3e6b2f13631929664a33961d8d27a0fa3cb9b40304c4177e7d6`  
		Last Modified: Tue, 24 Nov 2026 04:42:13 GMT  
		Size: 90.4 KB (90432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140` - unknown; unknown

```console
$ docker pull neurodebian@sha256:0efeaa5221cbb115ad45ec2f70249230e18ec2a9e4f7a8873d4024a77b73479c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3613848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:392e6c773b6e92130e3bb27961303657f03b1fc770c224ffb49dd79ed490d093`

```dockerfile
```

-	Layers:
	-	`sha256:fbd0c9933515a0c5f13bc241e0776d314c5b2300186da9ad5b5fc630671a8388`  
		Last Modified: Tue, 24 Nov 2026 04:42:13 GMT  
		Size: 3.6 MB (3599916 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a4fa6f74c093773310d6253530dbc281b26592cef75e59701e17e56438447fd`  
		Last Modified: Tue, 24 Nov 2026 04:42:13 GMT  
		Size: 13.9 KB (13932 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:195014940c871e993c5dbb8471ef939c3fd531814a6f0b4d64dedf91d866d28c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61272518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83df77239dfb8565155e6c9d19e503ac6e2979836ba58f1893f4da53ca8044d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 04:46:24 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:24 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:46:24 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:46:28 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f2d0466274a27fafe53b0ab31eac3d74e9c4c21ed2c12e050bfaffdc8a143a68`  
		Last Modified: Tue, 24 Nov 2026 03:40:15 GMT  
		Size: 50.0 MB (49959536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6111f25e9c0b74b98dd1c413ef6ef9489efb5ff05fa3d1044cf44347b37fa9ba`  
		Last Modified: Tue, 24 Nov 2026 04:46:36 GMT  
		Size: 11.2 MB (11219131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2703a50fbca788e3056a6238ac4088c232ba84837070d97613b433f4d240c9c`  
		Last Modified: Tue, 24 Nov 2026 04:46:36 GMT  
		Size: 2.6 KB (2631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:982883ab5b073d8fabc3406a3abf81de064e3c61a471415e73b55c514a9878a3`  
		Last Modified: Tue, 24 Nov 2026 04:46:35 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa8f0012bfc03a7c509f02b378e8a14c74709300f1e4fd2d1bd596967f85f539`  
		Last Modified: Tue, 24 Nov 2026 04:46:36 GMT  
		Size: 91.0 KB (90950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ac1d27ce3c8f336b21028b2f1ea53f1f8def12903855d6b001fc3521082bafe0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3617472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cf0490d0db720d492025616641b50ddde6d59d578654564bf4f776e88494cb7`

```dockerfile
```

-	Layers:
	-	`sha256:0ca382e05b0c731487edaebfa1f9222e001141daaaa9602eef2e8f061bac18cf`  
		Last Modified: Tue, 24 Nov 2026 04:46:36 GMT  
		Size: 3.6 MB (3603415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59682b1cb6a1bd037bed68b2100f3501cf6118a5547c0bb89e8c4e7a259cc2bf`  
		Last Modified: Tue, 24 Nov 2026 04:46:36 GMT  
		Size: 14.1 KB (14057 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140` - linux; 386

```console
$ docker pull neurodebian@sha256:66f0768dd7ac7e7d94dfe31af3ca9a90efdfd4112738571ba9f3379d1c94ce8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63917261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7ee5170654a59f15e3d2400965724efe04e27d519bd8b6133e19f87027f053f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 04:42:15 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:16 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:42:16 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:42:20 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ad24eb7477cf6ec6782c9a4f3e0669cb79bb950b4d715dd6243dfd2cc7f5069c`  
		Last Modified: Tue, 24 Nov 2026 03:40:12 GMT  
		Size: 51.9 MB (51898500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63f19a4739736188af2c372249449db423d63e21e580a19e3e279830d74eee68`  
		Last Modified: Tue, 24 Nov 2026 04:42:27 GMT  
		Size: 11.9 MB (11925062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3900916d28fe65106c44591b0dcbefa376b3e45680a7b9fdbbbf0deea9ec0f8`  
		Last Modified: Tue, 24 Nov 2026 04:42:27 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69880bd62c781efeda9f3fd49687a6159a8f99b9c1787674045a56622755552b`  
		Last Modified: Tue, 24 Nov 2026 04:42:27 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1421396c2e44a016cbd13b405f71d7eae1d37ecd97fd1951ee047d5cb36f1d4`  
		Last Modified: Tue, 24 Nov 2026 04:42:27 GMT  
		Size: 90.8 KB (90793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140` - unknown; unknown

```console
$ docker pull neurodebian@sha256:f25d011e7716088b4e6b3861c44fe86de405a29b899608d43f480399231a7dd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3611638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:533de85fa84079cc565ce134b0a7f3eda3902ccda3e6e510615feba531c5ce71`

```dockerfile
```

-	Layers:
	-	`sha256:7e6d5f6c2909bfa64a305f99ac9b84e32e36f54921388b5d98dbaf0e001b63a2`  
		Last Modified: Tue, 24 Nov 2026 04:42:27 GMT  
		Size: 3.6 MB (3597734 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e13f63f2b4430d90ff3e6fe91a906713f4d562edacdc2b70dc65009735eb4d4`  
		Last Modified: Tue, 24 Nov 2026 04:42:27 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd140-non-free`

```console
$ docker pull neurodebian@sha256:b54b63d2cdd6e00e8d5003cf91b3b045e53f1cea31e3705fd14d029192bceeb2
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
$ docker pull neurodebian@sha256:d2111e8f25bd58a2c941d2373483872b259bad5d33ec6980924d24754323fa57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62664961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:520757eae91138041ec987ae27629b85a5f092cfcb75f516c27948099f670cdb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 04:42:06 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:07 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:42:07 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:42:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:09 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:e0532024bbbbe838be5cdb81657e837efca9a68f1a5e2c55bc6bd02a30fae548`  
		Last Modified: Tue, 24 Nov 2026 03:40:04 GMT  
		Size: 50.8 MB (50824479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:324649216c993fd2c09ae0cca3754e067999ec5f396eb6adc456a9cf9bf54879`  
		Last Modified: Tue, 24 Nov 2026 04:42:17 GMT  
		Size: 11.7 MB (11746707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fcae05a342c839129eb542f11b3bc7516b00f8f23e6e3e6111d058338eb1056`  
		Last Modified: Tue, 24 Nov 2026 04:42:16 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:959ce98b6ce52bfe8425cd09e8493b2a06f4e5e96da5fecc276cb2e5d3302225`  
		Last Modified: Tue, 24 Nov 2026 04:42:16 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bcd26fc7e722ab7ec170d97a9ca47c06b175e37ce21b41e6cf2c5873d3e0298`  
		Last Modified: Tue, 24 Nov 2026 04:42:16 GMT  
		Size: 90.4 KB (90420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd489154168eea720b08dc8181b5c8546f27222ac0fd9f66b430064eefa7adc`  
		Last Modified: Tue, 24 Nov 2026 04:42:17 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:deda16613fa0722eec6e5e6e1ab179df53978d443c2341c0bdbd438a67ba80dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3615911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:957312b63a1ab928e5c0563d3b646d22c48c0ad05e81be99e2136183aeca6a0b`

```dockerfile
```

-	Layers:
	-	`sha256:fffa2588b8deb7865949797e508ecc99759c9085879018931f3771cc65ad02ae`  
		Last Modified: Tue, 24 Nov 2026 04:42:16 GMT  
		Size: 3.6 MB (3599952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d96dbbe3bf8a4d9d17ac3745d30b9641830d22a9efab708508f87c8df2169f7f`  
		Last Modified: Tue, 24 Nov 2026 04:42:16 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:d0e47941e5c038361c17bc01630dcdeff473ec87f4be30c351874f971f996bfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61272923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0824d0737984483fb59cec4cc19dff00d49d93c621b8726fcb42b43c3afad996`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 04:46:29 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:29 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:46:30 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:46:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:33 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:f2d0466274a27fafe53b0ab31eac3d74e9c4c21ed2c12e050bfaffdc8a143a68`  
		Last Modified: Tue, 24 Nov 2026 03:40:15 GMT  
		Size: 50.0 MB (49959536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e5cea1c7192e8f29df702bd75746abba7820dafe444c6861e2097249ec26c9`  
		Last Modified: Tue, 24 Nov 2026 04:46:41 GMT  
		Size: 11.2 MB (11219081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fa0b560e698ce283dcc96f29779c1f5214b30a0cdb4d34b982645e6739c9988`  
		Last Modified: Tue, 24 Nov 2026 04:46:41 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ee466607585370903892b91c9c7591b08193174fafcf0f5b9155c1a12f7a48e`  
		Last Modified: Tue, 24 Nov 2026 04:46:41 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3bb6806c97554d4c91b8a87aa1d1d054712299d4411cedb36f93002c9932fb4`  
		Last Modified: Tue, 24 Nov 2026 04:46:41 GMT  
		Size: 91.0 KB (90953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6e86fb3e5f3f1da934341880925e342ba1bcd263b27f4e80d7988b79597421`  
		Last Modified: Tue, 24 Nov 2026 04:46:42 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:987a8e6198259fdb89df7f947898fb216c74f213f92b59fa82c385285f241cf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3619550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d753ae28ff3e9da1d795f320c284016a601951ed9a98a3baad1214ec2577d67`

```dockerfile
```

-	Layers:
	-	`sha256:6426eef9225437e6d35406d448270a523a52ba0b8ee3fff1792b2d7fef881579`  
		Last Modified: Tue, 24 Nov 2026 04:46:41 GMT  
		Size: 3.6 MB (3603451 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f48266016403d74194c95a31465ba08582461b2a8451dcbd55695e23409c349f`  
		Last Modified: Tue, 24 Nov 2026 04:46:41 GMT  
		Size: 16.1 KB (16099 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:960d0cc2b57bae1de24daa789b748eb4d5142b43bfff8151fb432503accd634c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63917674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6d0bd928e378f246405af4af35116dbff114a6270dc220078cd45424da7ba7b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 04:42:16 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:17 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:42:17 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:42:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:21 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:ad24eb7477cf6ec6782c9a4f3e0669cb79bb950b4d715dd6243dfd2cc7f5069c`  
		Last Modified: Tue, 24 Nov 2026 03:40:12 GMT  
		Size: 51.9 MB (51898500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67f5ce881250056b9d3061a938c5aa48cff1d70441f84519c89cbf3e4ab085bb`  
		Last Modified: Tue, 24 Nov 2026 04:42:28 GMT  
		Size: 11.9 MB (11925058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7408ca7ea5353e62a0c62b4ae2f017aa7f338635eef068b1f62a219b44781003`  
		Last Modified: Tue, 24 Nov 2026 04:42:28 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f77ba7ba68248cfd3661774ab10b63c2f7c79f82e0cf59f39d3762905996a772`  
		Last Modified: Tue, 24 Nov 2026 04:42:28 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da7d889d740b59902cb3e2fd928a34f4851a16961a1eadc3c27f1e4cbaaea2bd`  
		Last Modified: Tue, 24 Nov 2026 04:42:28 GMT  
		Size: 90.8 KB (90765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71bd0adbb3c8a37335c4bc6097fc95b5b0efd9a507247bf85adbb298788a45ca`  
		Last Modified: Tue, 24 Nov 2026 04:42:29 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:0bf531886ed125281c680e585df5837159c09c989a532f9ab8b38eab4710bae3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3613698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18d1e46da1d0af249490b6b0b87c0c2da2ed63401bc0aa40f895eb60174ee28d`

```dockerfile
```

-	Layers:
	-	`sha256:51ebfab3ef579c0d30b02114e1aed54d0acb11c89e373a3f991912277a05685b`  
		Last Modified: Tue, 24 Nov 2026 04:42:28 GMT  
		Size: 3.6 MB (3597770 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d71b71c94b270bb4127a0851261394dc2d671adef1203e61098dcc8eb407fa4`  
		Last Modified: Tue, 24 Nov 2026 04:42:28 GMT  
		Size: 15.9 KB (15928 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd22.04`

```console
$ docker pull neurodebian@sha256:c48934a3e303bc44d6bc2ca172c2d3c04d3770c608e19e1a2ae98ef4c0f3c885
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:nd22.04` - linux; amd64

```console
$ docker pull neurodebian@sha256:6112aa9167b2698b26352fb97bd0d4de83ee9a5ee24ce352c0b4d198414de970
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33809130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d1aef59807144636298bf3f095f3489a7a29bfcdf7da2281b39f0fd0378d902`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:25:33 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:25:33 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Fri, 20 Nov 2026 03:25:33 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Fri, 20 Nov 2026 03:25:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d78c76b27449e50a4f6520868d23611765a8d624ceb1f8f049043c9c5bb92806`  
		Last Modified: Fri, 20 Nov 2026 03:25:44 GMT  
		Size: 3.6 MB (3625254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce2ccaa75ace41f8f128643257fe0cfb666542d7c9d8dd9930405d5b4c46d184`  
		Last Modified: Fri, 20 Nov 2026 03:25:43 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:262266cbfb114fb07f7a7175e6695e1eb2dd1c2d574fdbb651a8b600db5078b7`  
		Last Modified: Fri, 20 Nov 2026 03:25:43 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20f4c868c1a1e7ec7f8e23039360409a0d71082e7fc8402e0673409f6262e7b6`  
		Last Modified: Fri, 20 Nov 2026 03:25:44 GMT  
		Size: 111.9 KB (111885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd22.04` - unknown; unknown

```console
$ docker pull neurodebian@sha256:e603c4d8de2dc275c607bfe9862ec6ee1059cabf761cd3a5daaa8514249d4ba5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb2d9ade2237d683c51724eb94d31870f4fbae47f50150709044bf47eaab649c`

```dockerfile
```

-	Layers:
	-	`sha256:25eb41b7381106761adee7a4dabf889d318545f168bf5c73d9fa6ad6abe19481`  
		Last Modified: Fri, 20 Nov 2026 03:25:43 GMT  
		Size: 2.2 MB (2199012 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be896e3211433c3f5723fbdc6a7523fe7c02820905317ab98a79f50022eb2842`  
		Last Modified: Fri, 20 Nov 2026 03:25:43 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd22.04` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:2fbd52c42d1da39f69360a1b7a22bf2b5b121b666483f7bd0082e1a35200c10b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.7 MB (31724727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61221008a603b91e4e8af76e3bc034d1c05db182d2892ce304f58169acb52d39`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:26:04 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:26:05 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Fri, 20 Nov 2026 03:26:05 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Fri, 20 Nov 2026 03:26:11 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fea8a487836b9d30aeb54a82599ba62c62e5c07e9e08fcb82a355bf63bae5e7`  
		Last Modified: Fri, 20 Nov 2026 03:26:18 GMT  
		Size: 3.6 MB (3609328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2980c451d55a9d70e355b11bf9c67b51277173739fbb7143e6e50abb44f702d1`  
		Last Modified: Fri, 20 Nov 2026 03:26:18 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78b2d54b05348a92f8b106093047f75cd757feb2d94badbc0e65589cb60e1d48`  
		Last Modified: Fri, 20 Nov 2026 03:26:18 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb1362237aab16b910a750aab6c24909125887c07f7c067ac4f20ea15f52197c`  
		Last Modified: Fri, 20 Nov 2026 03:26:18 GMT  
		Size: 111.8 KB (111823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd22.04` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9591a26e9c5fd0f7882ff4449c5e5f979a39c74a852283ed0cc3db442b8b114d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2213329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:177ecc2d1b9a7ca93e731fcb6e58b83e9c8098c8fd6f071143e9bf01f1bce853`

```dockerfile
```

-	Layers:
	-	`sha256:d77a947093f9b4682bc11361d5b6e40035fed7b40419e0399410f977dcdefcf6`  
		Last Modified: Fri, 20 Nov 2026 03:26:18 GMT  
		Size: 2.2 MB (2199272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88a11e38b61ecb2a30ce3308b957b63b055e6edbbe27234fa4249197eeafae14`  
		Last Modified: Fri, 20 Nov 2026 03:26:18 GMT  
		Size: 14.1 KB (14057 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd22.04-non-free`

```console
$ docker pull neurodebian@sha256:ff92d1a66e5c74cdd7b4b2fb9592775377eea48904550122f95466d7c0784810
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:nd22.04-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:f6f5e0b9eaf1c85b7c66af78ee27e109e1d6ce5f1e455e9b392f1c1c7167f65d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33809370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6dcf6a5489915b4953c6b0177dd02ebbe2ec34349c5dda389fb1faea09d018c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:25:44 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:25:44 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Fri, 20 Nov 2026 03:25:44 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Fri, 20 Nov 2026 03:25:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:25:49 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d43622fd26cb837486475d5126fc77dde86487f9daafcf9fb5e997688fb982c`  
		Last Modified: Fri, 20 Nov 2026 03:25:55 GMT  
		Size: 3.6 MB (3625232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fc74c3ac5fd802c4699b868d5fdb3f9d53aae7d1d698d810a530cff1d4c374e`  
		Last Modified: Fri, 20 Nov 2026 03:25:55 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:662409a080c1f6387355ba596a21d3c20fbe57bd71127fee44c5103b20f75b69`  
		Last Modified: Fri, 20 Nov 2026 03:25:55 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a182ad8843fe7dbba71134d8f7b7e9133757800f61ea5f793a761ac6d7b6eebd`  
		Last Modified: Fri, 20 Nov 2026 03:25:55 GMT  
		Size: 111.9 KB (111859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:995771b610572e7fc912dec6d14e9300ad15b13dee8d854a3892453e5164a710`  
		Last Modified: Fri, 20 Nov 2026 03:25:56 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd22.04-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:5343f9f5c18e1ea713500e1f3de1a3616abad9396338ece84556e494934e3e5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2215211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a17082c58e62b4d1ff0621e8aa39d1619a964457ade1c4f81985b2b5018ef79`

```dockerfile
```

-	Layers:
	-	`sha256:48b37580acccffd6aa7efeebf83ee7dbeb3d3ba2c74af911fd81d5331c800e09`  
		Last Modified: Fri, 20 Nov 2026 03:25:55 GMT  
		Size: 2.2 MB (2199048 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce94e1b160bf47360d15d9b215adc0c346616bc3485b45d387e7491545b6cbab`  
		Last Modified: Fri, 20 Nov 2026 03:25:55 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd22.04-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:ee8a42a78900e4d32968f2b2ac9ec76b35b8b59cb1372bbd7c3f2abd60192ec7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.7 MB (31725049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6230e25eb2bd03b2fc8bb9d221abe477ee3fb6587e3821a0d2a4395a677b5bd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:26:15 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:26:16 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Fri, 20 Nov 2026 03:26:16 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Fri, 20 Nov 2026 03:26:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:26:21 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3952e5f00e71a2463aea1892a9f95cb3198bc83f65bd59a4d2bb91a6bdb5a753`  
		Last Modified: Fri, 20 Nov 2026 03:26:28 GMT  
		Size: 3.6 MB (3609359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6210268f0044f7b81903462f97a600067d274a941f9c1f452fb5c8a2b08a227`  
		Last Modified: Fri, 20 Nov 2026 03:26:28 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be0e7b005efebedcf3b80d8c127d2b116e82c154248ea7ee91808bda097a57aa`  
		Last Modified: Fri, 20 Nov 2026 03:26:28 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb26e538dd5e9e3b067e65725a0f868d209f0dc98e3add0eebb6cb93e54d3861`  
		Last Modified: Fri, 20 Nov 2026 03:26:28 GMT  
		Size: 111.8 KB (111829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9350a55d48f8363c4bc4f39897af23bc824101394ae1a2ce987b261d13b19509`  
		Last Modified: Fri, 20 Nov 2026 03:26:29 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd22.04-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:0bc2dc2e720db7c7a7e49d30e6caaba11e0b7098afc7fa38c579372449b08068
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2215611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ada90101696f9c968d04c33dfdabd13b3e08b36a4c1deb7d138493cb8b2a072`

```dockerfile
```

-	Layers:
	-	`sha256:2bebbe756c98c9a969794e2578bbcd1ce4002ea153d1c19df6c1a010c104189f`  
		Last Modified: Fri, 20 Nov 2026 03:26:28 GMT  
		Size: 2.2 MB (2199308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89ae3941c06f2886b2d7832dae1ae2f6611b45c0b804188569a63b4e72fe1077`  
		Last Modified: Fri, 20 Nov 2026 03:26:28 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd24.04`

```console
$ docker pull neurodebian@sha256:adaf10aac1ca8159a5d2370c303133449ec85120511143c72527ad05378182a2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:nd24.04` - linux; amd64

```console
$ docker pull neurodebian@sha256:9bee7db4597421366f3b04e6677caa3ad30f82d651e57b0e1e938a583787f458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33467060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef058236fc5b08a44491062082b76e04c767508748fbf37bdd8a0be4134bf662`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:25:48 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:25:49 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Fri, 20 Nov 2026 03:25:49 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Fri, 20 Nov 2026 03:25:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b2b17ad41d60c74ef73c73c3b6577ccab99fefc62c583f1083c23bee3ca4254`  
		Last Modified: Fri, 20 Nov 2026 03:25:58 GMT  
		Size: 3.6 MB (3565868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f6ed303d2783df2721c57758938f2b0f195874717909424b7e29222c1a352cf`  
		Last Modified: Fri, 20 Nov 2026 03:25:58 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f69fd532793ceeac8f5c0e7825735ab4faab186efc2a3a41b9822183b9d7b747`  
		Last Modified: Fri, 20 Nov 2026 03:25:58 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5de892c9a453b2ec30b6d2a481e2a8afbb86665910e1c5cf625c95b5c3473877`  
		Last Modified: Fri, 20 Nov 2026 03:25:58 GMT  
		Size: 105.0 KB (104984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd24.04` - unknown; unknown

```console
$ docker pull neurodebian@sha256:7aaa3e7cd8f9c0abb20727e59d34d2bc729577e122f2d647a645b8b7577de5f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2135500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbca422b4b4ce22a2c8df68824049504b73877b77cb645852737bbf7ba305ed3`

```dockerfile
```

-	Layers:
	-	`sha256:ea38a503ec3f4d0479d0f35b404ad79cdf137fa0f9af96b10f7c9647c756425f`  
		Last Modified: Fri, 20 Nov 2026 03:25:58 GMT  
		Size: 2.1 MB (2121567 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8dbd049b422b794bafb75bef7a716992d293b4b31b38fda3ba2992b230251e81`  
		Last Modified: Fri, 20 Nov 2026 03:25:58 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd24.04` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:9da792cc13de215acf5b8349177e8161facdd763c08477d91d0fedad4da620bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32638273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2384741d1d5dafed879eee286590d71458fcc62873bd05f0388e651c0e2351c0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:26:18 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:26:19 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Fri, 20 Nov 2026 03:26:19 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Fri, 20 Nov 2026 03:26:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a78f0836dcfd3b146cfd148cef9f1f8dd612f08fa37d512ff08473d57c359a6`  
		Last Modified: Fri, 20 Nov 2026 03:26:30 GMT  
		Size: 3.6 MB (3564157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc6dba0fbc727e657477e059b9958da33636d0454ad5e382ef6e0dbe33ccf87c`  
		Last Modified: Fri, 20 Nov 2026 03:26:30 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eaebee1ca7efcca65fa82faaa163c2b85c18b3c9466cd3fc84cd0fd7da9a6d2`  
		Last Modified: Fri, 20 Nov 2026 03:26:30 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b92e9d4d51b1a109ea69d4bcda6192b6cf4160047ac6331091ba06fa6604b9d3`  
		Last Modified: Fri, 20 Nov 2026 03:26:30 GMT  
		Size: 105.9 KB (105890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd24.04` - unknown; unknown

```console
$ docker pull neurodebian@sha256:bc3f28b76a5e1487c2367e3920da64e98bb2172a18ea43283761685d1b9a207d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2136670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:010948a86375d5afb4c614cf47c2a5827439f70f6da23cba4be1c1012e95b537`

```dockerfile
```

-	Layers:
	-	`sha256:757518f23209bc444b3cd7ce115cfdf31f72baf235e6cc8e877f49abeebb33ca`  
		Last Modified: Fri, 20 Nov 2026 03:26:30 GMT  
		Size: 2.1 MB (2122612 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47104aa164d2f03880eed41889bcf7f8867ab398bb11ad70aecf939da93bb8a2`  
		Last Modified: Fri, 20 Nov 2026 03:26:30 GMT  
		Size: 14.1 KB (14058 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd24.04-non-free`

```console
$ docker pull neurodebian@sha256:df9c42cac0594fbbddc968eaf07c399bfc5c99c9f424138b0f2281345dc31a9c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:nd24.04-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:ffcb4ba9503c6ade16999c2dbab77a37f8b6f1d2117fff37260cd56364380b38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33467532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06d73a4513e952146043122b0e969f47aec49ecb6649441accdf1abaf7580866`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:25:49 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:25:50 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Fri, 20 Nov 2026 03:25:50 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Fri, 20 Nov 2026 03:25:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:25:53 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:626cc2ccdbac51dfb5514fe96addc4a17eaee9b5e3a7451fd8d1be2ece9d5d03`  
		Last Modified: Fri, 20 Nov 2026 03:26:00 GMT  
		Size: 3.6 MB (3565886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bc8f0c9f9153164973861df0e4c8f1dbf3b30e7be94338832fdb2175aa54a26`  
		Last Modified: Fri, 20 Nov 2026 03:26:00 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8de76f9752af4f9b109322ef251f9230de1257a79b1329d083695fec7c2fd6ff`  
		Last Modified: Fri, 20 Nov 2026 03:26:00 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2854946d1ea408eef7d4e07cb1646a22a61222caa40ef30283c1dbff55fb4a8c`  
		Last Modified: Fri, 20 Nov 2026 03:26:00 GMT  
		Size: 105.0 KB (105007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e0878e997251294b462de479b5a18bbc85b67280f588446d7de13c35c278698`  
		Last Modified: Fri, 20 Nov 2026 03:26:01 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd24.04-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:e5442ed691c124ce99da9c04c81cd84f591ffc868a6fb6a2f0726fd77bec875a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2137765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5c12f1c239d4f3395d404477681751bc912b1be71037d925bf077dae55ed1f6`

```dockerfile
```

-	Layers:
	-	`sha256:f76d1023c84d6825ef5b21eb92cdef25baee7da9b17f2cb1c6401810316f1e1b`  
		Last Modified: Fri, 20 Nov 2026 03:26:00 GMT  
		Size: 2.1 MB (2121603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d30ad201ae93daf5d101b2a1dc45dc738a04fd2bab844ed01f0d6be22fe8f238`  
		Last Modified: Fri, 20 Nov 2026 03:26:00 GMT  
		Size: 16.2 KB (16162 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd24.04-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:1942d205a1377000f38bec6f00513c7e33ea7bb371c7cdbd62e789f8dec473b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32638809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d42153f5a9bfc36fe585b99de5437c5de2869a5d69d99ec38981eb4f14676ea8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:26:25 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:26:25 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Fri, 20 Nov 2026 03:26:25 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Fri, 20 Nov 2026 03:26:30 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:26:30 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf00914f48e38162fed6a9654baa15464883d6ff831bd736baf41bce0b8ee3f7`  
		Last Modified: Fri, 20 Nov 2026 03:26:36 GMT  
		Size: 3.6 MB (3564240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fb5ebba0410323a054db845c8b91ca4c28518aea0f2c845ac524fc15203df8c`  
		Last Modified: Fri, 20 Nov 2026 03:26:36 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5cdc6dc7b263a0bc4fca039f177779fbd74381a021a77b9fedba40dd17291e9`  
		Last Modified: Fri, 20 Nov 2026 03:26:36 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbaef4e2dfad9b0a1ae8e31fcf8286b3146ce20280007e4151668b73ac95c719`  
		Last Modified: Fri, 20 Nov 2026 03:26:36 GMT  
		Size: 105.9 KB (105907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cacd53c76c491aa64adebd3f1c7af980efe28e9c18a17054da2939e40465cae1`  
		Last Modified: Fri, 20 Nov 2026 03:26:37 GMT  
		Size: 431.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd24.04-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:35e471329a6203190b04408ad586a2f3c0d4a9444f80f41552b3fd2c7c668fd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2138950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c13f53f7dde989c94fc49e2780c13ba7fbcc2d213b0ba0d55a5ee19e760263d9`

```dockerfile
```

-	Layers:
	-	`sha256:f5b84dc04fae59d55b3cb3d6a34de3832717a8a9214b39384feea7fb0e4f3dc8`  
		Last Modified: Fri, 20 Nov 2026 03:26:36 GMT  
		Size: 2.1 MB (2122648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c05a7adda717bcdedb44aca5861226c1fd3351b4f5e554c3426019c807de410`  
		Last Modified: Fri, 20 Nov 2026 03:26:36 GMT  
		Size: 16.3 KB (16302 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:noble`

```console
$ docker pull neurodebian@sha256:adaf10aac1ca8159a5d2370c303133449ec85120511143c72527ad05378182a2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:noble` - linux; amd64

```console
$ docker pull neurodebian@sha256:9bee7db4597421366f3b04e6677caa3ad30f82d651e57b0e1e938a583787f458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33467060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef058236fc5b08a44491062082b76e04c767508748fbf37bdd8a0be4134bf662`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:25:48 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:25:49 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Fri, 20 Nov 2026 03:25:49 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Fri, 20 Nov 2026 03:25:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b2b17ad41d60c74ef73c73c3b6577ccab99fefc62c583f1083c23bee3ca4254`  
		Last Modified: Fri, 20 Nov 2026 03:25:58 GMT  
		Size: 3.6 MB (3565868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f6ed303d2783df2721c57758938f2b0f195874717909424b7e29222c1a352cf`  
		Last Modified: Fri, 20 Nov 2026 03:25:58 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f69fd532793ceeac8f5c0e7825735ab4faab186efc2a3a41b9822183b9d7b747`  
		Last Modified: Fri, 20 Nov 2026 03:25:58 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5de892c9a453b2ec30b6d2a481e2a8afbb86665910e1c5cf625c95b5c3473877`  
		Last Modified: Fri, 20 Nov 2026 03:25:58 GMT  
		Size: 105.0 KB (104984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble` - unknown; unknown

```console
$ docker pull neurodebian@sha256:7aaa3e7cd8f9c0abb20727e59d34d2bc729577e122f2d647a645b8b7577de5f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2135500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbca422b4b4ce22a2c8df68824049504b73877b77cb645852737bbf7ba305ed3`

```dockerfile
```

-	Layers:
	-	`sha256:ea38a503ec3f4d0479d0f35b404ad79cdf137fa0f9af96b10f7c9647c756425f`  
		Last Modified: Fri, 20 Nov 2026 03:25:58 GMT  
		Size: 2.1 MB (2121567 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8dbd049b422b794bafb75bef7a716992d293b4b31b38fda3ba2992b230251e81`  
		Last Modified: Fri, 20 Nov 2026 03:25:58 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:noble` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:9da792cc13de215acf5b8349177e8161facdd763c08477d91d0fedad4da620bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32638273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2384741d1d5dafed879eee286590d71458fcc62873bd05f0388e651c0e2351c0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:26:18 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:26:19 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Fri, 20 Nov 2026 03:26:19 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Fri, 20 Nov 2026 03:26:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a78f0836dcfd3b146cfd148cef9f1f8dd612f08fa37d512ff08473d57c359a6`  
		Last Modified: Fri, 20 Nov 2026 03:26:30 GMT  
		Size: 3.6 MB (3564157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc6dba0fbc727e657477e059b9958da33636d0454ad5e382ef6e0dbe33ccf87c`  
		Last Modified: Fri, 20 Nov 2026 03:26:30 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eaebee1ca7efcca65fa82faaa163c2b85c18b3c9466cd3fc84cd0fd7da9a6d2`  
		Last Modified: Fri, 20 Nov 2026 03:26:30 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b92e9d4d51b1a109ea69d4bcda6192b6cf4160047ac6331091ba06fa6604b9d3`  
		Last Modified: Fri, 20 Nov 2026 03:26:30 GMT  
		Size: 105.9 KB (105890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble` - unknown; unknown

```console
$ docker pull neurodebian@sha256:bc3f28b76a5e1487c2367e3920da64e98bb2172a18ea43283761685d1b9a207d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2136670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:010948a86375d5afb4c614cf47c2a5827439f70f6da23cba4be1c1012e95b537`

```dockerfile
```

-	Layers:
	-	`sha256:757518f23209bc444b3cd7ce115cfdf31f72baf235e6cc8e877f49abeebb33ca`  
		Last Modified: Fri, 20 Nov 2026 03:26:30 GMT  
		Size: 2.1 MB (2122612 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47104aa164d2f03880eed41889bcf7f8867ab398bb11ad70aecf939da93bb8a2`  
		Last Modified: Fri, 20 Nov 2026 03:26:30 GMT  
		Size: 14.1 KB (14058 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:noble-non-free`

```console
$ docker pull neurodebian@sha256:df9c42cac0594fbbddc968eaf07c399bfc5c99c9f424138b0f2281345dc31a9c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:noble-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:ffcb4ba9503c6ade16999c2dbab77a37f8b6f1d2117fff37260cd56364380b38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33467532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06d73a4513e952146043122b0e969f47aec49ecb6649441accdf1abaf7580866`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:25:49 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:25:50 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Fri, 20 Nov 2026 03:25:50 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Fri, 20 Nov 2026 03:25:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:25:53 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:626cc2ccdbac51dfb5514fe96addc4a17eaee9b5e3a7451fd8d1be2ece9d5d03`  
		Last Modified: Fri, 20 Nov 2026 03:26:00 GMT  
		Size: 3.6 MB (3565886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bc8f0c9f9153164973861df0e4c8f1dbf3b30e7be94338832fdb2175aa54a26`  
		Last Modified: Fri, 20 Nov 2026 03:26:00 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8de76f9752af4f9b109322ef251f9230de1257a79b1329d083695fec7c2fd6ff`  
		Last Modified: Fri, 20 Nov 2026 03:26:00 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2854946d1ea408eef7d4e07cb1646a22a61222caa40ef30283c1dbff55fb4a8c`  
		Last Modified: Fri, 20 Nov 2026 03:26:00 GMT  
		Size: 105.0 KB (105007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e0878e997251294b462de479b5a18bbc85b67280f588446d7de13c35c278698`  
		Last Modified: Fri, 20 Nov 2026 03:26:01 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:e5442ed691c124ce99da9c04c81cd84f591ffc868a6fb6a2f0726fd77bec875a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2137765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5c12f1c239d4f3395d404477681751bc912b1be71037d925bf077dae55ed1f6`

```dockerfile
```

-	Layers:
	-	`sha256:f76d1023c84d6825ef5b21eb92cdef25baee7da9b17f2cb1c6401810316f1e1b`  
		Last Modified: Fri, 20 Nov 2026 03:26:00 GMT  
		Size: 2.1 MB (2121603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d30ad201ae93daf5d101b2a1dc45dc738a04fd2bab844ed01f0d6be22fe8f238`  
		Last Modified: Fri, 20 Nov 2026 03:26:00 GMT  
		Size: 16.2 KB (16162 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:noble-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:1942d205a1377000f38bec6f00513c7e33ea7bb371c7cdbd62e789f8dec473b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32638809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d42153f5a9bfc36fe585b99de5437c5de2869a5d69d99ec38981eb4f14676ea8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:26:25 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:26:25 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Fri, 20 Nov 2026 03:26:25 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Fri, 20 Nov 2026 03:26:30 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:26:30 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf00914f48e38162fed6a9654baa15464883d6ff831bd736baf41bce0b8ee3f7`  
		Last Modified: Fri, 20 Nov 2026 03:26:36 GMT  
		Size: 3.6 MB (3564240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fb5ebba0410323a054db845c8b91ca4c28518aea0f2c845ac524fc15203df8c`  
		Last Modified: Fri, 20 Nov 2026 03:26:36 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5cdc6dc7b263a0bc4fca039f177779fbd74381a021a77b9fedba40dd17291e9`  
		Last Modified: Fri, 20 Nov 2026 03:26:36 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbaef4e2dfad9b0a1ae8e31fcf8286b3146ce20280007e4151668b73ac95c719`  
		Last Modified: Fri, 20 Nov 2026 03:26:36 GMT  
		Size: 105.9 KB (105907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cacd53c76c491aa64adebd3f1c7af980efe28e9c18a17054da2939e40465cae1`  
		Last Modified: Fri, 20 Nov 2026 03:26:37 GMT  
		Size: 431.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:35e471329a6203190b04408ad586a2f3c0d4a9444f80f41552b3fd2c7c668fd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2138950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c13f53f7dde989c94fc49e2780c13ba7fbcc2d213b0ba0d55a5ee19e760263d9`

```dockerfile
```

-	Layers:
	-	`sha256:f5b84dc04fae59d55b3cb3d6a34de3832717a8a9214b39384feea7fb0e4f3dc8`  
		Last Modified: Fri, 20 Nov 2026 03:26:36 GMT  
		Size: 2.1 MB (2122648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c05a7adda717bcdedb44aca5861226c1fd3351b4f5e554c3426019c807de410`  
		Last Modified: Fri, 20 Nov 2026 03:26:36 GMT  
		Size: 16.3 KB (16302 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:non-free`

```console
$ docker pull neurodebian@sha256:1f959c2806dbde3f8a90d722b86030f9141c863011a7de1f0259db6ae6717e1e
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
$ docker pull neurodebian@sha256:3a20426d069527c2ba0ffa4d7f3f4d32eaaf41b4698e175637de1cda1205c075
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59797067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68d1be872f0a9de7d8780eac77012b5cf02d85544627f17e78858df7c9ea13ff`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:41:50 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:41:51 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:41:51 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:41:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:41:54 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:133e21d3e00f3d2179ee10bc16a86f143abd8d09d42089b8b8542a3f01c80448`  
		Last Modified: Tue, 24 Nov 2026 03:40:25 GMT  
		Size: 49.4 MB (49409288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7583622af9c94ce113de110b671cb9a557d6b8d088de8284abd5edd60ec3216`  
		Last Modified: Tue, 24 Nov 2026 04:42:01 GMT  
		Size: 10.3 MB (10294078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a6d2f3be76f30475d171975723732e3320c1624d924b05e67d0320f8f3a192`  
		Last Modified: Tue, 24 Nov 2026 04:42:01 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38b522db3fe8951d4016168610a48f7ec4d3b0319eb2e7868dafb41ae7e3f2fd`  
		Last Modified: Tue, 24 Nov 2026 04:42:01 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2490208194c5f6cac66e2b1bb23fa3b08cbcdb3f955f87c018f18548797ea87a`  
		Last Modified: Tue, 24 Nov 2026 04:42:01 GMT  
		Size: 90.3 KB (90348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c2244bca4e7fc9964db82aece0604d6049c1f7dcda7e657369c6c3975bb6042`  
		Last Modified: Tue, 24 Nov 2026 04:42:02 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:2be2950da03deb62074622e81854f1e5f99864e35db4c6065391a1b3d2a34233
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3639652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dad8cdeaa0cc45939a4b9e0dc53713c6bae3d0bebcc6ef7ba2085f98ba7b497`

```dockerfile
```

-	Layers:
	-	`sha256:051cc19d4f7ce42c9d7f687aaa679859c6d8a29e69e174e146a29e758f60a541`  
		Last Modified: Tue, 24 Nov 2026 04:42:01 GMT  
		Size: 3.6 MB (3623371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f8a1d961999d07fa0722227e6c1c45754aa89d53562d1ea59b38dc10b601e610`  
		Last Modified: Tue, 24 Nov 2026 04:42:01 GMT  
		Size: 16.3 KB (16281 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:4cd24211f0e15647a5f0aa6eb6df52a207818ee3069a9686d640865cf6de7d85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59943327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e54dde7aaf1e38f218f72476a92d96bcd7121fbdf8501adfb09fd183c4819af8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:46:15 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:16 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:46:16 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:46:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:19 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:6bf9dd8e528e8b59aba65241842ec43567ab9ff163d6d444bb4701ece0f11093`  
		Last Modified: Tue, 24 Nov 2026 03:40:31 GMT  
		Size: 49.8 MB (49770086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b208b9f2830596436e5566c417972553d43675252aa44f2dda28c0e19b1f14`  
		Last Modified: Tue, 24 Nov 2026 04:46:27 GMT  
		Size: 10.1 MB (10078828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcdb911e04030e6616befc55be4532fd97a14f382d92b768f157a82372471e3e`  
		Last Modified: Tue, 24 Nov 2026 04:46:26 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6200e0fdf6a0175e0f60cb3fca86939ba856ef7df0c3ce593a2d693d0f130920`  
		Last Modified: Tue, 24 Nov 2026 04:46:26 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:107074aca3a1ecf70edf613c1e9d0c5c62ad49b044fd2536daaf5ad192c3492e`  
		Last Modified: Tue, 24 Nov 2026 04:46:26 GMT  
		Size: 91.1 KB (91063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:171ca9253076c09f3d7a89d6e5184e05d11ddc7dd542aa42d394c8c30d3ea558`  
		Last Modified: Tue, 24 Nov 2026 04:46:27 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:10298e5530f610f115e840e2b65279a433476aa84c5037629725e63901ff1b0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f426c022c8e36c52f4b68b3bbaaa22879b797f516d1b566a5d9c9b862b39114`

```dockerfile
```

-	Layers:
	-	`sha256:496bbcc37dc7efa68117fdde7f4a8a895ca4c85e99eea47f7514b68b728963d9`  
		Last Modified: Tue, 24 Nov 2026 04:46:26 GMT  
		Size: 3.6 MB (3624261 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41948f655f00f039b4061e6d2897dc4fe7ac13a3b9cdda2be116071b0e97b291`  
		Last Modified: Tue, 24 Nov 2026 04:46:26 GMT  
		Size: 16.4 KB (16434 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:af1e0430798153bc3d03ee10718be3a0d64c83768b1cb8bc5b5f17e0e8988b97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61487701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdbe2c72c670bf15e1e949d87adc5b883405cb492489e4e16bf915d59a8b0a35`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:42:12 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:12 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:42:13 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:42:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:16 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:9af4383b67e6d57ef0b9b950c7fd66e6f3be9666b3ba1dfd64327e86ab4a7c8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 50.9 MB (50925445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17bc1b523832df9e70d5c6e3bee797a29f073a501220873e38fa394f764038b1`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 10.5 MB (10468173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f2fc313ca2acab1dc644093355cc39cdaee3e9fdad7fd30401683d71081dd64`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:130a07ca339f557e162eb91ecff7443baefdc50adc511d62cf2f7272c460fcbe`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd5927ce40cb99ea1a91ba898416a818b1ee5b711a2cf745f062e857cefaf8b`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 90.7 KB (90736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:322bb34715f1deb4e8ef57b94d4fe6fc71d0f4006c412f30e32f6bf2428ce73c`  
		Last Modified: Tue, 24 Nov 2026 04:42:25 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:dc566b903626fe3a3cc42c8d0d8e5138dad614562215531975207106cbbf3267
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3637568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0b06860354c5b0b58b20be74a413eccb1a7bdbaf6c13b64acc5975ed9c5507f`

```dockerfile
```

-	Layers:
	-	`sha256:e526cbbd7eab6c2541f9413b7f00a2138e53ce5ede1e418bdd8d4ccd9934afe7`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 3.6 MB (3621321 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ccd6c77515a6bd0080639575b8159369ea5d689f35059ca2d8c0911d1401c473`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 16.2 KB (16247 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:sid`

```console
$ docker pull neurodebian@sha256:04302737b595fe56e2b4e30b1b89afd1f048a558adb8388814487f260b79c16d
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
$ docker pull neurodebian@sha256:6a9a5eefaa9bc13005d08825e6cc44b4cfb0a7f1ce577910db0a4951fdcfbf72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62882627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:307b5447db74abea504c4131542d6c85d4c5524c129ab28fd924133794402e5a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1795392000'
# Tue, 24 Nov 2026 04:42:11 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:12 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:42:12 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:42:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:b4bf59dc11d7745e5ddcfcb9b9a074170e9b2ccc7ede1d4670741b1fa0d98245`  
		Last Modified: Tue, 24 Nov 2026 03:40:37 GMT  
		Size: 50.9 MB (50936743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b94e1d849a8a9bda44820f989dbc0876c9a27cd0643425c81c1d5a9adf2542ee`  
		Last Modified: Tue, 24 Nov 2026 04:42:22 GMT  
		Size: 11.9 MB (11852538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec21bca0f928c56c9883ee2032800d94f9eb7d31b98fba782be42ca085cdb1a9`  
		Last Modified: Tue, 24 Nov 2026 04:42:21 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a767a68654adf6dd0aca25aa8718907c795da56f9cfab74c51718408a43ecb3c`  
		Last Modified: Tue, 24 Nov 2026 04:42:22 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e3e1ca4ba93336c8a12697b2fef74f8bfa0d3b898af1b746fc2e4a7658931ed`  
		Last Modified: Tue, 24 Nov 2026 04:42:22 GMT  
		Size: 90.4 KB (90441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:e7bb41a1f6f2f600bff3f8c679a0f74bc4244f3d978a83ed1351e080167e4f6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3618839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a29c6727367dde1ea11a0f9cbf33aa802f34e9205ba5d4c424f6a48b0e7bd289`

```dockerfile
```

-	Layers:
	-	`sha256:23f1e6aba4954dd88eba9569494b0521bb424756858ef6f21dce667ec061ed14`  
		Last Modified: Tue, 24 Nov 2026 04:42:22 GMT  
		Size: 3.6 MB (3604935 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01af5a50d3978b963e902929504c33c590c6b96a7fc69e67027aa9c042084e35`  
		Last Modified: Tue, 24 Nov 2026 04:42:22 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:26cdb8b7ea0b9f02aca2da0e1acd19d08bd1eaff32f5c6f4393246cd22d82d37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61401720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78afe327abda91009f1609df4a86ea3c69ee8bf3c556ef545d1f8aac0d793381`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1795392000'
# Tue, 24 Nov 2026 04:46:34 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:34 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:46:34 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:46:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e0251d745f256ccdf7e2644516fa7dcb9490b66fb6c78c0179db84762ba3a203`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 50.1 MB (50059613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c9a6575d0c4b55ed87541629ee109730259a9f2926119add3c09fd4f512f3e`  
		Last Modified: Tue, 24 Nov 2026 04:46:47 GMT  
		Size: 11.2 MB (11248243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aabbc1954d66d07b215ad7181082648f6297fb2e9ea8783c737bb227d058398b`  
		Last Modified: Tue, 24 Nov 2026 04:46:46 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56c7e2dd001011015acdd22ca2a6d4e3818098410ecf5064b67c4a52053f6f12`  
		Last Modified: Tue, 24 Nov 2026 04:46:46 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5036f4a7040e8f700b38f44f2b6a1d6cd246e366a68068b8eab5f4a5e95059`  
		Last Modified: Tue, 24 Nov 2026 04:46:46 GMT  
		Size: 91.0 KB (90963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:1e454e035d17d64f412683dcb41a7b1c79db5fe5ca759113bff60b45b7cddd01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3621825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fcc4b063ac264339f940d723705b34956acbcb90a15556e213da8afdf2fc628`

```dockerfile
```

-	Layers:
	-	`sha256:521f92eda87f621be3dd9324b71852f1e1c6e0dde8d5abb7b487fdb12efe5e67`  
		Last Modified: Tue, 24 Nov 2026 04:46:46 GMT  
		Size: 3.6 MB (3607796 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ef8f9cb3a87654edc234f4dc0eb70138aa8b282af0ee585a81ea5d4543c0998`  
		Last Modified: Tue, 24 Nov 2026 04:46:46 GMT  
		Size: 14.0 KB (14029 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid` - linux; 386

```console
$ docker pull neurodebian@sha256:6d560dd821eef6ad287dffc8a8376c7e6f82dbd8fdeb0dab3b6efc55caa0e455
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.1 MB (64124345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc942b7181ac4285bf3df159ab50bdf42423b8f94d1fb0220a93216b48853f3c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1795392000'
# Tue, 24 Nov 2026 04:42:35 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:36 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:42:36 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:42:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:95b9c91a07cce4096de861d03d4aee07ac0ec481852d0a91ee07530ac54eac64`  
		Last Modified: Tue, 24 Nov 2026 03:40:42 GMT  
		Size: 52.0 MB (52015015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37a20e4809edb1d7aa2a6c183c9301af94dc0320ee08231f26ec99cd94347025`  
		Last Modified: Tue, 24 Nov 2026 04:42:49 GMT  
		Size: 12.0 MB (12015672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557e1cfd5571c553907d9f9025ce432cf5e885cf5cf613609824bd01037a5514`  
		Last Modified: Tue, 24 Nov 2026 04:42:49 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c7543480e02e7927c352bf39ee2ac78c7231fcf30ab177426147dd2f4f35cbb`  
		Last Modified: Tue, 24 Nov 2026 04:42:49 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6877bbbe071c2b43e8f171c848933f091e18a157e71efb1dc50dfc22f74f8714`  
		Last Modified: Tue, 24 Nov 2026 04:42:49 GMT  
		Size: 90.8 KB (90752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:f164566adfe4c98ee922657a7a69d74c03688b1a48a7e415b13ad1132640cf8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3616630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:905f395c3a519456dfaed72b3bffd840a7579b003ab805bd03161d63500f430e`

```dockerfile
```

-	Layers:
	-	`sha256:0387db4acab9c8d7ae9a2472350678ba29e92b1f7eb4518eec8ce1234e48970a`  
		Last Modified: Tue, 24 Nov 2026 04:42:49 GMT  
		Size: 3.6 MB (3602755 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3d9048a0700e0790e68cad4cbe64131fdc40a1cafcc61d5645cae8577945a10`  
		Last Modified: Tue, 24 Nov 2026 04:42:48 GMT  
		Size: 13.9 KB (13875 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:sid-non-free`

```console
$ docker pull neurodebian@sha256:601c1f7edfef7674f1a49fd90e3e7796c49bca69d109e717e9822f5c7083af61
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
$ docker pull neurodebian@sha256:6c5d08586268183ca109f9b73e66f015ef6861a1ec1eb5387422e8b1256752a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62883121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44c758474597510ddff83f7d74fd062f75ad5a19d9a3509934f804c8325fac45`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1795392000'
# Tue, 24 Nov 2026 04:42:12 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:13 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:42:13 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:42:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:16 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:b4bf59dc11d7745e5ddcfcb9b9a074170e9b2ccc7ede1d4670741b1fa0d98245`  
		Last Modified: Tue, 24 Nov 2026 03:40:37 GMT  
		Size: 50.9 MB (50936743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ab1d01acec30c9bde2ed63b6f7129ba4df0adc651d5a7e67b2143a95ae327be`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 11.9 MB (11852626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f35ebb7139ce6dfdb9331d69d6375ad462b3c64fda7c1001dc75ef87595fb1d5`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d1bb6050e5afb37c6ea95dd638a1e9937bb40b26a72a0bd687e31cd4538e0c0`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d4acb618530577794cdfbaafc1a7cd3dc1c3fa94d9d15e4632c22f021bcb2e0`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 90.4 KB (90432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85e4056001f46f0a94ae12dc9ae53d30728b69c7a9cbc92b2b41e225428ed774`  
		Last Modified: Tue, 24 Nov 2026 04:42:25 GMT  
		Size: 416.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:f9737e07924994931429ee2b9a3f48e2a9a4ee877e0944d6785bd1446acae99f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3620902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7a42d8a43d4ea3ce864dfba7c86d226da9401b65963428578eae4d0a10c9284`

```dockerfile
```

-	Layers:
	-	`sha256:794034b8cb3d9c93e30a71cca071d552a1188699a4fd88511c9337ab5b62a3eb`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 3.6 MB (3604971 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24740ab8c12e9d5057c1e82f708f0429636b1ede794526139e3b807f839cdd10`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 15.9 KB (15931 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:15098c5dae2c41ed71a2edf52c106125b90fd7ed954dfe06f24aed2ee6d24911
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61402184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5554d2f38897c2b490d923cd6fa475a528d5f40fdff4681c7432cb09d44d687`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1795392000'
# Tue, 24 Nov 2026 04:46:36 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:37 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:46:37 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:46:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:41 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:e0251d745f256ccdf7e2644516fa7dcb9490b66fb6c78c0179db84762ba3a203`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 50.1 MB (50059613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92cc2c8a59b428a585f764452ef04cfeefd5ee2fa0e378a598421b1dcc136754`  
		Last Modified: Tue, 24 Nov 2026 04:46:49 GMT  
		Size: 11.2 MB (11248283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da647b4cf3d5291ac25eb9563242030f3d42fbd4cfaaf3d3272a4478c767d592`  
		Last Modified: Tue, 24 Nov 2026 04:46:48 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c1ac978aa45476713596a35479a91cb061fe8b186e0acb56e878bbdb0f483ee`  
		Last Modified: Tue, 24 Nov 2026 04:46:48 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94e56c8944297fa5967a2c202c4c8151e428ef66e7e023ac38727a6e938ed97f`  
		Last Modified: Tue, 24 Nov 2026 04:46:48 GMT  
		Size: 91.0 KB (90964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae0450591e3b070555cb3b517ae5480f261ec7ff1b2ed23993de8461a01f336`  
		Last Modified: Tue, 24 Nov 2026 04:46:49 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:52d2a9ab8cd6c3292017a83b9fd00a3058768ef8205777910aa220727a7b17e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3623903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:757cb9704de6ac965199361d88021872c7580badd9e03140d3fdb5d430372e9b`

```dockerfile
```

-	Layers:
	-	`sha256:fd7669cbdd396f294ba1087cfdc0d921f16132e7308450de77299c06a7860724`  
		Last Modified: Tue, 24 Nov 2026 04:46:48 GMT  
		Size: 3.6 MB (3607832 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:841f19b1f1da11fefbc559456b7145adbf75d06fb72fc21c84951587a77711ce`  
		Last Modified: Tue, 24 Nov 2026 04:46:48 GMT  
		Size: 16.1 KB (16071 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:be8b2a0423a0c7cef6407639bc9848f1e26a654759b5f34849bc0f9fa0b3dd40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.1 MB (64125027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66b9bc3a81bc5a8e0ac4f78812782c75605e70a889145b0eedb2292fc809e734`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1795392000'
# Tue, 24 Nov 2026 04:42:38 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:39 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:42:39 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:42:43 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:43 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:95b9c91a07cce4096de861d03d4aee07ac0ec481852d0a91ee07530ac54eac64`  
		Last Modified: Tue, 24 Nov 2026 03:40:42 GMT  
		Size: 52.0 MB (52015015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c98a65a6e35d2d2e7d07dcc7b7234c907bdbf36f0f112cacb518c9fb72bb783`  
		Last Modified: Tue, 24 Nov 2026 04:42:51 GMT  
		Size: 12.0 MB (12015868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dd4cb552664b24dbea298b5339cef8e578b4c1ad3485c5b6a682e9a5468c782`  
		Last Modified: Tue, 24 Nov 2026 04:42:50 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19b6ffd030d033f19b467195174745f52e0169ddc3af7951cc85858caeda3bd2`  
		Last Modified: Tue, 24 Nov 2026 04:42:50 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0addbecfe6356e882ccdd8409f2cb7e05935c68efe291986f8817bb6dfc5a19`  
		Last Modified: Tue, 24 Nov 2026 04:42:50 GMT  
		Size: 90.8 KB (90819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7da2fd8b37294363d6c44e40a1ddc75122dfe8328cdc089d9497d14ac3bb637`  
		Last Modified: Tue, 24 Nov 2026 04:42:51 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:46cd9313bf35bac993a659a4deb827c881e7dd44500a20f58ab7cbba4daa08b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3618691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32acf75de652d28bf3d43d12862ae57edc18931edb2547756c12b491c383c0d6`

```dockerfile
```

-	Layers:
	-	`sha256:aa935d2ae74b9dec57e258ba8805432fbb9065c1008d521cf2dba1b1b54418ef`  
		Last Modified: Tue, 24 Nov 2026 04:42:50 GMT  
		Size: 3.6 MB (3602791 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4e000dff95b8b03011fd0ff7ed629b1f427eb508a49defc89fe65a3eed22f56`  
		Last Modified: Tue, 24 Nov 2026 04:42:50 GMT  
		Size: 15.9 KB (15900 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:trixie`

```console
$ docker pull neurodebian@sha256:5a190a8c4691b81e625eccb89fee0548cf16242cd13e3c93b668d7cd42fcaa09
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
$ docker pull neurodebian@sha256:a592075a5719288ad94a43a6a1f42f87498e6e643e683ccb5d5e7386ef2c9d58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59796597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7961630d4468d35a764820d296199dcc66aa4c6546fe24492db09934794dbf4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:41:47 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:41:48 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:41:48 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:41:51 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:133e21d3e00f3d2179ee10bc16a86f143abd8d09d42089b8b8542a3f01c80448`  
		Last Modified: Tue, 24 Nov 2026 03:40:25 GMT  
		Size: 49.4 MB (49409288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:219c0d6cf466acc9f499707f9f081026cdc2feba77731832a5ec8af57e49f2b3`  
		Last Modified: Tue, 24 Nov 2026 04:41:59 GMT  
		Size: 10.3 MB (10294038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953955c30b68b366d46593bc86f36987d6f8c63f804f39002a00ce74f78fa9b9`  
		Last Modified: Tue, 24 Nov 2026 04:41:59 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58d9d290022b95ca564248be0aefd725c28264b727ac6ebb7939ee4da796c996`  
		Last Modified: Tue, 24 Nov 2026 04:41:59 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fed7b88bd85fd156803abb232784e6fa093e10ce28325468a75c28843735f16c`  
		Last Modified: Tue, 24 Nov 2026 04:41:59 GMT  
		Size: 90.4 KB (90364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie` - unknown; unknown

```console
$ docker pull neurodebian@sha256:7fc1c6c6df5483614ce49a84ff8fa830b59205619fb17dabf5fe0e8bbd2e28a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3637582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:101b6e64b0b2034d622676ee2a260bc7c1a60957220afd6936ef9947fefe72e6`

```dockerfile
```

-	Layers:
	-	`sha256:822aa6f2da9707b679d4e720c38388ca8aee792013e78d06ff0ac817f427cae7`  
		Last Modified: Tue, 24 Nov 2026 04:41:59 GMT  
		Size: 3.6 MB (3623331 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfda64c4db6be1273e9d56171e30b5dd1ecdc5234370f73dd1e0ef486c5a53c0`  
		Last Modified: Tue, 24 Nov 2026 04:41:59 GMT  
		Size: 14.3 KB (14251 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:c1c1fc0e0407bea55636865ea7af6d413f2330d77fa2d92788657369988fc1c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59942915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b66da903f149d6a71bd292e694972491858e2f0b4d784d7e161a7de7009a84d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:46:16 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:17 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:46:17 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:46:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:6bf9dd8e528e8b59aba65241842ec43567ab9ff163d6d444bb4701ece0f11093`  
		Last Modified: Tue, 24 Nov 2026 03:40:31 GMT  
		Size: 49.8 MB (49770086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c60af25ed01c646425039b1ab6e45ee62ea248a2641c3cb4e729de5d9d3b12e`  
		Last Modified: Tue, 24 Nov 2026 04:46:29 GMT  
		Size: 10.1 MB (10078849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41af3b474f36ebdf5a3e8644808854eae838c796b28966def9560f6d9429d7b1`  
		Last Modified: Tue, 24 Nov 2026 04:46:28 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d309c8ea8d3587b6c213e305d6fc49e6e5e409f3d56965c786b029dfc0eee3`  
		Last Modified: Tue, 24 Nov 2026 04:46:28 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51d5bc3ac8c8deebdccdc1f0279561689e6d5abd5d4b88d77d79525a23889c03`  
		Last Modified: Tue, 24 Nov 2026 04:46:28 GMT  
		Size: 91.1 KB (91075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8af2eb7f63949e3ca9ee745c911e8cedd7bc73e9b689631b546014c997ff63bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3638609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a670f761ec390aca1bb7e22eeb7f6e5056858b575dc00aebb77c85dfc7088c8`

```dockerfile
```

-	Layers:
	-	`sha256:1424891c66502c72d5e9cff7fe21a4d594f8216995da15de5f90a011fdc58a67`  
		Last Modified: Tue, 24 Nov 2026 04:46:28 GMT  
		Size: 3.6 MB (3624221 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5261abf33a3171875de774db6a7c00f8b63ccb1901512045408532cb3287aff`  
		Last Modified: Tue, 24 Nov 2026 04:46:28 GMT  
		Size: 14.4 KB (14388 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie` - linux; 386

```console
$ docker pull neurodebian@sha256:ccdd5f847cab04ec76a73cc93d5431cfa75ea602219a5d886472409ad7a18ccd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61487270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83de8f28433d20d4551ae039bef28bc6be14ee207908c856578b427d90bbcba6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:41:52 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:41:52 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:41:52 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:41:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:9af4383b67e6d57ef0b9b950c7fd66e6f3be9666b3ba1dfd64327e86ab4a7c8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 50.9 MB (50925445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e59495aa700b827199d6242ccbaac37e97662ef3173b368e97877b7d10cdff9`  
		Last Modified: Tue, 24 Nov 2026 04:42:03 GMT  
		Size: 10.5 MB (10468184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd3436360dd824461b1c68255474e447b5f8866fc343cf299a2d6fc7a5d3d4cf`  
		Last Modified: Tue, 24 Nov 2026 04:42:02 GMT  
		Size: 2.6 KB (2631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abb8fec9bc472500ada51c9e156ce3e00f42372781f3408c3e1038f8d11a0b9f`  
		Last Modified: Tue, 24 Nov 2026 04:42:03 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:521ee35b59b9f19dbe7cb0f6307a311749f100ddb459183f57707732709a2c32`  
		Last Modified: Tue, 24 Nov 2026 04:42:03 GMT  
		Size: 90.7 KB (90741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie` - unknown; unknown

```console
$ docker pull neurodebian@sha256:a3e9e2da2e544f23a7a9cc0891f2f1808d8f4ae24fb4bbad1a9fc0616b2905b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dbabf22e9e68b78ba4a1345701ccb7c81092d5c2fe31f65e5302b7e4e3023c5`

```dockerfile
```

-	Layers:
	-	`sha256:c41ef32451d69c4edaf35bacc1b5188d054a66027d87538becac44f5a9c06fa0`  
		Last Modified: Tue, 24 Nov 2026 04:42:03 GMT  
		Size: 3.6 MB (3621281 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64d3815c6afa123e6f58974e19f603d623d3f5bb27012f178e1b7ab731cf2a2f`  
		Last Modified: Tue, 24 Nov 2026 04:42:03 GMT  
		Size: 14.2 KB (14217 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:trixie-non-free`

```console
$ docker pull neurodebian@sha256:1f959c2806dbde3f8a90d722b86030f9141c863011a7de1f0259db6ae6717e1e
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
$ docker pull neurodebian@sha256:3a20426d069527c2ba0ffa4d7f3f4d32eaaf41b4698e175637de1cda1205c075
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59797067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68d1be872f0a9de7d8780eac77012b5cf02d85544627f17e78858df7c9ea13ff`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:41:50 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:41:51 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:41:51 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:41:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:41:54 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:133e21d3e00f3d2179ee10bc16a86f143abd8d09d42089b8b8542a3f01c80448`  
		Last Modified: Tue, 24 Nov 2026 03:40:25 GMT  
		Size: 49.4 MB (49409288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7583622af9c94ce113de110b671cb9a557d6b8d088de8284abd5edd60ec3216`  
		Last Modified: Tue, 24 Nov 2026 04:42:01 GMT  
		Size: 10.3 MB (10294078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a6d2f3be76f30475d171975723732e3320c1624d924b05e67d0320f8f3a192`  
		Last Modified: Tue, 24 Nov 2026 04:42:01 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38b522db3fe8951d4016168610a48f7ec4d3b0319eb2e7868dafb41ae7e3f2fd`  
		Last Modified: Tue, 24 Nov 2026 04:42:01 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2490208194c5f6cac66e2b1bb23fa3b08cbcdb3f955f87c018f18548797ea87a`  
		Last Modified: Tue, 24 Nov 2026 04:42:01 GMT  
		Size: 90.3 KB (90348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c2244bca4e7fc9964db82aece0604d6049c1f7dcda7e657369c6c3975bb6042`  
		Last Modified: Tue, 24 Nov 2026 04:42:02 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:2be2950da03deb62074622e81854f1e5f99864e35db4c6065391a1b3d2a34233
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3639652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dad8cdeaa0cc45939a4b9e0dc53713c6bae3d0bebcc6ef7ba2085f98ba7b497`

```dockerfile
```

-	Layers:
	-	`sha256:051cc19d4f7ce42c9d7f687aaa679859c6d8a29e69e174e146a29e758f60a541`  
		Last Modified: Tue, 24 Nov 2026 04:42:01 GMT  
		Size: 3.6 MB (3623371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f8a1d961999d07fa0722227e6c1c45754aa89d53562d1ea59b38dc10b601e610`  
		Last Modified: Tue, 24 Nov 2026 04:42:01 GMT  
		Size: 16.3 KB (16281 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:4cd24211f0e15647a5f0aa6eb6df52a207818ee3069a9686d640865cf6de7d85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59943327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e54dde7aaf1e38f218f72476a92d96bcd7121fbdf8501adfb09fd183c4819af8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:46:15 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:16 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:46:16 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:46:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:19 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:6bf9dd8e528e8b59aba65241842ec43567ab9ff163d6d444bb4701ece0f11093`  
		Last Modified: Tue, 24 Nov 2026 03:40:31 GMT  
		Size: 49.8 MB (49770086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b208b9f2830596436e5566c417972553d43675252aa44f2dda28c0e19b1f14`  
		Last Modified: Tue, 24 Nov 2026 04:46:27 GMT  
		Size: 10.1 MB (10078828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcdb911e04030e6616befc55be4532fd97a14f382d92b768f157a82372471e3e`  
		Last Modified: Tue, 24 Nov 2026 04:46:26 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6200e0fdf6a0175e0f60cb3fca86939ba856ef7df0c3ce593a2d693d0f130920`  
		Last Modified: Tue, 24 Nov 2026 04:46:26 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:107074aca3a1ecf70edf613c1e9d0c5c62ad49b044fd2536daaf5ad192c3492e`  
		Last Modified: Tue, 24 Nov 2026 04:46:26 GMT  
		Size: 91.1 KB (91063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:171ca9253076c09f3d7a89d6e5184e05d11ddc7dd542aa42d394c8c30d3ea558`  
		Last Modified: Tue, 24 Nov 2026 04:46:27 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:10298e5530f610f115e840e2b65279a433476aa84c5037629725e63901ff1b0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f426c022c8e36c52f4b68b3bbaaa22879b797f516d1b566a5d9c9b862b39114`

```dockerfile
```

-	Layers:
	-	`sha256:496bbcc37dc7efa68117fdde7f4a8a895ca4c85e99eea47f7514b68b728963d9`  
		Last Modified: Tue, 24 Nov 2026 04:46:26 GMT  
		Size: 3.6 MB (3624261 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41948f655f00f039b4061e6d2897dc4fe7ac13a3b9cdda2be116071b0e97b291`  
		Last Modified: Tue, 24 Nov 2026 04:46:26 GMT  
		Size: 16.4 KB (16434 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:af1e0430798153bc3d03ee10718be3a0d64c83768b1cb8bc5b5f17e0e8988b97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61487701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdbe2c72c670bf15e1e949d87adc5b883405cb492489e4e16bf915d59a8b0a35`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:42:12 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:12 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:42:13 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:42:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:16 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:9af4383b67e6d57ef0b9b950c7fd66e6f3be9666b3ba1dfd64327e86ab4a7c8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 50.9 MB (50925445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17bc1b523832df9e70d5c6e3bee797a29f073a501220873e38fa394f764038b1`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 10.5 MB (10468173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f2fc313ca2acab1dc644093355cc39cdaee3e9fdad7fd30401683d71081dd64`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:130a07ca339f557e162eb91ecff7443baefdc50adc511d62cf2f7272c460fcbe`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd5927ce40cb99ea1a91ba898416a818b1ee5b711a2cf745f062e857cefaf8b`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 90.7 KB (90736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:322bb34715f1deb4e8ef57b94d4fe6fc71d0f4006c412f30e32f6bf2428ce73c`  
		Last Modified: Tue, 24 Nov 2026 04:42:25 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:dc566b903626fe3a3cc42c8d0d8e5138dad614562215531975207106cbbf3267
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3637568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0b06860354c5b0b58b20be74a413eccb1a7bdbaf6c13b64acc5975ed9c5507f`

```dockerfile
```

-	Layers:
	-	`sha256:e526cbbd7eab6c2541f9413b7f00a2138e53ce5ede1e418bdd8d4ccd9934afe7`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 3.6 MB (3621321 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ccd6c77515a6bd0080639575b8159369ea5d689f35059ca2d8c0911d1401c473`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 16.2 KB (16247 bytes)  
		MIME: application/vnd.in-toto+json
