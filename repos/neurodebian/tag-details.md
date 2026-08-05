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
$ docker pull neurodebian@sha256:77a4dff847b09ff1f4e36c1ebef9b0ed8350cd6c419a846b536a6bc8ff793f0c
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
$ docker pull neurodebian@sha256:4ac770830f2b0ce665dad7b414177681dc168e88d22fc5265a943ae26626177e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59866199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db0e737989b7a2f4b90e3802d955b4072552aee76b7c5790cd40647cb3cd417a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:59 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:00 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:48:00 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:48:02 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:015b82b4bb72961ba8e76f9104a8a1b0167f64185308ee2f900be67b55f32394`  
		Last Modified: Wed, 05 Aug 2026 00:48:10 GMT  
		Size: 11.3 MB (11273519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df5092e0ea675329471bdbc7e59e58dd9cc40ca9d6ec74a775ab66ff2ce04f57`  
		Last Modified: Wed, 05 Aug 2026 00:48:09 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8eafb32f325341dea27eb2264fba6deb981dea5579b55193671d1db7717abfb`  
		Last Modified: Wed, 05 Aug 2026 00:48:09 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45acc979370ad4bfdcb61af0f88f77629ba397654624a65b80801260b1ad8241`  
		Last Modified: Wed, 05 Aug 2026 00:48:09 GMT  
		Size: 93.4 KB (93416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:77e3288cb26d6e9f610298f8870aecab572003e162dff4c508765fc042394f23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4089916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cf3c77399626aa3cfa57601210dd65bffc4ff503e8025842ca4921400dea6bd`

```dockerfile
```

-	Layers:
	-	`sha256:77518e19ab0df19e8c528963c80111f38a22a3de1656ef4a46485dd9fe9d467a`  
		Last Modified: Wed, 05 Aug 2026 00:48:09 GMT  
		Size: 4.1 MB (4075951 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a2d77b995a95ad9eff6fb0503343b618d0eaccc438d3b74a7fc07015fed02c8`  
		Last Modified: Wed, 05 Aug 2026 00:48:09 GMT  
		Size: 14.0 KB (13965 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:e4adf33b51ee605e72b2121f6d61fc16f64b3b92490e297eb746d99b93759408
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59732108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83871db31165fdf2683b28c5c802df7d63aab1c0f9c2c5af1251ecfca0e48d0a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:50:21 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:50:22 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:50:22 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:50:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3664e955992451d4457a785c511f7c5dce845cdd34c08be11eac6aa82bbc3a2`  
		Last Modified: Wed, 05 Aug 2026 00:50:33 GMT  
		Size: 11.3 MB (11252977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baecc0605ddfc860e35437e7741c210e1ed3ca6040ab3cb10fcbdc44fb1fbe82`  
		Last Modified: Wed, 05 Aug 2026 00:50:33 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63c5dffd56f5f39d0cb00631be4a61c6644286914236070f49acc0b2df2d6615`  
		Last Modified: Wed, 05 Aug 2026 00:50:33 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e169e173082fb0b57e7853d7da646b19120129c4b2883e0eccebe53cf929dcb4`  
		Last Modified: Wed, 05 Aug 2026 00:50:33 GMT  
		Size: 93.6 KB (93577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:fd2894dcc967b3fca942348eee9f31e2e0d0e911794e55b3cd1c93a849c7adfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a665cb73c00605e8ba44932efc66b65b03686dc62902ce6940097ab2d19ea3b`

```dockerfile
```

-	Layers:
	-	`sha256:6ae73155024f43303f07eab707d31a32a610b5dceb784c0c66d40f8fa633f650`  
		Last Modified: Wed, 05 Aug 2026 00:50:33 GMT  
		Size: 4.1 MB (4076193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a4680e027f6325daa160eb7b23461054f5ba786dded25d46129e45e09e1b6e2`  
		Last Modified: Wed, 05 Aug 2026 00:50:33 GMT  
		Size: 14.1 KB (14090 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm` - linux; 386

```console
$ docker pull neurodebian@sha256:6d150744834bbc0923afd5dbfa4cad19224766db4999aa422683b968be5b916e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61273928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbb4c4ac5b4342c8062d9992d82236d012f68735cee8dc8885143299c9c27601`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:48:29 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:30 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:48:30 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:48:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:9e69b691eb95e2bd0553193ab2db36e850c21fc171acd2f9e2fd526557689fc8`  
		Last Modified: Tue, 04 Aug 2026 23:51:30 GMT  
		Size: 49.5 MB (49485121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea35d576d38c218e2ea5c42e8328ec2418a38c6f75e9e7b513318f01b8f0fa3`  
		Last Modified: Wed, 05 Aug 2026 00:48:41 GMT  
		Size: 11.7 MB (11693182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b225a642833127d6df02ec1ae6963305c9878eff478ac1a7c8a9fa841ff3ce4`  
		Last Modified: Wed, 05 Aug 2026 00:48:41 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34033e518fbfdd9fe92e9e1d1b6e5f8d78d22ce8ee96f41d951b66f7ee130b31`  
		Last Modified: Wed, 05 Aug 2026 00:48:41 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6c3dd2453d29e4d1092a5bd56b4c711b657cb0cf7b36baf7950ae328f7b0705`  
		Last Modified: Wed, 05 Aug 2026 00:48:41 GMT  
		Size: 93.5 KB (93451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ce1dbbf14da2b1f5564836782016042ef63500d1aac23f0d6bb79091c9497e8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4087855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7023e96c3707ba2e4d27a08be8ad359b34c9beb5665d3831e5bc96d5be7dd4ce`

```dockerfile
```

-	Layers:
	-	`sha256:6dccc4dd6b22d8763cee038338a87d8ce7c823bf1042b0ac2c3262501a338f4b`  
		Last Modified: Wed, 05 Aug 2026 00:48:41 GMT  
		Size: 4.1 MB (4073918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a194c4e4dae8d61c0c0848796013347159214100ba2b6ff5a66a73b39e346979`  
		Last Modified: Wed, 05 Aug 2026 00:48:41 GMT  
		Size: 13.9 KB (13937 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:bookworm-non-free`

```console
$ docker pull neurodebian@sha256:bd944f079aa8c95d15d1feb79e7c1c83dba2b35100fdcf2dd084f2bb76f4c236
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
$ docker pull neurodebian@sha256:19bdd9503a4512530f1ffad76625dc9374196413d61863362a5d797cbeb4f0af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59866637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78e5ab6110c333045f9cdce676c212a643208f8cba595d21bdb819fbb7597b63`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:48:05 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:06 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:48:06 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:48:08 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:08 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed4aa4694f216b2803314e01d97d6db463e42cdf1e8e8863d2b1b81c773d1f34`  
		Last Modified: Wed, 05 Aug 2026 00:48:17 GMT  
		Size: 11.3 MB (11273517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6ea0d6eb580c1eebe3edfaf7935dbc8e6038f23ef83edeb04e83b90d7d2bbbb`  
		Last Modified: Wed, 05 Aug 2026 00:48:16 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c913e83f91ca8ea934f568370a1efca78c5f1de07f96ee132acedeafcdeb089`  
		Last Modified: Wed, 05 Aug 2026 00:48:16 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b79db4ad5595154517a00b1f1c8bbddf934a450606665e1b2e7c90a1ad45685`  
		Last Modified: Wed, 05 Aug 2026 00:48:16 GMT  
		Size: 93.4 KB (93403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dfc8b591ee7fb3c7e9bc6745868a65f6477472c952575cb62bde79779cca01a`  
		Last Modified: Wed, 05 Aug 2026 00:48:17 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:d66ab4e1b48b23f535bc699edcaf26ad7c899898263265b066e6b50562627bd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4091979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1ac3415a13821f373b7185cb10219983714fed6e02e14d29d3b000e50646a41`

```dockerfile
```

-	Layers:
	-	`sha256:a94e98034cacfd197a9c7aa514a460aa225a3b54a2fc66a4f9b8ebe1de6809d3`  
		Last Modified: Wed, 05 Aug 2026 00:48:17 GMT  
		Size: 4.1 MB (4075987 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d80c91ccb30df1b449992efc778ca0faf712efc3037162737b7f5dc2a71b865`  
		Last Modified: Wed, 05 Aug 2026 00:48:16 GMT  
		Size: 16.0 KB (15992 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:b093a17325e924e866b916ad79e39761649ff693fd81d45ee2f88dff7636543a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59732507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ddce7227e90e3c6dc11e09bff3fe0816143db48c6f66f51aab395169392f95b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:50:38 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:50:39 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:50:39 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:50:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:50:42 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83c453eb472495e8107fe2d701151501ae6d44e1608f90439829b83141a062c2`  
		Last Modified: Wed, 05 Aug 2026 00:50:54 GMT  
		Size: 11.3 MB (11252928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc84f22361a700d71f5a878227d35b29ae803bda2a00cba3cbd41ad91a6a8bb`  
		Last Modified: Wed, 05 Aug 2026 00:50:53 GMT  
		Size: 1.9 KB (1899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b590072a810a3139b6957e66eb65995ed3cbb5c47d650afaeeba52c55de78bf9`  
		Last Modified: Wed, 05 Aug 2026 00:50:54 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:078f638d57ade2266d05f42f8ec964d8860eb177905fa543ea257436c5e44774`  
		Last Modified: Wed, 05 Aug 2026 00:50:53 GMT  
		Size: 93.6 KB (93580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cede123c0f1cb5bec6d62d614ed34cd8223fba542a798b8558f01aac735bf2e`  
		Last Modified: Wed, 05 Aug 2026 00:50:55 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:45d7af98f60470ef86f47e638f17ec39fdb6b5529542e3417d3b7fe733b0eb8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:681ff349cb86b65ad7df512865a6b0f2032984cb2b4a0beda6902fe1eaee5ba3`

```dockerfile
```

-	Layers:
	-	`sha256:1248d21366921b55025fdfa56ebe2a456fccb019019eba1308aadb73a1e04d7b`  
		Last Modified: Wed, 05 Aug 2026 00:50:54 GMT  
		Size: 4.1 MB (4076229 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:becb91c8556af058268c6d4246b9946c319aeccf9b9484e3b1df5d0aef343825`  
		Last Modified: Wed, 05 Aug 2026 00:50:53 GMT  
		Size: 16.1 KB (16132 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:44e3ba9a8717c5580b3e782501e268540b8e3fa099f7560a15a28e5e9d0398fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61274387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59e3fad8f2c9e8ec3c816fd57f25f9df116c3292bffb246c82ee7736763b8f3e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:48:52 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:52 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:48:52 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:48:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:55 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:9e69b691eb95e2bd0553193ab2db36e850c21fc171acd2f9e2fd526557689fc8`  
		Last Modified: Tue, 04 Aug 2026 23:51:30 GMT  
		Size: 49.5 MB (49485121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc0c2faaf78fe9238bff71d7a2fcd28fd9efb02271884dede30803d545485fc6`  
		Last Modified: Wed, 05 Aug 2026 00:49:03 GMT  
		Size: 11.7 MB (11693206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15ed638e93aab501a2123bf76c05e2e03f665f10c4d033f33d9ee59588a350c8`  
		Last Modified: Wed, 05 Aug 2026 00:49:03 GMT  
		Size: 1.9 KB (1898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51777bc38753647a5840c681dea16ad3b1f54898f9204fd8cfcc18ab0a560bc4`  
		Last Modified: Wed, 05 Aug 2026 00:49:03 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c73b1b8afd70e42e1dbacc0d9d90178d7d613033ea0b648ec5bf3b008d2143`  
		Last Modified: Wed, 05 Aug 2026 00:49:03 GMT  
		Size: 93.4 KB (93439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e08e7ba6af09c60719b1bd375b78f21f434399430c4ae094995a40f0404ad2bc`  
		Last Modified: Wed, 05 Aug 2026 00:49:04 GMT  
		Size: 451.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:06323129ba2749fe61cb2bd7c97588689e0d515a0e8f4971a232ebab4b57177f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4089916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4d650a1d388868851a8993ad1c9ae075b1cc0dfb2b0dfdf5d84adcf7fc89fc8`

```dockerfile
```

-	Layers:
	-	`sha256:7eaa539be28095c76f7f0e8a60ddf3aceb54d33aff4c4e02660c96190623a3b8`  
		Last Modified: Wed, 05 Aug 2026 00:49:03 GMT  
		Size: 4.1 MB (4073954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12e7953b065799f7f657bb6297ff5f6928b7fc071c5232d750d091a0bdc5ef1e`  
		Last Modified: Wed, 05 Aug 2026 00:49:03 GMT  
		Size: 16.0 KB (15962 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:bullseye`

```console
$ docker pull neurodebian@sha256:26d47a64768a02ecdb3406c63933b155671583571a7c0ed3d57e30dd03dbb732
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
$ docker pull neurodebian@sha256:29c228f5ca98d795d4438c3c80e0fe359a6f1d76d8a3af8b0f9f557e33a62fde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64983913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f89f35adb6b40dfccb7fda1fab8584f7b2d945bcfe0f53f9a1e5d7c414ae9d96`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 00:47:46 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:46 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:47:46 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:47:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3988d06f3f06f3601312c1e62ef7796d2b429f1182be8e2176664e1d700f3275`  
		Last Modified: Wed, 05 Aug 2026 00:48:02 GMT  
		Size: 11.1 MB (11103387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2048def7c041e67876b2813bfb93777b3fe20ff8d9f2028380fda61b491ec649`  
		Last Modified: Wed, 05 Aug 2026 00:48:01 GMT  
		Size: 1.9 KB (1892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6ae0ca2eb0a3ac90ef54db2c1544f29c898fcb19bfc5c84259f67c3c0c0b1b7`  
		Last Modified: Wed, 05 Aug 2026 00:48:01 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43e85d92ddf7f1e9739907d865069bfa9de4d5fefa4bd5752373ba7afc296b5a`  
		Last Modified: Wed, 05 Aug 2026 00:48:01 GMT  
		Size: 101.3 KB (101350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bullseye` - unknown; unknown

```console
$ docker pull neurodebian@sha256:38a4678b235b0e44b2f219ef11fd1cc2351d181801be88341c1df8f89876880f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4381883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b39c1d7c9f323348e8c99409afd7cf9aaea5775c4e5167ea502b2fd72c906df7`

```dockerfile
```

-	Layers:
	-	`sha256:e563ded3d09a5225414b5c07a14c3c95544e58549e3e397d13876a02b30e4583`  
		Last Modified: Wed, 05 Aug 2026 00:48:01 GMT  
		Size: 4.4 MB (4367918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd321b38463ffaafa0f1e7879174a87eb35593dc71a5bc933ecdd820d2739127`  
		Last Modified: Wed, 05 Aug 2026 00:48:01 GMT  
		Size: 14.0 KB (13965 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bullseye` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:66d3ea34a87d6ce1f0a3e836948973cc944a624de76759ae7e8655658ef45c4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 MB (63474256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e2e9a5a187f02f04b79fda7e20fa5e92b8c047265584ed6b578d9ab6ec64798`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 00:50:15 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:50:15 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:50:15 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:50:18 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6884bcaad9c60c0645a822147208ba9b4ce1a98b0b0dc73c0578e784cb90850`  
		Last Modified: Wed, 05 Aug 2026 00:50:27 GMT  
		Size: 11.1 MB (11109960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf6008e633c5cc31de5b7e42d8b7e5428a50102fb6eca01e99ac6433b68e0fc2`  
		Last Modified: Wed, 05 Aug 2026 00:50:26 GMT  
		Size: 1.9 KB (1892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70f20e79d45558178332c1359d3a25849155574fd79f9550efa51cb6d6c7e5b5`  
		Last Modified: Wed, 05 Aug 2026 00:50:27 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53e8befad99656993a8d33ce452e1375779dbd7c80169a3d9eaceef398b9a8db`  
		Last Modified: Wed, 05 Aug 2026 00:50:27 GMT  
		Size: 101.2 KB (101237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bullseye` - unknown; unknown

```console
$ docker pull neurodebian@sha256:e92175931b1136c4db049c4df5f5056a1fdd49a8a19a737884625d0d8fd01803
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4381616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dfcc446595e0ebddf0349a97c9143fb36baf3a2701d98636b12b39b8d07d95a`

```dockerfile
```

-	Layers:
	-	`sha256:7476fb9a56e57b715ad73863b0ff4fb4e283d79cc5515242360d3c5c6d6febe6`  
		Last Modified: Wed, 05 Aug 2026 00:50:27 GMT  
		Size: 4.4 MB (4367525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e1e5e3a4c20b9c14d630459943672fac078e5c0761209b6d1f335c4af701b95`  
		Last Modified: Wed, 05 Aug 2026 00:50:26 GMT  
		Size: 14.1 KB (14091 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bullseye` - linux; 386

```console
$ docker pull neurodebian@sha256:9da3844050b07a4ca1bdaf412ebf96e2f3defb3d3e53c5c399b1fa47ce938d48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66321623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aca5e242c4699d785c216bacc3567947c8cc25c0aa0287a08edbdb291383b009`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 00:47:52 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:53 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:47:53 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:47:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:510e82e1d8f7e507a25b2b91429b3607a4e44770b2af5695503b845da3629ad3`  
		Last Modified: Tue, 04 Aug 2026 23:52:02 GMT  
		Size: 54.7 MB (54715733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8a82b60a9f61e5f0302bbb9cfbe8a0d57ca89ba2068fa73192d61b2432fc9f9`  
		Last Modified: Wed, 05 Aug 2026 00:48:04 GMT  
		Size: 11.5 MB (11502429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9f4d08cdc3a1e36b22f517ea3dec9c3eef8a50b671f7c6c53987264c4713b5`  
		Last Modified: Wed, 05 Aug 2026 00:48:03 GMT  
		Size: 1.9 KB (1894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48e6b8befcb585c9d28d98aa04d26d9e06c96c17ab77121654f4b9d93935d888`  
		Last Modified: Wed, 05 Aug 2026 00:48:03 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98a7bc81fcaebed0c30f9862f0eb121dd307c13065a258e46c2eead36a80b6bc`  
		Last Modified: Wed, 05 Aug 2026 00:48:04 GMT  
		Size: 101.3 KB (101303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bullseye` - unknown; unknown

```console
$ docker pull neurodebian@sha256:178b544b776c856c87d0a99250ffec30fecbac1775dd2eafc15d4e7bfd3d0740
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4378375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:342d7268af5804a3a7caafa96580a8e6e6d113c146c4c573f9c8590647227a65`

```dockerfile
```

-	Layers:
	-	`sha256:c00d02fdd3ca89af317bd632cc92e86ba7d5977f58ce305095c02f3c12364ada`  
		Last Modified: Wed, 05 Aug 2026 00:48:04 GMT  
		Size: 4.4 MB (4364437 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac26e4561ed4566558e66dc7a794e1c0e2b4b6cbb01bd79fd1ab1f4d88050adc`  
		Last Modified: Wed, 05 Aug 2026 00:48:03 GMT  
		Size: 13.9 KB (13938 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:bullseye-non-free`

```console
$ docker pull neurodebian@sha256:7e32f865e967a04acc9f0cee1a4a203cfd7531d1032e2bd23dfb1ac53673c6d2
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
$ docker pull neurodebian@sha256:2245f2ed413383c3018fdb74164d84530dc6218759aea163e8c23b609b523784
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64984254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f18bf5523433288a0caf9fe9413da50129fc3c04f2c43fcecbeffb4ed281da6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 00:47:56 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:56 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:47:56 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:47:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:59 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0643f2f6b71c490558be432ed9fb06e95e11fc2caff9464a83b7c81b4e28d502`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 11.1 MB (11103357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cad616799436cbba8cd2a947bd17acec666ca84f39477211b5d38eb1c0206e60`  
		Last Modified: Wed, 05 Aug 2026 00:48:06 GMT  
		Size: 1.9 KB (1891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:459088abf398d2f6cd51967239a03942e045e4f7a934f4f11e3a46ec9d6402f6`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7655127a9239951525750a20b8e9e8686b0cc540d9283023c3b552ea543aa67d`  
		Last Modified: Wed, 05 Aug 2026 00:48:06 GMT  
		Size: 101.3 KB (101334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60457a585b337ef8535b14f00d69d80fced8b01033380bfe7a850bb71282cb07`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bullseye-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:2703fb13a51186821596d2009b2303870f7d38e561ed022f8e57983bb0a631b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4383948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bd6f8437db57953145b0279639169867dff0f88ec6cbf9bfa6cdc4554878cba`

```dockerfile
```

-	Layers:
	-	`sha256:c6d3103d219ab0786a6bc6274eec1b20a483a61475377f0695ba13c35f03df84`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 4.4 MB (4367954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f95792bc7f12105ab4f96c39f324db6e156937d8c685300da78f77df62f105f3`  
		Last Modified: Wed, 05 Aug 2026 00:48:06 GMT  
		Size: 16.0 KB (15994 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bullseye-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:dbd8b91332a3ceee0b7037c0a0f3abce7876119f5ec17009ba8ead0e4512e894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 MB (63474621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff3baab23d1def34e07ec5da0ce4538efcd551c776e719a3c315e1a279902a81`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 00:50:18 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:50:18 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:50:18 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:50:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:50:21 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a619fc3b3608889856f894daea54efa74c3c8571c7f05051d31ffe0666d366d8`  
		Last Modified: Wed, 05 Aug 2026 00:50:33 GMT  
		Size: 11.1 MB (11109919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0eab6ef9641ed9a4bc69f19e1f3f02965a88cdcb118c06d98eb907306de9d8a`  
		Last Modified: Wed, 05 Aug 2026 00:50:32 GMT  
		Size: 1.9 KB (1891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faacd3a39777e1a2195da502d891c6dae4a9599f8a1054112e795ce4aedc8129`  
		Last Modified: Wed, 05 Aug 2026 00:50:32 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c41ab9c351a49bf1b2fec678eac1a044c7d21d2be620a82249969ae141832014`  
		Last Modified: Wed, 05 Aug 2026 00:50:32 GMT  
		Size: 101.3 KB (101257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4009bb01e2b5df3a0ea123c737c87dc0c514a16db494400dcbce672d8ffa26f`  
		Last Modified: Wed, 05 Aug 2026 00:50:33 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bullseye-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:3a408178498bd7cc1fee5e787e4aa6bbcbf58511e7dd272515043bbc8adeef00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4383693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f19eb9d9023ba3c428fdb3aa76575d9210374e8a3772038f4dd9902ee5f014e`

```dockerfile
```

-	Layers:
	-	`sha256:a788517ce89091ac20fcd1513f29f8ecdbfeb0498f617d89abe339657d831b41`  
		Last Modified: Wed, 05 Aug 2026 00:50:33 GMT  
		Size: 4.4 MB (4367561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3dbc601d9780d8dee70f3e3062d37e339a6c0dd53fc4d8e5c19b121b94aba5f7`  
		Last Modified: Wed, 05 Aug 2026 00:50:32 GMT  
		Size: 16.1 KB (16132 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bullseye-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:20e724201ab3f8ad3ac69630fa9f856bbe436ce6a0d064f1fd3098e7c9dc1208
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66322011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bb826c0a71fdae7a883829e6577aa29e3dcedcc14f1ce2f8e2393d7f54e1850`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 00:47:52 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:53 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:47:53 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:47:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:10 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:510e82e1d8f7e507a25b2b91429b3607a4e44770b2af5695503b845da3629ad3`  
		Last Modified: Tue, 04 Aug 2026 23:52:02 GMT  
		Size: 54.7 MB (54715733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8a82b60a9f61e5f0302bbb9cfbe8a0d57ca89ba2068fa73192d61b2432fc9f9`  
		Last Modified: Wed, 05 Aug 2026 00:48:04 GMT  
		Size: 11.5 MB (11502429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9f4d08cdc3a1e36b22f517ea3dec9c3eef8a50b671f7c6c53987264c4713b5`  
		Last Modified: Wed, 05 Aug 2026 00:48:03 GMT  
		Size: 1.9 KB (1894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48e6b8befcb585c9d28d98aa04d26d9e06c96c17ab77121654f4b9d93935d888`  
		Last Modified: Wed, 05 Aug 2026 00:48:03 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98a7bc81fcaebed0c30f9862f0eb121dd307c13065a258e46c2eead36a80b6bc`  
		Last Modified: Wed, 05 Aug 2026 00:48:04 GMT  
		Size: 101.3 KB (101303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d8699b0dc1b0bac1502523b758e231d9c3a9846e621bc29acd3bcac29f67477`  
		Last Modified: Wed, 05 Aug 2026 00:48:16 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bullseye-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:e977d253c03abf7aa9d63ea2e3e67f562b8d03f180a93feec3b365d8d0e51685
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4380437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5e6d54ae003ae23eec3dbec8a1888093efc55882005da9642759975c34c1a19`

```dockerfile
```

-	Layers:
	-	`sha256:70690fca471aa44bc958293040e0a13921f4d06b5d3625208792af76a9e3d03c`  
		Last Modified: Wed, 05 Aug 2026 00:48:16 GMT  
		Size: 4.4 MB (4364473 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:026f3f696079b329d1e4fed95a0ded151146b777a5c5c777ddf4a44022a7ee1e`  
		Last Modified: Wed, 05 Aug 2026 00:48:16 GMT  
		Size: 16.0 KB (15964 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:forky`

```console
$ docker pull neurodebian@sha256:b014b3e1c58cce29cda82a402354b2e01448be0a8f18c1d7327896cda604063d
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
$ docker pull neurodebian@sha256:c08fc0c8e74f48f1e7ec0f5b8624ed3581981cf6c6e2179f5df8e22d3b4c10ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.9 MB (60904532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fff523dde765118e2cba3febeda3eec8e39aacc8b8d62771f36424216901e0c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 00:48:21 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:22 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:48:22 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:48:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a9d7b479042d051e643bab1c85ff0f6599260e4745f41b5274612a5bdc6fde05`  
		Last Modified: Tue, 04 Aug 2026 23:52:17 GMT  
		Size: 49.3 MB (49331702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def14f98a3d49c098cb8cf956d782ef1b57856eda1e62500ce1c695db7722e76`  
		Last Modified: Wed, 05 Aug 2026 00:48:34 GMT  
		Size: 11.5 MB (11479933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baa30094481b37fea30184ad65d0a23d560a29c092be1d47374fd6daf505869b`  
		Last Modified: Wed, 05 Aug 2026 00:48:33 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd27a3f3b2620e9d6e26b669a3b8f65fb2a33b0f7bc5f7d88f7162b147dc1b15`  
		Last Modified: Wed, 05 Aug 2026 00:48:33 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45489f50e384c89ccc68ccda43be67d7e5ad1b9f5399219d1780e36cbcd5bd33`  
		Last Modified: Wed, 05 Aug 2026 00:48:33 GMT  
		Size: 90.0 KB (89991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:c163d81666fa4f7056f284234e757b3ee4d3fe85dd538b1c5c1eba7baf23efe5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3616193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac29b7f7403524a24af1e8ae1596bfbd96eb56a54b0a3c1fc852ae73f1d147ac`

```dockerfile
```

-	Layers:
	-	`sha256:2cbcfc6a0627bc7419843bed7498fecfafb8bcb9604bc745c2475edc1e04b1be`  
		Last Modified: Wed, 05 Aug 2026 00:48:34 GMT  
		Size: 3.6 MB (3602261 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a4941d7978313b002b000504b42d7ee7bcbe76bb8d7e75823f27ebc59313dcc`  
		Last Modified: Wed, 05 Aug 2026 00:48:33 GMT  
		Size: 13.9 KB (13932 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:d703c88f40d485c3ea1005efc432034fb678e9825eae96a36eeb7b027fc528de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.6 MB (60626957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4244f4301555fafbdf3b7147da520545da22302ff549c4513ae0e62e9e1a5b6a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 00:51:08 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:51:08 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:51:08 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:51:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:bfcb34026e1133159b75d54bd9ab0e7c3b167036e1a86690a2e97c22d8614806`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 49.4 MB (49361777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8373969c5faea50f8cc6886c4fedaa02a719ab2d804da17a7868611af0d34656`  
		Last Modified: Wed, 05 Aug 2026 00:51:21 GMT  
		Size: 11.2 MB (11171715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13785e01d5a12c71ea98d34fc62dba545f5167fe7525e569222bbd6066919d9b`  
		Last Modified: Wed, 05 Aug 2026 00:51:20 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcffd09008b1851414d7d8857d2073b8b7bb1eadc4b7e9dd3d88891b6d133d73`  
		Last Modified: Wed, 05 Aug 2026 00:51:20 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d93e258c89144e03b5aa544cac0c29ca4d9d92f6b74676fa134d9fd72f31277a`  
		Last Modified: Wed, 05 Aug 2026 00:51:20 GMT  
		Size: 90.6 KB (90562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:4bca487c5fa9a535ac73e0023889edf2d3bfd17c83dc27649fb95631ab9f15c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3621077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7e40d9c976c96ff0c5a623110150bf3944fd01bf4cc759ed324063a6abb3e23`

```dockerfile
```

-	Layers:
	-	`sha256:d9c82b1e9b0f445214585c2b1ee85617ad2bf0846aa215b98cf4df7e34d434fe`  
		Last Modified: Wed, 05 Aug 2026 00:51:20 GMT  
		Size: 3.6 MB (3607021 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2cb97341d9717cdef258da7f6d99b4609bdd8ada57412919ad845359ad2666ab`  
		Last Modified: Wed, 05 Aug 2026 00:51:20 GMT  
		Size: 14.1 KB (14056 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky` - linux; 386

```console
$ docker pull neurodebian@sha256:65f2a8c40a3bde945fb29f880e4761210dab7befa2b0b66e5b8d0a3f0163f651
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.5 MB (62476844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fba229516a3e0e38f675b95feb2c937343b45bd4f04902316459632f981fb30e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 00:49:17 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:49:18 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:49:18 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:49:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:5ee9cec7ecffffde5454be1577dcc2e874bcfbeb92f7c0c58c02330aa3cd53bf`  
		Last Modified: Tue, 04 Aug 2026 23:51:46 GMT  
		Size: 50.7 MB (50668690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3256e989c64909b0b7b0fdf4cd3c5d24570e040d652c2c0edf3b8c337111fa4`  
		Last Modified: Wed, 05 Aug 2026 00:49:28 GMT  
		Size: 11.7 MB (11714966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dfc53eedd3be3cc5bea0563f9253cd459d8cb1e6dd74c28a6e7dd7ff1e6eeaa`  
		Last Modified: Wed, 05 Aug 2026 00:49:28 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3e3a15da155a3dd077d2959254aea8c9ad034391ab966de02070c343c8763a`  
		Last Modified: Wed, 05 Aug 2026 00:49:28 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03eaa37a6734c5495aae8b1a78467eb18519cd5f63b94fc8f966cc5b79564a7f`  
		Last Modified: Wed, 05 Aug 2026 00:49:28 GMT  
		Size: 90.3 KB (90282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:99b2d181c3f2d2924c06ef4ecb72cef943a9ff67a1bededef4aefb43ad4ad3b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3614013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1237ca7bbb0c9e1ddabf1c9a44abbabdf4a0068a1f70abb36ec04ecc809a7805`

```dockerfile
```

-	Layers:
	-	`sha256:0c89d5e0f19714c7c0c658c1708ba5c42ed048326be831708117bf15245f49c5`  
		Last Modified: Wed, 05 Aug 2026 00:49:28 GMT  
		Size: 3.6 MB (3600109 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7b4be7c024c7c927884eb6102855a7907f295f9250e086d07a33c50964c1b58`  
		Last Modified: Wed, 05 Aug 2026 00:49:28 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:forky-non-free`

```console
$ docker pull neurodebian@sha256:ec7035beda6fb5a7ae6d161d4bd9915d7732d2a776ac2698e9d498d08ee7e874
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
$ docker pull neurodebian@sha256:cd8b502e2c147f5bf1d165130a5304ff25a0201230a2e66c9772fd6506275fa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.9 MB (60904915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf767ca6e4d8cf0d6c04eb3673ed3308392475634289e5a860836d80099de9f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 00:48:19 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:20 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:48:20 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:48:23 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:23 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:a9d7b479042d051e643bab1c85ff0f6599260e4745f41b5274612a5bdc6fde05`  
		Last Modified: Tue, 04 Aug 2026 23:52:17 GMT  
		Size: 49.3 MB (49331702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2542ab8a72d1a57e4ecbeca684de22f393177fd2ad182e2264ae04b19d682c8e`  
		Last Modified: Wed, 05 Aug 2026 00:48:31 GMT  
		Size: 11.5 MB (11479882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a95255c0d282dfe2a85f71ab8fdd4685c15fa9f0a9a5791fd9e0478179eb0f3d`  
		Last Modified: Wed, 05 Aug 2026 00:48:30 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a6ae5dd7804ddee8ffd56e3f44b3f9f16f6bab097305cefcd9f7c1359174b4a`  
		Last Modified: Wed, 05 Aug 2026 00:48:30 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994259980ca18a5eb9357d2bf9c6ef96ac116158d07e8352b450e33c226ce7db`  
		Last Modified: Wed, 05 Aug 2026 00:48:30 GMT  
		Size: 90.0 KB (89978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed6e6a7b133781b648cd018a5f902f2ad8b20bfc8af5fa7ddcf6de2fb290ef2f`  
		Last Modified: Wed, 05 Aug 2026 00:48:32 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:85fd4f14414e8b81e0194e7f37dc0739765493ac6617e92645de64a41599f363
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3618256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:603d98146f47973c6b551ebbc544104479936f112ac76685ae5e5add12590c7d`

```dockerfile
```

-	Layers:
	-	`sha256:6be6ebb60f6745d0f471b6f69c462558f6d507d9089d0ea440e10ae6253c412c`  
		Last Modified: Wed, 05 Aug 2026 00:48:31 GMT  
		Size: 3.6 MB (3602297 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd942959b690fe2abbdc69d1238286aa056fa5ef00ec301346fef1c36d87c4e7`  
		Last Modified: Wed, 05 Aug 2026 00:48:30 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:7c969228828acf0e5bb213551368c7bf9e51f946c08772f005ff0691a9534c74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.6 MB (60627441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bad360c51d6e9e9f53f7a1e5abd00175529e0901a48bbf050b7d57f826b4b910`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 00:51:08 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:51:09 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:51:09 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:51:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:51:13 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:bfcb34026e1133159b75d54bd9ab0e7c3b167036e1a86690a2e97c22d8614806`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 49.4 MB (49361777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aedd3fed54875886f702d83a0523fd753c01abb243df2188407635e214039bda`  
		Last Modified: Wed, 05 Aug 2026 00:51:21 GMT  
		Size: 11.2 MB (11171747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1820043a4d5ddee6af1947d2c450d1106b14d88f73e081e6e267209ce0c79c8d`  
		Last Modified: Wed, 05 Aug 2026 00:51:20 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42e72d3cb57757cf7279d7dabd8fa283858079e6bdac3731c1aa4fad3c49cd83`  
		Last Modified: Wed, 05 Aug 2026 00:51:20 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:248f6abd58cdad93f7d50aa9dd93b6f9699134a4917d07c3370d14b59058423c`  
		Last Modified: Wed, 05 Aug 2026 00:51:20 GMT  
		Size: 90.6 KB (90568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88f56aea95813da6e1dbb518bff3a958d6d91308be8f563a8af58b1a8d898e68`  
		Last Modified: Wed, 05 Aug 2026 00:51:21 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:103cbec19bd03d3bb027f46bb734079a43b14c92d0e6ddfa0843d9fa3b954e3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3623156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58af5309396556f2cbf5a06b4ddbc651dae7fc0bf98a941ca4c26e340b255457`

```dockerfile
```

-	Layers:
	-	`sha256:3b1f2f0dd4c3aecb670406edcd4f190c6fab4b8239dc70b8cf9bc5ea3396b3e8`  
		Last Modified: Wed, 05 Aug 2026 00:51:20 GMT  
		Size: 3.6 MB (3607057 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6ebec002d03a971a20200f8c0566682374fa6351a45e0c7d42e15465cf4b827`  
		Last Modified: Wed, 05 Aug 2026 00:51:20 GMT  
		Size: 16.1 KB (16099 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:1919514b15c9614d60db97ec901e31d6d575bade2f5153d264aac11847225efb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.5 MB (62477353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0934c61bc7e565bff3be08f7a02492070ca18858350c3e36340c712fa2b1b507`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 00:49:18 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:49:19 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:49:19 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:49:23 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:49:23 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:5ee9cec7ecffffde5454be1577dcc2e874bcfbeb92f7c0c58c02330aa3cd53bf`  
		Last Modified: Tue, 04 Aug 2026 23:51:46 GMT  
		Size: 50.7 MB (50668690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9040e73ec7930a0aab4989400c215473f1bc7f0f9dd88c0f7971fd63bf320d35`  
		Last Modified: Wed, 05 Aug 2026 00:49:31 GMT  
		Size: 11.7 MB (11715009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6d820fca052fcab0d3e160dd31e235282626e77f8da137ac36604d69827dfd`  
		Last Modified: Wed, 05 Aug 2026 00:49:30 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9675bbb3f78ddbc8bc970773424f21a59b5bb1922cacd5d7bb842113598e887b`  
		Last Modified: Wed, 05 Aug 2026 00:49:31 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4767fd126f935d2f8038a830d848ef7692460428e848758a4dccc5d234c760c`  
		Last Modified: Wed, 05 Aug 2026 00:49:31 GMT  
		Size: 90.3 KB (90300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:092c3cf0a2b78e16f80c9de19a238c14401830581cf10cd9b54f7ba4f7419658`  
		Last Modified: Wed, 05 Aug 2026 00:49:32 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:d080cf48569b9abc89a8f7cd5db44c3fd51ff9b06dd081988f4043175b8d804f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3616074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58be7161bb95555e8e03b575a926913d64cef1e66a016803e1db223a015ef097`

```dockerfile
```

-	Layers:
	-	`sha256:ac05026957357939ee7a016b9efda372fe6d734ef8c1be8eb93998c311a86930`  
		Last Modified: Wed, 05 Aug 2026 00:49:31 GMT  
		Size: 3.6 MB (3600145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e27b223454e27a08feccd0e01e33750e5c1d3130d073399244648b6e28bc5e37`  
		Last Modified: Wed, 05 Aug 2026 00:49:31 GMT  
		Size: 15.9 KB (15929 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:jammy`

```console
$ docker pull neurodebian@sha256:ab9cf4485871c3dd9eb47fb2e2981df4e3b0c3ac32f98617afa0762be33b015d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:jammy` - linux; amd64

```console
$ docker pull neurodebian@sha256:700b0aafbbee0e55d6c7f085a18b07d65a5c97631d1f500235df0d0491fc9fd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33475045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4e3b5ad3dbe3e712dd0c2a1535c4f52caab81ea5d777b78ef6aeb31217d114b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:42:30 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:42:31 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 04 Aug 2026 01:42:31 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 04 Aug 2026 01:42:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54d8ef2e44a3a69d0281ba6056017f4fad3396a2b62aab843e3cc4ab69819dc0`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 3.6 MB (3624910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f9a2366387c8c2defc5160c07c6cb7b1fb0de930a7c424b0f2ec41b1a345d15`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:419775e147df7fbfb49fbf5490a6691ba9050fe5d0d2e6129143bc6768e1a625`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66390f9da5ab1baa263edca144e8b56c9393f315e3e7a79d8db9404921bc8f94`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 111.4 KB (111442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy` - unknown; unknown

```console
$ docker pull neurodebian@sha256:5d8ceb9365030a8e7eb95c1a912292a4da3ded5f2d4c92d0703b1dd9f83dbe19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415433ad84c9e55b31430dfc23d1a6d2ef6cda7e80bd8c442330bb680b203522`

```dockerfile
```

-	Layers:
	-	`sha256:1b6f27002f0e1e8ca98b3c0684cf277db67db6c4fc06de4306743485b849a00d`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 2.2 MB (2198336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4240a77100fb2b8db1a2ac302684221ce33ed23196ae53b936ec17b86655a22`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:jammy` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:833114c643e31673574dd1e30a193c07dcfdb23510a2313efc6905447f6fd46d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31342018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab3fda33941f2a5650a18c9cdce4f81100eb2ddca96e107e3bb602e685b5da1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:05 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:05 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 04 Aug 2026 01:43:06 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 04 Aug 2026 01:43:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37a3effaf5e12b6751acab8afa1205e3390a8aa1477b0fcc985d863d61ca10fa`  
		Last Modified: Tue, 04 Aug 2026 01:43:19 GMT  
		Size: 3.6 MB (3608545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:364052cefec1e8d77a9f9b709718852194bea9cdd07187fa3431fa8de7e51b6d`  
		Last Modified: Tue, 04 Aug 2026 01:43:18 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a5a8482f7b4498345ee397ab396350e6b2cd82ab2839aa66c67119da6b8efa7`  
		Last Modified: Tue, 04 Aug 2026 01:43:18 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13d5d52634cb4d7db7dc1227f9a93f1cfc05a3397229dabe32993a09c7408fa`  
		Last Modified: Tue, 04 Aug 2026 01:43:18 GMT  
		Size: 111.3 KB (111264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy` - unknown; unknown

```console
$ docker pull neurodebian@sha256:28b5ab2cdcbd217dc8ad4b00162049acf35a5021a4ac980ab9110edf2da25fc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db269c6096ff356bf9ff3cce835f78760a0385721a777ecdb805b75d99e16b8c`

```dockerfile
```

-	Layers:
	-	`sha256:c77d99333e658dfec0182fb77e2adfce5c088a525bf0bcf7f42678d59121ede8`  
		Last Modified: Tue, 04 Aug 2026 01:43:18 GMT  
		Size: 2.2 MB (2198596 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3813e8b78957f9a85b1cca01bb65187a5cfcb69f875aade18ad846c662c96aed`  
		Last Modified: Tue, 04 Aug 2026 01:43:18 GMT  
		Size: 14.1 KB (14058 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:jammy-non-free`

```console
$ docker pull neurodebian@sha256:c45fee5d7e11b8d2ea916c4d90720143d07f89856a20f1962d0b8f4ec622b6ef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:jammy-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:9d3b3e9bb9c65c4ae02f92ef8a4ef68614ceb452c8270d9d6b1a211dcbcf9edd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33475320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57fa7b6a6e9ac8d036b365256bc8d35ec6fe97e8fc439aa58f0aabbbf18fc3a3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:42:32 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:42:33 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 04 Aug 2026 01:42:33 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 04 Aug 2026 01:42:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:42:39 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09be92cc852304128454ac5e16f857ba6004281fd0e9d59e65cd0e526671b155`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 3.6 MB (3624905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c286ff70976a5913e2308771c253f55c44793c8a0aaff7cb3cb713a6fd560c2`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0854fc368adab451eb9fe1d7ee8ebe251a17ba6c36c2297f5a4dbe074b50df34`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e229f6659192d466b97213bb05db47042baf2fd47e16cbfaea8798c15f2441e`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 111.4 KB (111434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e996df809c1bcd6dd896942c0dffe075f3e80fa156f30dace8fc0124fb98f456`  
		Last Modified: Tue, 04 Aug 2026 01:42:46 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8d2c9a83bc7d511cfed01a84b71039e6dfd9dd79f73ba083c79e79e5b549a726
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2214535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a95746f99bdc5ea144c0c89f531ce57b0d436768a00d11c16acfc2016c224bed`

```dockerfile
```

-	Layers:
	-	`sha256:664f72a719aa46aa391f13b301762b2a572f3d79a564b252f8c6580315595326`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 2.2 MB (2198372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b885ea1fd54edcfd96293e5c339da2ac5f99fdf413260f917194089db7e6a9e`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:jammy-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:11186fb6700b06c32c3e905b80c5c29941f5ba3d82566cc0618687c1267a3b97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31342339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dfaacc66f7409e55ac0c76bc458d9a4fc08b1baed23320fcf2343aa866f613c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:13 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:13 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 04 Aug 2026 01:43:13 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 04 Aug 2026 01:43:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:22 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80a8a7b7d16848dd296791691322b103014e4a774441b4df04592500121c13fd`  
		Last Modified: Tue, 04 Aug 2026 01:43:29 GMT  
		Size: 3.6 MB (3608553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbd32a8645ca77ff8095d39707c1cce83cc0d5eeb1e11e55a2a597c3698707cc`  
		Last Modified: Tue, 04 Aug 2026 01:43:29 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41d301c93c8c6f5c0ad7dc24ba982c456dfa9626331be78b55159b07c01c6222`  
		Last Modified: Tue, 04 Aug 2026 01:43:28 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23808888cbdba764d05589f9d61dab5173f0e86aaffa49d7e55367fbcef4d1e8`  
		Last Modified: Tue, 04 Aug 2026 01:43:29 GMT  
		Size: 111.3 KB (111294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7eebc2589d29f8f237cdfb08100df726e35616d803e9b28a17dc256e408e1c2`  
		Last Modified: Tue, 04 Aug 2026 01:43:30 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:3def81c72e52c0465ce200717b948bce8c013073206223e64b2fb9dcb0bc4324
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2214935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:187d1e8379c84125e6ec6b67f9cf3cd09cb7978eb9517e11cbb2db7b9ab87457`

```dockerfile
```

-	Layers:
	-	`sha256:9afffeed59fdd2ff685012e8a4a9302b344642f60e98a24a14655062cd748c45`  
		Last Modified: Tue, 04 Aug 2026 01:43:29 GMT  
		Size: 2.2 MB (2198632 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ce7f7934be9010f0b6d7e2b792eeb2efcfb60f61b023ec5b401d3a4bd886d7d`  
		Last Modified: Tue, 04 Aug 2026 01:43:29 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:latest`

```console
$ docker pull neurodebian@sha256:644c5a287068cc8147bca4ab1ebad969b31c65c5a8efae4c40ce1eee2669cc4c
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
$ docker pull neurodebian@sha256:da9fa3beadbc8e2079613cafd1556c01f081fe5a82a28773d4854c2bea3f6560
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59699816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f47e939402bb74f7e3f47884c3fd9994f22968fd200e36aa7ef9c07cfb831d40`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:15:48 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:15:48 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 01:15:49 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 01:15:51 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9964e30d9fb5434c9334f95d28f45c906d01dd79e6e4684dde4a63773f4121e2`  
		Last Modified: Wed, 05 Aug 2026 01:15:59 GMT  
		Size: 10.3 MB (10294209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:309b134cd842dfc5df3b2a7600ec3da893893abff694de12b03515fd91653cc4`  
		Last Modified: Wed, 05 Aug 2026 01:15:58 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20adeb4349b5feca961d919c0712e8a79ee467a90d0ed25fb0267c37c6d9bb04`  
		Last Modified: Wed, 05 Aug 2026 01:15:58 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fadfd81066757c2a2de0d677a7261d0d4f03e8a3911f5dc35f2d4a9a9e49867`  
		Last Modified: Wed, 05 Aug 2026 01:15:59 GMT  
		Size: 90.4 KB (90392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:latest` - unknown; unknown

```console
$ docker pull neurodebian@sha256:2d5c1924576bcbb81bc5b619ff62e8c6519bb7a61a2eba3692e6e58760cd056e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68dd08ae64a38d1d0de1da35a37d4d230bfd50ad8ea386132b34a38eebc481e0`

```dockerfile
```

-	Layers:
	-	`sha256:0b41c229c450a891360e9efa01e4c698bbfa9c869617e06e6152f5c2b5ea3c34`  
		Last Modified: Wed, 05 Aug 2026 01:15:59 GMT  
		Size: 3.6 MB (3614218 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f91615eeea643976af96379c9150c5221768df6f8ccb9462517b17b078e974a1`  
		Last Modified: Wed, 05 Aug 2026 01:15:58 GMT  
		Size: 14.3 KB (14251 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:latest` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:469742e66efe538e9e86f20bd61f46ad4cf134bdf7ba3ebade26a69084730003
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59846662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96976033e649d0208ceb73ef392a2cdbeda62e1f52ea8c52b5c899745378395e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:50:46 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:50:47 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:50:47 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:50:51 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7860c09977ca60dd6c74b10723c05e654b441efb8c943410159153fd67ddce8`  
		Last Modified: Wed, 05 Aug 2026 00:50:59 GMT  
		Size: 10.1 MB (10078848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3489ea7b480bfa1968752531007611b1f8a39498dcc6279eadb4e7650b6375b7`  
		Last Modified: Wed, 05 Aug 2026 00:50:58 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25a7425b1c134919e1f3fa0c687653a9ce95412213d687447cd32d589e409b84`  
		Last Modified: Wed, 05 Aug 2026 00:50:58 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4ee77a3c99f648b2fed60dc08991aacaa1276fd9690f75fec456e38f668ae58`  
		Last Modified: Wed, 05 Aug 2026 00:50:59 GMT  
		Size: 91.1 KB (91062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:latest` - unknown; unknown

```console
$ docker pull neurodebian@sha256:1dc34741ca40ca51ccb015e790023681ac77cc713abb522a9aaf3b5c0beea0c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3629496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b9ef576bedba2e010c000c48d25496749eeffb1c3713b7bf324f2165f6f627d`

```dockerfile
```

-	Layers:
	-	`sha256:5dec153d6a036c7b47bd70afd38090facc60edc6c465909b1f30aa370725219a`  
		Last Modified: Wed, 05 Aug 2026 00:50:59 GMT  
		Size: 3.6 MB (3615108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d733fd6259df17d6c3713b86316c42a5e1a64c5cfea7ea98f0419db4be1ce960`  
		Last Modified: Wed, 05 Aug 2026 00:50:58 GMT  
		Size: 14.4 KB (14388 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:latest` - linux; 386

```console
$ docker pull neurodebian@sha256:bd5afe6199b66a30dc1f829c8c3982014a30754cca8a0f9bc1949cb7f81c0940
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61393032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fc3d18e54edef2458dde665c221fa10ba7d4d821c94878fbc6eac5a531c57d2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:48:56 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:57 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:48:57 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:49:01 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7675708177d5a41df755bb146c3624b6c71f646d85f7bcb8f5f3bb587af896f8`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 50.8 MB (50831168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57e21e16dc9460da177f9a39e5588b0bef1c3e8a68f91cb0a0f4dc7550d991a4`  
		Last Modified: Wed, 05 Aug 2026 00:49:09 GMT  
		Size: 10.5 MB (10468187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bd9649fc945a5341fff8b413beffe7f7422145544c93a20b06d8a440c632543`  
		Last Modified: Wed, 05 Aug 2026 00:49:09 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0aa0fc22dfc72c9a4e9688ecd1f2caf9aaaf884e9510cb700bce39b2b07c791`  
		Last Modified: Wed, 05 Aug 2026 00:49:09 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32e961075bdc7d293611393d20ebab1f6b0de9f64d8094c4037772f1145d6700`  
		Last Modified: Wed, 05 Aug 2026 00:49:09 GMT  
		Size: 90.8 KB (90775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:latest` - unknown; unknown

```console
$ docker pull neurodebian@sha256:3c4ae5ed88411f4dd62cfbb7cbccdb309042b731fd3b2b9c5b67cfe8c32660b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3626384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64eb4d781dd0d2c480f203dd154c68f37cc0922f7a9c36058f712f9db36e1fd9`

```dockerfile
```

-	Layers:
	-	`sha256:28a620dcc3041ff023a5ae4709261f22cee70c531ccc954d3b4c854ac103b439`  
		Last Modified: Wed, 05 Aug 2026 00:49:09 GMT  
		Size: 3.6 MB (3612166 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4dca1b41ce85404e2e1b85b93fe025c53099fff854418a9e1e29ae8dce2a22d7`  
		Last Modified: Wed, 05 Aug 2026 00:49:09 GMT  
		Size: 14.2 KB (14218 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd`

```console
$ docker pull neurodebian@sha256:e5b3478a811c966dfbbc675f56e32c8f26fc33c1f9d6cf557de865ed81cd79d3
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
$ docker pull neurodebian@sha256:e4d949feee66473abcdf54296d6ed339c1ca4ee6fb79ec93986bf77f3b134dad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (60960642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f1d70d7a0f04718da2e71ba4f6a99f5fc665cb46d60aaee34a4d706743a50df`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 00:48:25 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:25 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:48:25 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:48:29 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:15e2aa5eaf636a71504bd52ce7c8344290aaa10d75e6a3774b131afd96ad5ed6`  
		Last Modified: Tue, 04 Aug 2026 23:52:50 GMT  
		Size: 49.4 MB (49387103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ac7134c6d9186ab8b7dbf7bd86e108ca0c932583534551072dc93e66a4b9f68`  
		Last Modified: Wed, 05 Aug 2026 00:48:37 GMT  
		Size: 11.5 MB (11480633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faf142ab5c8529c14a0b3ca92c8dbb817b8e76a2d941267e919da0fc1dc001fb`  
		Last Modified: Wed, 05 Aug 2026 00:48:37 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b095fb3c4659027c4690f7fa055f22a317c32e177865471c6e483419e94ce7db`  
		Last Modified: Wed, 05 Aug 2026 00:48:37 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce7a12b49549448c9fc19013fb2e953e5c18219c66206b8ad9ecf1d30beb30ef`  
		Last Modified: Wed, 05 Aug 2026 00:48:37 GMT  
		Size: 90.0 KB (90006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd` - unknown; unknown

```console
$ docker pull neurodebian@sha256:611a86c70aa98ad5b47739f0461cff091d4836b383a13a31f2200a7a5eb576c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3616771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f3796d6f3233472aaa457c25bc4089a78f7afeaf27addfa86756622b4d1f9f2`

```dockerfile
```

-	Layers:
	-	`sha256:983ba173983df8070b4d53352d054396e5c5b23a5d0af14dc4544d41af3d6ae3`  
		Last Modified: Wed, 05 Aug 2026 00:48:37 GMT  
		Size: 3.6 MB (3602867 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e47c5627f1f788f4a0bffa897e954480405b122fa6a60f8eda592b5738846a5`  
		Last Modified: Wed, 05 Aug 2026 00:48:36 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:291b503c99e0d73a6628d4d62261df3fa79821563c4795a1aae7268e06b753e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.7 MB (60666545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32fe1be692cdbeab0e1230fd12a01c2214b04f27acdffb33d65ed5e6cc6521dc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 00:51:14 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:51:15 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:51:15 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:51:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a57a6e9c43887a045814a2d7cd84754b3ba6bf85c26bb62c1127277b311f9c9a`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 49.4 MB (49400019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e5f408bd1fc578cec4baeb1babee5b5d78a456ffb383cf9af946bcf7b74cd15`  
		Last Modified: Wed, 05 Aug 2026 00:51:28 GMT  
		Size: 11.2 MB (11173050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c72242cdf8cbd754e7612b1868535ba89cc291d980a4610dfd05f34b7ef1515c`  
		Last Modified: Wed, 05 Aug 2026 00:51:27 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02cf380e473f0c471ba1236fc44d87ca948ddcb63c4972472829113509242b9c`  
		Last Modified: Wed, 05 Aug 2026 00:51:27 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b8e4ecd1b6e8ddf52ee5eefb653221bf39b6e70d2a022995076ef16b2111953`  
		Last Modified: Wed, 05 Aug 2026 00:51:27 GMT  
		Size: 90.6 KB (90571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd` - unknown; unknown

```console
$ docker pull neurodebian@sha256:929f85f59e26ec149054590e8f8a65699d912a065eed01181106fef7cb539dbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3621656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c8c0f639d6dc6a443b598d2c038b5a1e50b3e399a691a25abf53130a3c16004`

```dockerfile
```

-	Layers:
	-	`sha256:090cbeac22757c773fd9abc63e9df89995e76f10e25eda6aebb3be7c9d9e6be7`  
		Last Modified: Wed, 05 Aug 2026 00:51:27 GMT  
		Size: 3.6 MB (3607627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:829a6c2285a45286a44f4e84ca054f6bafd57cdfa3862d6977d4a69626555393`  
		Last Modified: Wed, 05 Aug 2026 00:51:27 GMT  
		Size: 14.0 KB (14029 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd` - linux; 386

```console
$ docker pull neurodebian@sha256:f5cf06294f5f4a698404b3d77105647df7590afc6cf4860dfa9aa66c71f19bb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.5 MB (62512791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:397cf6d1fbe4aab0520ddcd98588996616e929baaeb77a0b5c7e291ca60c2803`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 00:49:26 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:49:26 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:49:26 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:49:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:46c18deea7a8f421b1ea61707aa4ea39097cb49d62a1dd51ef6283de6649d1a0`  
		Last Modified: Tue, 04 Aug 2026 23:52:40 GMT  
		Size: 50.7 MB (50702480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b61b6a4ebfcdd6c039a5d180b3b18ee9ce5f66d37284539c979790961740005`  
		Last Modified: Wed, 05 Aug 2026 00:49:39 GMT  
		Size: 11.7 MB (11717131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc6073913f8cb705a9aec08618482d9761a122261be2de0f833392631f86c455`  
		Last Modified: Wed, 05 Aug 2026 00:49:38 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:177f415b570fd12ef60e0a16ab11e8ccc56e5baf4f10835fc3e867424c7a4f83`  
		Last Modified: Wed, 05 Aug 2026 00:49:38 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b9537caa03c7712f8d28198d60d1f6a4f9e8dd00db7a7fbff841482a843475`  
		Last Modified: Wed, 05 Aug 2026 00:49:39 GMT  
		Size: 90.3 KB (90280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd` - unknown; unknown

```console
$ docker pull neurodebian@sha256:f193c2e371e2f9f1d52fe459fea3ba1ff8ae969664f568f78e6b81053353084e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3614592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:784814d1701414a627f888af1b9583c9b7510095d59732792c48b86d01d4659d`

```dockerfile
```

-	Layers:
	-	`sha256:b4653c22cd2ccc6793f480866a029bb2486bf303f33704212aac9ccc971f8c03`  
		Last Modified: Wed, 05 Aug 2026 00:49:39 GMT  
		Size: 3.6 MB (3600716 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37242d26b4196205e663f47ac61fddf3bb3f2b3194d2e4339ba233c6f67e24de`  
		Last Modified: Wed, 05 Aug 2026 00:49:38 GMT  
		Size: 13.9 KB (13876 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd-non-free`

```console
$ docker pull neurodebian@sha256:f538ef333f6243f432f5deb8e765738dd95de4940b54656b571b29335d4acd04
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
$ docker pull neurodebian@sha256:a517bec7cb748d22ae6af5b510e1b3d467f4c61e5492ecd2f04b0606d246c425
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (60961028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b165de0a330118e6b12915224182432e5fb889b13f9e69104997e740891d586`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 00:48:31 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:32 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:48:32 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:48:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:35 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:15e2aa5eaf636a71504bd52ce7c8344290aaa10d75e6a3774b131afd96ad5ed6`  
		Last Modified: Tue, 04 Aug 2026 23:52:50 GMT  
		Size: 49.4 MB (49387103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bbb6ac21fc5892e1a8ff342e50e311b39a8e5fec46f8383ed1d9aa3e8766862`  
		Last Modified: Wed, 05 Aug 2026 00:48:43 GMT  
		Size: 11.5 MB (11480617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea0bf181760602197ffc2aa976ac06ef2f43b0ee5d2c77c86a8ad274ea72607`  
		Last Modified: Wed, 05 Aug 2026 00:48:43 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecaf90a410e36f79e6b709068db298b806c80893bbf8ca73fbf2c86deefecbeb`  
		Last Modified: Wed, 05 Aug 2026 00:48:43 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99af9fb1def61d0100b48ba91ea7f44459f12f1d04ac759e36c0710feff03167`  
		Last Modified: Wed, 05 Aug 2026 00:48:43 GMT  
		Size: 90.0 KB (89987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c91320f1d8e47dac87633dfa3b46cb628bce959f1fbdb6e1a15f142af119966e`  
		Last Modified: Wed, 05 Aug 2026 00:48:44 GMT  
		Size: 417.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:5c4f0dbee1ca743295e147492f8d711416a513b07e5bc3a82f5530ba782b69e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3618833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:297c218566363e7c9fb637408366fb0ee2a92c3dc1b6a260b34cc7a4ce6a7459`

```dockerfile
```

-	Layers:
	-	`sha256:5deeec1ba8d8730d5d657a098a1c7efe7df25241092aea35113fbc2df4b1e2f2`  
		Last Modified: Wed, 05 Aug 2026 00:48:43 GMT  
		Size: 3.6 MB (3602903 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f98a4f5f150fca2ccd44e89b75565586db6d03a65ede8b1a21b9d89b45154f84`  
		Last Modified: Wed, 05 Aug 2026 00:48:43 GMT  
		Size: 15.9 KB (15930 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:0ca7489f4fa8cf2dc3cd8f46ac54a6e4e9841c385f948710a734bf4fb590aeb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.7 MB (60666942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30d6f586e36615aa0ed2edb29b8fe1cbc1ad6dee1ff6d8dff780ab7b7fd80c18`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 00:51:22 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:51:23 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:51:23 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:51:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:51:27 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:a57a6e9c43887a045814a2d7cd84754b3ba6bf85c26bb62c1127277b311f9c9a`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 49.4 MB (49400019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddf2d9d5bb2a0959df03542a40f26e280b90df35f55b4f681a125d447fbeae26`  
		Last Modified: Wed, 05 Aug 2026 00:51:35 GMT  
		Size: 11.2 MB (11173014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bda602f8aa7919129d4b57be026464d392e944f39f2908d2d115ea4cedb8c107`  
		Last Modified: Wed, 05 Aug 2026 00:51:35 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b951938346c22eac5ef00db9db2be92fd44ef646dad0ddaaf4fb7f60845d76`  
		Last Modified: Wed, 05 Aug 2026 00:51:35 GMT  
		Size: 267.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02c57bf1ec072328abf9c0fca91897d245ecdfee063325dddde8a8ceae1502cf`  
		Last Modified: Wed, 05 Aug 2026 00:51:35 GMT  
		Size: 90.6 KB (90587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28f038e595411cbb5cee2ebf767ff1e7227bb8fe26156da129de22844da9c729`  
		Last Modified: Wed, 05 Aug 2026 00:51:36 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9fdaa1a37f580dcc687ece9cedb83385838fb0378bcc968d00cc135809f5d49e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3623734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f999f8eaf2b563690795b5474d0205985c3d79420677b64c703ae415149e7b8`

```dockerfile
```

-	Layers:
	-	`sha256:75feb8b951439927c06cfd4a8f3a2cde3afd251aaf61ca25d9abbd29397ab54c`  
		Last Modified: Wed, 05 Aug 2026 00:51:36 GMT  
		Size: 3.6 MB (3607663 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16358083f44e51c86828cd51dfb33eb25df2af5b37756ea2a28211cfacdb703a`  
		Last Modified: Wed, 05 Aug 2026 00:51:35 GMT  
		Size: 16.1 KB (16071 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:fe60b20ca095dda236b920134d734907392172b5dd41e2c41912ac86a109970b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.5 MB (62513117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9503a032ac6b804cb08e9dd55387ce5d35a5f7caa9f8a14c7862443b6a8ed890`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 00:49:41 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:49:41 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:49:41 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:49:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:49:46 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:46c18deea7a8f421b1ea61707aa4ea39097cb49d62a1dd51ef6283de6649d1a0`  
		Last Modified: Tue, 04 Aug 2026 23:52:40 GMT  
		Size: 50.7 MB (50702480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39eddf4229305dc6c3498743cbbb5e68bf7fbb516f0f84881016258abb1a7445`  
		Last Modified: Wed, 05 Aug 2026 00:49:54 GMT  
		Size: 11.7 MB (11717094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b96cf8a4b5cfcff36eedeb03ddfa55e374cd08be0769f5d989875aedccc5629`  
		Last Modified: Wed, 05 Aug 2026 00:49:53 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb2f1ff8fbab6120b5f36cfa66fcc2c5722a826f6d16980473da2469f59ae1fd`  
		Last Modified: Wed, 05 Aug 2026 00:49:53 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bda6ee3a1393b24dcf2bce18232647935d8d443a15467daa3ebfa4a3c24fe834`  
		Last Modified: Wed, 05 Aug 2026 00:49:53 GMT  
		Size: 90.2 KB (90224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b4ae6b30509f4045a31e4afb3050919e54492a48ef3ac74e49846022817140`  
		Last Modified: Wed, 05 Aug 2026 00:49:54 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:5ffa1f8b2d0d26f1dd1735a891a4c06310763ac617a84e0ca48c5a01ae87b7dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3616652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d001c1dae08f7909ef729ad1fe824748a9c848819b400d3372da83f3459420b`

```dockerfile
```

-	Layers:
	-	`sha256:195fd32f7dc6f306210c13084e1ea04ca48fff56d8c30ebf393de3e97f32b0a8`  
		Last Modified: Wed, 05 Aug 2026 00:49:54 GMT  
		Size: 3.6 MB (3600752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f18828331a6cac198b6d5bdd2afbf27c5b12db9beb1fada7d7653272a4ac3073`  
		Last Modified: Wed, 05 Aug 2026 00:49:53 GMT  
		Size: 15.9 KB (15900 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd110`

```console
$ docker pull neurodebian@sha256:26d47a64768a02ecdb3406c63933b155671583571a7c0ed3d57e30dd03dbb732
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
$ docker pull neurodebian@sha256:29c228f5ca98d795d4438c3c80e0fe359a6f1d76d8a3af8b0f9f557e33a62fde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64983913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f89f35adb6b40dfccb7fda1fab8584f7b2d945bcfe0f53f9a1e5d7c414ae9d96`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 00:47:46 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:46 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:47:46 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:47:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3988d06f3f06f3601312c1e62ef7796d2b429f1182be8e2176664e1d700f3275`  
		Last Modified: Wed, 05 Aug 2026 00:48:02 GMT  
		Size: 11.1 MB (11103387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2048def7c041e67876b2813bfb93777b3fe20ff8d9f2028380fda61b491ec649`  
		Last Modified: Wed, 05 Aug 2026 00:48:01 GMT  
		Size: 1.9 KB (1892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6ae0ca2eb0a3ac90ef54db2c1544f29c898fcb19bfc5c84259f67c3c0c0b1b7`  
		Last Modified: Wed, 05 Aug 2026 00:48:01 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43e85d92ddf7f1e9739907d865069bfa9de4d5fefa4bd5752373ba7afc296b5a`  
		Last Modified: Wed, 05 Aug 2026 00:48:01 GMT  
		Size: 101.3 KB (101350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd110` - unknown; unknown

```console
$ docker pull neurodebian@sha256:38a4678b235b0e44b2f219ef11fd1cc2351d181801be88341c1df8f89876880f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4381883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b39c1d7c9f323348e8c99409afd7cf9aaea5775c4e5167ea502b2fd72c906df7`

```dockerfile
```

-	Layers:
	-	`sha256:e563ded3d09a5225414b5c07a14c3c95544e58549e3e397d13876a02b30e4583`  
		Last Modified: Wed, 05 Aug 2026 00:48:01 GMT  
		Size: 4.4 MB (4367918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd321b38463ffaafa0f1e7879174a87eb35593dc71a5bc933ecdd820d2739127`  
		Last Modified: Wed, 05 Aug 2026 00:48:01 GMT  
		Size: 14.0 KB (13965 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd110` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:66d3ea34a87d6ce1f0a3e836948973cc944a624de76759ae7e8655658ef45c4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 MB (63474256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e2e9a5a187f02f04b79fda7e20fa5e92b8c047265584ed6b578d9ab6ec64798`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 00:50:15 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:50:15 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:50:15 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:50:18 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6884bcaad9c60c0645a822147208ba9b4ce1a98b0b0dc73c0578e784cb90850`  
		Last Modified: Wed, 05 Aug 2026 00:50:27 GMT  
		Size: 11.1 MB (11109960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf6008e633c5cc31de5b7e42d8b7e5428a50102fb6eca01e99ac6433b68e0fc2`  
		Last Modified: Wed, 05 Aug 2026 00:50:26 GMT  
		Size: 1.9 KB (1892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70f20e79d45558178332c1359d3a25849155574fd79f9550efa51cb6d6c7e5b5`  
		Last Modified: Wed, 05 Aug 2026 00:50:27 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53e8befad99656993a8d33ce452e1375779dbd7c80169a3d9eaceef398b9a8db`  
		Last Modified: Wed, 05 Aug 2026 00:50:27 GMT  
		Size: 101.2 KB (101237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd110` - unknown; unknown

```console
$ docker pull neurodebian@sha256:e92175931b1136c4db049c4df5f5056a1fdd49a8a19a737884625d0d8fd01803
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4381616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dfcc446595e0ebddf0349a97c9143fb36baf3a2701d98636b12b39b8d07d95a`

```dockerfile
```

-	Layers:
	-	`sha256:7476fb9a56e57b715ad73863b0ff4fb4e283d79cc5515242360d3c5c6d6febe6`  
		Last Modified: Wed, 05 Aug 2026 00:50:27 GMT  
		Size: 4.4 MB (4367525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e1e5e3a4c20b9c14d630459943672fac078e5c0761209b6d1f335c4af701b95`  
		Last Modified: Wed, 05 Aug 2026 00:50:26 GMT  
		Size: 14.1 KB (14091 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd110` - linux; 386

```console
$ docker pull neurodebian@sha256:9da3844050b07a4ca1bdaf412ebf96e2f3defb3d3e53c5c399b1fa47ce938d48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66321623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aca5e242c4699d785c216bacc3567947c8cc25c0aa0287a08edbdb291383b009`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 00:47:52 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:53 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:47:53 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:47:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:510e82e1d8f7e507a25b2b91429b3607a4e44770b2af5695503b845da3629ad3`  
		Last Modified: Tue, 04 Aug 2026 23:52:02 GMT  
		Size: 54.7 MB (54715733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8a82b60a9f61e5f0302bbb9cfbe8a0d57ca89ba2068fa73192d61b2432fc9f9`  
		Last Modified: Wed, 05 Aug 2026 00:48:04 GMT  
		Size: 11.5 MB (11502429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9f4d08cdc3a1e36b22f517ea3dec9c3eef8a50b671f7c6c53987264c4713b5`  
		Last Modified: Wed, 05 Aug 2026 00:48:03 GMT  
		Size: 1.9 KB (1894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48e6b8befcb585c9d28d98aa04d26d9e06c96c17ab77121654f4b9d93935d888`  
		Last Modified: Wed, 05 Aug 2026 00:48:03 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98a7bc81fcaebed0c30f9862f0eb121dd307c13065a258e46c2eead36a80b6bc`  
		Last Modified: Wed, 05 Aug 2026 00:48:04 GMT  
		Size: 101.3 KB (101303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd110` - unknown; unknown

```console
$ docker pull neurodebian@sha256:178b544b776c856c87d0a99250ffec30fecbac1775dd2eafc15d4e7bfd3d0740
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4378375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:342d7268af5804a3a7caafa96580a8e6e6d113c146c4c573f9c8590647227a65`

```dockerfile
```

-	Layers:
	-	`sha256:c00d02fdd3ca89af317bd632cc92e86ba7d5977f58ce305095c02f3c12364ada`  
		Last Modified: Wed, 05 Aug 2026 00:48:04 GMT  
		Size: 4.4 MB (4364437 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac26e4561ed4566558e66dc7a794e1c0e2b4b6cbb01bd79fd1ab1f4d88050adc`  
		Last Modified: Wed, 05 Aug 2026 00:48:03 GMT  
		Size: 13.9 KB (13938 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd110-non-free`

```console
$ docker pull neurodebian@sha256:7e32f865e967a04acc9f0cee1a4a203cfd7531d1032e2bd23dfb1ac53673c6d2
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
$ docker pull neurodebian@sha256:2245f2ed413383c3018fdb74164d84530dc6218759aea163e8c23b609b523784
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64984254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f18bf5523433288a0caf9fe9413da50129fc3c04f2c43fcecbeffb4ed281da6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 00:47:56 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:56 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:47:56 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:47:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:59 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0643f2f6b71c490558be432ed9fb06e95e11fc2caff9464a83b7c81b4e28d502`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 11.1 MB (11103357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cad616799436cbba8cd2a947bd17acec666ca84f39477211b5d38eb1c0206e60`  
		Last Modified: Wed, 05 Aug 2026 00:48:06 GMT  
		Size: 1.9 KB (1891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:459088abf398d2f6cd51967239a03942e045e4f7a934f4f11e3a46ec9d6402f6`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7655127a9239951525750a20b8e9e8686b0cc540d9283023c3b552ea543aa67d`  
		Last Modified: Wed, 05 Aug 2026 00:48:06 GMT  
		Size: 101.3 KB (101334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60457a585b337ef8535b14f00d69d80fced8b01033380bfe7a850bb71282cb07`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd110-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:2703fb13a51186821596d2009b2303870f7d38e561ed022f8e57983bb0a631b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4383948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bd6f8437db57953145b0279639169867dff0f88ec6cbf9bfa6cdc4554878cba`

```dockerfile
```

-	Layers:
	-	`sha256:c6d3103d219ab0786a6bc6274eec1b20a483a61475377f0695ba13c35f03df84`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 4.4 MB (4367954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f95792bc7f12105ab4f96c39f324db6e156937d8c685300da78f77df62f105f3`  
		Last Modified: Wed, 05 Aug 2026 00:48:06 GMT  
		Size: 16.0 KB (15994 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd110-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:dbd8b91332a3ceee0b7037c0a0f3abce7876119f5ec17009ba8ead0e4512e894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 MB (63474621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff3baab23d1def34e07ec5da0ce4538efcd551c776e719a3c315e1a279902a81`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 00:50:18 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:50:18 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:50:18 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:50:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:50:21 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a619fc3b3608889856f894daea54efa74c3c8571c7f05051d31ffe0666d366d8`  
		Last Modified: Wed, 05 Aug 2026 00:50:33 GMT  
		Size: 11.1 MB (11109919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0eab6ef9641ed9a4bc69f19e1f3f02965a88cdcb118c06d98eb907306de9d8a`  
		Last Modified: Wed, 05 Aug 2026 00:50:32 GMT  
		Size: 1.9 KB (1891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faacd3a39777e1a2195da502d891c6dae4a9599f8a1054112e795ce4aedc8129`  
		Last Modified: Wed, 05 Aug 2026 00:50:32 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c41ab9c351a49bf1b2fec678eac1a044c7d21d2be620a82249969ae141832014`  
		Last Modified: Wed, 05 Aug 2026 00:50:32 GMT  
		Size: 101.3 KB (101257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4009bb01e2b5df3a0ea123c737c87dc0c514a16db494400dcbce672d8ffa26f`  
		Last Modified: Wed, 05 Aug 2026 00:50:33 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd110-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:3a408178498bd7cc1fee5e787e4aa6bbcbf58511e7dd272515043bbc8adeef00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4383693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f19eb9d9023ba3c428fdb3aa76575d9210374e8a3772038f4dd9902ee5f014e`

```dockerfile
```

-	Layers:
	-	`sha256:a788517ce89091ac20fcd1513f29f8ecdbfeb0498f617d89abe339657d831b41`  
		Last Modified: Wed, 05 Aug 2026 00:50:33 GMT  
		Size: 4.4 MB (4367561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3dbc601d9780d8dee70f3e3062d37e339a6c0dd53fc4d8e5c19b121b94aba5f7`  
		Last Modified: Wed, 05 Aug 2026 00:50:32 GMT  
		Size: 16.1 KB (16132 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd110-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:20e724201ab3f8ad3ac69630fa9f856bbe436ce6a0d064f1fd3098e7c9dc1208
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66322011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bb826c0a71fdae7a883829e6577aa29e3dcedcc14f1ce2f8e2393d7f54e1850`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 00:47:52 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:53 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:47:53 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:47:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:10 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:510e82e1d8f7e507a25b2b91429b3607a4e44770b2af5695503b845da3629ad3`  
		Last Modified: Tue, 04 Aug 2026 23:52:02 GMT  
		Size: 54.7 MB (54715733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8a82b60a9f61e5f0302bbb9cfbe8a0d57ca89ba2068fa73192d61b2432fc9f9`  
		Last Modified: Wed, 05 Aug 2026 00:48:04 GMT  
		Size: 11.5 MB (11502429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9f4d08cdc3a1e36b22f517ea3dec9c3eef8a50b671f7c6c53987264c4713b5`  
		Last Modified: Wed, 05 Aug 2026 00:48:03 GMT  
		Size: 1.9 KB (1894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48e6b8befcb585c9d28d98aa04d26d9e06c96c17ab77121654f4b9d93935d888`  
		Last Modified: Wed, 05 Aug 2026 00:48:03 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98a7bc81fcaebed0c30f9862f0eb121dd307c13065a258e46c2eead36a80b6bc`  
		Last Modified: Wed, 05 Aug 2026 00:48:04 GMT  
		Size: 101.3 KB (101303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d8699b0dc1b0bac1502523b758e231d9c3a9846e621bc29acd3bcac29f67477`  
		Last Modified: Wed, 05 Aug 2026 00:48:16 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd110-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:e977d253c03abf7aa9d63ea2e3e67f562b8d03f180a93feec3b365d8d0e51685
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4380437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5e6d54ae003ae23eec3dbec8a1888093efc55882005da9642759975c34c1a19`

```dockerfile
```

-	Layers:
	-	`sha256:70690fca471aa44bc958293040e0a13921f4d06b5d3625208792af76a9e3d03c`  
		Last Modified: Wed, 05 Aug 2026 00:48:16 GMT  
		Size: 4.4 MB (4364473 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:026f3f696079b329d1e4fed95a0ded151146b777a5c5c777ddf4a44022a7ee1e`  
		Last Modified: Wed, 05 Aug 2026 00:48:16 GMT  
		Size: 16.0 KB (15964 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd120`

```console
$ docker pull neurodebian@sha256:77a4dff847b09ff1f4e36c1ebef9b0ed8350cd6c419a846b536a6bc8ff793f0c
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
$ docker pull neurodebian@sha256:4ac770830f2b0ce665dad7b414177681dc168e88d22fc5265a943ae26626177e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59866199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db0e737989b7a2f4b90e3802d955b4072552aee76b7c5790cd40647cb3cd417a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:59 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:00 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:48:00 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:48:02 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:015b82b4bb72961ba8e76f9104a8a1b0167f64185308ee2f900be67b55f32394`  
		Last Modified: Wed, 05 Aug 2026 00:48:10 GMT  
		Size: 11.3 MB (11273519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df5092e0ea675329471bdbc7e59e58dd9cc40ca9d6ec74a775ab66ff2ce04f57`  
		Last Modified: Wed, 05 Aug 2026 00:48:09 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8eafb32f325341dea27eb2264fba6deb981dea5579b55193671d1db7717abfb`  
		Last Modified: Wed, 05 Aug 2026 00:48:09 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45acc979370ad4bfdcb61af0f88f77629ba397654624a65b80801260b1ad8241`  
		Last Modified: Wed, 05 Aug 2026 00:48:09 GMT  
		Size: 93.4 KB (93416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120` - unknown; unknown

```console
$ docker pull neurodebian@sha256:77e3288cb26d6e9f610298f8870aecab572003e162dff4c508765fc042394f23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4089916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cf3c77399626aa3cfa57601210dd65bffc4ff503e8025842ca4921400dea6bd`

```dockerfile
```

-	Layers:
	-	`sha256:77518e19ab0df19e8c528963c80111f38a22a3de1656ef4a46485dd9fe9d467a`  
		Last Modified: Wed, 05 Aug 2026 00:48:09 GMT  
		Size: 4.1 MB (4075951 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a2d77b995a95ad9eff6fb0503343b618d0eaccc438d3b74a7fc07015fed02c8`  
		Last Modified: Wed, 05 Aug 2026 00:48:09 GMT  
		Size: 14.0 KB (13965 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd120` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:e4adf33b51ee605e72b2121f6d61fc16f64b3b92490e297eb746d99b93759408
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59732108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83871db31165fdf2683b28c5c802df7d63aab1c0f9c2c5af1251ecfca0e48d0a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:50:21 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:50:22 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:50:22 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:50:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3664e955992451d4457a785c511f7c5dce845cdd34c08be11eac6aa82bbc3a2`  
		Last Modified: Wed, 05 Aug 2026 00:50:33 GMT  
		Size: 11.3 MB (11252977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baecc0605ddfc860e35437e7741c210e1ed3ca6040ab3cb10fcbdc44fb1fbe82`  
		Last Modified: Wed, 05 Aug 2026 00:50:33 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63c5dffd56f5f39d0cb00631be4a61c6644286914236070f49acc0b2df2d6615`  
		Last Modified: Wed, 05 Aug 2026 00:50:33 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e169e173082fb0b57e7853d7da646b19120129c4b2883e0eccebe53cf929dcb4`  
		Last Modified: Wed, 05 Aug 2026 00:50:33 GMT  
		Size: 93.6 KB (93577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120` - unknown; unknown

```console
$ docker pull neurodebian@sha256:fd2894dcc967b3fca942348eee9f31e2e0d0e911794e55b3cd1c93a849c7adfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a665cb73c00605e8ba44932efc66b65b03686dc62902ce6940097ab2d19ea3b`

```dockerfile
```

-	Layers:
	-	`sha256:6ae73155024f43303f07eab707d31a32a610b5dceb784c0c66d40f8fa633f650`  
		Last Modified: Wed, 05 Aug 2026 00:50:33 GMT  
		Size: 4.1 MB (4076193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a4680e027f6325daa160eb7b23461054f5ba786dded25d46129e45e09e1b6e2`  
		Last Modified: Wed, 05 Aug 2026 00:50:33 GMT  
		Size: 14.1 KB (14090 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd120` - linux; 386

```console
$ docker pull neurodebian@sha256:6d150744834bbc0923afd5dbfa4cad19224766db4999aa422683b968be5b916e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61273928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbb4c4ac5b4342c8062d9992d82236d012f68735cee8dc8885143299c9c27601`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:48:29 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:30 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:48:30 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:48:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:9e69b691eb95e2bd0553193ab2db36e850c21fc171acd2f9e2fd526557689fc8`  
		Last Modified: Tue, 04 Aug 2026 23:51:30 GMT  
		Size: 49.5 MB (49485121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea35d576d38c218e2ea5c42e8328ec2418a38c6f75e9e7b513318f01b8f0fa3`  
		Last Modified: Wed, 05 Aug 2026 00:48:41 GMT  
		Size: 11.7 MB (11693182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b225a642833127d6df02ec1ae6963305c9878eff478ac1a7c8a9fa841ff3ce4`  
		Last Modified: Wed, 05 Aug 2026 00:48:41 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34033e518fbfdd9fe92e9e1d1b6e5f8d78d22ce8ee96f41d951b66f7ee130b31`  
		Last Modified: Wed, 05 Aug 2026 00:48:41 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6c3dd2453d29e4d1092a5bd56b4c711b657cb0cf7b36baf7950ae328f7b0705`  
		Last Modified: Wed, 05 Aug 2026 00:48:41 GMT  
		Size: 93.5 KB (93451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ce1dbbf14da2b1f5564836782016042ef63500d1aac23f0d6bb79091c9497e8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4087855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7023e96c3707ba2e4d27a08be8ad359b34c9beb5665d3831e5bc96d5be7dd4ce`

```dockerfile
```

-	Layers:
	-	`sha256:6dccc4dd6b22d8763cee038338a87d8ce7c823bf1042b0ac2c3262501a338f4b`  
		Last Modified: Wed, 05 Aug 2026 00:48:41 GMT  
		Size: 4.1 MB (4073918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a194c4e4dae8d61c0c0848796013347159214100ba2b6ff5a66a73b39e346979`  
		Last Modified: Wed, 05 Aug 2026 00:48:41 GMT  
		Size: 13.9 KB (13937 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd120-non-free`

```console
$ docker pull neurodebian@sha256:bd944f079aa8c95d15d1feb79e7c1c83dba2b35100fdcf2dd084f2bb76f4c236
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
$ docker pull neurodebian@sha256:19bdd9503a4512530f1ffad76625dc9374196413d61863362a5d797cbeb4f0af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59866637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78e5ab6110c333045f9cdce676c212a643208f8cba595d21bdb819fbb7597b63`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:48:05 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:06 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:48:06 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:48:08 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:08 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed4aa4694f216b2803314e01d97d6db463e42cdf1e8e8863d2b1b81c773d1f34`  
		Last Modified: Wed, 05 Aug 2026 00:48:17 GMT  
		Size: 11.3 MB (11273517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6ea0d6eb580c1eebe3edfaf7935dbc8e6038f23ef83edeb04e83b90d7d2bbbb`  
		Last Modified: Wed, 05 Aug 2026 00:48:16 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c913e83f91ca8ea934f568370a1efca78c5f1de07f96ee132acedeafcdeb089`  
		Last Modified: Wed, 05 Aug 2026 00:48:16 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b79db4ad5595154517a00b1f1c8bbddf934a450606665e1b2e7c90a1ad45685`  
		Last Modified: Wed, 05 Aug 2026 00:48:16 GMT  
		Size: 93.4 KB (93403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dfc8b591ee7fb3c7e9bc6745868a65f6477472c952575cb62bde79779cca01a`  
		Last Modified: Wed, 05 Aug 2026 00:48:17 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:d66ab4e1b48b23f535bc699edcaf26ad7c899898263265b066e6b50562627bd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4091979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1ac3415a13821f373b7185cb10219983714fed6e02e14d29d3b000e50646a41`

```dockerfile
```

-	Layers:
	-	`sha256:a94e98034cacfd197a9c7aa514a460aa225a3b54a2fc66a4f9b8ebe1de6809d3`  
		Last Modified: Wed, 05 Aug 2026 00:48:17 GMT  
		Size: 4.1 MB (4075987 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d80c91ccb30df1b449992efc778ca0faf712efc3037162737b7f5dc2a71b865`  
		Last Modified: Wed, 05 Aug 2026 00:48:16 GMT  
		Size: 16.0 KB (15992 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd120-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:b093a17325e924e866b916ad79e39761649ff693fd81d45ee2f88dff7636543a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59732507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ddce7227e90e3c6dc11e09bff3fe0816143db48c6f66f51aab395169392f95b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:50:38 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:50:39 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:50:39 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:50:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:50:42 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83c453eb472495e8107fe2d701151501ae6d44e1608f90439829b83141a062c2`  
		Last Modified: Wed, 05 Aug 2026 00:50:54 GMT  
		Size: 11.3 MB (11252928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc84f22361a700d71f5a878227d35b29ae803bda2a00cba3cbd41ad91a6a8bb`  
		Last Modified: Wed, 05 Aug 2026 00:50:53 GMT  
		Size: 1.9 KB (1899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b590072a810a3139b6957e66eb65995ed3cbb5c47d650afaeeba52c55de78bf9`  
		Last Modified: Wed, 05 Aug 2026 00:50:54 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:078f638d57ade2266d05f42f8ec964d8860eb177905fa543ea257436c5e44774`  
		Last Modified: Wed, 05 Aug 2026 00:50:53 GMT  
		Size: 93.6 KB (93580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cede123c0f1cb5bec6d62d614ed34cd8223fba542a798b8558f01aac735bf2e`  
		Last Modified: Wed, 05 Aug 2026 00:50:55 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:45d7af98f60470ef86f47e638f17ec39fdb6b5529542e3417d3b7fe733b0eb8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:681ff349cb86b65ad7df512865a6b0f2032984cb2b4a0beda6902fe1eaee5ba3`

```dockerfile
```

-	Layers:
	-	`sha256:1248d21366921b55025fdfa56ebe2a456fccb019019eba1308aadb73a1e04d7b`  
		Last Modified: Wed, 05 Aug 2026 00:50:54 GMT  
		Size: 4.1 MB (4076229 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:becb91c8556af058268c6d4246b9946c319aeccf9b9484e3b1df5d0aef343825`  
		Last Modified: Wed, 05 Aug 2026 00:50:53 GMT  
		Size: 16.1 KB (16132 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd120-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:44e3ba9a8717c5580b3e782501e268540b8e3fa099f7560a15a28e5e9d0398fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61274387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59e3fad8f2c9e8ec3c816fd57f25f9df116c3292bffb246c82ee7736763b8f3e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:48:52 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:52 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:48:52 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:48:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:55 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:9e69b691eb95e2bd0553193ab2db36e850c21fc171acd2f9e2fd526557689fc8`  
		Last Modified: Tue, 04 Aug 2026 23:51:30 GMT  
		Size: 49.5 MB (49485121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc0c2faaf78fe9238bff71d7a2fcd28fd9efb02271884dede30803d545485fc6`  
		Last Modified: Wed, 05 Aug 2026 00:49:03 GMT  
		Size: 11.7 MB (11693206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15ed638e93aab501a2123bf76c05e2e03f665f10c4d033f33d9ee59588a350c8`  
		Last Modified: Wed, 05 Aug 2026 00:49:03 GMT  
		Size: 1.9 KB (1898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51777bc38753647a5840c681dea16ad3b1f54898f9204fd8cfcc18ab0a560bc4`  
		Last Modified: Wed, 05 Aug 2026 00:49:03 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c73b1b8afd70e42e1dbacc0d9d90178d7d613033ea0b648ec5bf3b008d2143`  
		Last Modified: Wed, 05 Aug 2026 00:49:03 GMT  
		Size: 93.4 KB (93439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e08e7ba6af09c60719b1bd375b78f21f434399430c4ae094995a40f0404ad2bc`  
		Last Modified: Wed, 05 Aug 2026 00:49:04 GMT  
		Size: 451.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:06323129ba2749fe61cb2bd7c97588689e0d515a0e8f4971a232ebab4b57177f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4089916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4d650a1d388868851a8993ad1c9ae075b1cc0dfb2b0dfdf5d84adcf7fc89fc8`

```dockerfile
```

-	Layers:
	-	`sha256:7eaa539be28095c76f7f0e8a60ddf3aceb54d33aff4c4e02660c96190623a3b8`  
		Last Modified: Wed, 05 Aug 2026 00:49:03 GMT  
		Size: 4.1 MB (4073954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12e7953b065799f7f657bb6297ff5f6928b7fc071c5232d750d091a0bdc5ef1e`  
		Last Modified: Wed, 05 Aug 2026 00:49:03 GMT  
		Size: 16.0 KB (15962 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd130`

```console
$ docker pull neurodebian@sha256:644c5a287068cc8147bca4ab1ebad969b31c65c5a8efae4c40ce1eee2669cc4c
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
$ docker pull neurodebian@sha256:da9fa3beadbc8e2079613cafd1556c01f081fe5a82a28773d4854c2bea3f6560
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59699816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f47e939402bb74f7e3f47884c3fd9994f22968fd200e36aa7ef9c07cfb831d40`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:15:48 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:15:48 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 01:15:49 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 01:15:51 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9964e30d9fb5434c9334f95d28f45c906d01dd79e6e4684dde4a63773f4121e2`  
		Last Modified: Wed, 05 Aug 2026 01:15:59 GMT  
		Size: 10.3 MB (10294209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:309b134cd842dfc5df3b2a7600ec3da893893abff694de12b03515fd91653cc4`  
		Last Modified: Wed, 05 Aug 2026 01:15:58 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20adeb4349b5feca961d919c0712e8a79ee467a90d0ed25fb0267c37c6d9bb04`  
		Last Modified: Wed, 05 Aug 2026 01:15:58 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fadfd81066757c2a2de0d677a7261d0d4f03e8a3911f5dc35f2d4a9a9e49867`  
		Last Modified: Wed, 05 Aug 2026 01:15:59 GMT  
		Size: 90.4 KB (90392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130` - unknown; unknown

```console
$ docker pull neurodebian@sha256:2d5c1924576bcbb81bc5b619ff62e8c6519bb7a61a2eba3692e6e58760cd056e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68dd08ae64a38d1d0de1da35a37d4d230bfd50ad8ea386132b34a38eebc481e0`

```dockerfile
```

-	Layers:
	-	`sha256:0b41c229c450a891360e9efa01e4c698bbfa9c869617e06e6152f5c2b5ea3c34`  
		Last Modified: Wed, 05 Aug 2026 01:15:59 GMT  
		Size: 3.6 MB (3614218 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f91615eeea643976af96379c9150c5221768df6f8ccb9462517b17b078e974a1`  
		Last Modified: Wed, 05 Aug 2026 01:15:58 GMT  
		Size: 14.3 KB (14251 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:469742e66efe538e9e86f20bd61f46ad4cf134bdf7ba3ebade26a69084730003
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59846662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96976033e649d0208ceb73ef392a2cdbeda62e1f52ea8c52b5c899745378395e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:50:46 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:50:47 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:50:47 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:50:51 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7860c09977ca60dd6c74b10723c05e654b441efb8c943410159153fd67ddce8`  
		Last Modified: Wed, 05 Aug 2026 00:50:59 GMT  
		Size: 10.1 MB (10078848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3489ea7b480bfa1968752531007611b1f8a39498dcc6279eadb4e7650b6375b7`  
		Last Modified: Wed, 05 Aug 2026 00:50:58 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25a7425b1c134919e1f3fa0c687653a9ce95412213d687447cd32d589e409b84`  
		Last Modified: Wed, 05 Aug 2026 00:50:58 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4ee77a3c99f648b2fed60dc08991aacaa1276fd9690f75fec456e38f668ae58`  
		Last Modified: Wed, 05 Aug 2026 00:50:59 GMT  
		Size: 91.1 KB (91062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130` - unknown; unknown

```console
$ docker pull neurodebian@sha256:1dc34741ca40ca51ccb015e790023681ac77cc713abb522a9aaf3b5c0beea0c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3629496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b9ef576bedba2e010c000c48d25496749eeffb1c3713b7bf324f2165f6f627d`

```dockerfile
```

-	Layers:
	-	`sha256:5dec153d6a036c7b47bd70afd38090facc60edc6c465909b1f30aa370725219a`  
		Last Modified: Wed, 05 Aug 2026 00:50:59 GMT  
		Size: 3.6 MB (3615108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d733fd6259df17d6c3713b86316c42a5e1a64c5cfea7ea98f0419db4be1ce960`  
		Last Modified: Wed, 05 Aug 2026 00:50:58 GMT  
		Size: 14.4 KB (14388 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130` - linux; 386

```console
$ docker pull neurodebian@sha256:bd5afe6199b66a30dc1f829c8c3982014a30754cca8a0f9bc1949cb7f81c0940
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61393032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fc3d18e54edef2458dde665c221fa10ba7d4d821c94878fbc6eac5a531c57d2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:48:56 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:57 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:48:57 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:49:01 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7675708177d5a41df755bb146c3624b6c71f646d85f7bcb8f5f3bb587af896f8`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 50.8 MB (50831168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57e21e16dc9460da177f9a39e5588b0bef1c3e8a68f91cb0a0f4dc7550d991a4`  
		Last Modified: Wed, 05 Aug 2026 00:49:09 GMT  
		Size: 10.5 MB (10468187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bd9649fc945a5341fff8b413beffe7f7422145544c93a20b06d8a440c632543`  
		Last Modified: Wed, 05 Aug 2026 00:49:09 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0aa0fc22dfc72c9a4e9688ecd1f2caf9aaaf884e9510cb700bce39b2b07c791`  
		Last Modified: Wed, 05 Aug 2026 00:49:09 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32e961075bdc7d293611393d20ebab1f6b0de9f64d8094c4037772f1145d6700`  
		Last Modified: Wed, 05 Aug 2026 00:49:09 GMT  
		Size: 90.8 KB (90775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130` - unknown; unknown

```console
$ docker pull neurodebian@sha256:3c4ae5ed88411f4dd62cfbb7cbccdb309042b731fd3b2b9c5b67cfe8c32660b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3626384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64eb4d781dd0d2c480f203dd154c68f37cc0922f7a9c36058f712f9db36e1fd9`

```dockerfile
```

-	Layers:
	-	`sha256:28a620dcc3041ff023a5ae4709261f22cee70c531ccc954d3b4c854ac103b439`  
		Last Modified: Wed, 05 Aug 2026 00:49:09 GMT  
		Size: 3.6 MB (3612166 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4dca1b41ce85404e2e1b85b93fe025c53099fff854418a9e1e29ae8dce2a22d7`  
		Last Modified: Wed, 05 Aug 2026 00:49:09 GMT  
		Size: 14.2 KB (14218 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd130-non-free`

```console
$ docker pull neurodebian@sha256:0aab2fb945850c00d268f089ec7addfcb48e6cbd1f74681dbf4909cab5bf851e
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
$ docker pull neurodebian@sha256:7ec2b32c5fe7b1e2177b9ec1c81c8d292e714935beed1dca4313b8b015b2e06a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59700199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edc4c320630abd41e50f4a34094e1610413b3474fa53ab074b864ac3c84febb9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:48:22 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:22 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:48:22 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:48:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:26 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fddc987d229ce9aca6cd2f34d826ce74078fe45c62392bccb71eb973072e29f`  
		Last Modified: Wed, 05 Aug 2026 00:48:35 GMT  
		Size: 10.3 MB (10294127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23c12c74747326619a51ed3f9e9e572ab5c5996f468766cd7e8ee074e0e68be`  
		Last Modified: Wed, 05 Aug 2026 00:48:34 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89c7e5a79a08c091ce053f25dbd66f675b348108a38ec351bfcb5828b60d66ad`  
		Last Modified: Wed, 05 Aug 2026 00:48:34 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd55cb4734a61b3f066fd01573a379386850ee1c6894f06f5cc1e3038960c09`  
		Last Modified: Wed, 05 Aug 2026 00:48:34 GMT  
		Size: 90.4 KB (90410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b622f34090243b5a723c7124100bafe661b00eaf2f083c0b4f671d4bca9edaa7`  
		Last Modified: Wed, 05 Aug 2026 00:48:35 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:c8880ee825b7730a73eadc7977eb3ef3c475f53c190f19ca45aed52f4075b1f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3630540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d882d95c33ef014e02af824dcd178bf3949669ef600b3ad4138d314c2042be45`

```dockerfile
```

-	Layers:
	-	`sha256:49abb387cc699d91712c54fa5ad012d6a711279c69844d2fb3cdb5d3f691a825`  
		Last Modified: Wed, 05 Aug 2026 00:48:35 GMT  
		Size: 3.6 MB (3614258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:417d9b51d9e268de204878fb651173f325c01580e761d19b7441edd850be119b`  
		Last Modified: Wed, 05 Aug 2026 00:48:34 GMT  
		Size: 16.3 KB (16282 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:811d95a53c37abb999eae15a32e02812e2cfcbe24c41b45e4f2f876b3f5ad47d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59847172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad379bbf4aacf0b5d8ce3b747779abb3668597e520e6fb15a6cdd1d0c2a8232d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:50:48 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:50:49 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:50:49 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:50:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:50:53 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eda41656b1343ccda3edf2463168493a99e0f943fb3c003e8de6d41cbe2cde29`  
		Last Modified: Wed, 05 Aug 2026 00:51:02 GMT  
		Size: 10.1 MB (10078906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5215d7a02c3c744b15f746b5dffda53eaeeed23302aa0c6d835e87a88b937408`  
		Last Modified: Wed, 05 Aug 2026 00:51:01 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecadc881d9a9ac483ef5e11ea1e6b30082760fa2a210deafb4f1014b4bdfde70`  
		Last Modified: Wed, 05 Aug 2026 00:51:01 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbcd049ff24f478f5e5a19a3b2c038a923ba763a4e4d31614b199042d11dd868`  
		Last Modified: Wed, 05 Aug 2026 00:51:01 GMT  
		Size: 91.1 KB (91069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9610e517ebe523a34062ff839d61d1da957880ce43a02dae8c5bc4545a47313d`  
		Last Modified: Wed, 05 Aug 2026 00:51:02 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:88e785446e1bcbb672586e3197792520081b23786c39e1b467e3c8071e2cf691
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3631582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2d27a0f4380bcea37e612f7dfb1f5c759a862a0235fcda6cc4e3633ab7cffd9`

```dockerfile
```

-	Layers:
	-	`sha256:2361ee306169b94345176db3a0bb6219ea9ccc9681dfaf9ffeb07da66eec5284`  
		Last Modified: Wed, 05 Aug 2026 00:51:01 GMT  
		Size: 3.6 MB (3615148 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:967529f28fb9195093044325218722451938e320f3223d63296091742506a4b2`  
		Last Modified: Wed, 05 Aug 2026 00:51:01 GMT  
		Size: 16.4 KB (16434 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:a6e565db29e290551a4fa0ed5408d69478144489cee3a7abe0fde8c0149dba83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61393368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:919a3efac635b008da025f9335c44db3283f094cb24b9a0b184965852141ec28`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:49:14 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:49:15 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:49:15 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:49:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:49:19 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:7675708177d5a41df755bb146c3624b6c71f646d85f7bcb8f5f3bb587af896f8`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 50.8 MB (50831168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13f6f0fe2740bfe20f1708b388e6e347f2eacee61d6ae4fb1025d6bb89ffddd9`  
		Last Modified: Wed, 05 Aug 2026 00:49:26 GMT  
		Size: 10.5 MB (10468107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0720da6749c5d9a59e48c1f1879f88fb52dc1fdd33e8b3e51df76b1a3689e0`  
		Last Modified: Wed, 05 Aug 2026 00:49:26 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69eaebb446da9d5f53c7455d455bb298af421bc3b7b5fc7db8e6e9cab1283719`  
		Last Modified: Wed, 05 Aug 2026 00:49:26 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d37928fb9fd124d96b5e750fd4129f724abee44f787b6ae03544412a7ced1b5`  
		Last Modified: Wed, 05 Aug 2026 00:49:26 GMT  
		Size: 90.7 KB (90745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d294b60d7987780840f5854d88dbb7a4733acdcaa6c5168e2f1fbcb0e5b70d2e`  
		Last Modified: Wed, 05 Aug 2026 00:49:27 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:33208e6f520d23c823faef1dc12d395513e973ba1446b6f1e6153d2725d04afd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a9ea6defb6aa1e5449970e8e6b6e49c220f6f8a432b3798aabe9efbc0341d0f`

```dockerfile
```

-	Layers:
	-	`sha256:b0538988a5328fc5f800ef07ade844c0ccbf434567eb82f455ffaa5600f34033`  
		Last Modified: Wed, 05 Aug 2026 00:49:26 GMT  
		Size: 3.6 MB (3612206 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13e73cd4d1f5a10b4dfd6a383015fa5c6c4cf67d0c12a8eca2d5b7cd45b2be70`  
		Last Modified: Wed, 05 Aug 2026 00:49:26 GMT  
		Size: 16.2 KB (16246 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd140`

```console
$ docker pull neurodebian@sha256:b014b3e1c58cce29cda82a402354b2e01448be0a8f18c1d7327896cda604063d
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
$ docker pull neurodebian@sha256:c08fc0c8e74f48f1e7ec0f5b8624ed3581981cf6c6e2179f5df8e22d3b4c10ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.9 MB (60904532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fff523dde765118e2cba3febeda3eec8e39aacc8b8d62771f36424216901e0c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 00:48:21 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:22 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:48:22 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:48:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a9d7b479042d051e643bab1c85ff0f6599260e4745f41b5274612a5bdc6fde05`  
		Last Modified: Tue, 04 Aug 2026 23:52:17 GMT  
		Size: 49.3 MB (49331702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def14f98a3d49c098cb8cf956d782ef1b57856eda1e62500ce1c695db7722e76`  
		Last Modified: Wed, 05 Aug 2026 00:48:34 GMT  
		Size: 11.5 MB (11479933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baa30094481b37fea30184ad65d0a23d560a29c092be1d47374fd6daf505869b`  
		Last Modified: Wed, 05 Aug 2026 00:48:33 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd27a3f3b2620e9d6e26b669a3b8f65fb2a33b0f7bc5f7d88f7162b147dc1b15`  
		Last Modified: Wed, 05 Aug 2026 00:48:33 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45489f50e384c89ccc68ccda43be67d7e5ad1b9f5399219d1780e36cbcd5bd33`  
		Last Modified: Wed, 05 Aug 2026 00:48:33 GMT  
		Size: 90.0 KB (89991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140` - unknown; unknown

```console
$ docker pull neurodebian@sha256:c163d81666fa4f7056f284234e757b3ee4d3fe85dd538b1c5c1eba7baf23efe5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3616193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac29b7f7403524a24af1e8ae1596bfbd96eb56a54b0a3c1fc852ae73f1d147ac`

```dockerfile
```

-	Layers:
	-	`sha256:2cbcfc6a0627bc7419843bed7498fecfafb8bcb9604bc745c2475edc1e04b1be`  
		Last Modified: Wed, 05 Aug 2026 00:48:34 GMT  
		Size: 3.6 MB (3602261 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a4941d7978313b002b000504b42d7ee7bcbe76bb8d7e75823f27ebc59313dcc`  
		Last Modified: Wed, 05 Aug 2026 00:48:33 GMT  
		Size: 13.9 KB (13932 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:d703c88f40d485c3ea1005efc432034fb678e9825eae96a36eeb7b027fc528de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.6 MB (60626957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4244f4301555fafbdf3b7147da520545da22302ff549c4513ae0e62e9e1a5b6a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 00:51:08 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:51:08 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:51:08 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:51:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:bfcb34026e1133159b75d54bd9ab0e7c3b167036e1a86690a2e97c22d8614806`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 49.4 MB (49361777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8373969c5faea50f8cc6886c4fedaa02a719ab2d804da17a7868611af0d34656`  
		Last Modified: Wed, 05 Aug 2026 00:51:21 GMT  
		Size: 11.2 MB (11171715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13785e01d5a12c71ea98d34fc62dba545f5167fe7525e569222bbd6066919d9b`  
		Last Modified: Wed, 05 Aug 2026 00:51:20 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcffd09008b1851414d7d8857d2073b8b7bb1eadc4b7e9dd3d88891b6d133d73`  
		Last Modified: Wed, 05 Aug 2026 00:51:20 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d93e258c89144e03b5aa544cac0c29ca4d9d92f6b74676fa134d9fd72f31277a`  
		Last Modified: Wed, 05 Aug 2026 00:51:20 GMT  
		Size: 90.6 KB (90562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140` - unknown; unknown

```console
$ docker pull neurodebian@sha256:4bca487c5fa9a535ac73e0023889edf2d3bfd17c83dc27649fb95631ab9f15c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3621077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7e40d9c976c96ff0c5a623110150bf3944fd01bf4cc759ed324063a6abb3e23`

```dockerfile
```

-	Layers:
	-	`sha256:d9c82b1e9b0f445214585c2b1ee85617ad2bf0846aa215b98cf4df7e34d434fe`  
		Last Modified: Wed, 05 Aug 2026 00:51:20 GMT  
		Size: 3.6 MB (3607021 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2cb97341d9717cdef258da7f6d99b4609bdd8ada57412919ad845359ad2666ab`  
		Last Modified: Wed, 05 Aug 2026 00:51:20 GMT  
		Size: 14.1 KB (14056 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140` - linux; 386

```console
$ docker pull neurodebian@sha256:65f2a8c40a3bde945fb29f880e4761210dab7befa2b0b66e5b8d0a3f0163f651
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.5 MB (62476844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fba229516a3e0e38f675b95feb2c937343b45bd4f04902316459632f981fb30e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 00:49:17 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:49:18 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:49:18 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:49:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:5ee9cec7ecffffde5454be1577dcc2e874bcfbeb92f7c0c58c02330aa3cd53bf`  
		Last Modified: Tue, 04 Aug 2026 23:51:46 GMT  
		Size: 50.7 MB (50668690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3256e989c64909b0b7b0fdf4cd3c5d24570e040d652c2c0edf3b8c337111fa4`  
		Last Modified: Wed, 05 Aug 2026 00:49:28 GMT  
		Size: 11.7 MB (11714966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dfc53eedd3be3cc5bea0563f9253cd459d8cb1e6dd74c28a6e7dd7ff1e6eeaa`  
		Last Modified: Wed, 05 Aug 2026 00:49:28 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3e3a15da155a3dd077d2959254aea8c9ad034391ab966de02070c343c8763a`  
		Last Modified: Wed, 05 Aug 2026 00:49:28 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03eaa37a6734c5495aae8b1a78467eb18519cd5f63b94fc8f966cc5b79564a7f`  
		Last Modified: Wed, 05 Aug 2026 00:49:28 GMT  
		Size: 90.3 KB (90282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140` - unknown; unknown

```console
$ docker pull neurodebian@sha256:99b2d181c3f2d2924c06ef4ecb72cef943a9ff67a1bededef4aefb43ad4ad3b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3614013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1237ca7bbb0c9e1ddabf1c9a44abbabdf4a0068a1f70abb36ec04ecc809a7805`

```dockerfile
```

-	Layers:
	-	`sha256:0c89d5e0f19714c7c0c658c1708ba5c42ed048326be831708117bf15245f49c5`  
		Last Modified: Wed, 05 Aug 2026 00:49:28 GMT  
		Size: 3.6 MB (3600109 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7b4be7c024c7c927884eb6102855a7907f295f9250e086d07a33c50964c1b58`  
		Last Modified: Wed, 05 Aug 2026 00:49:28 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd140-non-free`

```console
$ docker pull neurodebian@sha256:ec7035beda6fb5a7ae6d161d4bd9915d7732d2a776ac2698e9d498d08ee7e874
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
$ docker pull neurodebian@sha256:cd8b502e2c147f5bf1d165130a5304ff25a0201230a2e66c9772fd6506275fa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.9 MB (60904915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf767ca6e4d8cf0d6c04eb3673ed3308392475634289e5a860836d80099de9f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 00:48:19 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:20 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:48:20 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:48:23 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:23 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:a9d7b479042d051e643bab1c85ff0f6599260e4745f41b5274612a5bdc6fde05`  
		Last Modified: Tue, 04 Aug 2026 23:52:17 GMT  
		Size: 49.3 MB (49331702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2542ab8a72d1a57e4ecbeca684de22f393177fd2ad182e2264ae04b19d682c8e`  
		Last Modified: Wed, 05 Aug 2026 00:48:31 GMT  
		Size: 11.5 MB (11479882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a95255c0d282dfe2a85f71ab8fdd4685c15fa9f0a9a5791fd9e0478179eb0f3d`  
		Last Modified: Wed, 05 Aug 2026 00:48:30 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a6ae5dd7804ddee8ffd56e3f44b3f9f16f6bab097305cefcd9f7c1359174b4a`  
		Last Modified: Wed, 05 Aug 2026 00:48:30 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994259980ca18a5eb9357d2bf9c6ef96ac116158d07e8352b450e33c226ce7db`  
		Last Modified: Wed, 05 Aug 2026 00:48:30 GMT  
		Size: 90.0 KB (89978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed6e6a7b133781b648cd018a5f902f2ad8b20bfc8af5fa7ddcf6de2fb290ef2f`  
		Last Modified: Wed, 05 Aug 2026 00:48:32 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:85fd4f14414e8b81e0194e7f37dc0739765493ac6617e92645de64a41599f363
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3618256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:603d98146f47973c6b551ebbc544104479936f112ac76685ae5e5add12590c7d`

```dockerfile
```

-	Layers:
	-	`sha256:6be6ebb60f6745d0f471b6f69c462558f6d507d9089d0ea440e10ae6253c412c`  
		Last Modified: Wed, 05 Aug 2026 00:48:31 GMT  
		Size: 3.6 MB (3602297 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd942959b690fe2abbdc69d1238286aa056fa5ef00ec301346fef1c36d87c4e7`  
		Last Modified: Wed, 05 Aug 2026 00:48:30 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:7c969228828acf0e5bb213551368c7bf9e51f946c08772f005ff0691a9534c74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.6 MB (60627441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bad360c51d6e9e9f53f7a1e5abd00175529e0901a48bbf050b7d57f826b4b910`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 00:51:08 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:51:09 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:51:09 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:51:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:51:13 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:bfcb34026e1133159b75d54bd9ab0e7c3b167036e1a86690a2e97c22d8614806`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 49.4 MB (49361777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aedd3fed54875886f702d83a0523fd753c01abb243df2188407635e214039bda`  
		Last Modified: Wed, 05 Aug 2026 00:51:21 GMT  
		Size: 11.2 MB (11171747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1820043a4d5ddee6af1947d2c450d1106b14d88f73e081e6e267209ce0c79c8d`  
		Last Modified: Wed, 05 Aug 2026 00:51:20 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42e72d3cb57757cf7279d7dabd8fa283858079e6bdac3731c1aa4fad3c49cd83`  
		Last Modified: Wed, 05 Aug 2026 00:51:20 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:248f6abd58cdad93f7d50aa9dd93b6f9699134a4917d07c3370d14b59058423c`  
		Last Modified: Wed, 05 Aug 2026 00:51:20 GMT  
		Size: 90.6 KB (90568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88f56aea95813da6e1dbb518bff3a958d6d91308be8f563a8af58b1a8d898e68`  
		Last Modified: Wed, 05 Aug 2026 00:51:21 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:103cbec19bd03d3bb027f46bb734079a43b14c92d0e6ddfa0843d9fa3b954e3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3623156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58af5309396556f2cbf5a06b4ddbc651dae7fc0bf98a941ca4c26e340b255457`

```dockerfile
```

-	Layers:
	-	`sha256:3b1f2f0dd4c3aecb670406edcd4f190c6fab4b8239dc70b8cf9bc5ea3396b3e8`  
		Last Modified: Wed, 05 Aug 2026 00:51:20 GMT  
		Size: 3.6 MB (3607057 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6ebec002d03a971a20200f8c0566682374fa6351a45e0c7d42e15465cf4b827`  
		Last Modified: Wed, 05 Aug 2026 00:51:20 GMT  
		Size: 16.1 KB (16099 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:1919514b15c9614d60db97ec901e31d6d575bade2f5153d264aac11847225efb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.5 MB (62477353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0934c61bc7e565bff3be08f7a02492070ca18858350c3e36340c712fa2b1b507`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 00:49:18 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:49:19 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:49:19 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:49:23 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:49:23 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:5ee9cec7ecffffde5454be1577dcc2e874bcfbeb92f7c0c58c02330aa3cd53bf`  
		Last Modified: Tue, 04 Aug 2026 23:51:46 GMT  
		Size: 50.7 MB (50668690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9040e73ec7930a0aab4989400c215473f1bc7f0f9dd88c0f7971fd63bf320d35`  
		Last Modified: Wed, 05 Aug 2026 00:49:31 GMT  
		Size: 11.7 MB (11715009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6d820fca052fcab0d3e160dd31e235282626e77f8da137ac36604d69827dfd`  
		Last Modified: Wed, 05 Aug 2026 00:49:30 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9675bbb3f78ddbc8bc970773424f21a59b5bb1922cacd5d7bb842113598e887b`  
		Last Modified: Wed, 05 Aug 2026 00:49:31 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4767fd126f935d2f8038a830d848ef7692460428e848758a4dccc5d234c760c`  
		Last Modified: Wed, 05 Aug 2026 00:49:31 GMT  
		Size: 90.3 KB (90300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:092c3cf0a2b78e16f80c9de19a238c14401830581cf10cd9b54f7ba4f7419658`  
		Last Modified: Wed, 05 Aug 2026 00:49:32 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:d080cf48569b9abc89a8f7cd5db44c3fd51ff9b06dd081988f4043175b8d804f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3616074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58be7161bb95555e8e03b575a926913d64cef1e66a016803e1db223a015ef097`

```dockerfile
```

-	Layers:
	-	`sha256:ac05026957357939ee7a016b9efda372fe6d734ef8c1be8eb93998c311a86930`  
		Last Modified: Wed, 05 Aug 2026 00:49:31 GMT  
		Size: 3.6 MB (3600145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e27b223454e27a08feccd0e01e33750e5c1d3130d073399244648b6e28bc5e37`  
		Last Modified: Wed, 05 Aug 2026 00:49:31 GMT  
		Size: 15.9 KB (15929 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd22.04`

```console
$ docker pull neurodebian@sha256:ab9cf4485871c3dd9eb47fb2e2981df4e3b0c3ac32f98617afa0762be33b015d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:nd22.04` - linux; amd64

```console
$ docker pull neurodebian@sha256:700b0aafbbee0e55d6c7f085a18b07d65a5c97631d1f500235df0d0491fc9fd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33475045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4e3b5ad3dbe3e712dd0c2a1535c4f52caab81ea5d777b78ef6aeb31217d114b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:42:30 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:42:31 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 04 Aug 2026 01:42:31 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 04 Aug 2026 01:42:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54d8ef2e44a3a69d0281ba6056017f4fad3396a2b62aab843e3cc4ab69819dc0`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 3.6 MB (3624910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f9a2366387c8c2defc5160c07c6cb7b1fb0de930a7c424b0f2ec41b1a345d15`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:419775e147df7fbfb49fbf5490a6691ba9050fe5d0d2e6129143bc6768e1a625`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66390f9da5ab1baa263edca144e8b56c9393f315e3e7a79d8db9404921bc8f94`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 111.4 KB (111442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd22.04` - unknown; unknown

```console
$ docker pull neurodebian@sha256:5d8ceb9365030a8e7eb95c1a912292a4da3ded5f2d4c92d0703b1dd9f83dbe19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415433ad84c9e55b31430dfc23d1a6d2ef6cda7e80bd8c442330bb680b203522`

```dockerfile
```

-	Layers:
	-	`sha256:1b6f27002f0e1e8ca98b3c0684cf277db67db6c4fc06de4306743485b849a00d`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 2.2 MB (2198336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4240a77100fb2b8db1a2ac302684221ce33ed23196ae53b936ec17b86655a22`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd22.04` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:833114c643e31673574dd1e30a193c07dcfdb23510a2313efc6905447f6fd46d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31342018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab3fda33941f2a5650a18c9cdce4f81100eb2ddca96e107e3bb602e685b5da1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:05 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:05 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 04 Aug 2026 01:43:06 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 04 Aug 2026 01:43:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37a3effaf5e12b6751acab8afa1205e3390a8aa1477b0fcc985d863d61ca10fa`  
		Last Modified: Tue, 04 Aug 2026 01:43:19 GMT  
		Size: 3.6 MB (3608545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:364052cefec1e8d77a9f9b709718852194bea9cdd07187fa3431fa8de7e51b6d`  
		Last Modified: Tue, 04 Aug 2026 01:43:18 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a5a8482f7b4498345ee397ab396350e6b2cd82ab2839aa66c67119da6b8efa7`  
		Last Modified: Tue, 04 Aug 2026 01:43:18 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13d5d52634cb4d7db7dc1227f9a93f1cfc05a3397229dabe32993a09c7408fa`  
		Last Modified: Tue, 04 Aug 2026 01:43:18 GMT  
		Size: 111.3 KB (111264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd22.04` - unknown; unknown

```console
$ docker pull neurodebian@sha256:28b5ab2cdcbd217dc8ad4b00162049acf35a5021a4ac980ab9110edf2da25fc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db269c6096ff356bf9ff3cce835f78760a0385721a777ecdb805b75d99e16b8c`

```dockerfile
```

-	Layers:
	-	`sha256:c77d99333e658dfec0182fb77e2adfce5c088a525bf0bcf7f42678d59121ede8`  
		Last Modified: Tue, 04 Aug 2026 01:43:18 GMT  
		Size: 2.2 MB (2198596 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3813e8b78957f9a85b1cca01bb65187a5cfcb69f875aade18ad846c662c96aed`  
		Last Modified: Tue, 04 Aug 2026 01:43:18 GMT  
		Size: 14.1 KB (14058 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd22.04-non-free`

```console
$ docker pull neurodebian@sha256:c45fee5d7e11b8d2ea916c4d90720143d07f89856a20f1962d0b8f4ec622b6ef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:nd22.04-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:9d3b3e9bb9c65c4ae02f92ef8a4ef68614ceb452c8270d9d6b1a211dcbcf9edd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33475320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57fa7b6a6e9ac8d036b365256bc8d35ec6fe97e8fc439aa58f0aabbbf18fc3a3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:42:32 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:42:33 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 04 Aug 2026 01:42:33 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 04 Aug 2026 01:42:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:42:39 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09be92cc852304128454ac5e16f857ba6004281fd0e9d59e65cd0e526671b155`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 3.6 MB (3624905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c286ff70976a5913e2308771c253f55c44793c8a0aaff7cb3cb713a6fd560c2`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0854fc368adab451eb9fe1d7ee8ebe251a17ba6c36c2297f5a4dbe074b50df34`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e229f6659192d466b97213bb05db47042baf2fd47e16cbfaea8798c15f2441e`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 111.4 KB (111434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e996df809c1bcd6dd896942c0dffe075f3e80fa156f30dace8fc0124fb98f456`  
		Last Modified: Tue, 04 Aug 2026 01:42:46 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd22.04-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8d2c9a83bc7d511cfed01a84b71039e6dfd9dd79f73ba083c79e79e5b549a726
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2214535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a95746f99bdc5ea144c0c89f531ce57b0d436768a00d11c16acfc2016c224bed`

```dockerfile
```

-	Layers:
	-	`sha256:664f72a719aa46aa391f13b301762b2a572f3d79a564b252f8c6580315595326`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 2.2 MB (2198372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b885ea1fd54edcfd96293e5c339da2ac5f99fdf413260f917194089db7e6a9e`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd22.04-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:11186fb6700b06c32c3e905b80c5c29941f5ba3d82566cc0618687c1267a3b97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31342339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dfaacc66f7409e55ac0c76bc458d9a4fc08b1baed23320fcf2343aa866f613c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:13 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:13 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 04 Aug 2026 01:43:13 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 04 Aug 2026 01:43:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:22 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80a8a7b7d16848dd296791691322b103014e4a774441b4df04592500121c13fd`  
		Last Modified: Tue, 04 Aug 2026 01:43:29 GMT  
		Size: 3.6 MB (3608553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbd32a8645ca77ff8095d39707c1cce83cc0d5eeb1e11e55a2a597c3698707cc`  
		Last Modified: Tue, 04 Aug 2026 01:43:29 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41d301c93c8c6f5c0ad7dc24ba982c456dfa9626331be78b55159b07c01c6222`  
		Last Modified: Tue, 04 Aug 2026 01:43:28 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23808888cbdba764d05589f9d61dab5173f0e86aaffa49d7e55367fbcef4d1e8`  
		Last Modified: Tue, 04 Aug 2026 01:43:29 GMT  
		Size: 111.3 KB (111294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7eebc2589d29f8f237cdfb08100df726e35616d803e9b28a17dc256e408e1c2`  
		Last Modified: Tue, 04 Aug 2026 01:43:30 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd22.04-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:3def81c72e52c0465ce200717b948bce8c013073206223e64b2fb9dcb0bc4324
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2214935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:187d1e8379c84125e6ec6b67f9cf3cd09cb7978eb9517e11cbb2db7b9ab87457`

```dockerfile
```

-	Layers:
	-	`sha256:9afffeed59fdd2ff685012e8a4a9302b344642f60e98a24a14655062cd748c45`  
		Last Modified: Tue, 04 Aug 2026 01:43:29 GMT  
		Size: 2.2 MB (2198632 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ce7f7934be9010f0b6d7e2b792eeb2efcfb60f61b023ec5b401d3a4bd886d7d`  
		Last Modified: Tue, 04 Aug 2026 01:43:29 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd24.04`

```console
$ docker pull neurodebian@sha256:a2eb9a28bf3ed31d981ca3a92f8eeefb9cc37faa82d43d9a19c8293674b8c86d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:nd24.04` - linux; amd64

```console
$ docker pull neurodebian@sha256:b62075f6fc540b833dd75af0f3616d4f7d45972abc7f0ebaeffb7dd4dd606abb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33424266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bc233f6c025f2c3f6d0568acc75b6c1a98bff9b19c2d19097ee126b1ea96d47`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:02 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:03 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 04 Aug 2026 01:43:03 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 04 Aug 2026 01:43:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57cac36e42bdd063315078baac44c91230e61af814ce8db1416a48739f324bcf`  
		Last Modified: Tue, 04 Aug 2026 01:43:16 GMT  
		Size: 3.6 MB (3565276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f70a23c3139b89cbaf94cc07d5f40b0d8d1c5af0e959e079fbcfd63db4a81518`  
		Last Modified: Tue, 04 Aug 2026 01:43:16 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5b6f97be274a0c8084c0f33da867495f08bacbca3b2d033331a3ec3a1e011a9`  
		Last Modified: Tue, 04 Aug 2026 01:43:16 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48a7f12d511800499bc2162846d59972f82e34384427375b934f282d0314caab`  
		Last Modified: Tue, 04 Aug 2026 01:43:16 GMT  
		Size: 105.0 KB (104969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd24.04` - unknown; unknown

```console
$ docker pull neurodebian@sha256:776a01677ae4782b54897194302c5089690ff87d775612e6b38eb73afd05e6a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2134875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38453c18c0bdadb39ecb8b61d14db4fda2dbb8851c8989881b9cbe87e71eee8e`

```dockerfile
```

-	Layers:
	-	`sha256:81dd4af055be4b36af9bcaa920550ab57df8940bb94a555d55a2bd221dcd659c`  
		Last Modified: Tue, 04 Aug 2026 01:43:16 GMT  
		Size: 2.1 MB (2120943 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e688ea038072c0c014bc98998fba5f82654e725118eaeb0b11f91100113e4909`  
		Last Modified: Tue, 04 Aug 2026 01:43:16 GMT  
		Size: 13.9 KB (13932 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd24.04` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:ee635844e7379fe4435bfb1f08c729b37609a903f6a1a7e9699abcea15dca645
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32557962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67c90bd1959ac011c3ff0ea6296bbe8aafc0e79577e28f9729ae2ded5b961d6f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:11 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:12 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 04 Aug 2026 01:43:12 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 04 Aug 2026 01:43:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b150b2ab3824e7dc70666b713d3e606c9eb2528d2239c528c82b31494cc036a`  
		Last Modified: Tue, 04 Aug 2026 01:43:24 GMT  
		Size: 3.6 MB (3562519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb8051b3e8fae5246fa52d2e7cae3bbadad56b3a784032211d9870102b097df0`  
		Last Modified: Tue, 04 Aug 2026 01:43:24 GMT  
		Size: 2.6 KB (2639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01427917492c38901c18d8f1db9b6d2c0371fd6e95f99401c939d1f840ab07ba`  
		Last Modified: Tue, 04 Aug 2026 01:43:24 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c06339a4189b990ea172b5769e2be64c0a6caa61912f03c69261b1685212338`  
		Last Modified: Tue, 04 Aug 2026 01:43:24 GMT  
		Size: 105.7 KB (105713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd24.04` - unknown; unknown

```console
$ docker pull neurodebian@sha256:dd9d1e6b8f3ff722717614ab50d85e24708ea68a5b6c1155caeb92554646c1ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2136046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15aa2bf8335f7b803de070f47912c729938ffd7e6af57a94a4627ada5776ebc0`

```dockerfile
```

-	Layers:
	-	`sha256:d0ef206735c0b6e2b445ba8e145b055a6b1cdffb2c2712243c2afe6bcf654c73`  
		Last Modified: Tue, 04 Aug 2026 01:43:24 GMT  
		Size: 2.1 MB (2121988 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d67c51b74817b1ce2f8e39c5469c2dc5053e19aded542248b29aa236fc5c5958`  
		Last Modified: Tue, 04 Aug 2026 01:43:24 GMT  
		Size: 14.1 KB (14058 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd24.04-non-free`

```console
$ docker pull neurodebian@sha256:4bcf37fdd088c6d149b1e1e7fac0b7c651578edad57bddf5956ea1afbed780be
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:nd24.04-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:d90bb9f39302500d3db213fa956d460dbbe8fc06b6aa76c9ca240233729c3fd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33424643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7169f7387b65f62b6c46e20cfb9a86c28496f2ab1695539c59f50141e12b240`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:01 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:02 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 04 Aug 2026 01:43:02 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 04 Aug 2026 01:43:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:09 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a26135b8a78006a6f45554812dce3ff865a35b288a76a081717f0c5e70ceb22`  
		Last Modified: Tue, 04 Aug 2026 01:43:15 GMT  
		Size: 3.6 MB (3565262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d94c883a8c67bc876c41c9aa382a8aac2c1a30da182a7c6140d5efd43cccde8a`  
		Last Modified: Tue, 04 Aug 2026 01:43:15 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfa4e3c25c2ccc348dd71819a2eb6db9eb12c7f1497f0fc61dcd6568e793605b`  
		Last Modified: Tue, 04 Aug 2026 01:43:15 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec948f0f43fd10fa95c757a86e9d309c8579e81071be09e092aaa328a851f4c4`  
		Last Modified: Tue, 04 Aug 2026 01:43:15 GMT  
		Size: 104.9 KB (104933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e43302de703b5075b2e0eb14bdf44edcc726ce16a65b2d3509208598dd70b231`  
		Last Modified: Tue, 04 Aug 2026 01:43:16 GMT  
		Size: 428.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd24.04-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:02e8b306d5586527d252b3d5c7dbb9aa55fa18e3b40c5d1bc594b59ad179d8ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2137142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f22c744ca7154e218656e8f66a5a9d6b6662d972a83e5b49660860d3d9e7aecf`

```dockerfile
```

-	Layers:
	-	`sha256:29816cf1bfb3982feff0bd1ef8709bb447d269afa1791aed42f41a0610518035`  
		Last Modified: Tue, 04 Aug 2026 01:43:15 GMT  
		Size: 2.1 MB (2120979 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b775917114cea7a72993c1948934b461974f2547927eb9ac0d0271cce289c36f`  
		Last Modified: Tue, 04 Aug 2026 01:43:15 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd24.04-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:75fb7d66a1350d467b1b760dc9747bfd0bcfd61d1cdc6483922666412a241046
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32558554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5af78bd46120900065b3f7f362bb9f891901161060a4d71d1aaddd47be58f4eb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:06 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:07 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 04 Aug 2026 01:43:07 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 04 Aug 2026 01:43:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:14 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe6d5a36168c7221d1ab4ad892464f1619a32564c810958c18814a3a42d83efc`  
		Last Modified: Tue, 04 Aug 2026 01:43:21 GMT  
		Size: 3.6 MB (3562658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ba29619473a5d66d8eeac8a647b16cfdc14d01a6944fda321191816847cbbcf`  
		Last Modified: Tue, 04 Aug 2026 01:43:21 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0e86b46f8605ad1480bdba8f69ed1de11576792087eee20065af4784ea9c874`  
		Last Modified: Tue, 04 Aug 2026 01:43:20 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d730a24301cb3ed14efb5b1bbbe4856716d43e86bae93a3a01aa18c600d9a5ea`  
		Last Modified: Tue, 04 Aug 2026 01:43:21 GMT  
		Size: 105.7 KB (105738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d17afe1ae97930f3a19676032ef2768a4d546a3bf281a5f9589983578195384`  
		Last Modified: Tue, 04 Aug 2026 01:43:22 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd24.04-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:cd443fb1e66303815ad3c6de8407654f0b0680f16394d0e2486f4746bd8f1135
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2138327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d556f784dbe92dc7615469d1e42df9f6034339897e606d09cf8c54161b15884`

```dockerfile
```

-	Layers:
	-	`sha256:f778f58543f6a81ed00937a7359a64012c5ed805d02d8a8984a66ff22939d34a`  
		Last Modified: Tue, 04 Aug 2026 01:43:21 GMT  
		Size: 2.1 MB (2122024 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2b34f3255d2c8198fe7088790859742ae24544d646c24e1991c4b5ed8922d32`  
		Last Modified: Tue, 04 Aug 2026 01:43:20 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:noble`

```console
$ docker pull neurodebian@sha256:a2eb9a28bf3ed31d981ca3a92f8eeefb9cc37faa82d43d9a19c8293674b8c86d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:noble` - linux; amd64

```console
$ docker pull neurodebian@sha256:b62075f6fc540b833dd75af0f3616d4f7d45972abc7f0ebaeffb7dd4dd606abb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33424266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bc233f6c025f2c3f6d0568acc75b6c1a98bff9b19c2d19097ee126b1ea96d47`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:02 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:03 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 04 Aug 2026 01:43:03 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 04 Aug 2026 01:43:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57cac36e42bdd063315078baac44c91230e61af814ce8db1416a48739f324bcf`  
		Last Modified: Tue, 04 Aug 2026 01:43:16 GMT  
		Size: 3.6 MB (3565276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f70a23c3139b89cbaf94cc07d5f40b0d8d1c5af0e959e079fbcfd63db4a81518`  
		Last Modified: Tue, 04 Aug 2026 01:43:16 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5b6f97be274a0c8084c0f33da867495f08bacbca3b2d033331a3ec3a1e011a9`  
		Last Modified: Tue, 04 Aug 2026 01:43:16 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48a7f12d511800499bc2162846d59972f82e34384427375b934f282d0314caab`  
		Last Modified: Tue, 04 Aug 2026 01:43:16 GMT  
		Size: 105.0 KB (104969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble` - unknown; unknown

```console
$ docker pull neurodebian@sha256:776a01677ae4782b54897194302c5089690ff87d775612e6b38eb73afd05e6a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2134875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38453c18c0bdadb39ecb8b61d14db4fda2dbb8851c8989881b9cbe87e71eee8e`

```dockerfile
```

-	Layers:
	-	`sha256:81dd4af055be4b36af9bcaa920550ab57df8940bb94a555d55a2bd221dcd659c`  
		Last Modified: Tue, 04 Aug 2026 01:43:16 GMT  
		Size: 2.1 MB (2120943 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e688ea038072c0c014bc98998fba5f82654e725118eaeb0b11f91100113e4909`  
		Last Modified: Tue, 04 Aug 2026 01:43:16 GMT  
		Size: 13.9 KB (13932 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:noble` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:ee635844e7379fe4435bfb1f08c729b37609a903f6a1a7e9699abcea15dca645
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32557962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67c90bd1959ac011c3ff0ea6296bbe8aafc0e79577e28f9729ae2ded5b961d6f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:11 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:12 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 04 Aug 2026 01:43:12 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 04 Aug 2026 01:43:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b150b2ab3824e7dc70666b713d3e606c9eb2528d2239c528c82b31494cc036a`  
		Last Modified: Tue, 04 Aug 2026 01:43:24 GMT  
		Size: 3.6 MB (3562519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb8051b3e8fae5246fa52d2e7cae3bbadad56b3a784032211d9870102b097df0`  
		Last Modified: Tue, 04 Aug 2026 01:43:24 GMT  
		Size: 2.6 KB (2639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01427917492c38901c18d8f1db9b6d2c0371fd6e95f99401c939d1f840ab07ba`  
		Last Modified: Tue, 04 Aug 2026 01:43:24 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c06339a4189b990ea172b5769e2be64c0a6caa61912f03c69261b1685212338`  
		Last Modified: Tue, 04 Aug 2026 01:43:24 GMT  
		Size: 105.7 KB (105713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble` - unknown; unknown

```console
$ docker pull neurodebian@sha256:dd9d1e6b8f3ff722717614ab50d85e24708ea68a5b6c1155caeb92554646c1ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2136046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15aa2bf8335f7b803de070f47912c729938ffd7e6af57a94a4627ada5776ebc0`

```dockerfile
```

-	Layers:
	-	`sha256:d0ef206735c0b6e2b445ba8e145b055a6b1cdffb2c2712243c2afe6bcf654c73`  
		Last Modified: Tue, 04 Aug 2026 01:43:24 GMT  
		Size: 2.1 MB (2121988 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d67c51b74817b1ce2f8e39c5469c2dc5053e19aded542248b29aa236fc5c5958`  
		Last Modified: Tue, 04 Aug 2026 01:43:24 GMT  
		Size: 14.1 KB (14058 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:noble-non-free`

```console
$ docker pull neurodebian@sha256:4bcf37fdd088c6d149b1e1e7fac0b7c651578edad57bddf5956ea1afbed780be
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:noble-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:d90bb9f39302500d3db213fa956d460dbbe8fc06b6aa76c9ca240233729c3fd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33424643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7169f7387b65f62b6c46e20cfb9a86c28496f2ab1695539c59f50141e12b240`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:01 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:02 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 04 Aug 2026 01:43:02 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 04 Aug 2026 01:43:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:09 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a26135b8a78006a6f45554812dce3ff865a35b288a76a081717f0c5e70ceb22`  
		Last Modified: Tue, 04 Aug 2026 01:43:15 GMT  
		Size: 3.6 MB (3565262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d94c883a8c67bc876c41c9aa382a8aac2c1a30da182a7c6140d5efd43cccde8a`  
		Last Modified: Tue, 04 Aug 2026 01:43:15 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfa4e3c25c2ccc348dd71819a2eb6db9eb12c7f1497f0fc61dcd6568e793605b`  
		Last Modified: Tue, 04 Aug 2026 01:43:15 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec948f0f43fd10fa95c757a86e9d309c8579e81071be09e092aaa328a851f4c4`  
		Last Modified: Tue, 04 Aug 2026 01:43:15 GMT  
		Size: 104.9 KB (104933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e43302de703b5075b2e0eb14bdf44edcc726ce16a65b2d3509208598dd70b231`  
		Last Modified: Tue, 04 Aug 2026 01:43:16 GMT  
		Size: 428.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:02e8b306d5586527d252b3d5c7dbb9aa55fa18e3b40c5d1bc594b59ad179d8ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2137142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f22c744ca7154e218656e8f66a5a9d6b6662d972a83e5b49660860d3d9e7aecf`

```dockerfile
```

-	Layers:
	-	`sha256:29816cf1bfb3982feff0bd1ef8709bb447d269afa1791aed42f41a0610518035`  
		Last Modified: Tue, 04 Aug 2026 01:43:15 GMT  
		Size: 2.1 MB (2120979 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b775917114cea7a72993c1948934b461974f2547927eb9ac0d0271cce289c36f`  
		Last Modified: Tue, 04 Aug 2026 01:43:15 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:noble-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:75fb7d66a1350d467b1b760dc9747bfd0bcfd61d1cdc6483922666412a241046
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32558554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5af78bd46120900065b3f7f362bb9f891901161060a4d71d1aaddd47be58f4eb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:43:06 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:07 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 04 Aug 2026 01:43:07 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 04 Aug 2026 01:43:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:43:14 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe6d5a36168c7221d1ab4ad892464f1619a32564c810958c18814a3a42d83efc`  
		Last Modified: Tue, 04 Aug 2026 01:43:21 GMT  
		Size: 3.6 MB (3562658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ba29619473a5d66d8eeac8a647b16cfdc14d01a6944fda321191816847cbbcf`  
		Last Modified: Tue, 04 Aug 2026 01:43:21 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0e86b46f8605ad1480bdba8f69ed1de11576792087eee20065af4784ea9c874`  
		Last Modified: Tue, 04 Aug 2026 01:43:20 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d730a24301cb3ed14efb5b1bbbe4856716d43e86bae93a3a01aa18c600d9a5ea`  
		Last Modified: Tue, 04 Aug 2026 01:43:21 GMT  
		Size: 105.7 KB (105738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d17afe1ae97930f3a19676032ef2768a4d546a3bf281a5f9589983578195384`  
		Last Modified: Tue, 04 Aug 2026 01:43:22 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:cd443fb1e66303815ad3c6de8407654f0b0680f16394d0e2486f4746bd8f1135
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2138327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d556f784dbe92dc7615469d1e42df9f6034339897e606d09cf8c54161b15884`

```dockerfile
```

-	Layers:
	-	`sha256:f778f58543f6a81ed00937a7359a64012c5ed805d02d8a8984a66ff22939d34a`  
		Last Modified: Tue, 04 Aug 2026 01:43:21 GMT  
		Size: 2.1 MB (2122024 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2b34f3255d2c8198fe7088790859742ae24544d646c24e1991c4b5ed8922d32`  
		Last Modified: Tue, 04 Aug 2026 01:43:20 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:non-free`

```console
$ docker pull neurodebian@sha256:0aab2fb945850c00d268f089ec7addfcb48e6cbd1f74681dbf4909cab5bf851e
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
$ docker pull neurodebian@sha256:7ec2b32c5fe7b1e2177b9ec1c81c8d292e714935beed1dca4313b8b015b2e06a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59700199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edc4c320630abd41e50f4a34094e1610413b3474fa53ab074b864ac3c84febb9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:48:22 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:22 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:48:22 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:48:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:26 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fddc987d229ce9aca6cd2f34d826ce74078fe45c62392bccb71eb973072e29f`  
		Last Modified: Wed, 05 Aug 2026 00:48:35 GMT  
		Size: 10.3 MB (10294127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23c12c74747326619a51ed3f9e9e572ab5c5996f468766cd7e8ee074e0e68be`  
		Last Modified: Wed, 05 Aug 2026 00:48:34 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89c7e5a79a08c091ce053f25dbd66f675b348108a38ec351bfcb5828b60d66ad`  
		Last Modified: Wed, 05 Aug 2026 00:48:34 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd55cb4734a61b3f066fd01573a379386850ee1c6894f06f5cc1e3038960c09`  
		Last Modified: Wed, 05 Aug 2026 00:48:34 GMT  
		Size: 90.4 KB (90410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b622f34090243b5a723c7124100bafe661b00eaf2f083c0b4f671d4bca9edaa7`  
		Last Modified: Wed, 05 Aug 2026 00:48:35 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:c8880ee825b7730a73eadc7977eb3ef3c475f53c190f19ca45aed52f4075b1f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3630540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d882d95c33ef014e02af824dcd178bf3949669ef600b3ad4138d314c2042be45`

```dockerfile
```

-	Layers:
	-	`sha256:49abb387cc699d91712c54fa5ad012d6a711279c69844d2fb3cdb5d3f691a825`  
		Last Modified: Wed, 05 Aug 2026 00:48:35 GMT  
		Size: 3.6 MB (3614258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:417d9b51d9e268de204878fb651173f325c01580e761d19b7441edd850be119b`  
		Last Modified: Wed, 05 Aug 2026 00:48:34 GMT  
		Size: 16.3 KB (16282 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:811d95a53c37abb999eae15a32e02812e2cfcbe24c41b45e4f2f876b3f5ad47d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59847172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad379bbf4aacf0b5d8ce3b747779abb3668597e520e6fb15a6cdd1d0c2a8232d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:50:48 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:50:49 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:50:49 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:50:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:50:53 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eda41656b1343ccda3edf2463168493a99e0f943fb3c003e8de6d41cbe2cde29`  
		Last Modified: Wed, 05 Aug 2026 00:51:02 GMT  
		Size: 10.1 MB (10078906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5215d7a02c3c744b15f746b5dffda53eaeeed23302aa0c6d835e87a88b937408`  
		Last Modified: Wed, 05 Aug 2026 00:51:01 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecadc881d9a9ac483ef5e11ea1e6b30082760fa2a210deafb4f1014b4bdfde70`  
		Last Modified: Wed, 05 Aug 2026 00:51:01 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbcd049ff24f478f5e5a19a3b2c038a923ba763a4e4d31614b199042d11dd868`  
		Last Modified: Wed, 05 Aug 2026 00:51:01 GMT  
		Size: 91.1 KB (91069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9610e517ebe523a34062ff839d61d1da957880ce43a02dae8c5bc4545a47313d`  
		Last Modified: Wed, 05 Aug 2026 00:51:02 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:88e785446e1bcbb672586e3197792520081b23786c39e1b467e3c8071e2cf691
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3631582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2d27a0f4380bcea37e612f7dfb1f5c759a862a0235fcda6cc4e3633ab7cffd9`

```dockerfile
```

-	Layers:
	-	`sha256:2361ee306169b94345176db3a0bb6219ea9ccc9681dfaf9ffeb07da66eec5284`  
		Last Modified: Wed, 05 Aug 2026 00:51:01 GMT  
		Size: 3.6 MB (3615148 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:967529f28fb9195093044325218722451938e320f3223d63296091742506a4b2`  
		Last Modified: Wed, 05 Aug 2026 00:51:01 GMT  
		Size: 16.4 KB (16434 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:a6e565db29e290551a4fa0ed5408d69478144489cee3a7abe0fde8c0149dba83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61393368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:919a3efac635b008da025f9335c44db3283f094cb24b9a0b184965852141ec28`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:49:14 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:49:15 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:49:15 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:49:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:49:19 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:7675708177d5a41df755bb146c3624b6c71f646d85f7bcb8f5f3bb587af896f8`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 50.8 MB (50831168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13f6f0fe2740bfe20f1708b388e6e347f2eacee61d6ae4fb1025d6bb89ffddd9`  
		Last Modified: Wed, 05 Aug 2026 00:49:26 GMT  
		Size: 10.5 MB (10468107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0720da6749c5d9a59e48c1f1879f88fb52dc1fdd33e8b3e51df76b1a3689e0`  
		Last Modified: Wed, 05 Aug 2026 00:49:26 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69eaebb446da9d5f53c7455d455bb298af421bc3b7b5fc7db8e6e9cab1283719`  
		Last Modified: Wed, 05 Aug 2026 00:49:26 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d37928fb9fd124d96b5e750fd4129f724abee44f787b6ae03544412a7ced1b5`  
		Last Modified: Wed, 05 Aug 2026 00:49:26 GMT  
		Size: 90.7 KB (90745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d294b60d7987780840f5854d88dbb7a4733acdcaa6c5168e2f1fbcb0e5b70d2e`  
		Last Modified: Wed, 05 Aug 2026 00:49:27 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:33208e6f520d23c823faef1dc12d395513e973ba1446b6f1e6153d2725d04afd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a9ea6defb6aa1e5449970e8e6b6e49c220f6f8a432b3798aabe9efbc0341d0f`

```dockerfile
```

-	Layers:
	-	`sha256:b0538988a5328fc5f800ef07ade844c0ccbf434567eb82f455ffaa5600f34033`  
		Last Modified: Wed, 05 Aug 2026 00:49:26 GMT  
		Size: 3.6 MB (3612206 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13e73cd4d1f5a10b4dfd6a383015fa5c6c4cf67d0c12a8eca2d5b7cd45b2be70`  
		Last Modified: Wed, 05 Aug 2026 00:49:26 GMT  
		Size: 16.2 KB (16246 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:sid`

```console
$ docker pull neurodebian@sha256:e5b3478a811c966dfbbc675f56e32c8f26fc33c1f9d6cf557de865ed81cd79d3
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
$ docker pull neurodebian@sha256:e4d949feee66473abcdf54296d6ed339c1ca4ee6fb79ec93986bf77f3b134dad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (60960642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f1d70d7a0f04718da2e71ba4f6a99f5fc665cb46d60aaee34a4d706743a50df`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 00:48:25 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:25 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:48:25 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:48:29 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:15e2aa5eaf636a71504bd52ce7c8344290aaa10d75e6a3774b131afd96ad5ed6`  
		Last Modified: Tue, 04 Aug 2026 23:52:50 GMT  
		Size: 49.4 MB (49387103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ac7134c6d9186ab8b7dbf7bd86e108ca0c932583534551072dc93e66a4b9f68`  
		Last Modified: Wed, 05 Aug 2026 00:48:37 GMT  
		Size: 11.5 MB (11480633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faf142ab5c8529c14a0b3ca92c8dbb817b8e76a2d941267e919da0fc1dc001fb`  
		Last Modified: Wed, 05 Aug 2026 00:48:37 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b095fb3c4659027c4690f7fa055f22a317c32e177865471c6e483419e94ce7db`  
		Last Modified: Wed, 05 Aug 2026 00:48:37 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce7a12b49549448c9fc19013fb2e953e5c18219c66206b8ad9ecf1d30beb30ef`  
		Last Modified: Wed, 05 Aug 2026 00:48:37 GMT  
		Size: 90.0 KB (90006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:611a86c70aa98ad5b47739f0461cff091d4836b383a13a31f2200a7a5eb576c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3616771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f3796d6f3233472aaa457c25bc4089a78f7afeaf27addfa86756622b4d1f9f2`

```dockerfile
```

-	Layers:
	-	`sha256:983ba173983df8070b4d53352d054396e5c5b23a5d0af14dc4544d41af3d6ae3`  
		Last Modified: Wed, 05 Aug 2026 00:48:37 GMT  
		Size: 3.6 MB (3602867 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e47c5627f1f788f4a0bffa897e954480405b122fa6a60f8eda592b5738846a5`  
		Last Modified: Wed, 05 Aug 2026 00:48:36 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:291b503c99e0d73a6628d4d62261df3fa79821563c4795a1aae7268e06b753e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.7 MB (60666545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32fe1be692cdbeab0e1230fd12a01c2214b04f27acdffb33d65ed5e6cc6521dc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 00:51:14 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:51:15 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:51:15 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:51:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a57a6e9c43887a045814a2d7cd84754b3ba6bf85c26bb62c1127277b311f9c9a`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 49.4 MB (49400019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e5f408bd1fc578cec4baeb1babee5b5d78a456ffb383cf9af946bcf7b74cd15`  
		Last Modified: Wed, 05 Aug 2026 00:51:28 GMT  
		Size: 11.2 MB (11173050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c72242cdf8cbd754e7612b1868535ba89cc291d980a4610dfd05f34b7ef1515c`  
		Last Modified: Wed, 05 Aug 2026 00:51:27 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02cf380e473f0c471ba1236fc44d87ca948ddcb63c4972472829113509242b9c`  
		Last Modified: Wed, 05 Aug 2026 00:51:27 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b8e4ecd1b6e8ddf52ee5eefb653221bf39b6e70d2a022995076ef16b2111953`  
		Last Modified: Wed, 05 Aug 2026 00:51:27 GMT  
		Size: 90.6 KB (90571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:929f85f59e26ec149054590e8f8a65699d912a065eed01181106fef7cb539dbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3621656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c8c0f639d6dc6a443b598d2c038b5a1e50b3e399a691a25abf53130a3c16004`

```dockerfile
```

-	Layers:
	-	`sha256:090cbeac22757c773fd9abc63e9df89995e76f10e25eda6aebb3be7c9d9e6be7`  
		Last Modified: Wed, 05 Aug 2026 00:51:27 GMT  
		Size: 3.6 MB (3607627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:829a6c2285a45286a44f4e84ca054f6bafd57cdfa3862d6977d4a69626555393`  
		Last Modified: Wed, 05 Aug 2026 00:51:27 GMT  
		Size: 14.0 KB (14029 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid` - linux; 386

```console
$ docker pull neurodebian@sha256:f5cf06294f5f4a698404b3d77105647df7590afc6cf4860dfa9aa66c71f19bb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.5 MB (62512791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:397cf6d1fbe4aab0520ddcd98588996616e929baaeb77a0b5c7e291ca60c2803`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 00:49:26 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:49:26 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:49:26 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:49:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:46c18deea7a8f421b1ea61707aa4ea39097cb49d62a1dd51ef6283de6649d1a0`  
		Last Modified: Tue, 04 Aug 2026 23:52:40 GMT  
		Size: 50.7 MB (50702480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b61b6a4ebfcdd6c039a5d180b3b18ee9ce5f66d37284539c979790961740005`  
		Last Modified: Wed, 05 Aug 2026 00:49:39 GMT  
		Size: 11.7 MB (11717131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc6073913f8cb705a9aec08618482d9761a122261be2de0f833392631f86c455`  
		Last Modified: Wed, 05 Aug 2026 00:49:38 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:177f415b570fd12ef60e0a16ab11e8ccc56e5baf4f10835fc3e867424c7a4f83`  
		Last Modified: Wed, 05 Aug 2026 00:49:38 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b9537caa03c7712f8d28198d60d1f6a4f9e8dd00db7a7fbff841482a843475`  
		Last Modified: Wed, 05 Aug 2026 00:49:39 GMT  
		Size: 90.3 KB (90280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:f193c2e371e2f9f1d52fe459fea3ba1ff8ae969664f568f78e6b81053353084e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3614592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:784814d1701414a627f888af1b9583c9b7510095d59732792c48b86d01d4659d`

```dockerfile
```

-	Layers:
	-	`sha256:b4653c22cd2ccc6793f480866a029bb2486bf303f33704212aac9ccc971f8c03`  
		Last Modified: Wed, 05 Aug 2026 00:49:39 GMT  
		Size: 3.6 MB (3600716 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37242d26b4196205e663f47ac61fddf3bb3f2b3194d2e4339ba233c6f67e24de`  
		Last Modified: Wed, 05 Aug 2026 00:49:38 GMT  
		Size: 13.9 KB (13876 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:sid-non-free`

```console
$ docker pull neurodebian@sha256:f538ef333f6243f432f5deb8e765738dd95de4940b54656b571b29335d4acd04
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
$ docker pull neurodebian@sha256:a517bec7cb748d22ae6af5b510e1b3d467f4c61e5492ecd2f04b0606d246c425
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (60961028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b165de0a330118e6b12915224182432e5fb889b13f9e69104997e740891d586`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 00:48:31 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:32 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:48:32 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:48:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:35 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:15e2aa5eaf636a71504bd52ce7c8344290aaa10d75e6a3774b131afd96ad5ed6`  
		Last Modified: Tue, 04 Aug 2026 23:52:50 GMT  
		Size: 49.4 MB (49387103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bbb6ac21fc5892e1a8ff342e50e311b39a8e5fec46f8383ed1d9aa3e8766862`  
		Last Modified: Wed, 05 Aug 2026 00:48:43 GMT  
		Size: 11.5 MB (11480617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea0bf181760602197ffc2aa976ac06ef2f43b0ee5d2c77c86a8ad274ea72607`  
		Last Modified: Wed, 05 Aug 2026 00:48:43 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecaf90a410e36f79e6b709068db298b806c80893bbf8ca73fbf2c86deefecbeb`  
		Last Modified: Wed, 05 Aug 2026 00:48:43 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99af9fb1def61d0100b48ba91ea7f44459f12f1d04ac759e36c0710feff03167`  
		Last Modified: Wed, 05 Aug 2026 00:48:43 GMT  
		Size: 90.0 KB (89987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c91320f1d8e47dac87633dfa3b46cb628bce959f1fbdb6e1a15f142af119966e`  
		Last Modified: Wed, 05 Aug 2026 00:48:44 GMT  
		Size: 417.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:5c4f0dbee1ca743295e147492f8d711416a513b07e5bc3a82f5530ba782b69e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3618833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:297c218566363e7c9fb637408366fb0ee2a92c3dc1b6a260b34cc7a4ce6a7459`

```dockerfile
```

-	Layers:
	-	`sha256:5deeec1ba8d8730d5d657a098a1c7efe7df25241092aea35113fbc2df4b1e2f2`  
		Last Modified: Wed, 05 Aug 2026 00:48:43 GMT  
		Size: 3.6 MB (3602903 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f98a4f5f150fca2ccd44e89b75565586db6d03a65ede8b1a21b9d89b45154f84`  
		Last Modified: Wed, 05 Aug 2026 00:48:43 GMT  
		Size: 15.9 KB (15930 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:0ca7489f4fa8cf2dc3cd8f46ac54a6e4e9841c385f948710a734bf4fb590aeb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.7 MB (60666942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30d6f586e36615aa0ed2edb29b8fe1cbc1ad6dee1ff6d8dff780ab7b7fd80c18`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 00:51:22 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:51:23 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:51:23 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:51:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:51:27 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:a57a6e9c43887a045814a2d7cd84754b3ba6bf85c26bb62c1127277b311f9c9a`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 49.4 MB (49400019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddf2d9d5bb2a0959df03542a40f26e280b90df35f55b4f681a125d447fbeae26`  
		Last Modified: Wed, 05 Aug 2026 00:51:35 GMT  
		Size: 11.2 MB (11173014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bda602f8aa7919129d4b57be026464d392e944f39f2908d2d115ea4cedb8c107`  
		Last Modified: Wed, 05 Aug 2026 00:51:35 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b951938346c22eac5ef00db9db2be92fd44ef646dad0ddaaf4fb7f60845d76`  
		Last Modified: Wed, 05 Aug 2026 00:51:35 GMT  
		Size: 267.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02c57bf1ec072328abf9c0fca91897d245ecdfee063325dddde8a8ceae1502cf`  
		Last Modified: Wed, 05 Aug 2026 00:51:35 GMT  
		Size: 90.6 KB (90587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28f038e595411cbb5cee2ebf767ff1e7227bb8fe26156da129de22844da9c729`  
		Last Modified: Wed, 05 Aug 2026 00:51:36 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9fdaa1a37f580dcc687ece9cedb83385838fb0378bcc968d00cc135809f5d49e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3623734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f999f8eaf2b563690795b5474d0205985c3d79420677b64c703ae415149e7b8`

```dockerfile
```

-	Layers:
	-	`sha256:75feb8b951439927c06cfd4a8f3a2cde3afd251aaf61ca25d9abbd29397ab54c`  
		Last Modified: Wed, 05 Aug 2026 00:51:36 GMT  
		Size: 3.6 MB (3607663 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16358083f44e51c86828cd51dfb33eb25df2af5b37756ea2a28211cfacdb703a`  
		Last Modified: Wed, 05 Aug 2026 00:51:35 GMT  
		Size: 16.1 KB (16071 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:fe60b20ca095dda236b920134d734907392172b5dd41e2c41912ac86a109970b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.5 MB (62513117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9503a032ac6b804cb08e9dd55387ce5d35a5f7caa9f8a14c7862443b6a8ed890`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 00:49:41 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:49:41 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:49:41 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:49:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:49:46 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:46c18deea7a8f421b1ea61707aa4ea39097cb49d62a1dd51ef6283de6649d1a0`  
		Last Modified: Tue, 04 Aug 2026 23:52:40 GMT  
		Size: 50.7 MB (50702480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39eddf4229305dc6c3498743cbbb5e68bf7fbb516f0f84881016258abb1a7445`  
		Last Modified: Wed, 05 Aug 2026 00:49:54 GMT  
		Size: 11.7 MB (11717094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b96cf8a4b5cfcff36eedeb03ddfa55e374cd08be0769f5d989875aedccc5629`  
		Last Modified: Wed, 05 Aug 2026 00:49:53 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb2f1ff8fbab6120b5f36cfa66fcc2c5722a826f6d16980473da2469f59ae1fd`  
		Last Modified: Wed, 05 Aug 2026 00:49:53 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bda6ee3a1393b24dcf2bce18232647935d8d443a15467daa3ebfa4a3c24fe834`  
		Last Modified: Wed, 05 Aug 2026 00:49:53 GMT  
		Size: 90.2 KB (90224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b4ae6b30509f4045a31e4afb3050919e54492a48ef3ac74e49846022817140`  
		Last Modified: Wed, 05 Aug 2026 00:49:54 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:5ffa1f8b2d0d26f1dd1735a891a4c06310763ac617a84e0ca48c5a01ae87b7dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3616652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d001c1dae08f7909ef729ad1fe824748a9c848819b400d3372da83f3459420b`

```dockerfile
```

-	Layers:
	-	`sha256:195fd32f7dc6f306210c13084e1ea04ca48fff56d8c30ebf393de3e97f32b0a8`  
		Last Modified: Wed, 05 Aug 2026 00:49:54 GMT  
		Size: 3.6 MB (3600752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f18828331a6cac198b6d5bdd2afbf27c5b12db9beb1fada7d7653272a4ac3073`  
		Last Modified: Wed, 05 Aug 2026 00:49:53 GMT  
		Size: 15.9 KB (15900 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:trixie`

```console
$ docker pull neurodebian@sha256:644c5a287068cc8147bca4ab1ebad969b31c65c5a8efae4c40ce1eee2669cc4c
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
$ docker pull neurodebian@sha256:da9fa3beadbc8e2079613cafd1556c01f081fe5a82a28773d4854c2bea3f6560
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59699816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f47e939402bb74f7e3f47884c3fd9994f22968fd200e36aa7ef9c07cfb831d40`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:15:48 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:15:48 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 01:15:49 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 01:15:51 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9964e30d9fb5434c9334f95d28f45c906d01dd79e6e4684dde4a63773f4121e2`  
		Last Modified: Wed, 05 Aug 2026 01:15:59 GMT  
		Size: 10.3 MB (10294209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:309b134cd842dfc5df3b2a7600ec3da893893abff694de12b03515fd91653cc4`  
		Last Modified: Wed, 05 Aug 2026 01:15:58 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20adeb4349b5feca961d919c0712e8a79ee467a90d0ed25fb0267c37c6d9bb04`  
		Last Modified: Wed, 05 Aug 2026 01:15:58 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fadfd81066757c2a2de0d677a7261d0d4f03e8a3911f5dc35f2d4a9a9e49867`  
		Last Modified: Wed, 05 Aug 2026 01:15:59 GMT  
		Size: 90.4 KB (90392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie` - unknown; unknown

```console
$ docker pull neurodebian@sha256:2d5c1924576bcbb81bc5b619ff62e8c6519bb7a61a2eba3692e6e58760cd056e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68dd08ae64a38d1d0de1da35a37d4d230bfd50ad8ea386132b34a38eebc481e0`

```dockerfile
```

-	Layers:
	-	`sha256:0b41c229c450a891360e9efa01e4c698bbfa9c869617e06e6152f5c2b5ea3c34`  
		Last Modified: Wed, 05 Aug 2026 01:15:59 GMT  
		Size: 3.6 MB (3614218 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f91615eeea643976af96379c9150c5221768df6f8ccb9462517b17b078e974a1`  
		Last Modified: Wed, 05 Aug 2026 01:15:58 GMT  
		Size: 14.3 KB (14251 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:469742e66efe538e9e86f20bd61f46ad4cf134bdf7ba3ebade26a69084730003
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59846662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96976033e649d0208ceb73ef392a2cdbeda62e1f52ea8c52b5c899745378395e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:50:46 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:50:47 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:50:47 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:50:51 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7860c09977ca60dd6c74b10723c05e654b441efb8c943410159153fd67ddce8`  
		Last Modified: Wed, 05 Aug 2026 00:50:59 GMT  
		Size: 10.1 MB (10078848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3489ea7b480bfa1968752531007611b1f8a39498dcc6279eadb4e7650b6375b7`  
		Last Modified: Wed, 05 Aug 2026 00:50:58 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25a7425b1c134919e1f3fa0c687653a9ce95412213d687447cd32d589e409b84`  
		Last Modified: Wed, 05 Aug 2026 00:50:58 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4ee77a3c99f648b2fed60dc08991aacaa1276fd9690f75fec456e38f668ae58`  
		Last Modified: Wed, 05 Aug 2026 00:50:59 GMT  
		Size: 91.1 KB (91062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie` - unknown; unknown

```console
$ docker pull neurodebian@sha256:1dc34741ca40ca51ccb015e790023681ac77cc713abb522a9aaf3b5c0beea0c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3629496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b9ef576bedba2e010c000c48d25496749eeffb1c3713b7bf324f2165f6f627d`

```dockerfile
```

-	Layers:
	-	`sha256:5dec153d6a036c7b47bd70afd38090facc60edc6c465909b1f30aa370725219a`  
		Last Modified: Wed, 05 Aug 2026 00:50:59 GMT  
		Size: 3.6 MB (3615108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d733fd6259df17d6c3713b86316c42a5e1a64c5cfea7ea98f0419db4be1ce960`  
		Last Modified: Wed, 05 Aug 2026 00:50:58 GMT  
		Size: 14.4 KB (14388 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie` - linux; 386

```console
$ docker pull neurodebian@sha256:bd5afe6199b66a30dc1f829c8c3982014a30754cca8a0f9bc1949cb7f81c0940
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61393032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fc3d18e54edef2458dde665c221fa10ba7d4d821c94878fbc6eac5a531c57d2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:48:56 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:57 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:48:57 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:49:01 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7675708177d5a41df755bb146c3624b6c71f646d85f7bcb8f5f3bb587af896f8`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 50.8 MB (50831168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57e21e16dc9460da177f9a39e5588b0bef1c3e8a68f91cb0a0f4dc7550d991a4`  
		Last Modified: Wed, 05 Aug 2026 00:49:09 GMT  
		Size: 10.5 MB (10468187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bd9649fc945a5341fff8b413beffe7f7422145544c93a20b06d8a440c632543`  
		Last Modified: Wed, 05 Aug 2026 00:49:09 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0aa0fc22dfc72c9a4e9688ecd1f2caf9aaaf884e9510cb700bce39b2b07c791`  
		Last Modified: Wed, 05 Aug 2026 00:49:09 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32e961075bdc7d293611393d20ebab1f6b0de9f64d8094c4037772f1145d6700`  
		Last Modified: Wed, 05 Aug 2026 00:49:09 GMT  
		Size: 90.8 KB (90775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie` - unknown; unknown

```console
$ docker pull neurodebian@sha256:3c4ae5ed88411f4dd62cfbb7cbccdb309042b731fd3b2b9c5b67cfe8c32660b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3626384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64eb4d781dd0d2c480f203dd154c68f37cc0922f7a9c36058f712f9db36e1fd9`

```dockerfile
```

-	Layers:
	-	`sha256:28a620dcc3041ff023a5ae4709261f22cee70c531ccc954d3b4c854ac103b439`  
		Last Modified: Wed, 05 Aug 2026 00:49:09 GMT  
		Size: 3.6 MB (3612166 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4dca1b41ce85404e2e1b85b93fe025c53099fff854418a9e1e29ae8dce2a22d7`  
		Last Modified: Wed, 05 Aug 2026 00:49:09 GMT  
		Size: 14.2 KB (14218 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:trixie-non-free`

```console
$ docker pull neurodebian@sha256:0aab2fb945850c00d268f089ec7addfcb48e6cbd1f74681dbf4909cab5bf851e
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
$ docker pull neurodebian@sha256:7ec2b32c5fe7b1e2177b9ec1c81c8d292e714935beed1dca4313b8b015b2e06a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59700199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edc4c320630abd41e50f4a34094e1610413b3474fa53ab074b864ac3c84febb9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:48:22 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:22 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:48:22 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:48:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:26 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fddc987d229ce9aca6cd2f34d826ce74078fe45c62392bccb71eb973072e29f`  
		Last Modified: Wed, 05 Aug 2026 00:48:35 GMT  
		Size: 10.3 MB (10294127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23c12c74747326619a51ed3f9e9e572ab5c5996f468766cd7e8ee074e0e68be`  
		Last Modified: Wed, 05 Aug 2026 00:48:34 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89c7e5a79a08c091ce053f25dbd66f675b348108a38ec351bfcb5828b60d66ad`  
		Last Modified: Wed, 05 Aug 2026 00:48:34 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd55cb4734a61b3f066fd01573a379386850ee1c6894f06f5cc1e3038960c09`  
		Last Modified: Wed, 05 Aug 2026 00:48:34 GMT  
		Size: 90.4 KB (90410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b622f34090243b5a723c7124100bafe661b00eaf2f083c0b4f671d4bca9edaa7`  
		Last Modified: Wed, 05 Aug 2026 00:48:35 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:c8880ee825b7730a73eadc7977eb3ef3c475f53c190f19ca45aed52f4075b1f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3630540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d882d95c33ef014e02af824dcd178bf3949669ef600b3ad4138d314c2042be45`

```dockerfile
```

-	Layers:
	-	`sha256:49abb387cc699d91712c54fa5ad012d6a711279c69844d2fb3cdb5d3f691a825`  
		Last Modified: Wed, 05 Aug 2026 00:48:35 GMT  
		Size: 3.6 MB (3614258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:417d9b51d9e268de204878fb651173f325c01580e761d19b7441edd850be119b`  
		Last Modified: Wed, 05 Aug 2026 00:48:34 GMT  
		Size: 16.3 KB (16282 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:811d95a53c37abb999eae15a32e02812e2cfcbe24c41b45e4f2f876b3f5ad47d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59847172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad379bbf4aacf0b5d8ce3b747779abb3668597e520e6fb15a6cdd1d0c2a8232d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:50:48 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:50:49 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:50:49 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:50:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:50:53 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eda41656b1343ccda3edf2463168493a99e0f943fb3c003e8de6d41cbe2cde29`  
		Last Modified: Wed, 05 Aug 2026 00:51:02 GMT  
		Size: 10.1 MB (10078906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5215d7a02c3c744b15f746b5dffda53eaeeed23302aa0c6d835e87a88b937408`  
		Last Modified: Wed, 05 Aug 2026 00:51:01 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecadc881d9a9ac483ef5e11ea1e6b30082760fa2a210deafb4f1014b4bdfde70`  
		Last Modified: Wed, 05 Aug 2026 00:51:01 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbcd049ff24f478f5e5a19a3b2c038a923ba763a4e4d31614b199042d11dd868`  
		Last Modified: Wed, 05 Aug 2026 00:51:01 GMT  
		Size: 91.1 KB (91069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9610e517ebe523a34062ff839d61d1da957880ce43a02dae8c5bc4545a47313d`  
		Last Modified: Wed, 05 Aug 2026 00:51:02 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:88e785446e1bcbb672586e3197792520081b23786c39e1b467e3c8071e2cf691
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3631582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2d27a0f4380bcea37e612f7dfb1f5c759a862a0235fcda6cc4e3633ab7cffd9`

```dockerfile
```

-	Layers:
	-	`sha256:2361ee306169b94345176db3a0bb6219ea9ccc9681dfaf9ffeb07da66eec5284`  
		Last Modified: Wed, 05 Aug 2026 00:51:01 GMT  
		Size: 3.6 MB (3615148 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:967529f28fb9195093044325218722451938e320f3223d63296091742506a4b2`  
		Last Modified: Wed, 05 Aug 2026 00:51:01 GMT  
		Size: 16.4 KB (16434 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:a6e565db29e290551a4fa0ed5408d69478144489cee3a7abe0fde8c0149dba83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61393368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:919a3efac635b008da025f9335c44db3283f094cb24b9a0b184965852141ec28`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:49:14 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:49:15 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:49:15 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:49:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:49:19 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:7675708177d5a41df755bb146c3624b6c71f646d85f7bcb8f5f3bb587af896f8`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 50.8 MB (50831168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13f6f0fe2740bfe20f1708b388e6e347f2eacee61d6ae4fb1025d6bb89ffddd9`  
		Last Modified: Wed, 05 Aug 2026 00:49:26 GMT  
		Size: 10.5 MB (10468107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0720da6749c5d9a59e48c1f1879f88fb52dc1fdd33e8b3e51df76b1a3689e0`  
		Last Modified: Wed, 05 Aug 2026 00:49:26 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69eaebb446da9d5f53c7455d455bb298af421bc3b7b5fc7db8e6e9cab1283719`  
		Last Modified: Wed, 05 Aug 2026 00:49:26 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d37928fb9fd124d96b5e750fd4129f724abee44f787b6ae03544412a7ced1b5`  
		Last Modified: Wed, 05 Aug 2026 00:49:26 GMT  
		Size: 90.7 KB (90745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d294b60d7987780840f5854d88dbb7a4733acdcaa6c5168e2f1fbcb0e5b70d2e`  
		Last Modified: Wed, 05 Aug 2026 00:49:27 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:33208e6f520d23c823faef1dc12d395513e973ba1446b6f1e6153d2725d04afd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a9ea6defb6aa1e5449970e8e6b6e49c220f6f8a432b3798aabe9efbc0341d0f`

```dockerfile
```

-	Layers:
	-	`sha256:b0538988a5328fc5f800ef07ade844c0ccbf434567eb82f455ffaa5600f34033`  
		Last Modified: Wed, 05 Aug 2026 00:49:26 GMT  
		Size: 3.6 MB (3612206 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13e73cd4d1f5a10b4dfd6a383015fa5c6c4cf67d0c12a8eca2d5b7cd45b2be70`  
		Last Modified: Wed, 05 Aug 2026 00:49:26 GMT  
		Size: 16.2 KB (16246 bytes)  
		MIME: application/vnd.in-toto+json
