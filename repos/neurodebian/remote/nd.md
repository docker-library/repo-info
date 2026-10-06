## `neurodebian:nd`

```console
$ docker pull neurodebian@sha256:efad422d34840121954abedec9e64722d9bfe6c9af28839b2e5c34c843e8495b
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

### `neurodebian:nd` - unknown; unknown

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

### `neurodebian:nd` - linux; arm64 variant v8

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

### `neurodebian:nd` - unknown; unknown

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

### `neurodebian:nd` - linux; 386

```console
$ docker pull neurodebian@sha256:c592a000c1b63c25073b9b407d372543248be8bde9b94200c98e1f6788cfc51c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62700904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dc47cde5a48049fe07c4f7860aede40458647f9dcde9c910d262bc61923a3c3`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:51:40 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:51:41 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:51:41 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:51:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f9de436b1f619aa98917cd8cb05423eb8634c4c4dc9dee9eefb091f960cfd77a`  
		Last Modified: Sat, 19 Sep 2026 00:04:19 GMT  
		Size: 50.8 MB (50752810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bafc8e3422117e9c2a2052ba28a3c5d393f9faf7519df5c1969eb2ec2fea8c5`  
		Last Modified: Sat, 19 Sep 2026 00:51:54 GMT  
		Size: 11.9 MB (11854723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:477f23ba623197c08511de994c10e4d5587bd8935a107587dd199e4a26e30d75`  
		Last Modified: Sat, 19 Sep 2026 00:51:53 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9197f254e6455d75d2d13ee4bfe9ea0e9dd553de26c5c5acfe010aa79efc256`  
		Last Modified: Sat, 19 Sep 2026 00:51:53 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8785af646e2c7b65f7779ceab37c566b21d669d63a92067c1d8f26d6fcd53c5`  
		Last Modified: Sat, 19 Sep 2026 00:51:54 GMT  
		Size: 90.5 KB (90467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8a3cfac5dcee0f485bf4ab071b81ade87958ec49a13785cfb40f925f08d00e14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3606304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c06f3747aa036800f251c37917555e248572ac48996da4189219ba9b2f3b2e6`

```dockerfile
```

-	Layers:
	-	`sha256:e5e93b3413448fb292c874be34acd72c4a92d176c056c48806a6ab397c451e52`  
		Last Modified: Sat, 19 Sep 2026 00:51:54 GMT  
		Size: 3.6 MB (3592428 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7effee3483ad2ccd6334c2bf4f6f9651049385db3952f1eb1bc75cc0ed4474b`  
		Last Modified: Sat, 19 Sep 2026 00:51:53 GMT  
		Size: 13.9 KB (13876 bytes)  
		MIME: application/vnd.in-toto+json
