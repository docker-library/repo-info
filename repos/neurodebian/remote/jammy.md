## `neurodebian:jammy`

```console
$ docker pull neurodebian@sha256:efcb89d7cbff730ad8cfa0e7b9189af2815bdf09188a1a99033e39e12781a8a9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:jammy` - linux; amd64

```console
$ docker pull neurodebian@sha256:57a0d903470597e03e960e74763f83bcd7dbe9627644c824b6e60ac9dc8da499
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33477207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df729bea0f9c0880a20423372a486333b9966e1c91cf23456164682555494d5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:31:07 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:31:07 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 02 Jul 2026 02:31:08 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 02 Jul 2026 02:31:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:680960a08fa958d14450503921588a75b60874dbb5855b7dcbe1c715ee174b70`  
		Last Modified: Thu, 02 Jul 2026 02:31:19 GMT  
		Size: 3.6 MB (3624747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0b0597980ee97b77329874b11f91d2a76051933e951364470e32febbcba573`  
		Last Modified: Thu, 02 Jul 2026 02:31:19 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cbefa676e08d4b70c48469d71a02f194191ab19d0812e3b9b7ee15b5f88a1f1`  
		Last Modified: Thu, 02 Jul 2026 02:31:19 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:636f24e7cd1a6256cc28af0ac1e39457841247b1901368762e88cc4bf2cf5005`  
		Last Modified: Thu, 02 Jul 2026 02:31:19 GMT  
		Size: 111.4 KB (111400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9436d31c7254e39f7728a2a33c3bf484610767fcc56f160c6c43f3c8fa7dc0aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6a39346d7b961ffe80620851c79907c27ba9cab61f1d97cc8e5a3988569cf78`

```dockerfile
```

-	Layers:
	-	`sha256:3f9e6153fb7954a4436bd2c5ef4592a2b205ac24555de7643d85227c86ae16ce`  
		Last Modified: Thu, 02 Jul 2026 02:31:19 GMT  
		Size: 2.2 MB (2198336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5058e1b63c4ffe026ffbc85716b87bddcfc76eac5e430bba237d306597f6024`  
		Last Modified: Thu, 02 Jul 2026 02:31:19 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:jammy` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:4a3374c784248db3613d9ced57e4dd42c00893cc3350ec7d54f779835a418bbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31334966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0161bd591d5447144f54e4f0d480bc3857492cfac2cd60c6761eb4dfc1f21ce`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:30:09 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:30:09 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 02 Jul 2026 02:30:09 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 02 Jul 2026 02:30:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74539728a8212e505639e97c7df496b47d96fa669bb483419166a21371f89edb`  
		Last Modified: Thu, 02 Jul 2026 02:30:22 GMT  
		Size: 3.6 MB (3608338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1809990106832ac15586cf26fa679afb8b24c6c3a5d327ab9acfe77f2fd0eca1`  
		Last Modified: Thu, 02 Jul 2026 02:30:22 GMT  
		Size: 1.9 KB (1905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:506db5cbc7fa20a69ac92fe21e99d3ba2be0a37205001b2b3c3031a5497da400`  
		Last Modified: Thu, 02 Jul 2026 02:30:22 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4542b32c44a098003f870b45643b451800d364820df4a28e5ddaecc412006150`  
		Last Modified: Thu, 02 Jul 2026 02:30:22 GMT  
		Size: 111.3 KB (111265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy` - unknown; unknown

```console
$ docker pull neurodebian@sha256:e471022f5d6d291ae03f2a63518da48eac1ebe4b96dc7ef01134aea797596fb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:473a27ed0401e5146b69d4d16d0ddc92c156f29f3b412fc737a85f12cbe07a23`

```dockerfile
```

-	Layers:
	-	`sha256:bafba7fa6be02c729c1d763f4ee3f8e21cba36de3ff330918a6a385e8714d2c5`  
		Last Modified: Thu, 02 Jul 2026 02:30:22 GMT  
		Size: 2.2 MB (2198596 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f97fa71d88e83691d430b3cf581ab1a1e4e1639a20b447e7bfec148a7019862`  
		Last Modified: Thu, 02 Jul 2026 02:30:22 GMT  
		Size: 14.1 KB (14058 bytes)  
		MIME: application/vnd.in-toto+json
