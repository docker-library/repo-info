## `neurodebian:trixie`

```console
$ docker pull neurodebian@sha256:350684101b83de8d7f21f963efc7fbfd5b9f6b0c10ce88be0567f6c7969c7459
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
$ docker pull neurodebian@sha256:5f7e016af46e874797e64bb903160794d6d1824e2ad6ad7c7bc114575e15d996
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59781256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cca5db5fee3da5f03adbe6dc947e76584a5b486135c533ff817ac5cb6f873705`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:49:27 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:49:28 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 00:49:28 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 21 Oct 2026 00:49:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:238ecf58ed28082878f9de918a8f8cf748e04723674909ad458da8a1290681f1`  
		Last Modified: Wed, 21 Oct 2026 00:49:39 GMT  
		Size: 10.3 MB (10294321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d27c2353a954bb351681ba808c0a329b5b3e5f5b7e4bd27d9549a1c450a06e9`  
		Last Modified: Wed, 21 Oct 2026 00:49:38 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d79eaa6874797d3f378b7b06bf662ba913cb74c6d553b06493f84fb2d693dce`  
		Last Modified: Wed, 21 Oct 2026 00:49:38 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc6b2b036be2ca8e615f6dd91540ce405e2632b5cc8ee359024327c476fad9f7`  
		Last Modified: Wed, 21 Oct 2026 00:49:38 GMT  
		Size: 90.4 KB (90405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie` - unknown; unknown

```console
$ docker pull neurodebian@sha256:baec99d60abab5e0630f9af8ebf40af8162581cdd7a962739ddb7481f08941a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3638354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0758d7a75a74316dfc0a5cee8ea0f4eb4f592779dacc9199a87e79f867611c03`

```dockerfile
```

-	Layers:
	-	`sha256:0e84036d2bef6ac42cd3cbf5478ec2cde3044e40c781ddcd73526d5c5c4d1d25`  
		Last Modified: Wed, 21 Oct 2026 00:49:39 GMT  
		Size: 3.6 MB (3624103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:759a5a2fdfbed5ac0d6b1e48a839d68734b321be25e1d95a73fa61fb3c92bfaf`  
		Last Modified: Wed, 21 Oct 2026 00:49:39 GMT  
		Size: 14.3 KB (14251 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie` - linux; arm64 variant v8

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

### `neurodebian:trixie` - unknown; unknown

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

### `neurodebian:trixie` - linux; 386

```console
$ docker pull neurodebian@sha256:f166c1f6dabfe7f7ff121726fcb0062de7c173387174546e05fdb954143a0767
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61468374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c76c7776899613699e13b40a5ccd385b22ed9ac14f6f61f5dafa8494c3235e2`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:49:22 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:49:22 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 00:49:23 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 21 Oct 2026 00:49:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:32b56ddaffdf524e89e42fd33cbc0e53bfe71b517148f5e7cb00252a55c2fc0c`  
		Last Modified: Tue, 20 Oct 2026 23:30:52 GMT  
		Size: 50.9 MB (50906545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41b7916a161e2cd5ebae47c5be401592728dfbb177c5fbf35b2fd3ae33716637`  
		Last Modified: Wed, 21 Oct 2026 00:49:35 GMT  
		Size: 10.5 MB (10468188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f1b02b36ba4e09a640a87bdea1ab28cbb4f49c2673ba8afbe1c2e70998dc219`  
		Last Modified: Wed, 21 Oct 2026 00:49:34 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a47a067d681f155f75109310473583a65ae27e2a9908f0f0063c83e49bfdaa0`  
		Last Modified: Wed, 21 Oct 2026 00:49:34 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34988a18166d0ecad30cb7faa05f73b41ae2fb54516f686f0f4302ae8c04bad7`  
		Last Modified: Wed, 21 Oct 2026 00:49:34 GMT  
		Size: 90.7 KB (90734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie` - unknown; unknown

```console
$ docker pull neurodebian@sha256:28b3f0886f162e91684b0d896ce2ce1c6c1e83fb3605a64822bca138020b0f13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3636270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3788d31061fb09c0ad56285c3c5ab596ab8a626e135829c62725cf1a62cfe17c`

```dockerfile
```

-	Layers:
	-	`sha256:8937e209c54670e5cac3806566bd2a12f724037ec25f0fcfab951ec3e51a225b`  
		Last Modified: Wed, 21 Oct 2026 00:49:34 GMT  
		Size: 3.6 MB (3622052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:176ce67a7a04ee4e4073939368c61c5db38982e6dbcc12198f8e309c2c1697be`  
		Last Modified: Wed, 21 Oct 2026 00:49:34 GMT  
		Size: 14.2 KB (14218 bytes)  
		MIME: application/vnd.in-toto+json
