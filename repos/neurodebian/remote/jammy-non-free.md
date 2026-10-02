## `neurodebian:jammy-non-free`

```console
$ docker pull neurodebian@sha256:1a8d7a6f75dd186c342d0578ef87c0e3fa56f101d67c548c62a1163944ed9bf9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:jammy-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:abb666cd11d863432e4ed03db917b71dfd329e264132477ab1a5519651a8b078
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33491234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c3ef672e78bbde71305a1f939613f7bb9f2ed3a3ba34a9be3c11d447f36f848`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:32:02 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:32:03 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Fri, 02 Oct 2026 01:32:03 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Fri, 02 Oct 2026 01:32:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:32:10 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87e7e84ea6ceec6b2d4dd4bded2b5dfdfc78a40abc9614c0ef65ed8865470875`  
		Last Modified: Fri, 02 Oct 2026 01:32:16 GMT  
		Size: 3.6 MB (3625294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de256af29248ed88a94140d4d1e0e44202ce61f5dc8774e6d5f5f931848da803`  
		Last Modified: Fri, 02 Oct 2026 01:32:16 GMT  
		Size: 1.9 KB (1903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5aea2bfab6be999578ee8394d80e83b145f9d2a4967f05877f3b29e4e2afd5e`  
		Last Modified: Fri, 02 Oct 2026 01:32:15 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e32fd450cc2a4070b51b5d78d56e172be22ecf6d9399f4ec1d4d279e55da71c`  
		Last Modified: Fri, 02 Oct 2026 01:32:16 GMT  
		Size: 111.9 KB (111852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44099033aef1040ba223747187af424d653fb6ef28bd416d86adaf9e91ccb8a1`  
		Last Modified: Fri, 02 Oct 2026 01:32:17 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:5df339d8f3bef60b8be5d89229f43bda39adc77228056da3977e0a5360510828
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2214603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac868bb44c6d8499d90fe25d578283cbaecb8efbfe7ebf6196e8a576efca0df9`

```dockerfile
```

-	Layers:
	-	`sha256:ddf0ec90914cd2e65e7865265d2fbc0660883da5c42ee447bd5e7368e55d6802`  
		Last Modified: Fri, 02 Oct 2026 01:32:16 GMT  
		Size: 2.2 MB (2198440 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc4f8bfcd366dba94711850fd5a96f5999d72c46799913e0ae4e396f9c2ff2ce`  
		Last Modified: Fri, 02 Oct 2026 01:32:16 GMT  
		Size: 16.2 KB (16163 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:jammy-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:c28acc7588716cb8c45aff07efc23cf8ed4a78e5c24dd5838a954039f01dab44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.4 MB (31407482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e66717c371c2eaafa5dcbee378ea0dbec0aa8a34d796f542c670103a3dc0307`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:31:43 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:31:44 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Fri, 02 Oct 2026 01:31:44 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Fri, 02 Oct 2026 01:31:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:31:50 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b78c4bad65f2bcf761813b77a91de45efbd42710ba2cc9b19a42aff1dd2fb7b`  
		Last Modified: Fri, 02 Oct 2026 01:31:57 GMT  
		Size: 3.6 MB (3609168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c6efa9f02fb341a9a74938376759b27af590b78e2a6376c39a181d2798171c2`  
		Last Modified: Fri, 02 Oct 2026 01:31:56 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695fdbd3e3b0e64bdd86c8bcc144e6a77548a394a5798a2bab3adcf334ff071c`  
		Last Modified: Fri, 02 Oct 2026 01:31:56 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c8dd2e5853e7b69ae71d28ed88e5882758dc6eb7da641ed893fa4fa69c17ed9`  
		Last Modified: Fri, 02 Oct 2026 01:31:57 GMT  
		Size: 111.7 KB (111716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2385e3f1be8fe6e16c282b882b75c95354398a4b638814ea39c6475c3d4129ff`  
		Last Modified: Fri, 02 Oct 2026 01:31:58 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:d562cbc6c112b6e9f178a10a9b50f7dd947745e5923b3387808d7eabe215b664
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2215003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d324bccfdf4deeef48de8fd2d57665f117e9ca85a3a112f0d96d98ad588750c`

```dockerfile
```

-	Layers:
	-	`sha256:6c22cd77708af5e4d2c7d5170bd609f5a05c1bb53484853d1c0c4887566810dc`  
		Last Modified: Fri, 02 Oct 2026 01:31:57 GMT  
		Size: 2.2 MB (2198700 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:280d3625b978118c120b38f23226c00e01dcaf1c8f8fd31812cf7590528aaef0`  
		Last Modified: Fri, 02 Oct 2026 01:31:56 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json
