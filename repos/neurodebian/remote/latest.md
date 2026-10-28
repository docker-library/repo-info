## `neurodebian:latest`

```console
$ docker pull neurodebian@sha256:f7b77f5f52ad4d66036d0341270a7d3b728b7b5aad691cb4573204798dcf2dd7
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
$ docker pull neurodebian@sha256:493c9fee6983b02cc98b7f845c8e56ad5cce0a609593ba6799bbd3182b41ee01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59934410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca19c74b35788d9d9923ee5ad1e889e2a5af344003f632954ff377c76593ea2`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:52:38 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:52:38 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 00:52:38 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 21 Oct 2026 00:52:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:918c682a8ec1eeee9407c1420f86d4e2bcadd89f3a8d58a7ef51c5b59b740269`  
		Last Modified: Wed, 21 Oct 2026 00:52:51 GMT  
		Size: 10.1 MB (10078869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77248e12140bedd8341d29a33dc4c83cef0c7be4722b92b665a7ec932eba2121`  
		Last Modified: Wed, 21 Oct 2026 00:52:51 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e81f52bf1bc3a1e401a03416592cbe7d562ea13799953d0d92c4e96c078606f1`  
		Last Modified: Wed, 21 Oct 2026 00:52:50 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2911f59cdf44a62c27ee32b53b31f57e77badda13ab29276b22f4787de89bcca`  
		Last Modified: Wed, 21 Oct 2026 00:52:51 GMT  
		Size: 91.0 KB (91035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:latest` - unknown; unknown

```console
$ docker pull neurodebian@sha256:28b3640fe4af2e5145f8cfc98933f526c05bea1b79c67a8afab145ffe15fb300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3639380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:815c3107c37f022ae99e0ef00cfe4140caa85933fe95fddd893d7ab55d8c12a0`

```dockerfile
```

-	Layers:
	-	`sha256:04af7392b8baefc5539729a069072d0dd581bb57da1cf3311dc267fca7c328ce`  
		Last Modified: Wed, 21 Oct 2026 00:52:51 GMT  
		Size: 3.6 MB (3624993 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aad1b0bd0c4b060ffd6dfc6434c916e2397176fbc5746d734c89fb7d5ebc173d`  
		Last Modified: Wed, 21 Oct 2026 00:52:50 GMT  
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
