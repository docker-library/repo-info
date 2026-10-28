## `neurodebian:bookworm-non-free`

```console
$ docker pull neurodebian@sha256:a1147e9f435bd7427682fd99349fde9bc4d820913c54afbe0798dc8da267fc5f
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
$ docker pull neurodebian@sha256:e45ab0426dc84344e1f38c59af288565a2c19534c996c5bbcb28cdcfcb5c439f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59894097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1df88faa62ef0b714fb4a26c7a972e94528760094117dd438d860643e599bb14`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:42:30 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:42:30 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:42:30 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:42:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:42:33 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dda5c344c18cd09c0b5c70ddc6f9b56f54ac96034d4cb1cfdf0ab4d21f79f09d`  
		Last Modified: Wed, 28 Oct 2026 01:42:41 GMT  
		Size: 11.3 MB (11273523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fd566d39f150dedcb38c4bf5802b5cfab10723e098390a2c87d7204c2a81b28`  
		Last Modified: Wed, 28 Oct 2026 01:42:40 GMT  
		Size: 1.9 KB (1900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da16f3d24087de489a9f01a6d9bb7499ff903d25f45b8955af6e08b6b468926`  
		Last Modified: Wed, 28 Oct 2026 01:42:40 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e38207a6acce2f8eb744921c3fb89f04d44b291f04ee1c24a268d648d194b5fe`  
		Last Modified: Wed, 28 Oct 2026 01:42:40 GMT  
		Size: 93.4 KB (93397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a78917c05c19786534fdea305eba0b6e405af851871e18f407e09132ce57a6c`  
		Last Modified: Wed, 28 Oct 2026 01:42:41 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:1ac5f3131251a4bae44f35e6d5081b7cef087ec0a845214e1b276eb4a280d852
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d92d15ed50e292cf97611d8aa32799290a834f632f6d5356446c97f28b77d142`

```dockerfile
```

-	Layers:
	-	`sha256:12a55266663a07e85bda77908bf02cfa0f26be3687c405af6ca3ae7f5c81263d`  
		Last Modified: Wed, 28 Oct 2026 01:42:41 GMT  
		Size: 4.1 MB (4076023 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fd8282377a67364fb546cf29ed36270942f6f90367e23683d528a09701315da`  
		Last Modified: Wed, 28 Oct 2026 01:42:40 GMT  
		Size: 16.0 KB (15992 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:8244312d8542eb245d75c688924e2b21d9f35dff289fa6d10602457583dfa3ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59752176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e57f08c054db4988b76f49caaad81c843281c979289af5a91f0aae40b8ec4591`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:52:28 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:52:28 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 00:52:28 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 21 Oct 2026 00:52:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:52:31 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4512d8c21babe5cded19de45dc0ff20c0cd0e8a05d3ab7ea7cda57c782a282f8`  
		Last Modified: Wed, 21 Oct 2026 00:52:40 GMT  
		Size: 11.3 MB (11252873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e2ff2d9a1f12b2f69128e45bd37e06870a22ae176699c579d1df0cdd15c7944`  
		Last Modified: Wed, 21 Oct 2026 00:52:39 GMT  
		Size: 1.9 KB (1899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70146c87c4855ddf6b893ddc8dc282d643a30235d4e6dfbb4c4a1b41e15fb604`  
		Last Modified: Wed, 21 Oct 2026 00:52:39 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1be998c66763a4d346527622de57c636d995c15a45b37dceaf4621711143739`  
		Last Modified: Wed, 21 Oct 2026 00:52:40 GMT  
		Size: 93.6 KB (93569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f48b785be0e62c051ba4aeea0fe23adf37c671ca8077496f1d6f946c047ed41`  
		Last Modified: Wed, 21 Oct 2026 00:52:40 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:abd76b9f92c51d5a29be3ab2a3ccaa5f2dfb3d03c6687345f6d33e4c0d3d5d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:762468d03f0e8e0a236fbfdce0c626513df65e411e2c7ab01f5af835d5a6e82a`

```dockerfile
```

-	Layers:
	-	`sha256:1962abd2deb88db1fc9dcc2d5e2df2e875a2d7aa77d316031d29d5fd60339e4f`  
		Last Modified: Wed, 21 Oct 2026 00:52:40 GMT  
		Size: 4.1 MB (4076265 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5e9301b580ff683cc82e2630f9d92933e143e9cd8fc10db360a7f4918462a1c`  
		Last Modified: Wed, 21 Oct 2026 00:52:39 GMT  
		Size: 16.1 KB (16130 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:1d3d378e95b4297c313db8ff90f30d827b57bc5bcb6d472fa5c8847898de0ac4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61302843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a973ba3da69fbd79efc15424ddde295c44992373162c129b3640566f74f6e26f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:43:32 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:33 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:43:33 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:43:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:50 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:7d013cfb99f9a659ec5a70c7dc91ff3a30fef8cec1975cdded7a6450f2dc79f0`  
		Last Modified: Wed, 28 Oct 2026 00:10:25 GMT  
		Size: 49.5 MB (49513537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98e0d5c145dc58c1e533528219f618739e6ca84300f62710f5aa6d392842e1fd`  
		Last Modified: Wed, 28 Oct 2026 01:43:44 GMT  
		Size: 11.7 MB (11693238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0288e2fa4f64bd2e6969f494b0683917460d1e51e5c127682390c8d7956f229`  
		Last Modified: Wed, 28 Oct 2026 01:43:43 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da3a58845e7cd3c30ae69530649beb40cbe5dfc32bb32e129b95e99ee973c58`  
		Last Modified: Wed, 28 Oct 2026 01:43:44 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd0e7a31edeab4052763a31221467ec40697e0de474ebfc95e78415ff4748ab`  
		Last Modified: Wed, 28 Oct 2026 01:43:44 GMT  
		Size: 93.4 KB (93442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b527abfe8d235bc661218134d54a561570522a5a648c0f4de2d0b9d9159d211d`  
		Last Modified: Wed, 28 Oct 2026 01:43:57 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:0e069c9f790417de77852bd1cc387474a965111524bd45e44c629dce96c751cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4089952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01ebd36ffe0cf11e9e85dd3d98e8bf329a8c425baae615f29f6942daf011357d`

```dockerfile
```

-	Layers:
	-	`sha256:d3b0f2d09f478979820c2ac79ba97239277d323ffb9b1f1be1d67e530317fbfb`  
		Last Modified: Wed, 28 Oct 2026 01:43:57 GMT  
		Size: 4.1 MB (4073990 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a03b3779651417d03d041c60c071cabe7254bcdfe8f80bd4d96ab517333c9224`  
		Last Modified: Wed, 28 Oct 2026 01:43:57 GMT  
		Size: 16.0 KB (15962 bytes)  
		MIME: application/vnd.in-toto+json
