## `neurodebian:nd120-non-free`

```console
$ docker pull neurodebian@sha256:b2c7dbc2ef0f17996ea57b9c5b59f9ccf25592e8255e075dce9ad605cfab265a
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

### `neurodebian:nd120-non-free` - unknown; unknown

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

### `neurodebian:nd120-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:e77616cf5bfbfc7c87701a1c2a68dbf6975e7d3832d89950f90ca3463d844339
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59754339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f3f1041fe83a815bb075fbf623252d411051e301150d2edc570dfc14f319f21`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:45:59 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:46:00 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:46:00 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:46:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:46:03 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9503e56e791e954ded25cbbe3d642529f6f7f335d5716c9a646b4dcdc0bea46`  
		Last Modified: Wed, 28 Oct 2026 01:46:14 GMT  
		Size: 11.3 MB (11252969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12bc8973c1c0724e9be57aa5eda7f0efe1e2485b64024805f016918257b4a200`  
		Last Modified: Wed, 28 Oct 2026 01:46:14 GMT  
		Size: 1.9 KB (1899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:782e66cd82224be62ed37e437f508f21e59eb516ffdf012cbf631f5a19bc8761`  
		Last Modified: Wed, 28 Oct 2026 01:46:14 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b09a81306d391267949153e171758cd6400a34a842581f4d72f3a5610fcae2b1`  
		Last Modified: Wed, 28 Oct 2026 01:46:14 GMT  
		Size: 93.6 KB (93575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5671bde7580384a835b2c7664bb493136bef3ef439cd1afc1758b4631f897c4d`  
		Last Modified: Wed, 28 Oct 2026 01:46:15 GMT  
		Size: 451.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:1562b13ac3e189900b26943321ec3cad0be50b2a58a8008d2bd977a28eb03dfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b5279eaac72479c45b88fabbb47fcfc321ac4571c57b1519b23880ee441cc68`

```dockerfile
```

-	Layers:
	-	`sha256:12cc574131344a9bb77cfcc7163c874359ccdb3f21b7150f0bb96fb2f97ed420`  
		Last Modified: Wed, 28 Oct 2026 01:46:14 GMT  
		Size: 4.1 MB (4076265 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4bddb51ba01c65ef77c80c87f2e02a2ed2492afa27af4ad7c937a3a1fd9244a9`  
		Last Modified: Wed, 28 Oct 2026 01:46:14 GMT  
		Size: 16.1 KB (16132 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd120-non-free` - linux; 386

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

### `neurodebian:nd120-non-free` - unknown; unknown

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
