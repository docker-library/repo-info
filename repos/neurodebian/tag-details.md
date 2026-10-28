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
$ docker pull neurodebian@sha256:29bdca91818b0beca7965490adaa4269730b447c1a55faf8b2cd5da5462872d9
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
$ docker pull neurodebian@sha256:5999c73333c5f044a683167f6d3a730c927717375c030f6a7c779606cad0fe25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59893690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b291cfdcaf9a5c9547c36795fcdd65598bde4079de3e291dedbeb8e929e60ce0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:42:28 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:42:29 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:42:29 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:42:32 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:627617ab94ad5b2c712fed9a4308dbe5c84682449931f6fca64689955707ad04`  
		Last Modified: Wed, 28 Oct 2026 01:42:39 GMT  
		Size: 11.3 MB (11273559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b1caad7fadcfb7c743a717844c246c2e222557df85366d08b90fd689c8fdaad`  
		Last Modified: Wed, 28 Oct 2026 01:42:39 GMT  
		Size: 1.9 KB (1903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:831d5d697aba9e63cd2c3f2cbe9ce841c771ffa391e4d0af4870cc8c3b11bc02`  
		Last Modified: Wed, 28 Oct 2026 01:42:39 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16f681840219671ffb40baa453f6b0250fb25d26d7245473f0996a102d1ce7ad`  
		Last Modified: Wed, 28 Oct 2026 01:42:39 GMT  
		Size: 93.4 KB (93404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:2a472b7db30636627c8d1756319804c3edfae811a133afe9916be258dd6fa002
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4089951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e8dcf42770a8a303da5fd880a1599bc18df2360633ae37b31b55ed07c35b49e`

```dockerfile
```

-	Layers:
	-	`sha256:f036645ee2d081fdcbb7254f08c4a51014cf77e5d69cd3d76b536aac6644c1ec`  
		Last Modified: Wed, 28 Oct 2026 01:42:39 GMT  
		Size: 4.1 MB (4075987 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9afb53b6518d86d93e95975902a51ea2b3557a33dcccffa06071194c2af4b365`  
		Last Modified: Wed, 28 Oct 2026 01:42:39 GMT  
		Size: 14.0 KB (13964 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:c2d97b6020e4349340bed379527c7c98d7a8d6c7fa820b0fb23d9bb45c1130f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59753829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51602447cfaa4fbee1984db11b0345dbcddf6f5d175724da139e7f54ec84692e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:45:52 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:45:52 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:45:52 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:45:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4015637c93165d0f6df8b2c87e5ccde119a1b6d56c53350a5bbd050c31383e1`  
		Last Modified: Wed, 28 Oct 2026 01:46:03 GMT  
		Size: 11.3 MB (11252944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:651e5302b46863e028751f549b50a6c22f58c53d418543c1f41f1142b8bcf4bc`  
		Last Modified: Wed, 28 Oct 2026 01:46:03 GMT  
		Size: 1.9 KB (1898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:534070351f907c79548e5527a9e316fb02503b13190d0c2deaef3bdefedca422`  
		Last Modified: Wed, 28 Oct 2026 01:46:03 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18d15a0a1e656c2c179a5e5481d92b540042b31c0890177243cd9e545f2725e8`  
		Last Modified: Wed, 28 Oct 2026 01:46:03 GMT  
		Size: 93.5 KB (93543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:2d411d4dc85d344e5f101ad950a389136a6a2c4ee589f8867a534d6bb341cd4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e50fd9326096c1aba5844ac23dacc02717599a7d98c3e0a7df5685917445a827`

```dockerfile
```

-	Layers:
	-	`sha256:376d3acfa19c95f022d48ca3d9e2c7b4596267d9d182786f020da68b87044ed2`  
		Last Modified: Wed, 28 Oct 2026 01:46:03 GMT  
		Size: 4.1 MB (4076229 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a37694c5c168251baef25c873085b2eefe595547ac6483e51873bf4a0cb34b1`  
		Last Modified: Wed, 28 Oct 2026 01:46:02 GMT  
		Size: 14.1 KB (14089 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm` - linux; 386

```console
$ docker pull neurodebian@sha256:985560252401fd401c18cc9c49f2a6791e737f1e9707a8ae4aac74437a62bac0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61302393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80fc360944017cf546432de9d664639e2dd642554cedf3eae287bb4d4aa43cc1`
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

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:248aa594747420a86ca72f0daa8d4f0313522ae92b0328f1520c482e78b65dec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4087891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3b05472b9c6c407ffbce36cf5112c9cb9985f582d00788a141829f4eeddd6f3`

```dockerfile
```

-	Layers:
	-	`sha256:ef87adff59021e56a709d3de9b9ee2ec8c7a298f559242ccc516b3558668a5a8`  
		Last Modified: Wed, 28 Oct 2026 01:43:44 GMT  
		Size: 4.1 MB (4073954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b2d899d5aeec05bd6e364b5b5970f6c3cbcd83e82c119ae933be512cf16a00c`  
		Last Modified: Wed, 28 Oct 2026 01:43:44 GMT  
		Size: 13.9 KB (13937 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:bookworm-non-free`

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

### `neurodebian:bookworm-non-free` - unknown; unknown

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
$ docker pull neurodebian@sha256:477652febedf8de9f2bf4d46e52f206c0fc81ed26127202ccab6e9f72df2d662
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
$ docker pull neurodebian@sha256:56b66d4ba40b3e81d96cfb9a5601ccf1ea9d47ecd8bb9e295bed84447373e881
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61576520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d42e97b2d283bcf31463add559bd676c546d30b29e1e3bdbaa1c87dfe61251ba`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 01:42:55 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:42:56 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:42:56 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:42:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:65929644eb8cbb6d5dfb27c78d4d6cb80d806c5c2ed37c7b627d5a03a29749cc`  
		Last Modified: Wed, 28 Oct 2026 00:10:34 GMT  
		Size: 49.8 MB (49814412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d5332434faf2ff84bd4cf3ad34d4fd4be06b807d27d58c6accf4f78af097655`  
		Last Modified: Wed, 28 Oct 2026 01:43:07 GMT  
		Size: 11.7 MB (11669054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae8daae63029a09f97c69de9390113cb4dbf9223321741408a4bd9499a22125e`  
		Last Modified: Wed, 28 Oct 2026 01:43:07 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b80162623f77117bfd641ca626e7a1e14e8082e0f637dea1ba5336716763bfe`  
		Last Modified: Wed, 28 Oct 2026 01:43:07 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a1e978cfa4b46c0b2a9fdff6cc67efcad574058162630fc85b46c435e22f028`  
		Last Modified: Wed, 28 Oct 2026 01:43:07 GMT  
		Size: 90.1 KB (90149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:48b91cca0f02ff26b9a63771a139024bff0341c8b680d38cddb0cf7e91c39c62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3596512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f067b0618314da1f94e4285aad2d649f9f1f5f29e40a0d9fbb09252f9e290ba8`

```dockerfile
```

-	Layers:
	-	`sha256:9d596cb967d0a5fc7ba1812969409eb2e60925c8180d5498d8fa6ce0f00fa533`  
		Last Modified: Wed, 28 Oct 2026 01:43:07 GMT  
		Size: 3.6 MB (3582580 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51808b379f15b56d12c58b9dc4754c7dd2eaf276d2d9cb3df346f1239e5bf483`  
		Last Modified: Wed, 28 Oct 2026 01:43:07 GMT  
		Size: 13.9 KB (13932 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:4b8d609cb8dbb9d2cbe7b0e71bb5a22ed550740a9a8825d59c2d86a6fa7e1a9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60418776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b5e5724acb8d5782e4f15a0fb0528768800b2f03061e4e254c24889693be6b3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 01:46:17 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:46:18 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:46:18 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:46:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:fba7d1c02cf0644704ea4dcf623c9231723afd3f333d8f052a829e427cefc4a7`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 49.1 MB (49143254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deb32ba855840079aa586b75eb158290897cdc71e316c0bc0f98e2a6e19a3b37`  
		Last Modified: Wed, 28 Oct 2026 01:46:29 GMT  
		Size: 11.2 MB (11181946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eb2788acb42328a13ecbe4d1054d1b534136b77041244d9c7b3451306ec0e37`  
		Last Modified: Wed, 28 Oct 2026 01:46:29 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99bd6d9425301891a9d0ac43d2e5e29e455a4278bfa54f41fb91b1ac39e2377`  
		Last Modified: Wed, 28 Oct 2026 01:46:29 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06f3d56de1e1c2a1f15c2e6752593cf5288c934b3ed32d93ea14c71cef93d994`  
		Last Modified: Wed, 28 Oct 2026 01:46:29 GMT  
		Size: 90.7 KB (90671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:65efb44ff4146b57235905d60be6ad262fef1170127f6dee89da0fe6e91a1737
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3600121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2581f66379bd18eedfe646d62a3a47fdad2323427f5363ca50c318e781bd3ce`

```dockerfile
```

-	Layers:
	-	`sha256:9760d5b98ce2ebd138f2a1f0b69e4f5db37bc1c4f0f9f516c340f9f56450264e`  
		Last Modified: Wed, 28 Oct 2026 01:46:29 GMT  
		Size: 3.6 MB (3586064 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da2b96aeff9436939f58f7d7dbd138d22321b0637f075ce7db3cb58532c13a81`  
		Last Modified: Wed, 28 Oct 2026 01:46:29 GMT  
		Size: 14.1 KB (14057 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky` - linux; 386

```console
$ docker pull neurodebian@sha256:ec2cf1c88e170f6b3947b216da61fe19ac22538cb5c42433684bbb01851b897b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62886748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ce58dc937206893a0cd3b0643cd7f6f6aa960410ac7ff010a5b91a827c05115`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 01:44:38 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:44:38 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:44:39 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:44:43 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7672c9acd98a1e06add035e6ee3e653a507f7b7f4b4765eff34df030dfbe09c5`  
		Last Modified: Wed, 28 Oct 2026 00:10:35 GMT  
		Size: 50.9 MB (50935447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51e69ee716f6d06a0cb0be94951007b321d515d3ed02541804e183350f8a167`  
		Last Modified: Wed, 28 Oct 2026 01:44:51 GMT  
		Size: 11.9 MB (11857949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95a8c94cdb1e903cda8e80073261dcadb7b4ba4978e8e7ed3a5d338a6e4d0936`  
		Last Modified: Wed, 28 Oct 2026 01:44:50 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64aa0b9e90a12e5e472e32301417f235d8cb1b0570a72b7c7dec7fbb762691b3`  
		Last Modified: Wed, 28 Oct 2026 01:44:50 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03cfe2a11709f7fc6413fa303f287195b80e279c929834bfce292c8b304e0a4f`  
		Last Modified: Wed, 28 Oct 2026 01:44:50 GMT  
		Size: 90.4 KB (90446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:d1377ace4d2451c57e38bff10c91179f3d28271b51dabda16c95b30a1226a735
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3594334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42f03ff9f00ea5ed70a4cc9b44cf611e5716e0157e66d1c785ee1b242c062ded`

```dockerfile
```

-	Layers:
	-	`sha256:a5065d3818e213a9e87d6f90889373890fb9706ac440661ed78b0d6e7986df1d`  
		Last Modified: Wed, 28 Oct 2026 01:44:50 GMT  
		Size: 3.6 MB (3580430 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b324e565b6ef3e2786c0bf0278188d5e55b06b887c2a7575007f570bfec816ef`  
		Last Modified: Wed, 28 Oct 2026 01:44:50 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:forky-non-free`

```console
$ docker pull neurodebian@sha256:69bf04b5df8c9a9c9818ae19d20325316567b263ddbc62fe6ac18968dece09fe
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
$ docker pull neurodebian@sha256:d446c5ff0b7abd73fc5ccd2fe63cfe4fd4d7d91a48fcf3d8bfe93696aeec8db6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61576947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aee6f0e1bb6bc381f2219d709cd690b192df70f229b8fa18d901610d6fdd45a1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 01:42:55 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:42:56 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:42:56 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:42:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:42:59 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:65929644eb8cbb6d5dfb27c78d4d6cb80d806c5c2ed37c7b627d5a03a29749cc`  
		Last Modified: Wed, 28 Oct 2026 00:10:34 GMT  
		Size: 49.8 MB (49814412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d15952eb70107cf3d193b7dd11f03b0ba36209b8a720d9c7462570e03fd1ec1`  
		Last Modified: Wed, 28 Oct 2026 01:43:07 GMT  
		Size: 11.7 MB (11669022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec6088724f67c903f967fb4b1df2867b9f6cf8b8eee3930ddae2570a877aa611`  
		Last Modified: Wed, 28 Oct 2026 01:43:07 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b80162623f77117bfd641ca626e7a1e14e8082e0f637dea1ba5336716763bfe`  
		Last Modified: Wed, 28 Oct 2026 01:43:07 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f2c5bdb148cdbc56e47c57ff79ced5ccb2dd66547a3274a837711c43a4041d5`  
		Last Modified: Wed, 28 Oct 2026 01:43:07 GMT  
		Size: 90.2 KB (90156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad92ae9df8d3b87c8fe48ae7d46f8a037fc5c3a0698c4a2b9436d8610c56b5c8`  
		Last Modified: Wed, 28 Oct 2026 01:43:08 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8a35249c78a5fc9dd3e91e44d73c29c1f5996de5f62d152b78914b77f6130e9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3598575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4abc30d0bfc26217650f7397f24772b1ec1d88e2ca695eb6f21916a35d5438b4`

```dockerfile
```

-	Layers:
	-	`sha256:139ae7b640b3f7bf13efdcd6ea81494b06b438920138ef1dedd0c8e2d8a1491d`  
		Last Modified: Wed, 28 Oct 2026 01:43:07 GMT  
		Size: 3.6 MB (3582616 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:93ea8b85b88e00922455913815e8194648e5f4818838bc9255fcf8d58417fd5b`  
		Last Modified: Wed, 28 Oct 2026 01:43:07 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:089f38e0aae80bf030773b9b8601c0cebbf4b1746e085961b09cc7a936b9043f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60419226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d30bed6b9b4de50a922786f60f73ac0f0d4f0e2b03a8c6d6280e00bfc7007dc`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 01:46:28 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:46:29 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:46:29 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:46:32 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:46:32 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:fba7d1c02cf0644704ea4dcf623c9231723afd3f333d8f052a829e427cefc4a7`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 49.1 MB (49143254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10f7804927c5709694401423bb6f5599caece27080756fbd42f2e84e3f7e2520`  
		Last Modified: Wed, 28 Oct 2026 01:46:40 GMT  
		Size: 11.2 MB (11181956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e4505fa7d91478c48a3cb3cab2efb6340d90dd03cae80c35cb8b2345baeb75`  
		Last Modified: Wed, 28 Oct 2026 01:46:40 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:144b2b327259e1378f39299594bed7bde29ef07a4fe2ca1ec2d80313ef1ff4d3`  
		Last Modified: Wed, 28 Oct 2026 01:46:40 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:937d17b248d3fb4feebfba209fa6e6eba74223c2e97ef810fce82d4a3c8d2051`  
		Last Modified: Wed, 28 Oct 2026 01:46:40 GMT  
		Size: 90.7 KB (90660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9781e11dc18dff1e17fd1276f3e525becbb6bcc854ee705fda7080878c78eb44`  
		Last Modified: Wed, 28 Oct 2026 01:46:41 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:e0bfd5cc9f800f0b20d9854305a5b5ae143cb21bcd4d755c80b216a7a8d73b24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3602199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf462a976f558ff3e1db460879a807b50fa383789f8eb7fb0bb1b67be35039a6`

```dockerfile
```

-	Layers:
	-	`sha256:85262fd69e25d54b467170de4735b6f409683a5f36bb3628f70e93992347de57`  
		Last Modified: Wed, 28 Oct 2026 01:46:40 GMT  
		Size: 3.6 MB (3586100 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1aff98ed2da06946c6710a5d189bf769f0efe9565ee827a449ef051956cbf37d`  
		Last Modified: Wed, 28 Oct 2026 01:46:40 GMT  
		Size: 16.1 KB (16099 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:c98e87b979195c0880b4d6d9642a97d78e921e2f8c8f3f3736062ba0aab446b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62887054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4359a312a34111be0cf65c972e7c497a39488f74c07d255ad5e6627f41bc2e9f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 01:44:48 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:44:48 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:44:48 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:44:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:44:53 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:7672c9acd98a1e06add035e6ee3e653a507f7b7f4b4765eff34df030dfbe09c5`  
		Last Modified: Wed, 28 Oct 2026 00:10:35 GMT  
		Size: 50.9 MB (50935447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aae0d2c16beed9deedf8f053a190cce50e2cd7200ef71d8a4b7fdf6a921a1c1`  
		Last Modified: Wed, 28 Oct 2026 01:45:02 GMT  
		Size: 11.9 MB (11857841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51e7d566c859f9cf207a55a4d9b129a5cdf744ba7ad9cd19ac3c439ed4508e6c`  
		Last Modified: Wed, 28 Oct 2026 01:45:02 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa1a49c814278a49e44ee9d4cc670ddeea9f442a52dadbb6169fbc904bf682ab`  
		Last Modified: Wed, 28 Oct 2026 01:45:02 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3094cc6bf3e5fb04eb90088eaa9c1b84aa30b52108a7c9efa6cd648639f9d7df`  
		Last Modified: Wed, 28 Oct 2026 01:45:02 GMT  
		Size: 90.4 KB (90413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f83d292188ad94c318d4149c3f9ea87b9c1d0154f333fb64647c700273d6f94`  
		Last Modified: Wed, 28 Oct 2026 01:45:03 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:2dcebb1bbf24001ef8055a6e5b83383b5c3deff94b4ace736c08352729b70806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3596395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2526499de6ca6f9eec9bc0b36753c44bc0ce7fb06f9989f81ea7e24a85ece33b`

```dockerfile
```

-	Layers:
	-	`sha256:335dcb56f77935a5e59ecb11b80b8ddad9fab43d973c07edb16098900975c564`  
		Last Modified: Wed, 28 Oct 2026 01:45:02 GMT  
		Size: 3.6 MB (3580466 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b63b45adb0332227b6ff1da2dc1a14f1dd42acf8f079957f73ca62dc582d540`  
		Last Modified: Wed, 28 Oct 2026 01:45:02 GMT  
		Size: 15.9 KB (15929 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:jammy`

```console
$ docker pull neurodebian@sha256:3f1d617f10ddf9872ba1bc50bbf79490f92c7a791c7c5ef2f2d2f10f7b629038
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:jammy` - linux; amd64

```console
$ docker pull neurodebian@sha256:582622a20498d1059ca5029ee29eb086e59f5e4de07b1da5d9156eb808c3c01e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33491985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b5d7b0d49eec573794554789111c29a425ea5ea0ed63b78eb4d6ec1fb24ce8b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:25:35 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:25:35 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Mon, 26 Oct 2026 23:25:36 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Mon, 26 Oct 2026 23:25:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5de7708dc49340ae9b2fb48f94d62ca4de7bdfcae187279dd8b8f9b2251da0b`  
		Last Modified: Mon, 26 Oct 2026 23:25:48 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:974f5d6b5fe26a42e5ec3170bf4aa5b84efc4fc4422735654f32cc070b79423c`  
		Last Modified: Mon, 26 Oct 2026 23:25:48 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:989ffdf524af09ee1b7b76b07ae2c3094c1b786cec2883f317500194cf3ee506`  
		Last Modified: Mon, 26 Oct 2026 23:25:48 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1b19d08a18b86e282981854eca7b18333c63ff882e5fc4b3123390ab6e3e916`  
		Last Modified: Mon, 26 Oct 2026 23:25:48 GMT  
		Size: 111.9 KB (111926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy` - unknown; unknown

```console
$ docker pull neurodebian@sha256:17daf1e50b5afe1a790d8dc5802d198bd7326aacc644f1d12d13a9c5dbb3d00e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce80ea1c73670d8937d3824561abe87bae0abcab4ace642b71596f58f428a897`

```dockerfile
```

-	Layers:
	-	`sha256:52df9cdca807254c3209e70a993b01ac0af8b1d226d371aee980b7914b318dd1`  
		Last Modified: Mon, 26 Oct 2026 23:25:48 GMT  
		Size: 2.2 MB (2198404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c519d8e4a13c024571766cb20f1f2fe2c629088a80411a8b011eb8a886807f94`  
		Last Modified: Mon, 26 Oct 2026 23:25:48 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:jammy` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:fec34c82fc079b6fa1c5d715a8e492171880aa73fc2e82665035108b37c0efe1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.4 MB (31407583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93388a79f0f872638cce9be14c5c0ca48b968c33037c851ed9c57eaf3ac14819`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:30:15 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:30:16 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Mon, 26 Oct 2026 23:30:16 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Mon, 26 Oct 2026 23:30:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66f02d6ff0e7d4c049832a47dc3bb126c6efd7caf6846c553be7bf3aa6e7932f`  
		Last Modified: Mon, 26 Oct 2026 23:30:29 GMT  
		Size: 3.6 MB (3609128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7399b88a3332c732459299cb02560fbadbb3b35daa2d3edc5cc0ab68fca3976c`  
		Last Modified: Mon, 26 Oct 2026 23:30:29 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64169e2624beed1c548d0eea4e4c446dbf62172491c18b92d879b3db17eea724`  
		Last Modified: Mon, 26 Oct 2026 23:30:29 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef02d11baaba5adb6b833bd78911a70b80bc79c9c66fe7798018ee9362a33322`  
		Last Modified: Mon, 26 Oct 2026 23:30:29 GMT  
		Size: 111.7 KB (111669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy` - unknown; unknown

```console
$ docker pull neurodebian@sha256:291cc62a506cfb019048f6d79dc5fdad94a9ce9b1ad9f50a8d7caf1a36d13c5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0e8bf70300a5ccc621d63a6bc441cd20fe545ff7f7dadeb6177b736e7e0e846`

```dockerfile
```

-	Layers:
	-	`sha256:7aa9beb14a186a7cac645823177d6e25c68e78bd35b830c191a141d7c57b1e24`  
		Last Modified: Mon, 26 Oct 2026 23:30:29 GMT  
		Size: 2.2 MB (2198664 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2fffd49b41420d9f10d08f9f9bedbd07437f7d4a7ecc05487f5f83588ded4572`  
		Last Modified: Mon, 26 Oct 2026 23:30:29 GMT  
		Size: 14.1 KB (14058 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:jammy-non-free`

```console
$ docker pull neurodebian@sha256:8f111192f4ae8ee957aabdeb55b646d4c8988be2df610e137ae82704d1887cab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:jammy-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:21641e1625eb1889e78270711ead8e8542a5107b255424161bacf50c6a4fe696
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33492273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db38c20e1be6d2cc87544bab49b2fff76d74372236be81b05a801761471ff12a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:25:48 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:25:49 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Mon, 26 Oct 2026 23:25:49 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Mon, 26 Oct 2026 23:25:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:25:56 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c25fcbc63a622dd8abe0dc3039b88bd0b11073bfc4a63c9b91ba84e603bcfc7`  
		Last Modified: Mon, 26 Oct 2026 23:26:03 GMT  
		Size: 3.6 MB (3625397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:543bbee463863b12382a2888ef0603b17ba9f9c04a6b2a52a8da3885075942fe`  
		Last Modified: Mon, 26 Oct 2026 23:26:03 GMT  
		Size: 1.9 KB (1903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5369d045908d284e1f423b369f27bcce0dd14d772a783e4ebb274152a3ee0d29`  
		Last Modified: Mon, 26 Oct 2026 23:26:02 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e2987d43e48ddcd82c86a0d9d2cbd2582919c105e839b7865aa8229fd54cc0b`  
		Last Modified: Mon, 26 Oct 2026 23:26:03 GMT  
		Size: 111.9 KB (111927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7beedfa74342d9c60fe0a83267c3d67b746ff0d2cc74a610e18e2b03b9545176`  
		Last Modified: Mon, 26 Oct 2026 23:26:04 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:762b128799f3978596b7405373c4a2139825d05ef407fe7329c469b3982f2ac8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2214603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2af14430d7707d0c3cde5a6809eac33b2829a5ec7c9550aab18cedfe4ee4c47a`

```dockerfile
```

-	Layers:
	-	`sha256:6ec79e872d2420ef4c3be83dca6ff3d3fd0ede7812a58233b64686fc3b17a0e1`  
		Last Modified: Mon, 26 Oct 2026 23:26:03 GMT  
		Size: 2.2 MB (2198440 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94461c6a2babf113639ae13703c147b8b853f9d61338f778ea5700e8a3edf4ec`  
		Last Modified: Mon, 26 Oct 2026 23:26:03 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:jammy-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:87833152e92a45994ca73875c6b8b28bdd5326cbf7c28250ca32619821001649
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.4 MB (31407853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bc1a0698874da1b968c6a7b2850f0c798afbeb6a0b48d294f9dd11c4448fd31`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:30:23 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:30:23 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Mon, 26 Oct 2026 23:30:24 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Mon, 26 Oct 2026 23:30:32 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:30:32 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a5c26a85c6ef3c8eedc7a1a6a6272d7d34385e251858c0eed652d09cdbbb98e`  
		Last Modified: Mon, 26 Oct 2026 23:30:38 GMT  
		Size: 3.6 MB (3609133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b5f73f4bc820b3422aef83adb880c46bee7ff0e0a86b7d94490779b6c7ec29`  
		Last Modified: Mon, 26 Oct 2026 23:30:38 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88d7212518f53f8f61fbf795c4b730cf1e76c95b0fd88c1d80b8205268d84c04`  
		Last Modified: Mon, 26 Oct 2026 23:30:38 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac64bd646de94a67ddaefaee1b6b180b589fa3f02d25c3e7639b49f83b7df8aa`  
		Last Modified: Mon, 26 Oct 2026 23:30:38 GMT  
		Size: 111.7 KB (111652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a60596ff13942e2d0bf750120d3591bb82dd96fa34aed7534de79fd7a72db219`  
		Last Modified: Mon, 26 Oct 2026 23:30:39 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:af519d7a1805bcc47364ca687c2788ae48061d6917521d14e4f41ba8550ff8fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2215002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32e452174b16d179bb1cbbc4b4d6b38d1782dd5a814b26373117655631ce2060`

```dockerfile
```

-	Layers:
	-	`sha256:a859907729359d562e22b7e4498db7114278c02c53aa45d1aa046bfe038929a6`  
		Last Modified: Mon, 26 Oct 2026 23:30:38 GMT  
		Size: 2.2 MB (2198700 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:746be575f37b24fde88a08a742251317c22df73abc1ecb55a4f9aecf476be18b`  
		Last Modified: Mon, 26 Oct 2026 23:30:38 GMT  
		Size: 16.3 KB (16302 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:latest`

```console
$ docker pull neurodebian@sha256:3ba140e4fb98d72bde8a1d809230ac0c39287677e43c23b6cce2c4bc0c62e6b8
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
$ docker pull neurodebian@sha256:17c299310ebac432fbed104c70faa20b5c8ebfdab505c290ae7553a576177410
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59795356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d73f68c4176571af4e19ad275da71579d209696acd3f24696978cc7e6042023`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:42:52 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:42:52 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:42:52 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:42:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d880229655d533978c3021f59a14cb727864bef0ea6e0cecdf5719708e79e0c2`  
		Last Modified: Wed, 28 Oct 2026 01:43:03 GMT  
		Size: 10.3 MB (10294138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce14e900c834ab2c6ce5f55dcd877c924b7116746494c8c45ca44dd33188aa7`  
		Last Modified: Wed, 28 Oct 2026 01:43:03 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90a22fa826021114cca47b02e8f90341bc36684e45eee09fa63be8ee50829a68`  
		Last Modified: Wed, 28 Oct 2026 01:43:03 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e40b02427c191435403d42d85bc06a5db68b6ba74446899b5c24dc36ec14b145`  
		Last Modified: Wed, 28 Oct 2026 01:43:03 GMT  
		Size: 90.4 KB (90418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:latest` - unknown; unknown

```console
$ docker pull neurodebian@sha256:f27863281703d06b60e6d3ea1464c753ab30bf7927a2956d0763db122a503a97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3638354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31a52fb60fa52cfe55f2f6b4596a21764fa3f1d7d4bf86cb336deecf58e695e5`

```dockerfile
```

-	Layers:
	-	`sha256:6fe114b8b2455a15fc82fa490a0275ac4e81eda52463b1e0757785ed3839c316`  
		Last Modified: Wed, 28 Oct 2026 01:43:03 GMT  
		Size: 3.6 MB (3624103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cf6c8ebbeb903b968909d52679fbd3b79eb24bee8c80ccc8088e2aba9946651`  
		Last Modified: Wed, 28 Oct 2026 01:43:03 GMT  
		Size: 14.3 KB (14251 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:latest` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:8f69657a0e544b027acc2b5cf05c97e0f3336c139eb18fd1f368803c2edaea86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59949135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04af7a4e5c2a9608849e04ecc4c7a1c833dcc63021b2ce7bbbc91ff9a17e7acc`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:46:04 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:46:05 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:46:05 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:46:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f44804f07a5a419a194cd24178362bb1132bc1e685caf58e06fef5add8aa341a`  
		Last Modified: Wed, 28 Oct 2026 01:46:17 GMT  
		Size: 10.1 MB (10078943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc2f51ecc79efb5dbd29d9c444ad00e24252c2aa07e6aec821d73b9fac7adb5`  
		Last Modified: Wed, 28 Oct 2026 01:46:17 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28ff7b01a36eece1e362ca758a00c71d074199abfb6305080fc9d74065e599ec`  
		Last Modified: Wed, 28 Oct 2026 01:46:16 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d6791a067a7a979cb1ebd0e67216251c54bf8688a17727e06601ea0d74784e0`  
		Last Modified: Wed, 28 Oct 2026 01:46:17 GMT  
		Size: 91.1 KB (91103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:latest` - unknown; unknown

```console
$ docker pull neurodebian@sha256:6f09d6187a9d44aa230290ec05d9a2fef5d0a0adce2cc49bac55e3232551e794
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3639380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ce3c59d833265d0dd4c75838624c4a77cee8cf47b1b4a541c876cb40d0c9cd8`

```dockerfile
```

-	Layers:
	-	`sha256:c95707955122662f10640082ea86ae4b81cdd93481a91d3addc69f29a674fd29`  
		Last Modified: Wed, 28 Oct 2026 01:46:17 GMT  
		Size: 3.6 MB (3624993 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3db4763d0058681600c6447485b87ea0cc3d6fe92ffe6b647b4b3e5397b4bf20`  
		Last Modified: Wed, 28 Oct 2026 01:46:16 GMT  
		Size: 14.4 KB (14387 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:latest` - linux; 386

```console
$ docker pull neurodebian@sha256:f57e15f7eea53fab07b3d6e215d36d4471534cc34870222b5d559a8eddb01df8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61483489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1b837c8ae8d0289f81d540c6e4119a885a2f03c01d6eef94bbf98bd6e32348d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:44:10 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:44:11 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:44:11 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:44:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:685483d080bb85d9422359e87391511d4083eee621a4085004f9ddd70e2a5f5a`  
		Last Modified: Wed, 28 Oct 2026 00:10:56 GMT  
		Size: 50.9 MB (50921567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a307ecd0c87d66893145eb64e7057e07bbc03d107d96628a9926c83194c7526b`  
		Last Modified: Wed, 28 Oct 2026 01:44:23 GMT  
		Size: 10.5 MB (10468252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fb3bf5f0b8901d9df35e61a5f6103d528532df92d090fbb3e954ffbf1492935`  
		Last Modified: Wed, 28 Oct 2026 01:44:22 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b0d34c9dcb502f65937236f1177daf2377dd146f98b2842f06fa96cd6be3724`  
		Last Modified: Wed, 28 Oct 2026 01:44:22 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:601bac714363677969ea1e91452b343be0cd9dab5229c4ae366535f86e480760`  
		Last Modified: Wed, 28 Oct 2026 01:44:22 GMT  
		Size: 90.8 KB (90760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:latest` - unknown; unknown

```console
$ docker pull neurodebian@sha256:f103bb9db6168b3c9d178718206c5c13e2bf9b8ee3a153deb631c0cb9a02d672
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3636270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d73c1e509c1b43c3090f5f91df451e0346e3a9c0ea347c52b0e7323859043b0`

```dockerfile
```

-	Layers:
	-	`sha256:35539a166f7150f9011e26f46b1559f124be7b473e3fec2fb7b650e290ea1368`  
		Last Modified: Wed, 28 Oct 2026 01:44:22 GMT  
		Size: 3.6 MB (3622052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15eed2cb6ffec6a061c7e9f86476713319680426fa0d68cea5fd003c2ccb7355`  
		Last Modified: Wed, 28 Oct 2026 01:44:22 GMT  
		Size: 14.2 KB (14218 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd`

```console
$ docker pull neurodebian@sha256:fced7621ef7f64fabcf61cb62be23151984092e0ec691c410b692167d2d8b201
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
$ docker pull neurodebian@sha256:50728b254592d854b70ed9302890e656b0c618580fe2afc48610ea4545f481ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61585054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ce51f626d033134213fdd82007795651cc394c2f721a14aa2a5cd119f5bc7b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 01:43:02 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:03 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:43:03 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:df4a8180013f4392a5d26bea9c5caf5a9c846f52d1993024ed7d3fcf30197dd0`  
		Last Modified: Wed, 28 Oct 2026 00:10:39 GMT  
		Size: 49.8 MB (49822949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:755704e56a84fe3074fd2775af299204b5d16e288559d26d9f0dde5a4df5e734`  
		Last Modified: Wed, 28 Oct 2026 01:43:15 GMT  
		Size: 11.7 MB (11669040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:502c9d20c78c11a23a9657f3d12c130d9e688a36c225c30c71d27ad5c76ce271`  
		Last Modified: Wed, 28 Oct 2026 01:43:15 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80939afec9cbf640b61dce2ca73ead7f0467cd37f4abf6cf2dc968a90fb2abdd`  
		Last Modified: Wed, 28 Oct 2026 01:43:15 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b887179da2cb83402a20ee7ddacfbdda05e284923d141b5fd9b6c72d8dbf3924`  
		Last Modified: Wed, 28 Oct 2026 01:43:15 GMT  
		Size: 90.2 KB (90160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd` - unknown; unknown

```console
$ docker pull neurodebian@sha256:0e1b6fcf9770ac0900439c81f5828956c926d5577b25a1339ab7714dadee4e15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3595675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2567945cfa66f3210a5af1a21f3900296270582d07d5206552e534ae6960036c`

```dockerfile
```

-	Layers:
	-	`sha256:af76bc4aada7a76b19ccd3cadd35d622b939c7719f8eb66759fcd1df9ff9311e`  
		Last Modified: Wed, 28 Oct 2026 01:43:15 GMT  
		Size: 3.6 MB (3581771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07bbbfcba059d35f71492a451db9ab8311cf3add4cf076f1dfff0a967ba53627`  
		Last Modified: Wed, 28 Oct 2026 01:43:15 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:a2ef1097cb209e86a98b1a6dc8f17ef1bb486cc9d2978357aca598fd0302b15e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60444715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e046b59af1388d6ba7be67566896424e59f9eb74740db738e487e0fcf81d537c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 01:46:30 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:46:30 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:46:31 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:46:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:b6223b14465d7778f5e40cb45b59714bcc7b096c1b54d3d2fb6eadbe13191106`  
		Last Modified: Wed, 28 Oct 2026 00:10:28 GMT  
		Size: 49.2 MB (49169215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:453a2d52068ba3e6f0ecb3dc27a35b2006989832c8acdad2a3a04291d3a23699`  
		Last Modified: Wed, 28 Oct 2026 01:46:43 GMT  
		Size: 11.2 MB (11181938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a5bec55faf93d6136707fe11561d32cb81a8706c3fc73e87c9c4dde7b3a778`  
		Last Modified: Wed, 28 Oct 2026 01:46:42 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:633169e44c5fc9c7c8e71ae81462b73a6fecc5971a95b736b3709402c0ca2991`  
		Last Modified: Wed, 28 Oct 2026 01:46:42 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7c67dad4bba58d5954eb4a916e77187f88a015f7fa35c7745a43e0b99f9be93`  
		Last Modified: Wed, 28 Oct 2026 01:46:42 GMT  
		Size: 90.7 KB (90657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd` - unknown; unknown

```console
$ docker pull neurodebian@sha256:bf2ce26357997467ce4f1b5ebe7e573e8f1826c2eb2595e25b4246d75fcc0cf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3599284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39fa2f6c43a98892b38639c9ffb3bf572d40751a5228584b1fd24ac84fd4bcb0`

```dockerfile
```

-	Layers:
	-	`sha256:0403b343dca4ed1b0832cede435233ae2c06b5a50bca2c391050f31cbf103bca`  
		Last Modified: Wed, 28 Oct 2026 01:46:42 GMT  
		Size: 3.6 MB (3585255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c981f73f374fb61065c0dac744a70efe3d3235476e1bd5753c7a05dd5d7f76fd`  
		Last Modified: Wed, 28 Oct 2026 01:46:42 GMT  
		Size: 14.0 KB (14029 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd` - linux; 386

```console
$ docker pull neurodebian@sha256:483fc01e320eb64152b02b0505a0fb3120483d9b7fd8a5302f5f8abe427255d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62902600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:accc52292d1c4d443f7ef12d2580d862283c03900ac59ffb7fc58c078fcc6930`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 01:45:05 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:45:05 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:45:06 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:45:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:83748c81ccaf7cd658656e8d5f96a1a047d3eff6e17c90bb48560d33a7b19ca9`  
		Last Modified: Wed, 28 Oct 2026 00:10:41 GMT  
		Size: 51.0 MB (50951289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdb0ad00d71780032b55590af09a944d803b9cd950ddc68181716fc97515790d`  
		Last Modified: Wed, 28 Oct 2026 01:45:17 GMT  
		Size: 11.9 MB (11857935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7dec64baa1450e9f545a4fbbc464c5d35aafb12d5e560de7f785d5d828f165d`  
		Last Modified: Wed, 28 Oct 2026 01:45:17 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dc224f586f25aaabb6506ae7bafd0b49e69c24bd8595cdae95b5855bf8b051a`  
		Last Modified: Wed, 28 Oct 2026 01:45:17 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:016977d167b3ba7599c4b87586fea5e5bedf136d77591effbb85b631628531b0`  
		Last Modified: Wed, 28 Oct 2026 01:45:17 GMT  
		Size: 90.5 KB (90471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd` - unknown; unknown

```console
$ docker pull neurodebian@sha256:a5e7eeeb07258850a136938021f9c5f2cd8bf850aa7a49fb6f1909de8febdc71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3593498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccd1c4a0820bf94c7ad44edd1083d85f53c59fda019ec1eb5fd377d3154ff58a`

```dockerfile
```

-	Layers:
	-	`sha256:df71ba548a47d40f8b841d71d6f26f233682eaa7231653d4340bef93e502cd27`  
		Last Modified: Wed, 28 Oct 2026 01:45:17 GMT  
		Size: 3.6 MB (3579622 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7577976429dbaf62bbc1752969afb31464f69d89a08d7ec9791f63ca4f95dff9`  
		Last Modified: Wed, 28 Oct 2026 01:45:17 GMT  
		Size: 13.9 KB (13876 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd-non-free`

```console
$ docker pull neurodebian@sha256:391b67917fc047fd4a1ecc461bbdce0fb852f3781604a1659956e6764ed01c7f
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
$ docker pull neurodebian@sha256:0681766a50ae5d01c30d5f07138254424a0f44cb50e8eca0eb8f859754ba125a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61585454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c2ea215935acae989eaac57be772fa42541f9664ff66f659948c02477df47ee`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 01:43:16 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:17 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:43:17 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:43:20 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:20 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:df4a8180013f4392a5d26bea9c5caf5a9c846f52d1993024ed7d3fcf30197dd0`  
		Last Modified: Wed, 28 Oct 2026 00:10:39 GMT  
		Size: 49.8 MB (49822949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1d3688b6158959af95068db0d164f6459f98409d14d297bb3389eb178a16481`  
		Last Modified: Wed, 28 Oct 2026 01:43:27 GMT  
		Size: 11.7 MB (11669026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cf6cf225384901f1ede46a57496140f5647874bca6688f86e721ddb343d1ed0`  
		Last Modified: Wed, 28 Oct 2026 01:43:27 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d33f2cbd6327465cb94cde90b64cc1526e25e4012dd427ae2173b15829051475`  
		Last Modified: Wed, 28 Oct 2026 01:43:27 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caffdb6184048ae506f8362a0d85758173c8f3215270c005973717189eb53831`  
		Last Modified: Wed, 28 Oct 2026 01:43:27 GMT  
		Size: 90.2 KB (90156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:701029795ec252c9c281cd3adc37e4837e31aa722bffe536ff978ef659d9df87`  
		Last Modified: Wed, 28 Oct 2026 01:43:28 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:795d8bf034b2a8ea0446cf37ebb09272cdf5ccd1dfcf7b51ffdb4402ca93c172
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3597738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c93f93ecda8077e95f42ece1bf6c5bf26f6a677dff4020c492ed639e9cdf781b`

```dockerfile
```

-	Layers:
	-	`sha256:5ba65634768b1afb209d8b741cf87e2f15c6a8925a335b0aabab3549f37e7bce`  
		Last Modified: Wed, 28 Oct 2026 01:43:27 GMT  
		Size: 3.6 MB (3581807 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6bf8a3ac7739f4f552fc4e250e8a14fe14622b1f4f80370174d89fa312971fe1`  
		Last Modified: Wed, 28 Oct 2026 01:43:27 GMT  
		Size: 15.9 KB (15931 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:f62ec035806776d0440502e5058049c220e19b7a9d271a308bc05b8aede297eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60445203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f19c25a634b0815bca1670f5e7900bf90da7db87087d64de648a4e5f50340103`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 01:46:32 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:46:33 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:46:33 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:46:37 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:46:37 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:b6223b14465d7778f5e40cb45b59714bcc7b096c1b54d3d2fb6eadbe13191106`  
		Last Modified: Wed, 28 Oct 2026 00:10:28 GMT  
		Size: 49.2 MB (49169215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d57284d10362f1c0d88fee60a1ea0d06fe4e0a343ffe6110c53589f67e911e56`  
		Last Modified: Wed, 28 Oct 2026 01:46:46 GMT  
		Size: 11.2 MB (11181993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:967fee27cef7fb1b73ca51dc344dcb2c0cab6b3e68fece73122eb0acde1ef215`  
		Last Modified: Wed, 28 Oct 2026 01:46:46 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:566688ac1340e1160fa13f50803e18d58d63cd40601489758a281bbede2de978`  
		Last Modified: Wed, 28 Oct 2026 01:46:46 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f521e5bd1f0fa32c344f01382474424d7456a55127b6fda81356f205d13df019`  
		Last Modified: Wed, 28 Oct 2026 01:46:46 GMT  
		Size: 90.7 KB (90670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b36229d10040115ec8abe6ab2916615ad9c112e74c7a76fdbdd35069ab14a06f`  
		Last Modified: Wed, 28 Oct 2026 01:46:47 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:1ecbf7eb90ec162c504559a118fe7c4188a390decb838257b5c8df020fe148e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3601361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:393e977876551646f537708f5b99a0147f3cccfdae05f11ef4ed7b375a8fab3c`

```dockerfile
```

-	Layers:
	-	`sha256:973114185000ea0c59835099e7f9eb9c62985b5a4a0eea01db530351ed6b8b36`  
		Last Modified: Wed, 28 Oct 2026 01:46:46 GMT  
		Size: 3.6 MB (3585291 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4cca9b0b16aa4f2039afe05564d362165bf1cbf91e3953139b512bd4f29b5e63`  
		Last Modified: Wed, 28 Oct 2026 01:46:46 GMT  
		Size: 16.1 KB (16070 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:39777c2c8cac49f09b833d29bb60f9468d8cb6caa6e528e3591c8271b576d91d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62902898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4d52a06127787f855af26586dae662d87eff313f1c586a8abdc62b4b75ee10e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 01:45:11 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:45:12 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:45:12 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:45:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:45:16 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:83748c81ccaf7cd658656e8d5f96a1a047d3eff6e17c90bb48560d33a7b19ca9`  
		Last Modified: Wed, 28 Oct 2026 00:10:41 GMT  
		Size: 51.0 MB (50951289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:793452d196c7307631e3388907aa9965ad52b781418b7e22bc40b474e02b2ad1`  
		Last Modified: Wed, 28 Oct 2026 01:45:24 GMT  
		Size: 11.9 MB (11857845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56bd6c421e7e499a82fd130ab28716b4be664c773117bb2afb848dcbf4eee470`  
		Last Modified: Wed, 28 Oct 2026 01:45:23 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a725b82f0e7b6d413e5bd6630d0d911294988a537f0d48a83856548dcc740ae`  
		Last Modified: Wed, 28 Oct 2026 01:45:23 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8d8d6e2595d22936cf114333f26f8a29389aea4cfbdf3a346f1cc77c266c7cc`  
		Last Modified: Wed, 28 Oct 2026 01:45:24 GMT  
		Size: 90.4 KB (90440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06b23c7bd999f6f551e4b1173c26a840438359ba00fdd5436ff8aaca1368eebb`  
		Last Modified: Wed, 28 Oct 2026 01:45:25 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:92520956b335cbe6f0fbde855a1e05005d73830ca3a5859cdd91e71061b816bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3595559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0c142d25d9715e3dd7d2643020bceb5aeaae74219f667edaceeeb159ed220d3`

```dockerfile
```

-	Layers:
	-	`sha256:03aa5a6feb6f5eee3a8a2e63ef09e5db070c62fa674ad2bc88cb20ef31dc29d3`  
		Last Modified: Wed, 28 Oct 2026 01:45:24 GMT  
		Size: 3.6 MB (3579658 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62b70608290f4ba1ca0f0064c46e3b2b3a136c2591fdb66e3864c228a9147764`  
		Last Modified: Wed, 28 Oct 2026 01:45:23 GMT  
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
$ docker pull neurodebian@sha256:29bdca91818b0beca7965490adaa4269730b447c1a55faf8b2cd5da5462872d9
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
$ docker pull neurodebian@sha256:5999c73333c5f044a683167f6d3a730c927717375c030f6a7c779606cad0fe25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59893690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b291cfdcaf9a5c9547c36795fcdd65598bde4079de3e291dedbeb8e929e60ce0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:42:28 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:42:29 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:42:29 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:42:32 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:627617ab94ad5b2c712fed9a4308dbe5c84682449931f6fca64689955707ad04`  
		Last Modified: Wed, 28 Oct 2026 01:42:39 GMT  
		Size: 11.3 MB (11273559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b1caad7fadcfb7c743a717844c246c2e222557df85366d08b90fd689c8fdaad`  
		Last Modified: Wed, 28 Oct 2026 01:42:39 GMT  
		Size: 1.9 KB (1903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:831d5d697aba9e63cd2c3f2cbe9ce841c771ffa391e4d0af4870cc8c3b11bc02`  
		Last Modified: Wed, 28 Oct 2026 01:42:39 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16f681840219671ffb40baa453f6b0250fb25d26d7245473f0996a102d1ce7ad`  
		Last Modified: Wed, 28 Oct 2026 01:42:39 GMT  
		Size: 93.4 KB (93404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120` - unknown; unknown

```console
$ docker pull neurodebian@sha256:2a472b7db30636627c8d1756319804c3edfae811a133afe9916be258dd6fa002
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4089951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e8dcf42770a8a303da5fd880a1599bc18df2360633ae37b31b55ed07c35b49e`

```dockerfile
```

-	Layers:
	-	`sha256:f036645ee2d081fdcbb7254f08c4a51014cf77e5d69cd3d76b536aac6644c1ec`  
		Last Modified: Wed, 28 Oct 2026 01:42:39 GMT  
		Size: 4.1 MB (4075987 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9afb53b6518d86d93e95975902a51ea2b3557a33dcccffa06071194c2af4b365`  
		Last Modified: Wed, 28 Oct 2026 01:42:39 GMT  
		Size: 14.0 KB (13964 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd120` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:c2d97b6020e4349340bed379527c7c98d7a8d6c7fa820b0fb23d9bb45c1130f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59753829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51602447cfaa4fbee1984db11b0345dbcddf6f5d175724da139e7f54ec84692e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:45:52 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:45:52 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:45:52 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:45:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4015637c93165d0f6df8b2c87e5ccde119a1b6d56c53350a5bbd050c31383e1`  
		Last Modified: Wed, 28 Oct 2026 01:46:03 GMT  
		Size: 11.3 MB (11252944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:651e5302b46863e028751f549b50a6c22f58c53d418543c1f41f1142b8bcf4bc`  
		Last Modified: Wed, 28 Oct 2026 01:46:03 GMT  
		Size: 1.9 KB (1898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:534070351f907c79548e5527a9e316fb02503b13190d0c2deaef3bdefedca422`  
		Last Modified: Wed, 28 Oct 2026 01:46:03 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18d15a0a1e656c2c179a5e5481d92b540042b31c0890177243cd9e545f2725e8`  
		Last Modified: Wed, 28 Oct 2026 01:46:03 GMT  
		Size: 93.5 KB (93543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120` - unknown; unknown

```console
$ docker pull neurodebian@sha256:2d411d4dc85d344e5f101ad950a389136a6a2c4ee589f8867a534d6bb341cd4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e50fd9326096c1aba5844ac23dacc02717599a7d98c3e0a7df5685917445a827`

```dockerfile
```

-	Layers:
	-	`sha256:376d3acfa19c95f022d48ca3d9e2c7b4596267d9d182786f020da68b87044ed2`  
		Last Modified: Wed, 28 Oct 2026 01:46:03 GMT  
		Size: 4.1 MB (4076229 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a37694c5c168251baef25c873085b2eefe595547ac6483e51873bf4a0cb34b1`  
		Last Modified: Wed, 28 Oct 2026 01:46:02 GMT  
		Size: 14.1 KB (14089 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd120` - linux; 386

```console
$ docker pull neurodebian@sha256:985560252401fd401c18cc9c49f2a6791e737f1e9707a8ae4aac74437a62bac0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61302393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80fc360944017cf546432de9d664639e2dd642554cedf3eae287bb4d4aa43cc1`
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

### `neurodebian:nd120` - unknown; unknown

```console
$ docker pull neurodebian@sha256:248aa594747420a86ca72f0daa8d4f0313522ae92b0328f1520c482e78b65dec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4087891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3b05472b9c6c407ffbce36cf5112c9cb9985f582d00788a141829f4eeddd6f3`

```dockerfile
```

-	Layers:
	-	`sha256:ef87adff59021e56a709d3de9b9ee2ec8c7a298f559242ccc516b3558668a5a8`  
		Last Modified: Wed, 28 Oct 2026 01:43:44 GMT  
		Size: 4.1 MB (4073954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b2d899d5aeec05bd6e364b5b5970f6c3cbcd83e82c119ae933be512cf16a00c`  
		Last Modified: Wed, 28 Oct 2026 01:43:44 GMT  
		Size: 13.9 KB (13937 bytes)  
		MIME: application/vnd.in-toto+json

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

## `neurodebian:nd130`

```console
$ docker pull neurodebian@sha256:3ba140e4fb98d72bde8a1d809230ac0c39287677e43c23b6cce2c4bc0c62e6b8
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
$ docker pull neurodebian@sha256:17c299310ebac432fbed104c70faa20b5c8ebfdab505c290ae7553a576177410
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59795356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d73f68c4176571af4e19ad275da71579d209696acd3f24696978cc7e6042023`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:42:52 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:42:52 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:42:52 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:42:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d880229655d533978c3021f59a14cb727864bef0ea6e0cecdf5719708e79e0c2`  
		Last Modified: Wed, 28 Oct 2026 01:43:03 GMT  
		Size: 10.3 MB (10294138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce14e900c834ab2c6ce5f55dcd877c924b7116746494c8c45ca44dd33188aa7`  
		Last Modified: Wed, 28 Oct 2026 01:43:03 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90a22fa826021114cca47b02e8f90341bc36684e45eee09fa63be8ee50829a68`  
		Last Modified: Wed, 28 Oct 2026 01:43:03 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e40b02427c191435403d42d85bc06a5db68b6ba74446899b5c24dc36ec14b145`  
		Last Modified: Wed, 28 Oct 2026 01:43:03 GMT  
		Size: 90.4 KB (90418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130` - unknown; unknown

```console
$ docker pull neurodebian@sha256:f27863281703d06b60e6d3ea1464c753ab30bf7927a2956d0763db122a503a97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3638354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31a52fb60fa52cfe55f2f6b4596a21764fa3f1d7d4bf86cb336deecf58e695e5`

```dockerfile
```

-	Layers:
	-	`sha256:6fe114b8b2455a15fc82fa490a0275ac4e81eda52463b1e0757785ed3839c316`  
		Last Modified: Wed, 28 Oct 2026 01:43:03 GMT  
		Size: 3.6 MB (3624103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cf6c8ebbeb903b968909d52679fbd3b79eb24bee8c80ccc8088e2aba9946651`  
		Last Modified: Wed, 28 Oct 2026 01:43:03 GMT  
		Size: 14.3 KB (14251 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:8f69657a0e544b027acc2b5cf05c97e0f3336c139eb18fd1f368803c2edaea86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59949135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04af7a4e5c2a9608849e04ecc4c7a1c833dcc63021b2ce7bbbc91ff9a17e7acc`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:46:04 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:46:05 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:46:05 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:46:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f44804f07a5a419a194cd24178362bb1132bc1e685caf58e06fef5add8aa341a`  
		Last Modified: Wed, 28 Oct 2026 01:46:17 GMT  
		Size: 10.1 MB (10078943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc2f51ecc79efb5dbd29d9c444ad00e24252c2aa07e6aec821d73b9fac7adb5`  
		Last Modified: Wed, 28 Oct 2026 01:46:17 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28ff7b01a36eece1e362ca758a00c71d074199abfb6305080fc9d74065e599ec`  
		Last Modified: Wed, 28 Oct 2026 01:46:16 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d6791a067a7a979cb1ebd0e67216251c54bf8688a17727e06601ea0d74784e0`  
		Last Modified: Wed, 28 Oct 2026 01:46:17 GMT  
		Size: 91.1 KB (91103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130` - unknown; unknown

```console
$ docker pull neurodebian@sha256:6f09d6187a9d44aa230290ec05d9a2fef5d0a0adce2cc49bac55e3232551e794
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3639380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ce3c59d833265d0dd4c75838624c4a77cee8cf47b1b4a541c876cb40d0c9cd8`

```dockerfile
```

-	Layers:
	-	`sha256:c95707955122662f10640082ea86ae4b81cdd93481a91d3addc69f29a674fd29`  
		Last Modified: Wed, 28 Oct 2026 01:46:17 GMT  
		Size: 3.6 MB (3624993 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3db4763d0058681600c6447485b87ea0cc3d6fe92ffe6b647b4b3e5397b4bf20`  
		Last Modified: Wed, 28 Oct 2026 01:46:16 GMT  
		Size: 14.4 KB (14387 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130` - linux; 386

```console
$ docker pull neurodebian@sha256:f57e15f7eea53fab07b3d6e215d36d4471534cc34870222b5d559a8eddb01df8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61483489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1b837c8ae8d0289f81d540c6e4119a885a2f03c01d6eef94bbf98bd6e32348d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:44:10 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:44:11 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:44:11 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:44:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:685483d080bb85d9422359e87391511d4083eee621a4085004f9ddd70e2a5f5a`  
		Last Modified: Wed, 28 Oct 2026 00:10:56 GMT  
		Size: 50.9 MB (50921567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a307ecd0c87d66893145eb64e7057e07bbc03d107d96628a9926c83194c7526b`  
		Last Modified: Wed, 28 Oct 2026 01:44:23 GMT  
		Size: 10.5 MB (10468252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fb3bf5f0b8901d9df35e61a5f6103d528532df92d090fbb3e954ffbf1492935`  
		Last Modified: Wed, 28 Oct 2026 01:44:22 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b0d34c9dcb502f65937236f1177daf2377dd146f98b2842f06fa96cd6be3724`  
		Last Modified: Wed, 28 Oct 2026 01:44:22 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:601bac714363677969ea1e91452b343be0cd9dab5229c4ae366535f86e480760`  
		Last Modified: Wed, 28 Oct 2026 01:44:22 GMT  
		Size: 90.8 KB (90760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130` - unknown; unknown

```console
$ docker pull neurodebian@sha256:f103bb9db6168b3c9d178718206c5c13e2bf9b8ee3a153deb631c0cb9a02d672
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3636270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d73c1e509c1b43c3090f5f91df451e0346e3a9c0ea347c52b0e7323859043b0`

```dockerfile
```

-	Layers:
	-	`sha256:35539a166f7150f9011e26f46b1559f124be7b473e3fec2fb7b650e290ea1368`  
		Last Modified: Wed, 28 Oct 2026 01:44:22 GMT  
		Size: 3.6 MB (3622052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15eed2cb6ffec6a061c7e9f86476713319680426fa0d68cea5fd003c2ccb7355`  
		Last Modified: Wed, 28 Oct 2026 01:44:22 GMT  
		Size: 14.2 KB (14218 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd130-non-free`

```console
$ docker pull neurodebian@sha256:a8e73f9473ec83f743bf5ea6ba69237dc65c79353c5096a99ef85261793ecaef
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
$ docker pull neurodebian@sha256:836a369cdb3e8a29db67ddcfb67a1c34cc8de1e5b8b5e29b3b78de02ea71af2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59795827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1534b11dbee3f904959c2aa904a297f42909f2ef19d1dd90435bb635f972067`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:42:56 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:42:56 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:42:56 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:43:00 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:00 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a42dc1961e61d242a1f38584a46053d47ff1b40456240251efa3ea18fea83470`  
		Last Modified: Wed, 28 Oct 2026 01:43:08 GMT  
		Size: 10.3 MB (10294203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a1cb291d6a6204fd948f2036fdc3cd0190738cb14bc77cb805d29df117cc827`  
		Last Modified: Wed, 28 Oct 2026 01:43:08 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb07458ec2f3367503226f9118c772c96635e2b75f4ba6deafb9c308483e1418`  
		Last Modified: Wed, 28 Oct 2026 01:43:08 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cb76ae558d3b421a3d22309c084601df7a9dae57927d2ce40dd3555848a256e`  
		Last Modified: Wed, 28 Oct 2026 01:43:08 GMT  
		Size: 90.4 KB (90374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b26aababbe1838dbfc23d4f7780f5c17ee51ba64a19c6aa75ac3e4e927fa6b24`  
		Last Modified: Wed, 28 Oct 2026 01:43:09 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:d406f4effe5f72b96ddc2de74da5d4a274cbd364c9a992f07798ac0b1f824ca6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a5ef0705a72445fe3ba6d8f2f29b7f2f34d16ce7298a1417f1f62ab5be8c112`

```dockerfile
```

-	Layers:
	-	`sha256:9759c01eb29bce06d672c46496cc6f1038823ea353ba5ddaa16c3e73def987d7`  
		Last Modified: Wed, 28 Oct 2026 01:43:09 GMT  
		Size: 3.6 MB (3624143 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f63fbb6c2fcb38290f6510fe2776f75fdbdc695b3d488c09e064c0c31d78b33b`  
		Last Modified: Wed, 28 Oct 2026 01:43:08 GMT  
		Size: 16.3 KB (16282 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:e2df2efa6aeb820079c96d5e14c4ef99fc25065257e6345ce4444999bf359fc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59949462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ab3ebdd1a065d44f4556c9046f5b8dd8f390ff768c039bb891512390fb705c7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:46:07 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:46:07 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:46:07 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:46:11 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:46:11 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f173cc8f193c53d612ec9e7b429f121a8e63544dc95b187ed511c1e73d19136c`  
		Last Modified: Wed, 28 Oct 2026 01:46:19 GMT  
		Size: 10.1 MB (10078875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b0f6de1af5d5ad593d4d5f5290b5d26a5712932e722723dc82e06433f878cfa`  
		Last Modified: Wed, 28 Oct 2026 01:46:19 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39db19c5206658c9099dc3b65f918bf7e8b9394727a07b2e3edc7524488c7681`  
		Last Modified: Wed, 28 Oct 2026 01:46:19 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6966c1ba564cc5061580115cf4c66fef8c825d5ecb01f4b25c7e04cd2c282137`  
		Last Modified: Wed, 28 Oct 2026 01:46:19 GMT  
		Size: 91.1 KB (91057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1ae970a92aa0db975bfaa5c78c2911ecd21c39e019bf51adc04f3a6da1442b9`  
		Last Modified: Wed, 28 Oct 2026 01:46:20 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:a1ffcea7172138baa5e7a65a825fb060c60ad3a3bc391a6d1b23483ae0257d4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23a509accb912678ccb205e06ad06b3724a3690d46c94a92b24bbd733ca06b91`

```dockerfile
```

-	Layers:
	-	`sha256:bb41c27308ad431143e50ce337d03bc612f2d59af6584842150626d6f8e3040b`  
		Last Modified: Wed, 28 Oct 2026 01:46:19 GMT  
		Size: 3.6 MB (3625033 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81662a4ce2b040836cd463365756bdc6d23dbb60b404802ae57782d31245a257`  
		Last Modified: Wed, 28 Oct 2026 01:46:19 GMT  
		Size: 16.4 KB (16434 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:143ea589a0c43df69cf182cd9ce493895d6b6f08eac2845ab5a727bdcef3f990
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61483881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eb31af95d5286ab074a7ac689e74e8beb1244da0b41212b8c63611df09c753f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:44:16 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:44:17 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:44:17 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:44:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:44:22 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:685483d080bb85d9422359e87391511d4083eee621a4085004f9ddd70e2a5f5a`  
		Last Modified: Wed, 28 Oct 2026 00:10:56 GMT  
		Size: 50.9 MB (50921567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97cca12a5c9091503dd2fd4cfb90610483588dde9bb8a431bfbf3c624c50bd44`  
		Last Modified: Wed, 28 Oct 2026 01:44:31 GMT  
		Size: 10.5 MB (10468228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ebb60a0c04c6adbe1b333a55c0f2da5f2f42f8c912351215d622ce3afdfedf7`  
		Last Modified: Wed, 28 Oct 2026 01:44:30 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3039472c98fcfa69d07fdabb8044426540d46350136e72213bb137f0c9e96eee`  
		Last Modified: Wed, 28 Oct 2026 01:44:30 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c82387c73bc0be4b63a58d2592ad5942d63b35ebd696e0fd7665d716e1eaf8e9`  
		Last Modified: Wed, 28 Oct 2026 01:44:31 GMT  
		Size: 90.7 KB (90730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0f0b0f1a636f79d9c2d86a5d2bba53f9a745577f52deb5dc71f47245fe2e75e`  
		Last Modified: Wed, 28 Oct 2026 01:44:32 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:b7388c6d86f2aa0a3465ac36b3f8e1c9da131f49121d52df832f9ffb4ec3bb19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3638339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a25acd15bbe19b00c28a321cdb3b1de06f994baef29d39e0198f0cf5191e7bd8`

```dockerfile
```

-	Layers:
	-	`sha256:c2f8efaea6d1499f9204a9a9618216ddbf8e5bf958a562fa4577d9bb130ab3c0`  
		Last Modified: Wed, 28 Oct 2026 01:44:30 GMT  
		Size: 3.6 MB (3622092 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e031d59341baada68157a7187882eb50a3b664723c104a96c277d17ea49107b9`  
		Last Modified: Wed, 28 Oct 2026 01:44:31 GMT  
		Size: 16.2 KB (16247 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd140`

```console
$ docker pull neurodebian@sha256:477652febedf8de9f2bf4d46e52f206c0fc81ed26127202ccab6e9f72df2d662
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
$ docker pull neurodebian@sha256:56b66d4ba40b3e81d96cfb9a5601ccf1ea9d47ecd8bb9e295bed84447373e881
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61576520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d42e97b2d283bcf31463add559bd676c546d30b29e1e3bdbaa1c87dfe61251ba`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 01:42:55 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:42:56 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:42:56 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:42:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:65929644eb8cbb6d5dfb27c78d4d6cb80d806c5c2ed37c7b627d5a03a29749cc`  
		Last Modified: Wed, 28 Oct 2026 00:10:34 GMT  
		Size: 49.8 MB (49814412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d5332434faf2ff84bd4cf3ad34d4fd4be06b807d27d58c6accf4f78af097655`  
		Last Modified: Wed, 28 Oct 2026 01:43:07 GMT  
		Size: 11.7 MB (11669054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae8daae63029a09f97c69de9390113cb4dbf9223321741408a4bd9499a22125e`  
		Last Modified: Wed, 28 Oct 2026 01:43:07 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b80162623f77117bfd641ca626e7a1e14e8082e0f637dea1ba5336716763bfe`  
		Last Modified: Wed, 28 Oct 2026 01:43:07 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a1e978cfa4b46c0b2a9fdff6cc67efcad574058162630fc85b46c435e22f028`  
		Last Modified: Wed, 28 Oct 2026 01:43:07 GMT  
		Size: 90.1 KB (90149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140` - unknown; unknown

```console
$ docker pull neurodebian@sha256:48b91cca0f02ff26b9a63771a139024bff0341c8b680d38cddb0cf7e91c39c62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3596512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f067b0618314da1f94e4285aad2d649f9f1f5f29e40a0d9fbb09252f9e290ba8`

```dockerfile
```

-	Layers:
	-	`sha256:9d596cb967d0a5fc7ba1812969409eb2e60925c8180d5498d8fa6ce0f00fa533`  
		Last Modified: Wed, 28 Oct 2026 01:43:07 GMT  
		Size: 3.6 MB (3582580 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51808b379f15b56d12c58b9dc4754c7dd2eaf276d2d9cb3df346f1239e5bf483`  
		Last Modified: Wed, 28 Oct 2026 01:43:07 GMT  
		Size: 13.9 KB (13932 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:4b8d609cb8dbb9d2cbe7b0e71bb5a22ed550740a9a8825d59c2d86a6fa7e1a9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60418776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b5e5724acb8d5782e4f15a0fb0528768800b2f03061e4e254c24889693be6b3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 01:46:17 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:46:18 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:46:18 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:46:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:fba7d1c02cf0644704ea4dcf623c9231723afd3f333d8f052a829e427cefc4a7`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 49.1 MB (49143254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deb32ba855840079aa586b75eb158290897cdc71e316c0bc0f98e2a6e19a3b37`  
		Last Modified: Wed, 28 Oct 2026 01:46:29 GMT  
		Size: 11.2 MB (11181946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eb2788acb42328a13ecbe4d1054d1b534136b77041244d9c7b3451306ec0e37`  
		Last Modified: Wed, 28 Oct 2026 01:46:29 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99bd6d9425301891a9d0ac43d2e5e29e455a4278bfa54f41fb91b1ac39e2377`  
		Last Modified: Wed, 28 Oct 2026 01:46:29 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06f3d56de1e1c2a1f15c2e6752593cf5288c934b3ed32d93ea14c71cef93d994`  
		Last Modified: Wed, 28 Oct 2026 01:46:29 GMT  
		Size: 90.7 KB (90671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140` - unknown; unknown

```console
$ docker pull neurodebian@sha256:65efb44ff4146b57235905d60be6ad262fef1170127f6dee89da0fe6e91a1737
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3600121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2581f66379bd18eedfe646d62a3a47fdad2323427f5363ca50c318e781bd3ce`

```dockerfile
```

-	Layers:
	-	`sha256:9760d5b98ce2ebd138f2a1f0b69e4f5db37bc1c4f0f9f516c340f9f56450264e`  
		Last Modified: Wed, 28 Oct 2026 01:46:29 GMT  
		Size: 3.6 MB (3586064 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da2b96aeff9436939f58f7d7dbd138d22321b0637f075ce7db3cb58532c13a81`  
		Last Modified: Wed, 28 Oct 2026 01:46:29 GMT  
		Size: 14.1 KB (14057 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140` - linux; 386

```console
$ docker pull neurodebian@sha256:ec2cf1c88e170f6b3947b216da61fe19ac22538cb5c42433684bbb01851b897b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62886748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ce58dc937206893a0cd3b0643cd7f6f6aa960410ac7ff010a5b91a827c05115`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 01:44:38 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:44:38 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:44:39 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:44:43 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7672c9acd98a1e06add035e6ee3e653a507f7b7f4b4765eff34df030dfbe09c5`  
		Last Modified: Wed, 28 Oct 2026 00:10:35 GMT  
		Size: 50.9 MB (50935447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51e69ee716f6d06a0cb0be94951007b321d515d3ed02541804e183350f8a167`  
		Last Modified: Wed, 28 Oct 2026 01:44:51 GMT  
		Size: 11.9 MB (11857949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95a8c94cdb1e903cda8e80073261dcadb7b4ba4978e8e7ed3a5d338a6e4d0936`  
		Last Modified: Wed, 28 Oct 2026 01:44:50 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64aa0b9e90a12e5e472e32301417f235d8cb1b0570a72b7c7dec7fbb762691b3`  
		Last Modified: Wed, 28 Oct 2026 01:44:50 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03cfe2a11709f7fc6413fa303f287195b80e279c929834bfce292c8b304e0a4f`  
		Last Modified: Wed, 28 Oct 2026 01:44:50 GMT  
		Size: 90.4 KB (90446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140` - unknown; unknown

```console
$ docker pull neurodebian@sha256:d1377ace4d2451c57e38bff10c91179f3d28271b51dabda16c95b30a1226a735
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3594334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42f03ff9f00ea5ed70a4cc9b44cf611e5716e0157e66d1c785ee1b242c062ded`

```dockerfile
```

-	Layers:
	-	`sha256:a5065d3818e213a9e87d6f90889373890fb9706ac440661ed78b0d6e7986df1d`  
		Last Modified: Wed, 28 Oct 2026 01:44:50 GMT  
		Size: 3.6 MB (3580430 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b324e565b6ef3e2786c0bf0278188d5e55b06b887c2a7575007f570bfec816ef`  
		Last Modified: Wed, 28 Oct 2026 01:44:50 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd140-non-free`

```console
$ docker pull neurodebian@sha256:69bf04b5df8c9a9c9818ae19d20325316567b263ddbc62fe6ac18968dece09fe
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
$ docker pull neurodebian@sha256:d446c5ff0b7abd73fc5ccd2fe63cfe4fd4d7d91a48fcf3d8bfe93696aeec8db6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61576947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aee6f0e1bb6bc381f2219d709cd690b192df70f229b8fa18d901610d6fdd45a1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 01:42:55 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:42:56 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:42:56 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:42:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:42:59 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:65929644eb8cbb6d5dfb27c78d4d6cb80d806c5c2ed37c7b627d5a03a29749cc`  
		Last Modified: Wed, 28 Oct 2026 00:10:34 GMT  
		Size: 49.8 MB (49814412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d15952eb70107cf3d193b7dd11f03b0ba36209b8a720d9c7462570e03fd1ec1`  
		Last Modified: Wed, 28 Oct 2026 01:43:07 GMT  
		Size: 11.7 MB (11669022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec6088724f67c903f967fb4b1df2867b9f6cf8b8eee3930ddae2570a877aa611`  
		Last Modified: Wed, 28 Oct 2026 01:43:07 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b80162623f77117bfd641ca626e7a1e14e8082e0f637dea1ba5336716763bfe`  
		Last Modified: Wed, 28 Oct 2026 01:43:07 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f2c5bdb148cdbc56e47c57ff79ced5ccb2dd66547a3274a837711c43a4041d5`  
		Last Modified: Wed, 28 Oct 2026 01:43:07 GMT  
		Size: 90.2 KB (90156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad92ae9df8d3b87c8fe48ae7d46f8a037fc5c3a0698c4a2b9436d8610c56b5c8`  
		Last Modified: Wed, 28 Oct 2026 01:43:08 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8a35249c78a5fc9dd3e91e44d73c29c1f5996de5f62d152b78914b77f6130e9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3598575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4abc30d0bfc26217650f7397f24772b1ec1d88e2ca695eb6f21916a35d5438b4`

```dockerfile
```

-	Layers:
	-	`sha256:139ae7b640b3f7bf13efdcd6ea81494b06b438920138ef1dedd0c8e2d8a1491d`  
		Last Modified: Wed, 28 Oct 2026 01:43:07 GMT  
		Size: 3.6 MB (3582616 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:93ea8b85b88e00922455913815e8194648e5f4818838bc9255fcf8d58417fd5b`  
		Last Modified: Wed, 28 Oct 2026 01:43:07 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:089f38e0aae80bf030773b9b8601c0cebbf4b1746e085961b09cc7a936b9043f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60419226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d30bed6b9b4de50a922786f60f73ac0f0d4f0e2b03a8c6d6280e00bfc7007dc`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 01:46:28 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:46:29 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:46:29 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:46:32 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:46:32 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:fba7d1c02cf0644704ea4dcf623c9231723afd3f333d8f052a829e427cefc4a7`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 49.1 MB (49143254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10f7804927c5709694401423bb6f5599caece27080756fbd42f2e84e3f7e2520`  
		Last Modified: Wed, 28 Oct 2026 01:46:40 GMT  
		Size: 11.2 MB (11181956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e4505fa7d91478c48a3cb3cab2efb6340d90dd03cae80c35cb8b2345baeb75`  
		Last Modified: Wed, 28 Oct 2026 01:46:40 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:144b2b327259e1378f39299594bed7bde29ef07a4fe2ca1ec2d80313ef1ff4d3`  
		Last Modified: Wed, 28 Oct 2026 01:46:40 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:937d17b248d3fb4feebfba209fa6e6eba74223c2e97ef810fce82d4a3c8d2051`  
		Last Modified: Wed, 28 Oct 2026 01:46:40 GMT  
		Size: 90.7 KB (90660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9781e11dc18dff1e17fd1276f3e525becbb6bcc854ee705fda7080878c78eb44`  
		Last Modified: Wed, 28 Oct 2026 01:46:41 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:e0bfd5cc9f800f0b20d9854305a5b5ae143cb21bcd4d755c80b216a7a8d73b24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3602199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf462a976f558ff3e1db460879a807b50fa383789f8eb7fb0bb1b67be35039a6`

```dockerfile
```

-	Layers:
	-	`sha256:85262fd69e25d54b467170de4735b6f409683a5f36bb3628f70e93992347de57`  
		Last Modified: Wed, 28 Oct 2026 01:46:40 GMT  
		Size: 3.6 MB (3586100 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1aff98ed2da06946c6710a5d189bf769f0efe9565ee827a449ef051956cbf37d`  
		Last Modified: Wed, 28 Oct 2026 01:46:40 GMT  
		Size: 16.1 KB (16099 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:c98e87b979195c0880b4d6d9642a97d78e921e2f8c8f3f3736062ba0aab446b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62887054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4359a312a34111be0cf65c972e7c497a39488f74c07d255ad5e6627f41bc2e9f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 01:44:48 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:44:48 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:44:48 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:44:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:44:53 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:7672c9acd98a1e06add035e6ee3e653a507f7b7f4b4765eff34df030dfbe09c5`  
		Last Modified: Wed, 28 Oct 2026 00:10:35 GMT  
		Size: 50.9 MB (50935447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aae0d2c16beed9deedf8f053a190cce50e2cd7200ef71d8a4b7fdf6a921a1c1`  
		Last Modified: Wed, 28 Oct 2026 01:45:02 GMT  
		Size: 11.9 MB (11857841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51e7d566c859f9cf207a55a4d9b129a5cdf744ba7ad9cd19ac3c439ed4508e6c`  
		Last Modified: Wed, 28 Oct 2026 01:45:02 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa1a49c814278a49e44ee9d4cc670ddeea9f442a52dadbb6169fbc904bf682ab`  
		Last Modified: Wed, 28 Oct 2026 01:45:02 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3094cc6bf3e5fb04eb90088eaa9c1b84aa30b52108a7c9efa6cd648639f9d7df`  
		Last Modified: Wed, 28 Oct 2026 01:45:02 GMT  
		Size: 90.4 KB (90413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f83d292188ad94c318d4149c3f9ea87b9c1d0154f333fb64647c700273d6f94`  
		Last Modified: Wed, 28 Oct 2026 01:45:03 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:2dcebb1bbf24001ef8055a6e5b83383b5c3deff94b4ace736c08352729b70806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3596395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2526499de6ca6f9eec9bc0b36753c44bc0ce7fb06f9989f81ea7e24a85ece33b`

```dockerfile
```

-	Layers:
	-	`sha256:335dcb56f77935a5e59ecb11b80b8ddad9fab43d973c07edb16098900975c564`  
		Last Modified: Wed, 28 Oct 2026 01:45:02 GMT  
		Size: 3.6 MB (3580466 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b63b45adb0332227b6ff1da2dc1a14f1dd42acf8f079957f73ca62dc582d540`  
		Last Modified: Wed, 28 Oct 2026 01:45:02 GMT  
		Size: 15.9 KB (15929 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd22.04`

```console
$ docker pull neurodebian@sha256:3f1d617f10ddf9872ba1bc50bbf79490f92c7a791c7c5ef2f2d2f10f7b629038
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:nd22.04` - linux; amd64

```console
$ docker pull neurodebian@sha256:582622a20498d1059ca5029ee29eb086e59f5e4de07b1da5d9156eb808c3c01e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33491985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b5d7b0d49eec573794554789111c29a425ea5ea0ed63b78eb4d6ec1fb24ce8b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:25:35 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:25:35 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Mon, 26 Oct 2026 23:25:36 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Mon, 26 Oct 2026 23:25:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5de7708dc49340ae9b2fb48f94d62ca4de7bdfcae187279dd8b8f9b2251da0b`  
		Last Modified: Mon, 26 Oct 2026 23:25:48 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:974f5d6b5fe26a42e5ec3170bf4aa5b84efc4fc4422735654f32cc070b79423c`  
		Last Modified: Mon, 26 Oct 2026 23:25:48 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:989ffdf524af09ee1b7b76b07ae2c3094c1b786cec2883f317500194cf3ee506`  
		Last Modified: Mon, 26 Oct 2026 23:25:48 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1b19d08a18b86e282981854eca7b18333c63ff882e5fc4b3123390ab6e3e916`  
		Last Modified: Mon, 26 Oct 2026 23:25:48 GMT  
		Size: 111.9 KB (111926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd22.04` - unknown; unknown

```console
$ docker pull neurodebian@sha256:17daf1e50b5afe1a790d8dc5802d198bd7326aacc644f1d12d13a9c5dbb3d00e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce80ea1c73670d8937d3824561abe87bae0abcab4ace642b71596f58f428a897`

```dockerfile
```

-	Layers:
	-	`sha256:52df9cdca807254c3209e70a993b01ac0af8b1d226d371aee980b7914b318dd1`  
		Last Modified: Mon, 26 Oct 2026 23:25:48 GMT  
		Size: 2.2 MB (2198404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c519d8e4a13c024571766cb20f1f2fe2c629088a80411a8b011eb8a886807f94`  
		Last Modified: Mon, 26 Oct 2026 23:25:48 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd22.04` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:fec34c82fc079b6fa1c5d715a8e492171880aa73fc2e82665035108b37c0efe1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.4 MB (31407583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93388a79f0f872638cce9be14c5c0ca48b968c33037c851ed9c57eaf3ac14819`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:30:15 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:30:16 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Mon, 26 Oct 2026 23:30:16 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Mon, 26 Oct 2026 23:30:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66f02d6ff0e7d4c049832a47dc3bb126c6efd7caf6846c553be7bf3aa6e7932f`  
		Last Modified: Mon, 26 Oct 2026 23:30:29 GMT  
		Size: 3.6 MB (3609128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7399b88a3332c732459299cb02560fbadbb3b35daa2d3edc5cc0ab68fca3976c`  
		Last Modified: Mon, 26 Oct 2026 23:30:29 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64169e2624beed1c548d0eea4e4c446dbf62172491c18b92d879b3db17eea724`  
		Last Modified: Mon, 26 Oct 2026 23:30:29 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef02d11baaba5adb6b833bd78911a70b80bc79c9c66fe7798018ee9362a33322`  
		Last Modified: Mon, 26 Oct 2026 23:30:29 GMT  
		Size: 111.7 KB (111669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd22.04` - unknown; unknown

```console
$ docker pull neurodebian@sha256:291cc62a506cfb019048f6d79dc5fdad94a9ce9b1ad9f50a8d7caf1a36d13c5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0e8bf70300a5ccc621d63a6bc441cd20fe545ff7f7dadeb6177b736e7e0e846`

```dockerfile
```

-	Layers:
	-	`sha256:7aa9beb14a186a7cac645823177d6e25c68e78bd35b830c191a141d7c57b1e24`  
		Last Modified: Mon, 26 Oct 2026 23:30:29 GMT  
		Size: 2.2 MB (2198664 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2fffd49b41420d9f10d08f9f9bedbd07437f7d4a7ecc05487f5f83588ded4572`  
		Last Modified: Mon, 26 Oct 2026 23:30:29 GMT  
		Size: 14.1 KB (14058 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd22.04-non-free`

```console
$ docker pull neurodebian@sha256:8f111192f4ae8ee957aabdeb55b646d4c8988be2df610e137ae82704d1887cab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:nd22.04-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:21641e1625eb1889e78270711ead8e8542a5107b255424161bacf50c6a4fe696
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33492273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db38c20e1be6d2cc87544bab49b2fff76d74372236be81b05a801761471ff12a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:25:48 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:25:49 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Mon, 26 Oct 2026 23:25:49 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Mon, 26 Oct 2026 23:25:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:25:56 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c25fcbc63a622dd8abe0dc3039b88bd0b11073bfc4a63c9b91ba84e603bcfc7`  
		Last Modified: Mon, 26 Oct 2026 23:26:03 GMT  
		Size: 3.6 MB (3625397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:543bbee463863b12382a2888ef0603b17ba9f9c04a6b2a52a8da3885075942fe`  
		Last Modified: Mon, 26 Oct 2026 23:26:03 GMT  
		Size: 1.9 KB (1903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5369d045908d284e1f423b369f27bcce0dd14d772a783e4ebb274152a3ee0d29`  
		Last Modified: Mon, 26 Oct 2026 23:26:02 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e2987d43e48ddcd82c86a0d9d2cbd2582919c105e839b7865aa8229fd54cc0b`  
		Last Modified: Mon, 26 Oct 2026 23:26:03 GMT  
		Size: 111.9 KB (111927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7beedfa74342d9c60fe0a83267c3d67b746ff0d2cc74a610e18e2b03b9545176`  
		Last Modified: Mon, 26 Oct 2026 23:26:04 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd22.04-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:762b128799f3978596b7405373c4a2139825d05ef407fe7329c469b3982f2ac8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2214603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2af14430d7707d0c3cde5a6809eac33b2829a5ec7c9550aab18cedfe4ee4c47a`

```dockerfile
```

-	Layers:
	-	`sha256:6ec79e872d2420ef4c3be83dca6ff3d3fd0ede7812a58233b64686fc3b17a0e1`  
		Last Modified: Mon, 26 Oct 2026 23:26:03 GMT  
		Size: 2.2 MB (2198440 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94461c6a2babf113639ae13703c147b8b853f9d61338f778ea5700e8a3edf4ec`  
		Last Modified: Mon, 26 Oct 2026 23:26:03 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd22.04-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:87833152e92a45994ca73875c6b8b28bdd5326cbf7c28250ca32619821001649
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.4 MB (31407853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bc1a0698874da1b968c6a7b2850f0c798afbeb6a0b48d294f9dd11c4448fd31`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:30:23 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:30:23 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Mon, 26 Oct 2026 23:30:24 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Mon, 26 Oct 2026 23:30:32 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:30:32 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a5c26a85c6ef3c8eedc7a1a6a6272d7d34385e251858c0eed652d09cdbbb98e`  
		Last Modified: Mon, 26 Oct 2026 23:30:38 GMT  
		Size: 3.6 MB (3609133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b5f73f4bc820b3422aef83adb880c46bee7ff0e0a86b7d94490779b6c7ec29`  
		Last Modified: Mon, 26 Oct 2026 23:30:38 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88d7212518f53f8f61fbf795c4b730cf1e76c95b0fd88c1d80b8205268d84c04`  
		Last Modified: Mon, 26 Oct 2026 23:30:38 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac64bd646de94a67ddaefaee1b6b180b589fa3f02d25c3e7639b49f83b7df8aa`  
		Last Modified: Mon, 26 Oct 2026 23:30:38 GMT  
		Size: 111.7 KB (111652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a60596ff13942e2d0bf750120d3591bb82dd96fa34aed7534de79fd7a72db219`  
		Last Modified: Mon, 26 Oct 2026 23:30:39 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd22.04-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:af519d7a1805bcc47364ca687c2788ae48061d6917521d14e4f41ba8550ff8fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2215002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32e452174b16d179bb1cbbc4b4d6b38d1782dd5a814b26373117655631ce2060`

```dockerfile
```

-	Layers:
	-	`sha256:a859907729359d562e22b7e4498db7114278c02c53aa45d1aa046bfe038929a6`  
		Last Modified: Mon, 26 Oct 2026 23:30:38 GMT  
		Size: 2.2 MB (2198700 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:746be575f37b24fde88a08a742251317c22df73abc1ecb55a4f9aecf476be18b`  
		Last Modified: Mon, 26 Oct 2026 23:30:38 GMT  
		Size: 16.3 KB (16302 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd24.04`

```console
$ docker pull neurodebian@sha256:b884da86b9c76b64c9d9a11d1b289391f21fd2f73405a6be1d433079e885e1b5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:nd24.04` - linux; amd64

```console
$ docker pull neurodebian@sha256:9a0a2b86e43f145bc5b7c2cad245ae265dadd464ed333265507e821e5d10c318
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33441336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad66a1c753a32ccd74a74247d36db23e5a9cf34c5220265c05a1db4728ec144`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:25:51 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:25:51 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Mon, 26 Oct 2026 23:25:51 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Mon, 26 Oct 2026 23:25:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46393d3c21f08902004ee8d9bc504dd8fc7bfe51a973016a5e0e148e5b02cb06`  
		Last Modified: Mon, 26 Oct 2026 23:26:02 GMT  
		Size: 3.6 MB (3565763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19a31e261a124f6fc1a7ee9b0fb2d55e253d141165af6ba5dc1671abcc597f2c`  
		Last Modified: Mon, 26 Oct 2026 23:26:02 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6de595dc6608cfcb8a93ed396381a4f68a7df13b83487d395745f16d4c27935`  
		Last Modified: Mon, 26 Oct 2026 23:26:02 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d1259bc4fc08a7bad839d217faf7205eacc928f7329cee48354d7a1bf5cf05`  
		Last Modified: Mon, 26 Oct 2026 23:26:02 GMT  
		Size: 105.1 KB (105052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd24.04` - unknown; unknown

```console
$ docker pull neurodebian@sha256:e36117e5d84edbefb6c44b1f3c29fb3f952eafda4ed06fb8ea3c0ce15c3819b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2134896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b71966359f6693789747b9a117caadf5c3eb7501de5e8f783a240ab0405c950`

```dockerfile
```

-	Layers:
	-	`sha256:7f8d6ff7dd41f536ec7e9e013d87b494060805a34bba4677d9547cb3bd22e5cd`  
		Last Modified: Mon, 26 Oct 2026 23:26:02 GMT  
		Size: 2.1 MB (2120963 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c3a2ecfa425c240231ccca99a54f189e449d16e04b0a3919ecdc44e2c87168d`  
		Last Modified: Mon, 26 Oct 2026 23:26:02 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd24.04` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:0c767fe5b85820c347f2c4cf99fab47ee0475383543dd3aa61c39f629a4d7585
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32611743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b042e8eb00d164a91b86fd03ef489e192e1abccffe4da4dfa8a2b50a57faa678`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:30:26 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:30:27 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Mon, 26 Oct 2026 23:30:27 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Mon, 26 Oct 2026 23:30:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4645837400bc67841e6f8fa2bc6cb0cfa0d9d550fcad1be2e51d19860e90038`  
		Last Modified: Mon, 26 Oct 2026 23:30:41 GMT  
		Size: 3.6 MB (3562956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:713e69a11148c2c7385e23fdd13ac21c35245940c57dfbd03630bf1ac32fb476`  
		Last Modified: Mon, 26 Oct 2026 23:30:41 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b374584071a883b6acb36711d27d98bb14af3782bcd44060422502033e26f03d`  
		Last Modified: Mon, 26 Oct 2026 23:30:41 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:376ea9f7a6282f31efa18eb9641478c3f9879ed1c88eeb6947ed448cf88db33b`  
		Last Modified: Mon, 26 Oct 2026 23:30:41 GMT  
		Size: 105.8 KB (105751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd24.04` - unknown; unknown

```console
$ docker pull neurodebian@sha256:7bb0b8303d9723d5b02eb7ce4b954e451994d573509d8c3f2a231ae8c3230261
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2136065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a1e630caab90ab6f9e79f0f1915c2555f57a9d16d8df48c2f3ffe390d3687b0`

```dockerfile
```

-	Layers:
	-	`sha256:d9141f1058e9327b796258a16387a0bbea34fc6e76818e16a9c841b8c698178d`  
		Last Modified: Mon, 26 Oct 2026 23:30:41 GMT  
		Size: 2.1 MB (2122008 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e8ff9eee4903b07cbaae989e832891320b228e977532a6c9452ee962b5ae121`  
		Last Modified: Mon, 26 Oct 2026 23:30:41 GMT  
		Size: 14.1 KB (14057 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:nd24.04-non-free`

```console
$ docker pull neurodebian@sha256:656753fc0a40be0f376cf98df82d004ca77232cd6cbb70fcf97637e76daa38c4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:nd24.04-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:d68d2dd3a71cc8329e611bee111cf893e87a3435b81254609a387fc46ff61069
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33441775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:883742da71db2fdd48505084e026f0aaca5d6ef66afdf089915400caa70b9358`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:26:01 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:26:01 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Mon, 26 Oct 2026 23:26:01 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Mon, 26 Oct 2026 23:26:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:26:07 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49890d6c9126c5dd74cb6759865e468e4725c70b24aac8d13b92f37600d36a18`  
		Last Modified: Mon, 26 Oct 2026 23:26:13 GMT  
		Size: 3.6 MB (3565793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e7fc81d28b17c433cf27a75d927a9cbc6b4225bf090bbba426311a7d7372e45`  
		Last Modified: Mon, 26 Oct 2026 23:26:13 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd476cfca44953e75ad2f2d19dfeb600886c85e72fe37835b081db3167b1e11f`  
		Last Modified: Mon, 26 Oct 2026 23:26:13 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fff35b2dec5004aadddaeea3b18867217595debea19219bd2949202a0f342984`  
		Last Modified: Mon, 26 Oct 2026 23:26:13 GMT  
		Size: 105.0 KB (105030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2420e11db3585a8e98f70b36e5c3af460ba414dca4da4e64fc044ab5f2e6ff2`  
		Last Modified: Mon, 26 Oct 2026 23:26:14 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd24.04-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:b9beffb9cab48f8bfdc3a162bb8781a7891e5b39e433052c52c5ff945d9dac06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2137162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b389e41ce8962ba56c79f27d289a58739453b42b45bec9dcddac635078d5858`

```dockerfile
```

-	Layers:
	-	`sha256:5286328c0fd9f1fdf23e7803ea5cd940074cba3983a60e38aa2b650a7861cde3`  
		Last Modified: Mon, 26 Oct 2026 23:26:13 GMT  
		Size: 2.1 MB (2120999 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8725340207af7750f650482a00cb1e2a4a375b906c85c7a272cf15963943eb31`  
		Last Modified: Mon, 26 Oct 2026 23:26:13 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd24.04-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:699cb63e88bfa40f5e45f306c05466cdda910cc67893e714aa8ea6d1985b1da5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32612150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23f9ec482a194430c9e15a724645c631abd9939be790892df2227df01e43bf97`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:30:29 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:30:30 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Mon, 26 Oct 2026 23:30:30 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Mon, 26 Oct 2026 23:30:37 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:30:37 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7606fbc4b323fbde27d9e8064d32180957f499c94376150d9336adc79488ef3d`  
		Last Modified: Mon, 26 Oct 2026 23:30:44 GMT  
		Size: 3.6 MB (3562961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4506d1558371da946ff5ff140a39111d5f9e4d1460e008f33976864ed59a055b`  
		Last Modified: Mon, 26 Oct 2026 23:30:44 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fc5663be81d43ed1ed8799b9532500fb8af5ff56b76e7b70c47ef30c5ba3acc`  
		Last Modified: Mon, 26 Oct 2026 23:30:43 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33d541e54d01b87ffaef298238c3886bdda59945795c341c5c821a66c3e5809`  
		Last Modified: Mon, 26 Oct 2026 23:30:44 GMT  
		Size: 105.7 KB (105725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7eb686714d9e64316c9e50a4231f5a1ac18727c7d40b6e2f0a6eb80443ed42b`  
		Last Modified: Mon, 26 Oct 2026 23:30:45 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd24.04-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:660d61acc9166fc900691d952085b4848ab9f61ed569363367b826ce06ca1d9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2138346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9bbf9b07613e6747a0229f9e1ceaa21500a38e4939d7f2ac2b8b156fd250280`

```dockerfile
```

-	Layers:
	-	`sha256:5f31630b525208ffa072657baea6611daec40b1ec2bd4259804ce3b0cf1b2b29`  
		Last Modified: Mon, 26 Oct 2026 23:30:44 GMT  
		Size: 2.1 MB (2122044 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7ebf6af14a50107c3760377ad653d473a6e1f8e56b3a3c81117f0ff052deedf`  
		Last Modified: Mon, 26 Oct 2026 23:30:44 GMT  
		Size: 16.3 KB (16302 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:noble`

```console
$ docker pull neurodebian@sha256:b884da86b9c76b64c9d9a11d1b289391f21fd2f73405a6be1d433079e885e1b5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:noble` - linux; amd64

```console
$ docker pull neurodebian@sha256:9a0a2b86e43f145bc5b7c2cad245ae265dadd464ed333265507e821e5d10c318
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33441336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad66a1c753a32ccd74a74247d36db23e5a9cf34c5220265c05a1db4728ec144`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:25:51 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:25:51 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Mon, 26 Oct 2026 23:25:51 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Mon, 26 Oct 2026 23:25:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46393d3c21f08902004ee8d9bc504dd8fc7bfe51a973016a5e0e148e5b02cb06`  
		Last Modified: Mon, 26 Oct 2026 23:26:02 GMT  
		Size: 3.6 MB (3565763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19a31e261a124f6fc1a7ee9b0fb2d55e253d141165af6ba5dc1671abcc597f2c`  
		Last Modified: Mon, 26 Oct 2026 23:26:02 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6de595dc6608cfcb8a93ed396381a4f68a7df13b83487d395745f16d4c27935`  
		Last Modified: Mon, 26 Oct 2026 23:26:02 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d1259bc4fc08a7bad839d217faf7205eacc928f7329cee48354d7a1bf5cf05`  
		Last Modified: Mon, 26 Oct 2026 23:26:02 GMT  
		Size: 105.1 KB (105052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble` - unknown; unknown

```console
$ docker pull neurodebian@sha256:e36117e5d84edbefb6c44b1f3c29fb3f952eafda4ed06fb8ea3c0ce15c3819b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2134896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b71966359f6693789747b9a117caadf5c3eb7501de5e8f783a240ab0405c950`

```dockerfile
```

-	Layers:
	-	`sha256:7f8d6ff7dd41f536ec7e9e013d87b494060805a34bba4677d9547cb3bd22e5cd`  
		Last Modified: Mon, 26 Oct 2026 23:26:02 GMT  
		Size: 2.1 MB (2120963 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c3a2ecfa425c240231ccca99a54f189e449d16e04b0a3919ecdc44e2c87168d`  
		Last Modified: Mon, 26 Oct 2026 23:26:02 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:noble` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:0c767fe5b85820c347f2c4cf99fab47ee0475383543dd3aa61c39f629a4d7585
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32611743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b042e8eb00d164a91b86fd03ef489e192e1abccffe4da4dfa8a2b50a57faa678`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:30:26 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:30:27 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Mon, 26 Oct 2026 23:30:27 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Mon, 26 Oct 2026 23:30:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4645837400bc67841e6f8fa2bc6cb0cfa0d9d550fcad1be2e51d19860e90038`  
		Last Modified: Mon, 26 Oct 2026 23:30:41 GMT  
		Size: 3.6 MB (3562956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:713e69a11148c2c7385e23fdd13ac21c35245940c57dfbd03630bf1ac32fb476`  
		Last Modified: Mon, 26 Oct 2026 23:30:41 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b374584071a883b6acb36711d27d98bb14af3782bcd44060422502033e26f03d`  
		Last Modified: Mon, 26 Oct 2026 23:30:41 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:376ea9f7a6282f31efa18eb9641478c3f9879ed1c88eeb6947ed448cf88db33b`  
		Last Modified: Mon, 26 Oct 2026 23:30:41 GMT  
		Size: 105.8 KB (105751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble` - unknown; unknown

```console
$ docker pull neurodebian@sha256:7bb0b8303d9723d5b02eb7ce4b954e451994d573509d8c3f2a231ae8c3230261
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2136065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a1e630caab90ab6f9e79f0f1915c2555f57a9d16d8df48c2f3ffe390d3687b0`

```dockerfile
```

-	Layers:
	-	`sha256:d9141f1058e9327b796258a16387a0bbea34fc6e76818e16a9c841b8c698178d`  
		Last Modified: Mon, 26 Oct 2026 23:30:41 GMT  
		Size: 2.1 MB (2122008 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e8ff9eee4903b07cbaae989e832891320b228e977532a6c9452ee962b5ae121`  
		Last Modified: Mon, 26 Oct 2026 23:30:41 GMT  
		Size: 14.1 KB (14057 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:noble-non-free`

```console
$ docker pull neurodebian@sha256:656753fc0a40be0f376cf98df82d004ca77232cd6cbb70fcf97637e76daa38c4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:noble-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:d68d2dd3a71cc8329e611bee111cf893e87a3435b81254609a387fc46ff61069
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33441775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:883742da71db2fdd48505084e026f0aaca5d6ef66afdf089915400caa70b9358`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:26:01 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:26:01 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Mon, 26 Oct 2026 23:26:01 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Mon, 26 Oct 2026 23:26:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:26:07 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49890d6c9126c5dd74cb6759865e468e4725c70b24aac8d13b92f37600d36a18`  
		Last Modified: Mon, 26 Oct 2026 23:26:13 GMT  
		Size: 3.6 MB (3565793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e7fc81d28b17c433cf27a75d927a9cbc6b4225bf090bbba426311a7d7372e45`  
		Last Modified: Mon, 26 Oct 2026 23:26:13 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd476cfca44953e75ad2f2d19dfeb600886c85e72fe37835b081db3167b1e11f`  
		Last Modified: Mon, 26 Oct 2026 23:26:13 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fff35b2dec5004aadddaeea3b18867217595debea19219bd2949202a0f342984`  
		Last Modified: Mon, 26 Oct 2026 23:26:13 GMT  
		Size: 105.0 KB (105030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2420e11db3585a8e98f70b36e5c3af460ba414dca4da4e64fc044ab5f2e6ff2`  
		Last Modified: Mon, 26 Oct 2026 23:26:14 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:b9beffb9cab48f8bfdc3a162bb8781a7891e5b39e433052c52c5ff945d9dac06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2137162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b389e41ce8962ba56c79f27d289a58739453b42b45bec9dcddac635078d5858`

```dockerfile
```

-	Layers:
	-	`sha256:5286328c0fd9f1fdf23e7803ea5cd940074cba3983a60e38aa2b650a7861cde3`  
		Last Modified: Mon, 26 Oct 2026 23:26:13 GMT  
		Size: 2.1 MB (2120999 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8725340207af7750f650482a00cb1e2a4a375b906c85c7a272cf15963943eb31`  
		Last Modified: Mon, 26 Oct 2026 23:26:13 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:noble-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:699cb63e88bfa40f5e45f306c05466cdda910cc67893e714aa8ea6d1985b1da5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32612150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23f9ec482a194430c9e15a724645c631abd9939be790892df2227df01e43bf97`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:30:29 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:30:30 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Mon, 26 Oct 2026 23:30:30 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Mon, 26 Oct 2026 23:30:37 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:30:37 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7606fbc4b323fbde27d9e8064d32180957f499c94376150d9336adc79488ef3d`  
		Last Modified: Mon, 26 Oct 2026 23:30:44 GMT  
		Size: 3.6 MB (3562961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4506d1558371da946ff5ff140a39111d5f9e4d1460e008f33976864ed59a055b`  
		Last Modified: Mon, 26 Oct 2026 23:30:44 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fc5663be81d43ed1ed8799b9532500fb8af5ff56b76e7b70c47ef30c5ba3acc`  
		Last Modified: Mon, 26 Oct 2026 23:30:43 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33d541e54d01b87ffaef298238c3886bdda59945795c341c5c821a66c3e5809`  
		Last Modified: Mon, 26 Oct 2026 23:30:44 GMT  
		Size: 105.7 KB (105725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7eb686714d9e64316c9e50a4231f5a1ac18727c7d40b6e2f0a6eb80443ed42b`  
		Last Modified: Mon, 26 Oct 2026 23:30:45 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:660d61acc9166fc900691d952085b4848ab9f61ed569363367b826ce06ca1d9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2138346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9bbf9b07613e6747a0229f9e1ceaa21500a38e4939d7f2ac2b8b156fd250280`

```dockerfile
```

-	Layers:
	-	`sha256:5f31630b525208ffa072657baea6611daec40b1ec2bd4259804ce3b0cf1b2b29`  
		Last Modified: Mon, 26 Oct 2026 23:30:44 GMT  
		Size: 2.1 MB (2122044 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7ebf6af14a50107c3760377ad653d473a6e1f8e56b3a3c81117f0ff052deedf`  
		Last Modified: Mon, 26 Oct 2026 23:30:44 GMT  
		Size: 16.3 KB (16302 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:non-free`

```console
$ docker pull neurodebian@sha256:a8e73f9473ec83f743bf5ea6ba69237dc65c79353c5096a99ef85261793ecaef
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
$ docker pull neurodebian@sha256:836a369cdb3e8a29db67ddcfb67a1c34cc8de1e5b8b5e29b3b78de02ea71af2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59795827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1534b11dbee3f904959c2aa904a297f42909f2ef19d1dd90435bb635f972067`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:42:56 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:42:56 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:42:56 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:43:00 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:00 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a42dc1961e61d242a1f38584a46053d47ff1b40456240251efa3ea18fea83470`  
		Last Modified: Wed, 28 Oct 2026 01:43:08 GMT  
		Size: 10.3 MB (10294203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a1cb291d6a6204fd948f2036fdc3cd0190738cb14bc77cb805d29df117cc827`  
		Last Modified: Wed, 28 Oct 2026 01:43:08 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb07458ec2f3367503226f9118c772c96635e2b75f4ba6deafb9c308483e1418`  
		Last Modified: Wed, 28 Oct 2026 01:43:08 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cb76ae558d3b421a3d22309c084601df7a9dae57927d2ce40dd3555848a256e`  
		Last Modified: Wed, 28 Oct 2026 01:43:08 GMT  
		Size: 90.4 KB (90374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b26aababbe1838dbfc23d4f7780f5c17ee51ba64a19c6aa75ac3e4e927fa6b24`  
		Last Modified: Wed, 28 Oct 2026 01:43:09 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:d406f4effe5f72b96ddc2de74da5d4a274cbd364c9a992f07798ac0b1f824ca6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a5ef0705a72445fe3ba6d8f2f29b7f2f34d16ce7298a1417f1f62ab5be8c112`

```dockerfile
```

-	Layers:
	-	`sha256:9759c01eb29bce06d672c46496cc6f1038823ea353ba5ddaa16c3e73def987d7`  
		Last Modified: Wed, 28 Oct 2026 01:43:09 GMT  
		Size: 3.6 MB (3624143 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f63fbb6c2fcb38290f6510fe2776f75fdbdc695b3d488c09e064c0c31d78b33b`  
		Last Modified: Wed, 28 Oct 2026 01:43:08 GMT  
		Size: 16.3 KB (16282 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:e2df2efa6aeb820079c96d5e14c4ef99fc25065257e6345ce4444999bf359fc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59949462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ab3ebdd1a065d44f4556c9046f5b8dd8f390ff768c039bb891512390fb705c7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:46:07 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:46:07 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:46:07 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:46:11 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:46:11 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f173cc8f193c53d612ec9e7b429f121a8e63544dc95b187ed511c1e73d19136c`  
		Last Modified: Wed, 28 Oct 2026 01:46:19 GMT  
		Size: 10.1 MB (10078875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b0f6de1af5d5ad593d4d5f5290b5d26a5712932e722723dc82e06433f878cfa`  
		Last Modified: Wed, 28 Oct 2026 01:46:19 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39db19c5206658c9099dc3b65f918bf7e8b9394727a07b2e3edc7524488c7681`  
		Last Modified: Wed, 28 Oct 2026 01:46:19 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6966c1ba564cc5061580115cf4c66fef8c825d5ecb01f4b25c7e04cd2c282137`  
		Last Modified: Wed, 28 Oct 2026 01:46:19 GMT  
		Size: 91.1 KB (91057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1ae970a92aa0db975bfaa5c78c2911ecd21c39e019bf51adc04f3a6da1442b9`  
		Last Modified: Wed, 28 Oct 2026 01:46:20 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:a1ffcea7172138baa5e7a65a825fb060c60ad3a3bc391a6d1b23483ae0257d4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23a509accb912678ccb205e06ad06b3724a3690d46c94a92b24bbd733ca06b91`

```dockerfile
```

-	Layers:
	-	`sha256:bb41c27308ad431143e50ce337d03bc612f2d59af6584842150626d6f8e3040b`  
		Last Modified: Wed, 28 Oct 2026 01:46:19 GMT  
		Size: 3.6 MB (3625033 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81662a4ce2b040836cd463365756bdc6d23dbb60b404802ae57782d31245a257`  
		Last Modified: Wed, 28 Oct 2026 01:46:19 GMT  
		Size: 16.4 KB (16434 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:143ea589a0c43df69cf182cd9ce493895d6b6f08eac2845ab5a727bdcef3f990
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61483881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eb31af95d5286ab074a7ac689e74e8beb1244da0b41212b8c63611df09c753f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:44:16 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:44:17 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:44:17 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:44:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:44:22 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:685483d080bb85d9422359e87391511d4083eee621a4085004f9ddd70e2a5f5a`  
		Last Modified: Wed, 28 Oct 2026 00:10:56 GMT  
		Size: 50.9 MB (50921567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97cca12a5c9091503dd2fd4cfb90610483588dde9bb8a431bfbf3c624c50bd44`  
		Last Modified: Wed, 28 Oct 2026 01:44:31 GMT  
		Size: 10.5 MB (10468228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ebb60a0c04c6adbe1b333a55c0f2da5f2f42f8c912351215d622ce3afdfedf7`  
		Last Modified: Wed, 28 Oct 2026 01:44:30 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3039472c98fcfa69d07fdabb8044426540d46350136e72213bb137f0c9e96eee`  
		Last Modified: Wed, 28 Oct 2026 01:44:30 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c82387c73bc0be4b63a58d2592ad5942d63b35ebd696e0fd7665d716e1eaf8e9`  
		Last Modified: Wed, 28 Oct 2026 01:44:31 GMT  
		Size: 90.7 KB (90730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0f0b0f1a636f79d9c2d86a5d2bba53f9a745577f52deb5dc71f47245fe2e75e`  
		Last Modified: Wed, 28 Oct 2026 01:44:32 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:b7388c6d86f2aa0a3465ac36b3f8e1c9da131f49121d52df832f9ffb4ec3bb19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3638339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a25acd15bbe19b00c28a321cdb3b1de06f994baef29d39e0198f0cf5191e7bd8`

```dockerfile
```

-	Layers:
	-	`sha256:c2f8efaea6d1499f9204a9a9618216ddbf8e5bf958a562fa4577d9bb130ab3c0`  
		Last Modified: Wed, 28 Oct 2026 01:44:30 GMT  
		Size: 3.6 MB (3622092 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e031d59341baada68157a7187882eb50a3b664723c104a96c277d17ea49107b9`  
		Last Modified: Wed, 28 Oct 2026 01:44:31 GMT  
		Size: 16.2 KB (16247 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:sid`

```console
$ docker pull neurodebian@sha256:fced7621ef7f64fabcf61cb62be23151984092e0ec691c410b692167d2d8b201
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
$ docker pull neurodebian@sha256:50728b254592d854b70ed9302890e656b0c618580fe2afc48610ea4545f481ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61585054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ce51f626d033134213fdd82007795651cc394c2f721a14aa2a5cd119f5bc7b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 01:43:02 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:03 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:43:03 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:df4a8180013f4392a5d26bea9c5caf5a9c846f52d1993024ed7d3fcf30197dd0`  
		Last Modified: Wed, 28 Oct 2026 00:10:39 GMT  
		Size: 49.8 MB (49822949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:755704e56a84fe3074fd2775af299204b5d16e288559d26d9f0dde5a4df5e734`  
		Last Modified: Wed, 28 Oct 2026 01:43:15 GMT  
		Size: 11.7 MB (11669040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:502c9d20c78c11a23a9657f3d12c130d9e688a36c225c30c71d27ad5c76ce271`  
		Last Modified: Wed, 28 Oct 2026 01:43:15 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80939afec9cbf640b61dce2ca73ead7f0467cd37f4abf6cf2dc968a90fb2abdd`  
		Last Modified: Wed, 28 Oct 2026 01:43:15 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b887179da2cb83402a20ee7ddacfbdda05e284923d141b5fd9b6c72d8dbf3924`  
		Last Modified: Wed, 28 Oct 2026 01:43:15 GMT  
		Size: 90.2 KB (90160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:0e1b6fcf9770ac0900439c81f5828956c926d5577b25a1339ab7714dadee4e15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3595675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2567945cfa66f3210a5af1a21f3900296270582d07d5206552e534ae6960036c`

```dockerfile
```

-	Layers:
	-	`sha256:af76bc4aada7a76b19ccd3cadd35d622b939c7719f8eb66759fcd1df9ff9311e`  
		Last Modified: Wed, 28 Oct 2026 01:43:15 GMT  
		Size: 3.6 MB (3581771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07bbbfcba059d35f71492a451db9ab8311cf3add4cf076f1dfff0a967ba53627`  
		Last Modified: Wed, 28 Oct 2026 01:43:15 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:a2ef1097cb209e86a98b1a6dc8f17ef1bb486cc9d2978357aca598fd0302b15e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60444715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e046b59af1388d6ba7be67566896424e59f9eb74740db738e487e0fcf81d537c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 01:46:30 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:46:30 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:46:31 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:46:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:b6223b14465d7778f5e40cb45b59714bcc7b096c1b54d3d2fb6eadbe13191106`  
		Last Modified: Wed, 28 Oct 2026 00:10:28 GMT  
		Size: 49.2 MB (49169215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:453a2d52068ba3e6f0ecb3dc27a35b2006989832c8acdad2a3a04291d3a23699`  
		Last Modified: Wed, 28 Oct 2026 01:46:43 GMT  
		Size: 11.2 MB (11181938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a5bec55faf93d6136707fe11561d32cb81a8706c3fc73e87c9c4dde7b3a778`  
		Last Modified: Wed, 28 Oct 2026 01:46:42 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:633169e44c5fc9c7c8e71ae81462b73a6fecc5971a95b736b3709402c0ca2991`  
		Last Modified: Wed, 28 Oct 2026 01:46:42 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7c67dad4bba58d5954eb4a916e77187f88a015f7fa35c7745a43e0b99f9be93`  
		Last Modified: Wed, 28 Oct 2026 01:46:42 GMT  
		Size: 90.7 KB (90657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:bf2ce26357997467ce4f1b5ebe7e573e8f1826c2eb2595e25b4246d75fcc0cf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3599284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39fa2f6c43a98892b38639c9ffb3bf572d40751a5228584b1fd24ac84fd4bcb0`

```dockerfile
```

-	Layers:
	-	`sha256:0403b343dca4ed1b0832cede435233ae2c06b5a50bca2c391050f31cbf103bca`  
		Last Modified: Wed, 28 Oct 2026 01:46:42 GMT  
		Size: 3.6 MB (3585255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c981f73f374fb61065c0dac744a70efe3d3235476e1bd5753c7a05dd5d7f76fd`  
		Last Modified: Wed, 28 Oct 2026 01:46:42 GMT  
		Size: 14.0 KB (14029 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid` - linux; 386

```console
$ docker pull neurodebian@sha256:483fc01e320eb64152b02b0505a0fb3120483d9b7fd8a5302f5f8abe427255d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62902600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:accc52292d1c4d443f7ef12d2580d862283c03900ac59ffb7fc58c078fcc6930`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 01:45:05 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:45:05 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:45:06 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:45:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:83748c81ccaf7cd658656e8d5f96a1a047d3eff6e17c90bb48560d33a7b19ca9`  
		Last Modified: Wed, 28 Oct 2026 00:10:41 GMT  
		Size: 51.0 MB (50951289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdb0ad00d71780032b55590af09a944d803b9cd950ddc68181716fc97515790d`  
		Last Modified: Wed, 28 Oct 2026 01:45:17 GMT  
		Size: 11.9 MB (11857935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7dec64baa1450e9f545a4fbbc464c5d35aafb12d5e560de7f785d5d828f165d`  
		Last Modified: Wed, 28 Oct 2026 01:45:17 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dc224f586f25aaabb6506ae7bafd0b49e69c24bd8595cdae95b5855bf8b051a`  
		Last Modified: Wed, 28 Oct 2026 01:45:17 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:016977d167b3ba7599c4b87586fea5e5bedf136d77591effbb85b631628531b0`  
		Last Modified: Wed, 28 Oct 2026 01:45:17 GMT  
		Size: 90.5 KB (90471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:a5e7eeeb07258850a136938021f9c5f2cd8bf850aa7a49fb6f1909de8febdc71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3593498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccd1c4a0820bf94c7ad44edd1083d85f53c59fda019ec1eb5fd377d3154ff58a`

```dockerfile
```

-	Layers:
	-	`sha256:df71ba548a47d40f8b841d71d6f26f233682eaa7231653d4340bef93e502cd27`  
		Last Modified: Wed, 28 Oct 2026 01:45:17 GMT  
		Size: 3.6 MB (3579622 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7577976429dbaf62bbc1752969afb31464f69d89a08d7ec9791f63ca4f95dff9`  
		Last Modified: Wed, 28 Oct 2026 01:45:17 GMT  
		Size: 13.9 KB (13876 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:sid-non-free`

```console
$ docker pull neurodebian@sha256:391b67917fc047fd4a1ecc461bbdce0fb852f3781604a1659956e6764ed01c7f
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
$ docker pull neurodebian@sha256:0681766a50ae5d01c30d5f07138254424a0f44cb50e8eca0eb8f859754ba125a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61585454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c2ea215935acae989eaac57be772fa42541f9664ff66f659948c02477df47ee`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 01:43:16 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:17 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:43:17 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:43:20 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:20 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:df4a8180013f4392a5d26bea9c5caf5a9c846f52d1993024ed7d3fcf30197dd0`  
		Last Modified: Wed, 28 Oct 2026 00:10:39 GMT  
		Size: 49.8 MB (49822949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1d3688b6158959af95068db0d164f6459f98409d14d297bb3389eb178a16481`  
		Last Modified: Wed, 28 Oct 2026 01:43:27 GMT  
		Size: 11.7 MB (11669026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cf6cf225384901f1ede46a57496140f5647874bca6688f86e721ddb343d1ed0`  
		Last Modified: Wed, 28 Oct 2026 01:43:27 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d33f2cbd6327465cb94cde90b64cc1526e25e4012dd427ae2173b15829051475`  
		Last Modified: Wed, 28 Oct 2026 01:43:27 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caffdb6184048ae506f8362a0d85758173c8f3215270c005973717189eb53831`  
		Last Modified: Wed, 28 Oct 2026 01:43:27 GMT  
		Size: 90.2 KB (90156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:701029795ec252c9c281cd3adc37e4837e31aa722bffe536ff978ef659d9df87`  
		Last Modified: Wed, 28 Oct 2026 01:43:28 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:795d8bf034b2a8ea0446cf37ebb09272cdf5ccd1dfcf7b51ffdb4402ca93c172
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3597738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c93f93ecda8077e95f42ece1bf6c5bf26f6a677dff4020c492ed639e9cdf781b`

```dockerfile
```

-	Layers:
	-	`sha256:5ba65634768b1afb209d8b741cf87e2f15c6a8925a335b0aabab3549f37e7bce`  
		Last Modified: Wed, 28 Oct 2026 01:43:27 GMT  
		Size: 3.6 MB (3581807 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6bf8a3ac7739f4f552fc4e250e8a14fe14622b1f4f80370174d89fa312971fe1`  
		Last Modified: Wed, 28 Oct 2026 01:43:27 GMT  
		Size: 15.9 KB (15931 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:f62ec035806776d0440502e5058049c220e19b7a9d271a308bc05b8aede297eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60445203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f19c25a634b0815bca1670f5e7900bf90da7db87087d64de648a4e5f50340103`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 01:46:32 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:46:33 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:46:33 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:46:37 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:46:37 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:b6223b14465d7778f5e40cb45b59714bcc7b096c1b54d3d2fb6eadbe13191106`  
		Last Modified: Wed, 28 Oct 2026 00:10:28 GMT  
		Size: 49.2 MB (49169215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d57284d10362f1c0d88fee60a1ea0d06fe4e0a343ffe6110c53589f67e911e56`  
		Last Modified: Wed, 28 Oct 2026 01:46:46 GMT  
		Size: 11.2 MB (11181993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:967fee27cef7fb1b73ca51dc344dcb2c0cab6b3e68fece73122eb0acde1ef215`  
		Last Modified: Wed, 28 Oct 2026 01:46:46 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:566688ac1340e1160fa13f50803e18d58d63cd40601489758a281bbede2de978`  
		Last Modified: Wed, 28 Oct 2026 01:46:46 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f521e5bd1f0fa32c344f01382474424d7456a55127b6fda81356f205d13df019`  
		Last Modified: Wed, 28 Oct 2026 01:46:46 GMT  
		Size: 90.7 KB (90670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b36229d10040115ec8abe6ab2916615ad9c112e74c7a76fdbdd35069ab14a06f`  
		Last Modified: Wed, 28 Oct 2026 01:46:47 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:1ecbf7eb90ec162c504559a118fe7c4188a390decb838257b5c8df020fe148e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3601361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:393e977876551646f537708f5b99a0147f3cccfdae05f11ef4ed7b375a8fab3c`

```dockerfile
```

-	Layers:
	-	`sha256:973114185000ea0c59835099e7f9eb9c62985b5a4a0eea01db530351ed6b8b36`  
		Last Modified: Wed, 28 Oct 2026 01:46:46 GMT  
		Size: 3.6 MB (3585291 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4cca9b0b16aa4f2039afe05564d362165bf1cbf91e3953139b512bd4f29b5e63`  
		Last Modified: Wed, 28 Oct 2026 01:46:46 GMT  
		Size: 16.1 KB (16070 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:39777c2c8cac49f09b833d29bb60f9468d8cb6caa6e528e3591c8271b576d91d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62902898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4d52a06127787f855af26586dae662d87eff313f1c586a8abdc62b4b75ee10e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 01:45:11 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:45:12 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:45:12 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:45:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:45:16 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:83748c81ccaf7cd658656e8d5f96a1a047d3eff6e17c90bb48560d33a7b19ca9`  
		Last Modified: Wed, 28 Oct 2026 00:10:41 GMT  
		Size: 51.0 MB (50951289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:793452d196c7307631e3388907aa9965ad52b781418b7e22bc40b474e02b2ad1`  
		Last Modified: Wed, 28 Oct 2026 01:45:24 GMT  
		Size: 11.9 MB (11857845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56bd6c421e7e499a82fd130ab28716b4be664c773117bb2afb848dcbf4eee470`  
		Last Modified: Wed, 28 Oct 2026 01:45:23 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a725b82f0e7b6d413e5bd6630d0d911294988a537f0d48a83856548dcc740ae`  
		Last Modified: Wed, 28 Oct 2026 01:45:23 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8d8d6e2595d22936cf114333f26f8a29389aea4cfbdf3a346f1cc77c266c7cc`  
		Last Modified: Wed, 28 Oct 2026 01:45:24 GMT  
		Size: 90.4 KB (90440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06b23c7bd999f6f551e4b1173c26a840438359ba00fdd5436ff8aaca1368eebb`  
		Last Modified: Wed, 28 Oct 2026 01:45:25 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:92520956b335cbe6f0fbde855a1e05005d73830ca3a5859cdd91e71061b816bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3595559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0c142d25d9715e3dd7d2643020bceb5aeaae74219f667edaceeeb159ed220d3`

```dockerfile
```

-	Layers:
	-	`sha256:03aa5a6feb6f5eee3a8a2e63ef09e5db070c62fa674ad2bc88cb20ef31dc29d3`  
		Last Modified: Wed, 28 Oct 2026 01:45:24 GMT  
		Size: 3.6 MB (3579658 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62b70608290f4ba1ca0f0064c46e3b2b3a136c2591fdb66e3864c228a9147764`  
		Last Modified: Wed, 28 Oct 2026 01:45:23 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:trixie`

```console
$ docker pull neurodebian@sha256:3ba140e4fb98d72bde8a1d809230ac0c39287677e43c23b6cce2c4bc0c62e6b8
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
$ docker pull neurodebian@sha256:17c299310ebac432fbed104c70faa20b5c8ebfdab505c290ae7553a576177410
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59795356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d73f68c4176571af4e19ad275da71579d209696acd3f24696978cc7e6042023`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:42:52 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:42:52 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:42:52 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:42:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d880229655d533978c3021f59a14cb727864bef0ea6e0cecdf5719708e79e0c2`  
		Last Modified: Wed, 28 Oct 2026 01:43:03 GMT  
		Size: 10.3 MB (10294138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce14e900c834ab2c6ce5f55dcd877c924b7116746494c8c45ca44dd33188aa7`  
		Last Modified: Wed, 28 Oct 2026 01:43:03 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90a22fa826021114cca47b02e8f90341bc36684e45eee09fa63be8ee50829a68`  
		Last Modified: Wed, 28 Oct 2026 01:43:03 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e40b02427c191435403d42d85bc06a5db68b6ba74446899b5c24dc36ec14b145`  
		Last Modified: Wed, 28 Oct 2026 01:43:03 GMT  
		Size: 90.4 KB (90418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie` - unknown; unknown

```console
$ docker pull neurodebian@sha256:f27863281703d06b60e6d3ea1464c753ab30bf7927a2956d0763db122a503a97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3638354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31a52fb60fa52cfe55f2f6b4596a21764fa3f1d7d4bf86cb336deecf58e695e5`

```dockerfile
```

-	Layers:
	-	`sha256:6fe114b8b2455a15fc82fa490a0275ac4e81eda52463b1e0757785ed3839c316`  
		Last Modified: Wed, 28 Oct 2026 01:43:03 GMT  
		Size: 3.6 MB (3624103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cf6c8ebbeb903b968909d52679fbd3b79eb24bee8c80ccc8088e2aba9946651`  
		Last Modified: Wed, 28 Oct 2026 01:43:03 GMT  
		Size: 14.3 KB (14251 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:8f69657a0e544b027acc2b5cf05c97e0f3336c139eb18fd1f368803c2edaea86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59949135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04af7a4e5c2a9608849e04ecc4c7a1c833dcc63021b2ce7bbbc91ff9a17e7acc`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:46:04 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:46:05 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:46:05 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:46:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f44804f07a5a419a194cd24178362bb1132bc1e685caf58e06fef5add8aa341a`  
		Last Modified: Wed, 28 Oct 2026 01:46:17 GMT  
		Size: 10.1 MB (10078943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc2f51ecc79efb5dbd29d9c444ad00e24252c2aa07e6aec821d73b9fac7adb5`  
		Last Modified: Wed, 28 Oct 2026 01:46:17 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28ff7b01a36eece1e362ca758a00c71d074199abfb6305080fc9d74065e599ec`  
		Last Modified: Wed, 28 Oct 2026 01:46:16 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d6791a067a7a979cb1ebd0e67216251c54bf8688a17727e06601ea0d74784e0`  
		Last Modified: Wed, 28 Oct 2026 01:46:17 GMT  
		Size: 91.1 KB (91103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie` - unknown; unknown

```console
$ docker pull neurodebian@sha256:6f09d6187a9d44aa230290ec05d9a2fef5d0a0adce2cc49bac55e3232551e794
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3639380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ce3c59d833265d0dd4c75838624c4a77cee8cf47b1b4a541c876cb40d0c9cd8`

```dockerfile
```

-	Layers:
	-	`sha256:c95707955122662f10640082ea86ae4b81cdd93481a91d3addc69f29a674fd29`  
		Last Modified: Wed, 28 Oct 2026 01:46:17 GMT  
		Size: 3.6 MB (3624993 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3db4763d0058681600c6447485b87ea0cc3d6fe92ffe6b647b4b3e5397b4bf20`  
		Last Modified: Wed, 28 Oct 2026 01:46:16 GMT  
		Size: 14.4 KB (14387 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie` - linux; 386

```console
$ docker pull neurodebian@sha256:f57e15f7eea53fab07b3d6e215d36d4471534cc34870222b5d559a8eddb01df8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61483489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1b837c8ae8d0289f81d540c6e4119a885a2f03c01d6eef94bbf98bd6e32348d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:44:10 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:44:11 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:44:11 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:44:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:685483d080bb85d9422359e87391511d4083eee621a4085004f9ddd70e2a5f5a`  
		Last Modified: Wed, 28 Oct 2026 00:10:56 GMT  
		Size: 50.9 MB (50921567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a307ecd0c87d66893145eb64e7057e07bbc03d107d96628a9926c83194c7526b`  
		Last Modified: Wed, 28 Oct 2026 01:44:23 GMT  
		Size: 10.5 MB (10468252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fb3bf5f0b8901d9df35e61a5f6103d528532df92d090fbb3e954ffbf1492935`  
		Last Modified: Wed, 28 Oct 2026 01:44:22 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b0d34c9dcb502f65937236f1177daf2377dd146f98b2842f06fa96cd6be3724`  
		Last Modified: Wed, 28 Oct 2026 01:44:22 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:601bac714363677969ea1e91452b343be0cd9dab5229c4ae366535f86e480760`  
		Last Modified: Wed, 28 Oct 2026 01:44:22 GMT  
		Size: 90.8 KB (90760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie` - unknown; unknown

```console
$ docker pull neurodebian@sha256:f103bb9db6168b3c9d178718206c5c13e2bf9b8ee3a153deb631c0cb9a02d672
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3636270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d73c1e509c1b43c3090f5f91df451e0346e3a9c0ea347c52b0e7323859043b0`

```dockerfile
```

-	Layers:
	-	`sha256:35539a166f7150f9011e26f46b1559f124be7b473e3fec2fb7b650e290ea1368`  
		Last Modified: Wed, 28 Oct 2026 01:44:22 GMT  
		Size: 3.6 MB (3622052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15eed2cb6ffec6a061c7e9f86476713319680426fa0d68cea5fd003c2ccb7355`  
		Last Modified: Wed, 28 Oct 2026 01:44:22 GMT  
		Size: 14.2 KB (14218 bytes)  
		MIME: application/vnd.in-toto+json

## `neurodebian:trixie-non-free`

```console
$ docker pull neurodebian@sha256:a8e73f9473ec83f743bf5ea6ba69237dc65c79353c5096a99ef85261793ecaef
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
$ docker pull neurodebian@sha256:836a369cdb3e8a29db67ddcfb67a1c34cc8de1e5b8b5e29b3b78de02ea71af2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59795827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1534b11dbee3f904959c2aa904a297f42909f2ef19d1dd90435bb635f972067`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:42:56 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:42:56 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:42:56 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:43:00 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:00 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a42dc1961e61d242a1f38584a46053d47ff1b40456240251efa3ea18fea83470`  
		Last Modified: Wed, 28 Oct 2026 01:43:08 GMT  
		Size: 10.3 MB (10294203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a1cb291d6a6204fd948f2036fdc3cd0190738cb14bc77cb805d29df117cc827`  
		Last Modified: Wed, 28 Oct 2026 01:43:08 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb07458ec2f3367503226f9118c772c96635e2b75f4ba6deafb9c308483e1418`  
		Last Modified: Wed, 28 Oct 2026 01:43:08 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cb76ae558d3b421a3d22309c084601df7a9dae57927d2ce40dd3555848a256e`  
		Last Modified: Wed, 28 Oct 2026 01:43:08 GMT  
		Size: 90.4 KB (90374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b26aababbe1838dbfc23d4f7780f5c17ee51ba64a19c6aa75ac3e4e927fa6b24`  
		Last Modified: Wed, 28 Oct 2026 01:43:09 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:d406f4effe5f72b96ddc2de74da5d4a274cbd364c9a992f07798ac0b1f824ca6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a5ef0705a72445fe3ba6d8f2f29b7f2f34d16ce7298a1417f1f62ab5be8c112`

```dockerfile
```

-	Layers:
	-	`sha256:9759c01eb29bce06d672c46496cc6f1038823ea353ba5ddaa16c3e73def987d7`  
		Last Modified: Wed, 28 Oct 2026 01:43:09 GMT  
		Size: 3.6 MB (3624143 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f63fbb6c2fcb38290f6510fe2776f75fdbdc695b3d488c09e064c0c31d78b33b`  
		Last Modified: Wed, 28 Oct 2026 01:43:08 GMT  
		Size: 16.3 KB (16282 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:e2df2efa6aeb820079c96d5e14c4ef99fc25065257e6345ce4444999bf359fc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59949462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ab3ebdd1a065d44f4556c9046f5b8dd8f390ff768c039bb891512390fb705c7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:46:07 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:46:07 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:46:07 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:46:11 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:46:11 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f173cc8f193c53d612ec9e7b429f121a8e63544dc95b187ed511c1e73d19136c`  
		Last Modified: Wed, 28 Oct 2026 01:46:19 GMT  
		Size: 10.1 MB (10078875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b0f6de1af5d5ad593d4d5f5290b5d26a5712932e722723dc82e06433f878cfa`  
		Last Modified: Wed, 28 Oct 2026 01:46:19 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39db19c5206658c9099dc3b65f918bf7e8b9394727a07b2e3edc7524488c7681`  
		Last Modified: Wed, 28 Oct 2026 01:46:19 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6966c1ba564cc5061580115cf4c66fef8c825d5ecb01f4b25c7e04cd2c282137`  
		Last Modified: Wed, 28 Oct 2026 01:46:19 GMT  
		Size: 91.1 KB (91057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1ae970a92aa0db975bfaa5c78c2911ecd21c39e019bf51adc04f3a6da1442b9`  
		Last Modified: Wed, 28 Oct 2026 01:46:20 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:a1ffcea7172138baa5e7a65a825fb060c60ad3a3bc391a6d1b23483ae0257d4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23a509accb912678ccb205e06ad06b3724a3690d46c94a92b24bbd733ca06b91`

```dockerfile
```

-	Layers:
	-	`sha256:bb41c27308ad431143e50ce337d03bc612f2d59af6584842150626d6f8e3040b`  
		Last Modified: Wed, 28 Oct 2026 01:46:19 GMT  
		Size: 3.6 MB (3625033 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81662a4ce2b040836cd463365756bdc6d23dbb60b404802ae57782d31245a257`  
		Last Modified: Wed, 28 Oct 2026 01:46:19 GMT  
		Size: 16.4 KB (16434 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:143ea589a0c43df69cf182cd9ce493895d6b6f08eac2845ab5a727bdcef3f990
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61483881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eb31af95d5286ab074a7ac689e74e8beb1244da0b41212b8c63611df09c753f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:44:16 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:44:17 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:44:17 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:44:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:44:22 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:685483d080bb85d9422359e87391511d4083eee621a4085004f9ddd70e2a5f5a`  
		Last Modified: Wed, 28 Oct 2026 00:10:56 GMT  
		Size: 50.9 MB (50921567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97cca12a5c9091503dd2fd4cfb90610483588dde9bb8a431bfbf3c624c50bd44`  
		Last Modified: Wed, 28 Oct 2026 01:44:31 GMT  
		Size: 10.5 MB (10468228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ebb60a0c04c6adbe1b333a55c0f2da5f2f42f8c912351215d622ce3afdfedf7`  
		Last Modified: Wed, 28 Oct 2026 01:44:30 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3039472c98fcfa69d07fdabb8044426540d46350136e72213bb137f0c9e96eee`  
		Last Modified: Wed, 28 Oct 2026 01:44:30 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c82387c73bc0be4b63a58d2592ad5942d63b35ebd696e0fd7665d716e1eaf8e9`  
		Last Modified: Wed, 28 Oct 2026 01:44:31 GMT  
		Size: 90.7 KB (90730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0f0b0f1a636f79d9c2d86a5d2bba53f9a745577f52deb5dc71f47245fe2e75e`  
		Last Modified: Wed, 28 Oct 2026 01:44:32 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:b7388c6d86f2aa0a3465ac36b3f8e1c9da131f49121d52df832f9ffb4ec3bb19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3638339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a25acd15bbe19b00c28a321cdb3b1de06f994baef29d39e0198f0cf5191e7bd8`

```dockerfile
```

-	Layers:
	-	`sha256:c2f8efaea6d1499f9204a9a9618216ddbf8e5bf958a562fa4577d9bb130ab3c0`  
		Last Modified: Wed, 28 Oct 2026 01:44:30 GMT  
		Size: 3.6 MB (3622092 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e031d59341baada68157a7187882eb50a3b664723c104a96c277d17ea49107b9`  
		Last Modified: Wed, 28 Oct 2026 01:44:31 GMT  
		Size: 16.2 KB (16247 bytes)  
		MIME: application/vnd.in-toto+json
