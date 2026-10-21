## `neurodebian:nd140-non-free`

```console
$ docker pull neurodebian@sha256:7a5bfb74e5393083ac6bba4cb990a82b29660ee7a28669672d0b01184c76c1a2
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
$ docker pull neurodebian@sha256:0acecaef6578c36c1d428b9eeb03ee63d29b436ed74a2673caf671ebd077f6da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61576793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:921f55cc5124f1949450b85317410436ced6076dc72d0643e97bb88a78ad0eb1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1792531975'
# Wed, 21 Oct 2026 00:49:45 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:49:46 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 00:49:46 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 21 Oct 2026 00:49:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:49:49 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:2fe4b6091574b3f1b29a730c59818868b10f42ed61e8c86f51e916f6230cfed6`  
		Last Modified: Tue, 20 Oct 2026 23:30:29 GMT  
		Size: 49.8 MB (49814335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc074b002d3e215da7c3eebcb63ea8f6a7edc94c222843826d522855da0e00c9`  
		Last Modified: Wed, 21 Oct 2026 00:49:57 GMT  
		Size: 11.7 MB (11668973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d52189c07b7cfab6cc104bd2418dacfb16bbadffa53efcd8ef75b54fa6d72ee8`  
		Last Modified: Wed, 21 Oct 2026 00:49:57 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ae9fdadd8c2078fa22656ffe45c8e34042b18dc36895b71ddf478927ea269f3`  
		Last Modified: Wed, 21 Oct 2026 00:49:57 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c7af32ce44d522265d427f113eb0399fece86dac649d9d7023ada0460e7416`  
		Last Modified: Wed, 21 Oct 2026 00:49:57 GMT  
		Size: 90.1 KB (90129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:326a97c2f5048ad4714570c659448ce6d06a73c50031e7b57c3e24f6c765d1e0`  
		Last Modified: Wed, 21 Oct 2026 00:49:58 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ad4df16faa56ba59429fb5671dd8dcefdc8f8ba37e034cd17b54a8941a8193d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3596950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e3623303bb58f5aecba1b419038b6a8a3103a3d7a12016e9ed343a7bcda339d`

```dockerfile
```

-	Layers:
	-	`sha256:55f2b625677a97aa569aee50924978204ee4e5e29cd3c9fca19d94da1b1bbd80`  
		Last Modified: Wed, 21 Oct 2026 00:49:57 GMT  
		Size: 3.6 MB (3580991 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41f5a1542b8f7c5d6510a0c20ac6099e79dfbf43be5c23c70d0598116cca4c61`  
		Last Modified: Wed, 21 Oct 2026 00:49:57 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:2cc84b19c235eee5c25b484f2af4f73be56dbc31496d1bdf0da3b135217cb717
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60418420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:790939bd108b4fa17abb6504800e5247b57bc1193c71aa172679c106094fa202`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1792531975'
# Wed, 21 Oct 2026 00:52:54 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:52:55 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 00:52:55 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 21 Oct 2026 00:52:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:52:59 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:92027717a2c3877f42b4322ce7e4584c8ba10b96c54d312a7823fd9df6cd664a`  
		Last Modified: Tue, 20 Oct 2026 23:30:26 GMT  
		Size: 49.1 MB (49142449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52a5c7281511d341bd74e41255ce8d1bd6bab88c961d182f84b17dbcf1f31b66`  
		Last Modified: Wed, 21 Oct 2026 00:53:08 GMT  
		Size: 11.2 MB (11181957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6e1b79b1d7c0838cd728e6a9594fa8b9d95f645d2dec8777600ca1b1b1c0df`  
		Last Modified: Wed, 21 Oct 2026 00:53:07 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4825c0cd57663e6c134933c1d41f6af8a3b81e37099523c0a415a84133f9320f`  
		Last Modified: Wed, 21 Oct 2026 00:53:07 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abfc6385667e1652e17794da643d2d75479facfd2bab266d924c504ece9e3382`  
		Last Modified: Wed, 21 Oct 2026 00:53:07 GMT  
		Size: 90.7 KB (90660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d56f7bd50fc76bce509b5633b5e95c6ba15d18aaba7e95733ecd176d62ffef2b`  
		Last Modified: Wed, 21 Oct 2026 00:53:08 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:c5363daeff528dc1bb76007a1c0e0866e4464528af4989e9530b8315b0c27d49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3600574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a38fc9ae35bb6dc3d17a0363b68cdb3d7147377207e869de0948251fb54ce646`

```dockerfile
```

-	Layers:
	-	`sha256:ce72b53128b7c935447240d39283c8f3c26915fb0ade33ca6da7dbee31bb7b53`  
		Last Modified: Wed, 21 Oct 2026 00:53:07 GMT  
		Size: 3.6 MB (3584475 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f59dd92244d956570fc989d61d61dae31a7d26217d0d2539759c752ba9754dd3`  
		Last Modified: Wed, 21 Oct 2026 00:53:07 GMT  
		Size: 16.1 KB (16099 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:c712e05319912618f4f2fb2c70409e01f6162ef5e8548acdead6edbf344430c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62885996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83d1ef2e2951cf575f776d874324cf0b5ea210e9ee1d39c709389537bf2719d8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1792531975'
# Wed, 21 Oct 2026 00:49:54 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:49:55 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 00:49:55 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 21 Oct 2026 00:49:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:49:59 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:a82d12bb7ac6591825acca7b46cb1bf53a45a71b72bdafbeffec867fb8981dad`  
		Last Modified: Tue, 20 Oct 2026 23:30:34 GMT  
		Size: 50.9 MB (50934347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6026404b3ee317dbdd8c60c5138c3290fe7b2efd079bc69af2ebe8dcfadf71`  
		Last Modified: Wed, 21 Oct 2026 00:50:08 GMT  
		Size: 11.9 MB (11857851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfd4793ee076bac9d4f49ee185a3310f36c8aa0f9d2c389630aea85ab19a6527`  
		Last Modified: Wed, 21 Oct 2026 00:50:07 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1eaae31052adae2c637178fb45107e30f0914d2ed013fa7f4779937c49f04db`  
		Last Modified: Wed, 21 Oct 2026 00:50:07 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b05b9dade880879bb0ee734386d61fb6e1a8fd74f9722fe9fed953722d3165d7`  
		Last Modified: Wed, 21 Oct 2026 00:50:07 GMT  
		Size: 90.4 KB (90439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf340922e28681dce3975f3b7fdaf5fa1327fc94bd1650272ec7008c4095a46a`  
		Last Modified: Wed, 21 Oct 2026 00:50:08 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8030b15076a11e2baf39b558208455f36cffdd7da3574b3281c9768164a468bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3594772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c16a8073eb5d12cb42bea526485a9cef003c6c9101dfd67c2054eab20a3662e`

```dockerfile
```

-	Layers:
	-	`sha256:97855facfae5e3b9bbab12b89061475efb35a419283db051fb25ad352cb87f7b`  
		Last Modified: Wed, 21 Oct 2026 00:50:07 GMT  
		Size: 3.6 MB (3578843 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fca662c1448b820b957473762af6b055cd16f178a22e409df585a673bb7307fa`  
		Last Modified: Wed, 21 Oct 2026 00:50:07 GMT  
		Size: 15.9 KB (15929 bytes)  
		MIME: application/vnd.in-toto+json
