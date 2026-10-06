## `neurodebian:sid`

```console
$ docker pull neurodebian@sha256:0c45a00421caef2834c0cc550dbbbda16bbf13ebad0a125a4b8cdbc2c9281153
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
$ docker pull neurodebian@sha256:44e98ee8663e61655b031351fed1890e22c8485cca35fdbdf99fa03908f812cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61568906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5cbbcbcc88e813390cd6bc62198554b5cc47bc641ad212fb6b44ab8e7abc156`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1791158400'
# Tue, 06 Oct 2026 01:44:46 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:46 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 01:44:47 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 06 Oct 2026 01:44:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ab2033ad8cb0b43749503cab4583da73f596c307f88d12356e5364054a51048e`  
		Last Modified: Tue, 06 Oct 2026 00:13:26 GMT  
		Size: 49.8 MB (49810882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fe6317d66671a0877161aeddcd369c4f22d43e257dc80f995ece34c1f9230c9`  
		Last Modified: Tue, 06 Oct 2026 01:44:59 GMT  
		Size: 11.7 MB (11664948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1ea42fa41d67dd12102cfda11e2a36a29df21efa5a5839e1b0923ff255af268`  
		Last Modified: Tue, 06 Oct 2026 01:44:58 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f52279a35a5ea82674f9dffa4e576b76c8066fb48b40ddb043153df78e3eb91`  
		Last Modified: Tue, 06 Oct 2026 01:44:58 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d19ed111f3f0f3657c82aa210b0f0b9bd96e00074c4e31e96cabe9184097b690`  
		Last Modified: Tue, 06 Oct 2026 01:44:59 GMT  
		Size: 90.2 KB (90173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:381c42f28ea0b85b227a38f3f6682f4e4daa0d62f84d58a39ccfcac23cb19ed4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3598079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38651cd21ddfd6d1b5caa9f364c2bc75f0adaab57bc5304ea4e0d0059bd7efed`

```dockerfile
```

-	Layers:
	-	`sha256:5a29e5f298ef5b297636916c3b5b6818b793f11128d8ff36d134e2fe797bc93a`  
		Last Modified: Tue, 06 Oct 2026 01:44:59 GMT  
		Size: 3.6 MB (3584175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8db34f5ab3ad69881c826bbf5311dbb6606e47e35e3f058d475b1b70f868a16`  
		Last Modified: Tue, 06 Oct 2026 01:44:58 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:78bf8309f874396498c7cf30d311541820d9a7ce5062da22c5c5a013cc257029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60412411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38fc0483a3f9d57e66fcb69b62724ceba908894e1e0dcc02b4e8aef50fe08eb6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1791158400'
# Tue, 06 Oct 2026 01:47:57 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:47:57 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 01:47:57 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 06 Oct 2026 01:48:01 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d7a8bd199db3cdecd4fbba67b4222426a79183b07610eeae664329cc97e17682`  
		Last Modified: Tue, 06 Oct 2026 00:13:38 GMT  
		Size: 49.1 MB (49137221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38b67fb4c633b9bd919a6755ecf362289896553604d8692b680fd29a7432b00d`  
		Last Modified: Tue, 06 Oct 2026 01:48:10 GMT  
		Size: 11.2 MB (11181647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c985fbfc21e0d298a55a04723e0cbfd49d0e7579ce90bf047f3fd1548b1510a`  
		Last Modified: Tue, 06 Oct 2026 01:48:09 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3eea0c1f694d4f63a2d526ab635be35b53fa552cf33ffe4ef8917ba00fb039e`  
		Last Modified: Tue, 06 Oct 2026 01:48:09 GMT  
		Size: 267.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8198262041fa4d62f555abd6e0f9a90fc133d3f35009683682e210c7929f88f5`  
		Last Modified: Tue, 06 Oct 2026 01:48:09 GMT  
		Size: 90.6 KB (90643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:a2cfb1abe26078bd7d751b25246270537d50328fa2389f4b92052891d94cd212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3601688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea8523033bb01add7422b85fa72123b782fd9aa38a1adb184857ac9d8867fa4f`

```dockerfile
```

-	Layers:
	-	`sha256:cfd977266b8d9827c4ba6ac77432d8fc1e5e7a94aae6b75179f55b10782d0d64`  
		Last Modified: Tue, 06 Oct 2026 01:48:09 GMT  
		Size: 3.6 MB (3587659 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3d78422705b2d9c4d7473577c16a5b0e6e0d7471b62dbf51f01ea2227cc32d4`  
		Last Modified: Tue, 06 Oct 2026 01:48:09 GMT  
		Size: 14.0 KB (14029 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid` - linux; 386

```console
$ docker pull neurodebian@sha256:477b72969d4b3e162c16387503218a816654352bb3690d6e8274c8123ecae139
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62879103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:007782e75831c05c6daf57a87f1b929f0a0623ec6f8e9f1b1368a258cd20d50e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1791158400'
# Tue, 06 Oct 2026 01:48:24 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:48:24 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 01:48:24 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 06 Oct 2026 01:48:29 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:9110db07e46e0ee00d66b51c152e37c62b0703707db22c577c69116c284fd877`  
		Last Modified: Tue, 06 Oct 2026 00:13:59 GMT  
		Size: 50.9 MB (50930428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69bb3624de7b44c73ddcb2c7f80e35d1b0e8d4b21c6d3f4f401c4361be732697`  
		Last Modified: Tue, 06 Oct 2026 01:48:37 GMT  
		Size: 11.9 MB (11855355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35fd9cfbab9e14d90adfc9760e8612ea4d7f9c6209007350a5569b1e4ad59241`  
		Last Modified: Tue, 06 Oct 2026 01:48:37 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ca8d8df84228d5ed4198fc8fa0868e6d9242df28e54d720c7143f34c16633cc`  
		Last Modified: Tue, 06 Oct 2026 01:48:37 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c05952f1783287d0dc1dad4135ff9fadba9a375612164afa2d4d45048904a6a`  
		Last Modified: Tue, 06 Oct 2026 01:48:37 GMT  
		Size: 90.4 KB (90418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:78df7aa2557dbcd459edc7b97d6a7eb2f57e7ccd540b26acd029b37c22c0d41b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3595899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f56295cfc542c9228ddb9a0b92bc1db0a12490a0b037129874e3223857530f8`

```dockerfile
```

-	Layers:
	-	`sha256:b8a0c4d3cea2e057bbea4b1bfa6cd9f51f933053a08408707442cb4f6fbdf8eb`  
		Last Modified: Tue, 06 Oct 2026 01:48:37 GMT  
		Size: 3.6 MB (3582023 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c821224346b69d604623e0b662209fd454536672b440e8532999b4da1d58f6f3`  
		Last Modified: Tue, 06 Oct 2026 01:48:37 GMT  
		Size: 13.9 KB (13876 bytes)  
		MIME: application/vnd.in-toto+json
