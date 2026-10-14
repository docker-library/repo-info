## `golang:latest`

```console
$ docker pull golang@sha256:820153096fda4de6ac1b7194d12e416b7dd8f4e9a33d17e0345b111b945162d8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `golang:latest` - linux; amd64

```console
$ docker pull golang@sha256:2d658507a011f1eadc0114d7a421b312b2e77d9042a24036a26e267cc9231677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.4 MB (316399284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99668476f0893c0b7a4f4c1b6d3913a3b966a4af7e275173e06bbf12e9bebb88`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:34:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 08 Oct 2026 17:11:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 08 Oct 2026 17:11:39 GMT
ENV GOLANG_VERSION=1.27.2
# Thu, 08 Oct 2026 17:11:39 GMT
ENV GOTOOLCHAIN=local
# Thu, 08 Oct 2026 17:11:39 GMT
ENV GOPATH=/go
# Thu, 08 Oct 2026 17:11:39 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 17:11:39 GMT
COPY /target/ / # buildkit
# Thu, 08 Oct 2026 17:11:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 08 Oct 2026 17:11:46 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62fe2e747f69f2f414c7e9eb1553155cf0a658398f0462557f458821dce2b29d`  
		Last Modified: Tue, 06 Oct 2026 01:41:33 GMT  
		Size: 25.6 MB (25640047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc3950125ebc9ed195e1101fc6c02e2fce113ba0f53bfb05b2cdf58747df9af`  
		Last Modified: Tue, 06 Oct 2026 02:35:02 GMT  
		Size: 67.8 MB (67807390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6132307e9f8de84712b13dc48449cc6a8a80bc26e35b5c9dd04a6df2b23e85e`  
		Last Modified: Thu, 08 Oct 2026 17:12:16 GMT  
		Size: 102.4 MB (102413012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2b6413ae8f393d11d32262c8dc6bd053dbaea3d074f95edd5605d3eb116e3c2`  
		Last Modified: Thu, 08 Oct 2026 17:12:15 GMT  
		Size: 71.1 MB (71145476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:801401a9a8ba22fe48ef647d8eed0d6d8adc41baabf2fae9057ff38b2622f35a`  
		Last Modified: Thu, 08 Oct 2026 17:11:59 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:latest` - unknown; unknown

```console
$ docker pull golang@sha256:ee53589a6461b44f3f833a1c4a12045c5d8250bb9d0d54b70646ee9294d11add
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10825803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aed3ce9f211f25fe07bb2016e2517a3f23d5a5db6ac706be82598c38a7453f7c`

```dockerfile
```

-	Layers:
	-	`sha256:3c2ab6224b8065f606ba2601e2cbb7074630a682e747bb6cc2969cbefa9704bb`  
		Last Modified: Thu, 08 Oct 2026 17:12:12 GMT  
		Size: 10.8 MB (10797425 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1fbf9551eaaf15e16247fd00887608e1226b83b5021a36f072ad400719cb90a5`  
		Last Modified: Thu, 08 Oct 2026 17:12:12 GMT  
		Size: 28.4 KB (28378 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:latest` - linux; arm variant v7

```console
$ docker pull golang@sha256:886a3c7b6605d6eeff3b668cd63090c111330dbf2c7269d289f365f4ffcefa4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.9 MB (274919083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c91fb1a8ae60d77008ec68b6e06e5eba55dd50443cf9c575bbab276915a3b41c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:24:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:40:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 08 Oct 2026 17:11:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 08 Oct 2026 17:10:56 GMT
ENV GOLANG_VERSION=1.27.2
# Thu, 08 Oct 2026 17:10:56 GMT
ENV GOTOOLCHAIN=local
# Thu, 08 Oct 2026 17:10:56 GMT
ENV GOPATH=/go
# Thu, 08 Oct 2026 17:10:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 17:10:56 GMT
COPY /target/ / # buildkit
# Thu, 08 Oct 2026 17:11:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 08 Oct 2026 17:11:02 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b2e7b40559933644a31714a37346ff1796717d607ea763ad445b388befffd0bb`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 45.8 MB (45813264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a18046e6eeb6e12f2b634e0f7041e5c3fe7d2c4ac0f9b15f4eba7d3be40fb25`  
		Last Modified: Tue, 06 Oct 2026 02:25:06 GMT  
		Size: 23.6 MB (23642235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49da2bc1d40e0c89474b55c8511c5a9f0d1fca3b48964954bc979f105fab0963`  
		Last Modified: Tue, 06 Oct 2026 03:41:06 GMT  
		Size: 62.8 MB (62759938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b681b46409201fc7db05de92d998bb2d7708b2727be759eb71c8d744d860899f`  
		Last Modified: Thu, 08 Oct 2026 17:11:28 GMT  
		Size: 73.1 MB (73050066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:167d1e171207277b05e359386542bdc9c54367f99ef4ca1760e6945013febeb7`  
		Last Modified: Thu, 08 Oct 2026 17:11:28 GMT  
		Size: 69.7 MB (69653422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47647eeea7bfeed554e1950309aae1ba0a7056eba2474236762976a3fceaebb1`  
		Last Modified: Thu, 08 Oct 2026 17:11:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:latest` - unknown; unknown

```console
$ docker pull golang@sha256:a3bfc896de490a470808e84a64332ee2ff1133c1bb96c053874c685b42dcc0a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10621859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef71c2e7665ea5230352abcfb469a352f0e0b577f3a97964b2c5c081172d1cd3`

```dockerfile
```

-	Layers:
	-	`sha256:a389d11de35f42afe5403032ecb9b2e73b615b9c64af26731150f078ebb17f23`  
		Last Modified: Thu, 08 Oct 2026 17:11:25 GMT  
		Size: 10.6 MB (10593347 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a22bb6fec45ecf6a39769aba2b8abf6228e251c4555a5486b4b3fb186b99fea4`  
		Last Modified: Thu, 08 Oct 2026 17:11:25 GMT  
		Size: 28.5 KB (28512 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:latest` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:a83e961ad968e2e7abc2a59554e356f00c2a270a15fbb39f2c84a4caf13be9c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.7 MB (308698917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbae3ecae712257d01fd5f4cc633d838ffe2719eb550e7e7e9538d5cd4866008`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:25:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 08 Oct 2026 17:11:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 08 Oct 2026 17:11:07 GMT
ENV GOLANG_VERSION=1.27.2
# Thu, 08 Oct 2026 17:11:07 GMT
ENV GOTOOLCHAIN=local
# Thu, 08 Oct 2026 17:11:07 GMT
ENV GOPATH=/go
# Thu, 08 Oct 2026 17:11:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 17:11:07 GMT
COPY /target/ / # buildkit
# Thu, 08 Oct 2026 17:11:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 08 Oct 2026 17:11:15 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86f385aa2c76a7dd234ab579740a6011f59b0284b9e77b56b88dfad43c2fd58b`  
		Last Modified: Tue, 06 Oct 2026 01:44:53 GMT  
		Size: 25.0 MB (25038980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f73cdbf7c744c3331ef0185e57129804983040b8484e91af064b3bfa14750c`  
		Last Modified: Tue, 06 Oct 2026 02:26:06 GMT  
		Size: 67.6 MB (67622292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1a575944d54146cadddaf2913bcb00b4ec717e72df3b09aaeb053e3fc9eb61b`  
		Last Modified: Thu, 08 Oct 2026 17:11:43 GMT  
		Size: 98.6 MB (98559719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c488414f4e10f9495a8ef36b033a81ae04a3d43955e64f351a4247848f292d26`  
		Last Modified: Thu, 08 Oct 2026 17:11:42 GMT  
		Size: 67.7 MB (67716662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2416e51a615b2ad0a29307ea9a2af9b8701138d0e6bec8670df8a8cb6c66f44`  
		Last Modified: Thu, 08 Oct 2026 17:11:39 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:latest` - unknown; unknown

```console
$ docker pull golang@sha256:8fa26b4488e0096cf9249596ab8f290c59d506065c15b378bf69b49f5e8f5640
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10945848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3190cc2122d226e1dc973333b4485c0ece9755b68e99ffceeebbdf7beb09ae3d`

```dockerfile
```

-	Layers:
	-	`sha256:e4ba3c5f4745e459c7e126f03f819f73246e0bfff9e5860ce1fe2ae652d6de6f`  
		Last Modified: Thu, 08 Oct 2026 17:11:40 GMT  
		Size: 10.9 MB (10917292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98c447df85ac564ea76773fdb67f705a811330ff9b65b89fe015c40b8f3d6da9`  
		Last Modified: Thu, 08 Oct 2026 17:11:39 GMT  
		Size: 28.6 KB (28556 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:latest` - linux; 386

```console
$ docker pull golang@sha256:c1af0c6fe27409a66596c1cfb52483c05f54f7d8c5b121937df90c85dc8b6931
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.8 MB (317750138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9c27dc7db417be5540a17bfb915839b24ad77efb87fd08d7316d2b97b577080`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:46:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:32:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 08 Oct 2026 17:11:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 08 Oct 2026 17:11:32 GMT
ENV GOLANG_VERSION=1.27.2
# Thu, 08 Oct 2026 17:11:32 GMT
ENV GOTOOLCHAIN=local
# Thu, 08 Oct 2026 17:11:32 GMT
ENV GOPATH=/go
# Thu, 08 Oct 2026 17:11:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 17:11:32 GMT
COPY /target/ / # buildkit
# Thu, 08 Oct 2026 17:11:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 08 Oct 2026 17:11:35 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ace453750484672581012d135658fd142a37f3cc1464965baca36cee819b3d13`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 50.9 MB (50906096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e890ebc79ce3bfd401a922c9c49295c408b186867c30528006e35a6e0353fb31`  
		Last Modified: Tue, 06 Oct 2026 01:46:17 GMT  
		Size: 26.8 MB (26803382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6cbfaeb235ad0daa03294a921e8d9fb916fac246df65aa13cbf5696fdb61f8a`  
		Last Modified: Tue, 06 Oct 2026 02:33:15 GMT  
		Size: 69.8 MB (69846987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f73cc7d261777481ebc064ca6199f98e40b8d853a5afabecbf9c594d21558a6f`  
		Last Modified: Thu, 08 Oct 2026 17:12:03 GMT  
		Size: 100.9 MB (100852989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:246998e779d0c6df64723bafb9b24346ff810cedd0c61cb8a4afd4d3e3358086`  
		Last Modified: Thu, 08 Oct 2026 17:12:03 GMT  
		Size: 69.3 MB (69340526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5510c87e84c0805b24dd4370ed69d9ea42576f39bc20a1d5b46cfd8131a66c74`  
		Last Modified: Thu, 08 Oct 2026 17:12:00 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:latest` - unknown; unknown

```console
$ docker pull golang@sha256:9c635c0aeac2241217ea29e2e33ef5d9bdb1a253fdda85c323298dcd8fd72a00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10796990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f17b8826734f60d17dfa773ba1975e5c8eee2482f12b70953d3c4ca34aeefb3`

```dockerfile
```

-	Layers:
	-	`sha256:fbcf228cc290cbe0fd32c75d0dc1e5e3898af217c39e48eedf3b3b86de96b7a8`  
		Last Modified: Thu, 08 Oct 2026 17:12:00 GMT  
		Size: 10.8 MB (10768668 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df2e4ee81d38da2235e2cd585e313441f6c2a4ec9e4cdf5c7c2cc9b374cafb41`  
		Last Modified: Thu, 08 Oct 2026 17:12:00 GMT  
		Size: 28.3 KB (28322 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:latest` - linux; ppc64le

```console
$ docker pull golang@sha256:2bb9111ddf881e14c454c4229680186820a5c3827087343043924dff3778d487
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.9 MB (314926594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3081c25ae4229f98813a867efb1d4011bcd666a760bc434841a02667aec59d93`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 04:41:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 11:40:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 08 Oct 2026 17:10:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 08 Oct 2026 17:10:24 GMT
ENV GOLANG_VERSION=1.27.2
# Thu, 08 Oct 2026 17:10:24 GMT
ENV GOTOOLCHAIN=local
# Thu, 08 Oct 2026 17:10:24 GMT
ENV GOPATH=/go
# Thu, 08 Oct 2026 17:10:24 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 17:10:24 GMT
COPY /target/ / # buildkit
# Thu, 08 Oct 2026 17:10:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 08 Oct 2026 17:10:56 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cee8c75408fb545ab55e5cbdf6e0c4e4b171baf24f9b88c760adbc0ef14b65b4`  
		Last Modified: Tue, 06 Oct 2026 04:41:57 GMT  
		Size: 27.0 MB (27023111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12fd755399b9c7323fd96b40a78a5e5e123878fa481c517d7cb1672f297a2b8b`  
		Last Modified: Tue, 06 Oct 2026 11:41:10 GMT  
		Size: 73.1 MB (73088931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70dc472977c636274c1b1d32bf5023796c007057041972564e07292bb2035f7c`  
		Last Modified: Thu, 08 Oct 2026 17:12:09 GMT  
		Size: 93.1 MB (93115916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bc28fa329b5121ec57d673044ea58538bd2701fa5f3632a4cd95c4ef7ec97c3`  
		Last Modified: Thu, 08 Oct 2026 17:12:09 GMT  
		Size: 68.5 MB (68491354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:267a1f6f06bfcb7509cd4b1cf5a27aad00ee5601f54d8f25b7e15118c89ba11a`  
		Last Modified: Thu, 08 Oct 2026 17:12:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:latest` - unknown; unknown

```console
$ docker pull golang@sha256:11e847b0840d22b6449378f4b5e0479437bbb8ad1afba48ab12c844975a531c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10821684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7f31992b69a11fee13b92e0f32b63cc51b623b5853f9391e953af4ed17b822f`

```dockerfile
```

-	Layers:
	-	`sha256:15f3422f43737c008934aae27724c7d0d427730d5fde0a865765d7f52e133369`  
		Last Modified: Thu, 08 Oct 2026 17:12:06 GMT  
		Size: 10.8 MB (10793238 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f499c1d3738592e8adc05ccd79dff764e34d8cc980d5e9f8f0e3e748fe3b315f`  
		Last Modified: Thu, 08 Oct 2026 17:12:05 GMT  
		Size: 28.4 KB (28446 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:latest` - linux; riscv64

```console
$ docker pull golang@sha256:f0536f6dce25f888d51d018e5698e1cc851174e7a880c41d5c746de908f96619
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.6 MB (340601921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:219ff5f3e1f30f9c0a57eedfb319a93da041473a9c6b59d22f9a2c615608b889`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Wed, 07 Oct 2026 20:14:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 08 Oct 2026 13:45:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 10 Oct 2026 07:44:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 10 Oct 2026 07:43:43 GMT
ENV GOLANG_VERSION=1.27.2
# Sat, 10 Oct 2026 07:43:43 GMT
ENV GOTOOLCHAIN=local
# Sat, 10 Oct 2026 07:43:43 GMT
ENV GOPATH=/go
# Sat, 10 Oct 2026 07:43:43 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 10 Oct 2026 07:43:43 GMT
COPY /target/ / # buildkit
# Sat, 10 Oct 2026 07:44:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Sat, 10 Oct 2026 07:44:17 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:45e9f88af4f41939baf397baad507403b0b2ad7362c860679e184bbd563c9aca`  
		Last Modified: Tue, 06 Oct 2026 00:30:31 GMT  
		Size: 47.9 MB (47876327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4e0101e88ea96d4f49e7fe9273c6eef716c54c0e06234a5a7880913f417bfc5`  
		Last Modified: Wed, 07 Oct 2026 20:16:35 GMT  
		Size: 25.0 MB (24972632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1122ad31d36d17ee6939e04e1683afb298fda9a5815f638ddd642254a8cd102f`  
		Last Modified: Thu, 08 Oct 2026 13:49:03 GMT  
		Size: 66.7 MB (66705470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4cd477161cdd2b30ec371c89dc566cb5623e15556c206ab4af7a6ab7a2f9b06`  
		Last Modified: Sat, 10 Oct 2026 08:07:54 GMT  
		Size: 131.9 MB (131885721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd0e8d2f76fe91bc37fb3bc06eed17197bd95231b1e72cc9853d47c621ac06da`  
		Last Modified: Sat, 10 Oct 2026 07:52:41 GMT  
		Size: 69.2 MB (69161613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bebcf020d3ca177c6b1ead66453306a8f806e0cf845ef9aa81f541accfc0f1a`  
		Last Modified: Sat, 10 Oct 2026 07:52:20 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:latest` - unknown; unknown

```console
$ docker pull golang@sha256:ecf3408768546243830b5ab615698b9bf46bdbb2fb5f3f574bfda23fbce9a606
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10895517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec088f218fc1be4591d6736feec36f2454ebcc5a9b847b24042c2ed2a8a362ac`

```dockerfile
```

-	Layers:
	-	`sha256:e09097ae2136e5b11dc3e4402eabcd2655dcd3bd800f7fbdfc3e5685c910664e`  
		Last Modified: Tue, 13 Oct 2026 06:24:54 GMT  
		Size: 10.9 MB (10867067 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54b4e512b04d660ea327d7ea0d0796a4c3f37cbaa72e6e72e0590e97296176f9`  
		Last Modified: Tue, 13 Oct 2026 06:24:52 GMT  
		Size: 28.4 KB (28450 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:latest` - linux; s390x

```console
$ docker pull golang@sha256:70223c24af240f9f1459d8c3efbf23e4f3bfa06a5db8ab72ee13d818f985c98c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.4 MB (291441324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f281a69d07d546d71d27382063ab8cca4070f1329459337f8216a3960ac742a9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:58:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:38:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 08 Oct 2026 17:13:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 08 Oct 2026 17:11:21 GMT
ENV GOLANG_VERSION=1.27.2
# Thu, 08 Oct 2026 17:11:21 GMT
ENV GOTOOLCHAIN=local
# Thu, 08 Oct 2026 17:11:21 GMT
ENV GOPATH=/go
# Thu, 08 Oct 2026 17:11:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 17:11:21 GMT
COPY /target/ / # buildkit
# Thu, 08 Oct 2026 17:13:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 08 Oct 2026 17:13:34 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e171de089919cf9725221bfd863a1283919b0c9a94568de0bbce5db73d2ddff0`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 49.5 MB (49457000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:606d7b170e34e7dca9460179c992b6eda381e85641ec044682549ce9ced27e23`  
		Last Modified: Tue, 06 Oct 2026 01:58:17 GMT  
		Size: 26.8 MB (26817179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf1b78aae7260f76f502ab7b85bc020f8bd10bf4a2140f84573948d91aba0b30`  
		Last Modified: Tue, 06 Oct 2026 02:38:36 GMT  
		Size: 68.7 MB (68656790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:387a29ae14c98774937784799a3115d81d0ecc1b9863949073bdeb9304791146`  
		Last Modified: Thu, 08 Oct 2026 17:19:16 GMT  
		Size: 76.2 MB (76227342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af7769e9dea28e53d244dbedcfa1703f44730d1eba6209c1650b331b5bde690`  
		Last Modified: Thu, 08 Oct 2026 17:13:22 GMT  
		Size: 70.3 MB (70282856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83ab971ccea0ed5ad991aa5a662621eb8802d274b1ba9621a4d75f579836f78d`  
		Last Modified: Thu, 08 Oct 2026 17:19:12 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:latest` - unknown; unknown

```console
$ docker pull golang@sha256:cad241ec6fc201fd84c95a3b80079a28359f26e6ff136002fd9596f046f4ec75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10636694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:958bd2ad0759c70376b1f380d96249e0742eec4f43b107160e2d01b9811650a0`

```dockerfile
```

-	Layers:
	-	`sha256:6a3d3369be89a1c04c93bb20e3bc3431571e2b4b24970b18c270b4bbf7fc26c8`  
		Last Modified: Thu, 08 Oct 2026 17:19:14 GMT  
		Size: 10.6 MB (10608320 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:feb9e43151ed6f55eae7c82668c546bb30e5d35c642a772860d3648c3f771d5c`  
		Last Modified: Thu, 08 Oct 2026 17:19:12 GMT  
		Size: 28.4 KB (28374 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:latest` - windows version 10.0.26100.33650; amd64

```console
$ docker pull golang@sha256:efc040fe8d112bed4f220d81a35184150cffebf33f17d6b97a3704703b89faf0
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2517370715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03004c90e7c0e7aa2e900c6b8c9267fb4c0154249abb4632befb3241f54f0dc7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:10:38 GMT
ENV GIT_VERSION=2.48.1
# Tue, 13 Oct 2026 23:10:38 GMT
ENV GIT_TAG=v2.48.1.windows.1
# Tue, 13 Oct 2026 23:10:39 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/MinGit-2.48.1-64-bit.zip
# Tue, 13 Oct 2026 23:10:39 GMT
ENV GIT_DOWNLOAD_SHA256=11e8f462726827acccc7ecdad541f2544cbe5506d70fef4fa1ffac7c16288709
# Tue, 13 Oct 2026 23:10:53 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 23:10:53 GMT
ENV GOPATH=C:\go
# Tue, 13 Oct 2026 23:10:58 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 13 Oct 2026 23:10:59 GMT
ENV GOLANG_VERSION=1.27.2
# Tue, 13 Oct 2026 23:12:26 GMT
RUN $url = 'https://dl.google.com/go/go1.27.2.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '1314008898bd40df77af4b014f777f08873dbdfbcd3d92308728ee03304fe04f'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 23:12:28 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb7dfc46006339a6f16acc5304b94216980fef39bfe3cfe00a0e43b920c14dc`  
		Last Modified: Tue, 13 Oct 2026 23:03:43 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf78fd3e595c016f3adfca519625aef8e5d067b22a8e867df5c1d505ca74e754`  
		Last Modified: Tue, 13 Oct 2026 23:12:35 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f264257167343af0855f19275177b6a130491116f36fc106d988039c67e6253f`  
		Last Modified: Tue, 13 Oct 2026 23:12:34 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4c6ea6c38241cf21d6dc96c6eb9182945c86a1d1609e20c28970f477794ebe`  
		Last Modified: Tue, 13 Oct 2026 23:12:34 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b36af73c87a01ed573cfc75566e0cfefacb29a5679b6e83ac8f5e2f9425c3ee`  
		Last Modified: Tue, 13 Oct 2026 23:12:34 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56fe211638a9358f8f95a52413703316fe01941e728d119b618ad55557bdc5a`  
		Last Modified: Tue, 13 Oct 2026 23:12:40 GMT  
		Size: 51.2 MB (51215302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969ba2e1ee74e58c3c7deab117de5df4b52b59a2325a0344b22cde1b0f08b007`  
		Last Modified: Tue, 13 Oct 2026 23:12:32 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c47a8a4143d28d7a5ec621a73765ebe9ca09109a0af2ad441a610c0226baf67d`  
		Last Modified: Tue, 13 Oct 2026 23:12:32 GMT  
		Size: 342.1 KB (342083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8b002f71ff1787c9cbee5b86b21fb64e1da07f5a92371b4cd32462ccb0ed83`  
		Last Modified: Tue, 13 Oct 2026 23:12:32 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcd948332eb566fde086623ca4c250654fed601a9dfcf565088b8043b85468e`  
		Last Modified: Tue, 13 Oct 2026 23:12:43 GMT  
		Size: 73.8 MB (73808511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:950d190b5d7ae3f0a606bb00e3deb2487eaa1fb17a95789afa1ff85bf4aa7ca5`  
		Last Modified: Tue, 13 Oct 2026 23:12:32 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - windows version 10.0.20348.5761; amd64

```console
$ docker pull golang@sha256:bb679c8f2ef14af8d32dbb5898a2197bebf3bd949277dcea319735f7e7021108
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2351601275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bb73258fa58e1f468bd86a4e98baa6d3dd9d3dc5d031abc86f195fad8acded6`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 22:56:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:11:46 GMT
ENV GIT_VERSION=2.48.1
# Tue, 13 Oct 2026 23:11:47 GMT
ENV GIT_TAG=v2.48.1.windows.1
# Tue, 13 Oct 2026 23:11:47 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/MinGit-2.48.1-64-bit.zip
# Tue, 13 Oct 2026 23:11:48 GMT
ENV GIT_DOWNLOAD_SHA256=11e8f462726827acccc7ecdad541f2544cbe5506d70fef4fa1ffac7c16288709
# Tue, 13 Oct 2026 23:12:00 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 23:12:01 GMT
ENV GOPATH=C:\go
# Tue, 13 Oct 2026 23:12:06 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 13 Oct 2026 23:12:07 GMT
ENV GOLANG_VERSION=1.27.2
# Tue, 13 Oct 2026 23:13:29 GMT
RUN $url = 'https://dl.google.com/go/go1.27.2.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '1314008898bd40df77af4b014f777f08873dbdfbcd3d92308728ee03304fe04f'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 23:13:30 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2199c4844b30e9c638a16f875cb259173696ccfa543d7babf8dca385c8a34de4`  
		Last Modified: Tue, 13 Oct 2026 22:57:23 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38fef6792ba41565f1ba2f1d8f0f25b651f5abcf8bb86402986509bc1fd7946d`  
		Last Modified: Tue, 13 Oct 2026 23:13:37 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce115e471633fb4949a94b54867bfa673824a42945328ee69dd207ba83485302`  
		Last Modified: Tue, 13 Oct 2026 23:13:36 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b402823b35c6ec10faa6e501f80765c2fbb351754b12dbca16ef84a09d69be3b`  
		Last Modified: Tue, 13 Oct 2026 23:13:36 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc4b1e6fc53356413f5ba9b94a41193109f586aebb63fc28cd1405af8ca0b747`  
		Last Modified: Tue, 13 Oct 2026 23:13:36 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66c1cd1af3889a0d08ee5bf3c2d855aec296c8ca1c42fca159dfbfafa6a9ae3`  
		Last Modified: Tue, 13 Oct 2026 23:13:42 GMT  
		Size: 51.2 MB (51199832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab672483e5b37f8f1fb1e3f7951ecd7d08c0a70ac3dc01489e02cf50c3d95ebe`  
		Last Modified: Tue, 13 Oct 2026 23:13:34 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1670f5a0cc2969bbcc16aa9cc82cafc0109fbb95555f72e2ababaf44fd7469c2`  
		Last Modified: Tue, 13 Oct 2026 23:13:34 GMT  
		Size: 328.6 KB (328573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e7a11d41d3cbc01b7db6fe4667d8b0891d59d73e7fd4e27e2d60d9a4cf4212`  
		Last Modified: Tue, 13 Oct 2026 23:13:34 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6326bf07b411d5c41d10d1aa802d0f590474b42f145975ecd4c75bea2f5ae5`  
		Last Modified: Tue, 13 Oct 2026 23:13:45 GMT  
		Size: 73.8 MB (73776802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a9b874b052305313f6482f1979b2273e8edc572406d1e47a52f2776d48c0c0`  
		Last Modified: Tue, 13 Oct 2026 23:13:34 GMT  
		Size: 1.5 KB (1478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
