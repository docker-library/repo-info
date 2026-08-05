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
