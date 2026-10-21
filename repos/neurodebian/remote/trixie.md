## `neurodebian:trixie`

```console
$ docker pull neurodebian@sha256:63fd4f42e4b2f98dfd326702aecf462dd7cb31a59ff52b058299af208dc2b321
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
$ docker pull neurodebian@sha256:5e7e0ea4ce50e3aa535833d797ba267c5c37b93e53076c98dff24ff61a6eb771
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61467974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bafb264e439cfd5173bed6344f32a7f916078e37f501a9491b673ca30705c339`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:47:13 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:47:14 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 01:47:14 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 06 Oct 2026 01:47:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ace453750484672581012d135658fd142a37f3cc1464965baca36cee819b3d13`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 50.9 MB (50906096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b546da4808ce28bd62f73c167017ea37b1f987d8ea20d6b9035f0bfaa896216`  
		Last Modified: Tue, 06 Oct 2026 01:47:27 GMT  
		Size: 10.5 MB (10468207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00a356e0ec2a0ef96b5f7096d44418285050f0bbba8558b893a995f38b9644c7`  
		Last Modified: Tue, 06 Oct 2026 01:47:27 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:619bb7f00e0b7582161d7b16b436820ef672d61889e3092a271d41a638d8f555`  
		Last Modified: Tue, 06 Oct 2026 01:47:26 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a61c46f202798054dd8f5f99fc41f0541d9772960ea764558e57611dcd12a3`  
		Last Modified: Tue, 06 Oct 2026 01:47:27 GMT  
		Size: 90.8 KB (90768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie` - unknown; unknown

```console
$ docker pull neurodebian@sha256:81082b603e1ab17e7a1e75b3314c775e3395ad2534452eff180e2d5d4cd7a9f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3636268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e7bde7849fedb3fc8594527ee9fd8ef82975bf35e064a387d4e75a582e004a0`

```dockerfile
```

-	Layers:
	-	`sha256:e5cb3aa1c5188e96f4a8f7a332423e17bbe3bde9f2fa9308590301921160e5b8`  
		Last Modified: Tue, 06 Oct 2026 01:47:27 GMT  
		Size: 3.6 MB (3622052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c137d088537c59919ca37fd6797fa85caeaecf1eb56d1a4a993dea118a04aac1`  
		Last Modified: Tue, 06 Oct 2026 01:47:27 GMT  
		Size: 14.2 KB (14216 bytes)  
		MIME: application/vnd.in-toto+json
