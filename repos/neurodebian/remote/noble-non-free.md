## `neurodebian:noble-non-free`

```console
$ docker pull neurodebian@sha256:909dbe501b8fd7cbe4690e2512210c18fdf07e13e47735dd620e8ec9973ad915
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:noble-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:847880652d7783df0926358c57edf7790a03b25f2a1f621f691e0f0508bc5b13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33435734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10286e260011965a318d0fe847b5d0ddeeb0ac7c9a57ed3f21986cb0cd4f5783`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:34:33 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:34:34 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 09 Sep 2026 02:34:34 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 09 Sep 2026 02:35:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:35:14 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c09e6dedf4cf2972fb19e2219d98517287728a59cfa7232761618909f3b1b45`  
		Last Modified: Wed, 09 Sep 2026 02:35:20 GMT  
		Size: 3.6 MB (3565501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86477b57ad80a72526f206bd20b83996c5737f38bb8f574724258cc520554847`  
		Last Modified: Wed, 09 Sep 2026 02:35:20 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0abe11089c0c346ed4ad938d910617f4a2970d42f3a5fa1626fb5aa579f4ae38`  
		Last Modified: Wed, 09 Sep 2026 02:35:20 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93eeb424d2d16a7a677efc547640541c991b1959968a09c1cbcb175ace5e52a2`  
		Last Modified: Wed, 09 Sep 2026 02:35:20 GMT  
		Size: 103.6 KB (103640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74af9555f3695f8a516a59530cddb3fa8fd7e214daa5496f1076bc094e0f39d7`  
		Last Modified: Wed, 09 Sep 2026 02:35:21 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8db7b96efd729d349c4b94bd9aa7cc4c30ce95c703d12829b1f9640d3104c8c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2137150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bb29a71de01bef2285c249df39dc42d94e390280379e0750a38d84cc0102e80`

```dockerfile
```

-	Layers:
	-	`sha256:f8d1eb27f89d7294bf9acf7ee78a05f8e32fee62b6bbb0f305be47cbc6278229`  
		Last Modified: Wed, 09 Sep 2026 02:35:20 GMT  
		Size: 2.1 MB (2120989 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed381cd1168ac7cc1d78c797cbb9e81cd7b91e66ee7cd3820de597afa7b054c6`  
		Last Modified: Wed, 09 Sep 2026 02:35:20 GMT  
		Size: 16.2 KB (16161 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:noble-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:ba33ef87dd58fd8c9afc9bb7ae29e631a240cbc3164921235dade9efc6dbbfc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32610579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:686bd6d45fef3a329a696cef4ce221b39d4b7fc94eba6105ac20fb79875fbfa5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:30:15 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:30:15 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 09 Sep 2026 02:30:15 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 09 Sep 2026 02:30:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:30:56 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04e29da9f403923dabafc17f807d24ff8ca662ebef67abe356f0d4ea9b0291c3`  
		Last Modified: Wed, 09 Sep 2026 02:31:02 GMT  
		Size: 3.6 MB (3562855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcd9732daaa6baf31012eb64b7d427210521e02c1b15a54bb82d24cf738bdb91`  
		Last Modified: Wed, 09 Sep 2026 02:31:02 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb502f1d421ad32fed195c9fd73b4cb688f5c99e9ab16974d124b11b6c01912b`  
		Last Modified: Wed, 09 Sep 2026 02:31:02 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:205d79b7a263fcadc73e68ea9504f2d96807009d0e9201dc0e2a0e18410b9e56`  
		Last Modified: Wed, 09 Sep 2026 02:31:02 GMT  
		Size: 104.4 KB (104368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db5a326ee61ce55067c7520d93746ca1ed05df9eb9dd0c35cc618517cfe399b9`  
		Last Modified: Wed, 09 Sep 2026 02:31:03 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:c204e881844892fdf42ba00d87cc649912997b52323ac1a740dd24ed8272c292
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2138337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f44356ab40a453799364052ec1e39b2f06e1928e91ace45ca251c3da596ed260`

```dockerfile
```

-	Layers:
	-	`sha256:75f1ede9ffaada14d7d1ea0c97b6f6fc60d93f8b4e30cdf8ed04103c556b97bc`  
		Last Modified: Wed, 09 Sep 2026 02:31:02 GMT  
		Size: 2.1 MB (2122034 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d4e019c6a69b84b46b4a5dde264e48757d0855f1823960752498e650ffb87e0`  
		Last Modified: Wed, 09 Sep 2026 02:31:02 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json
