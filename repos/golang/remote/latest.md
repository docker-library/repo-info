## `golang:latest`

```console
$ docker pull golang@sha256:e432b43af23a9328d56a7c499be0476810aa344acbcf65fc7c455d4ff5a40602
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
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

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
$ docker pull golang@sha256:6537d2aeeaa500d48ed4a5540ce324b40a20baf6e41439951bcc45a45b7c7b17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.6 MB (340553103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e245fb1a0fec9dec079d11b4e3c6b809e112ff7e571785c86d3944a6e03a0bb6`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1789689600'
# Thu, 24 Sep 2026 23:42:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 29 Sep 2026 00:23:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 30 Sep 2026 06:48:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 30 Sep 2026 06:48:00 GMT
ENV GOLANG_VERSION=1.27.1
# Wed, 30 Sep 2026 06:48:00 GMT
ENV GOTOOLCHAIN=local
# Wed, 30 Sep 2026 06:48:00 GMT
ENV GOPATH=/go
# Wed, 30 Sep 2026 06:48:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 Sep 2026 06:48:00 GMT
COPY /target/ / # buildkit
# Wed, 30 Sep 2026 06:48:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 30 Sep 2026 06:48:36 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b576f41196ce391ebaeeb058ed0bf8ef716528b15a0986154f91cf04d5b72aea`  
		Last Modified: Sat, 19 Sep 2026 04:07:24 GMT  
		Size: 47.9 MB (47866994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:719a46bffab9fce37ab8764ddc4a0df7902b9a552542a9a0b30211b8ecfd8e11`  
		Last Modified: Thu, 24 Sep 2026 23:44:16 GMT  
		Size: 25.0 MB (24972374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f1f71bb791d26a4189c3a956df1abf3f0a0d661ce0d2e3143516a36ad6b66e6`  
		Last Modified: Tue, 29 Sep 2026 00:27:17 GMT  
		Size: 66.7 MB (66705357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf353757a3c02e82ebc2429f87b2b595cc306b3e16d394ff76ac310d50923631`  
		Last Modified: Wed, 30 Sep 2026 06:56:51 GMT  
		Size: 131.9 MB (131885599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc1bd247561c0ae6515e4e2fc8a588c5796762e9480c377ba968f3296aed766`  
		Last Modified: Wed, 30 Sep 2026 06:56:42 GMT  
		Size: 69.1 MB (69122621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89b806dec8c34d545082afa6922fd1fcd4cc5c082ab00dce7b5fbfdb053b5b4d`  
		Last Modified: Wed, 30 Sep 2026 06:56:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:latest` - unknown; unknown

```console
$ docker pull golang@sha256:424e164d2b09498cc9cb25e666299cfe1dcfc06e0baf5034ebbda49a366d9ac9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10895517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa9d58451e3a987ff608a484bd9ccecad619db6ef64e5bfe344a1e39d67c371b`

```dockerfile
```

-	Layers:
	-	`sha256:7573b59ae36f18a8c1cdaf7a3bec79040eaaa7b4f8165dbc0bdb9a424b21150d`  
		Last Modified: Wed, 30 Sep 2026 06:56:24 GMT  
		Size: 10.9 MB (10867067 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9eb5aab5b2d114bf5cb8af2fb541ffdbfc59e13d4708829182da61dc83b176d1`  
		Last Modified: Wed, 30 Sep 2026 06:56:20 GMT  
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

### `golang:latest` - windows version 10.0.26100.33438; amd64

```console
$ docker pull golang@sha256:2b3bbc465ea27c5a9b72219a5c84efe00b087e0ebdaf2561fb3157a3866a6893
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2583087881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85f9bb52845749fe409172347f3a395ed59b5f0e44246e499f7f2974769e4f91`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Thu, 08 Oct 2026 17:14:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 08 Oct 2026 17:14:48 GMT
ENV GIT_VERSION=2.48.1
# Thu, 08 Oct 2026 17:14:50 GMT
ENV GIT_TAG=v2.48.1.windows.1
# Thu, 08 Oct 2026 17:14:51 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/MinGit-2.48.1-64-bit.zip
# Thu, 08 Oct 2026 17:14:53 GMT
ENV GIT_DOWNLOAD_SHA256=11e8f462726827acccc7ecdad541f2544cbe5506d70fef4fa1ffac7c16288709
# Thu, 08 Oct 2026 17:16:04 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Thu, 08 Oct 2026 17:16:05 GMT
ENV GOPATH=C:\go
# Thu, 08 Oct 2026 17:16:10 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 08 Oct 2026 17:16:11 GMT
ENV GOLANG_VERSION=1.27.2
# Thu, 08 Oct 2026 17:17:48 GMT
RUN $url = 'https://dl.google.com/go/go1.27.2.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '1314008898bd40df77af4b014f777f08873dbdfbcd3d92308728ee03304fe04f'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Thu, 08 Oct 2026 17:17:50 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb0dd11b7721ec16907361abb43a561c48b921d885729bc537e697d6e1bbea`  
		Last Modified: Thu, 08 Oct 2026 17:17:58 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1e9136a57c57290eeb67bc36e834351d42e9fb4c34c58a2471e9c1905198c4`  
		Last Modified: Thu, 08 Oct 2026 17:17:57 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0586a78e132e08fc8d84ab7e6cff5cf2930956ad759e2fb2e1c78b68e710e347`  
		Last Modified: Thu, 08 Oct 2026 17:17:57 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbefb6f246be287f6bf0a872cb0908974b4980ddc6f7cbc4d1c8fbe00151db3a`  
		Last Modified: Thu, 08 Oct 2026 17:17:56 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6716ef50478c3c3d00650d1d96f30c798bcf56dc999898bad8c6fac50f33905a`  
		Last Modified: Thu, 08 Oct 2026 17:17:56 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62825234b9b2c2c370a5b38dfaea87635b69a572e5ab94c9bcf8fb1efb42a36`  
		Last Modified: Thu, 08 Oct 2026 17:18:02 GMT  
		Size: 51.2 MB (51242103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e20bb18005d363ce5dc45411fe75f0081e3a98db4a3e992166634fc91e422a`  
		Last Modified: Thu, 08 Oct 2026 17:17:54 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2249f8e29e7d19ac6b84fc8cd44ff8eb34eea08d74b8878c1184058d67a1007`  
		Last Modified: Thu, 08 Oct 2026 17:17:55 GMT  
		Size: 375.5 KB (375529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83133cdba7c934d62df45d4d634e8f6af9ed570a357dcb42d39247e2f6974536`  
		Last Modified: Thu, 08 Oct 2026 17:17:54 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4ec9441b6cf44caedf28c886788a20a9bd35bfc8c9bc38fef14dcd4b68dd6b`  
		Last Modified: Thu, 08 Oct 2026 17:18:06 GMT  
		Size: 73.8 MB (73830200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac977e2acf8b188ef5dd0542dcc73efc6b603a8db976193f69656a2dfc95020`  
		Last Modified: Thu, 08 Oct 2026 17:17:54 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - windows version 10.0.20348.5622; amd64

```console
$ docker pull golang@sha256:807d391d222431cbe028bff48ada47bd543acedf058b629d67d739ef061ff07f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2344778579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f57d8439444078480eb0500a2df89213f4dc63648af04d2cc421d1a959c09aa0`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Thu, 08 Oct 2026 17:33:00 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 08 Oct 2026 17:33:03 GMT
ENV GIT_VERSION=2.48.1
# Thu, 08 Oct 2026 17:33:04 GMT
ENV GIT_TAG=v2.48.1.windows.1
# Thu, 08 Oct 2026 17:33:06 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/MinGit-2.48.1-64-bit.zip
# Thu, 08 Oct 2026 17:33:08 GMT
ENV GIT_DOWNLOAD_SHA256=11e8f462726827acccc7ecdad541f2544cbe5506d70fef4fa1ffac7c16288709
# Thu, 08 Oct 2026 17:35:24 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Thu, 08 Oct 2026 17:35:24 GMT
ENV GOPATH=C:\go
# Thu, 08 Oct 2026 17:35:32 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 08 Oct 2026 17:35:33 GMT
ENV GOLANG_VERSION=1.27.2
# Thu, 08 Oct 2026 17:37:49 GMT
RUN $url = 'https://dl.google.com/go/go1.27.2.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '1314008898bd40df77af4b014f777f08873dbdfbcd3d92308728ee03304fe04f'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Thu, 08 Oct 2026 17:37:50 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d97c7f8aa15ab25f61a1009bf9438efbbf123e2e38ff6660be0fdfdb12797c`  
		Last Modified: Thu, 08 Oct 2026 17:38:10 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5292df58b84127ae7e0b5561a464754846adcff555b10b313ab1e8f59e6e722`  
		Last Modified: Thu, 08 Oct 2026 17:38:10 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:991f9153180df17bf81c88aeecded8f0b1f576d353968e7698c88ec416b3b91a`  
		Last Modified: Thu, 08 Oct 2026 17:38:08 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d0fd187fe984b77774fbb086522c53927d5d1e18ef0dc29bc35959f100f0c3`  
		Last Modified: Thu, 08 Oct 2026 17:38:08 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d86cafe7a8b45f640b1b251319798ccc6e05e52ea2d4f17b0f0af583713f847`  
		Last Modified: Thu, 08 Oct 2026 17:38:08 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ce161106da62de348c3510c0ad8591fc1135142e84958adc15698294ed1195`  
		Last Modified: Thu, 08 Oct 2026 17:38:14 GMT  
		Size: 51.2 MB (51225779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a751ae435d12895ddf4f373d6069183aa7bdad6bd6a802d4fb4189cd4938eff`  
		Last Modified: Thu, 08 Oct 2026 17:38:06 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47765e1e0e96aeffef79c0db52667a4d217ac05ebdab1e8fef15e57444a8ada0`  
		Last Modified: Thu, 08 Oct 2026 17:38:06 GMT  
		Size: 307.5 KB (307548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e741786746e12be13d0a86be31f20c51db951d4dd0c3ab710aa778f148f6301`  
		Last Modified: Thu, 08 Oct 2026 17:38:06 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a99d6f1fb2a936662c742810fd3e764ad5e3cf1f1df5b81411149a8c1c5b72`  
		Last Modified: Thu, 08 Oct 2026 17:38:18 GMT  
		Size: 73.7 MB (73745768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566816be107a16ddd6a6d9620d579b62ca812bae29b1227a197f979b169b22e6`  
		Last Modified: Thu, 08 Oct 2026 17:38:06 GMT  
		Size: 1.5 KB (1485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
