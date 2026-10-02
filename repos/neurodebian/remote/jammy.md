## `neurodebian:jammy`

```console
$ docker pull neurodebian@sha256:c8fddb86e63e8f6cea6122fe1689401fc747c40702b6988c8ddab31306f24197
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:jammy` - linux; amd64

```console
$ docker pull neurodebian@sha256:134e7087450a8ca901c8c162b1d5096dec41084c91e1bbbc5668d73e7ecb60da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33490962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:572452ee96a789cfa0c30225819fa7a4daf23daa45bf870735eb1154e0491410`
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
# Fri, 02 Oct 2026 01:31:41 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:31:41 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Fri, 02 Oct 2026 01:31:41 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Fri, 02 Oct 2026 01:31:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbaea35caae2a7d76b3f6b4c28b5c286ae2572f31ec9033f18b9846d80b5c465`  
		Last Modified: Fri, 02 Oct 2026 01:31:53 GMT  
		Size: 3.6 MB (3625326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:671f3780df5b5e50f7309e341e176f543a9fda6ad74a5efeb16265dbda225b98`  
		Last Modified: Fri, 02 Oct 2026 01:31:53 GMT  
		Size: 1.9 KB (1901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2205aab05f1a26f262e7def695edf6afb3e6e251607a1f1fd6f004319a468561`  
		Last Modified: Fri, 02 Oct 2026 01:31:53 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bee8a5569f77e1f460fd5cd9dfa31903c8eacb079c085202a710058d5a20601`  
		Last Modified: Fri, 02 Oct 2026 01:31:53 GMT  
		Size: 111.8 KB (111835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy` - unknown; unknown

```console
$ docker pull neurodebian@sha256:fe61e71e233ae22b8beac6fa8327937aa66e69938e877230bea497f67591c2d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f34153c234d9f63bd0713618847c46ebab6953bde943d67ba903dcc0af10b15b`

```dockerfile
```

-	Layers:
	-	`sha256:2836ce15a7da1e5efce706a7ff3ca7d73c58e18022ad63ba5552bd0f47d50bb8`  
		Last Modified: Fri, 02 Oct 2026 01:31:53 GMT  
		Size: 2.2 MB (2198404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25140559011768442691254e1fff9930b704f0c6fcf71ccda0583bcc4281f272`  
		Last Modified: Fri, 02 Oct 2026 01:31:53 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:jammy` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:f8cbf2fbad3cc740bdd13cb3c56ca8bdcc5ead99310be40e6ed59dfe61760f5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.4 MB (31407248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5206719a85ec28f232f05545da44d863b04763a854e6dd6f52bd0473d6814e3c`
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
# Fri, 02 Oct 2026 01:31:37 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:31:37 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Fri, 02 Oct 2026 01:31:37 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian jammy main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel jammy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Fri, 02 Oct 2026 01:31:44 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3d96fdc293e540f4c30b4dd62ecbdab46b42a3603467a0866eb01ad88f2584c`  
		Last Modified: Fri, 02 Oct 2026 01:31:50 GMT  
		Size: 3.6 MB (3609235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:017bfacd2b40217cda8294e621e0da381f1b73da557a5e62098fa5b50e0dfa03`  
		Last Modified: Fri, 02 Oct 2026 01:31:50 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93af9e1f77ed9e0c2ef8d74e21504bb2a318234a377f2d3a0353362e87886787`  
		Last Modified: Fri, 02 Oct 2026 01:31:50 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac92c7cfcc198fa4489fcda54c09bf97002d162c1a9a8d7a20f36586c23ce0f`  
		Last Modified: Fri, 02 Oct 2026 01:31:50 GMT  
		Size: 111.7 KB (111698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:jammy` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9a56bfd1afe1a335021de43ebbc204f1ca04af1218352e679a5248b5ccd7f8cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a3b69a74f3c9731f89b2f2ff2e7784411a93d1876af8f186b6c6de3625abbb4`

```dockerfile
```

-	Layers:
	-	`sha256:bcb19116e261cf4a2f2a3a976caa0b7feb72da255ae3f0abc665854ac5b0fe66`  
		Last Modified: Fri, 02 Oct 2026 01:31:50 GMT  
		Size: 2.2 MB (2198664 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af13f0acce2f6348cbf9f033282dd6f3e4565209d3f0a197ded6c569c9696cd9`  
		Last Modified: Fri, 02 Oct 2026 01:31:50 GMT  
		Size: 14.1 KB (14058 bytes)  
		MIME: application/vnd.in-toto+json
