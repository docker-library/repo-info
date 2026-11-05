## `golang:1-trixie`

```console
$ docker pull golang@sha256:ce01baa8d47f3917e015fd28dad23b42b7e2332070bf85d8ae3e9c2f035ef2da
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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

### `golang:1-trixie` - linux; amd64

```console
$ docker pull golang@sha256:a5406f41680f17b4aa0b49de641e00f116215f5c8829d548d29cb44c4f85aa4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.5 MB (316486036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db8b033ac9840d095f91ef0f41e72bd03ed86f80fb32a90214a1c5997a9e423c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:38:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:31:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:53:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:53:08 GMT
ENV GOLANG_VERSION=1.27.3
# Thu, 05 Nov 2026 08:53:08 GMT
ENV GOTOOLCHAIN=local
# Thu, 05 Nov 2026 08:53:08 GMT
ENV GOPATH=/go
# Thu, 05 Nov 2026 08:53:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:53:08 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 08:53:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 08:53:14 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a88afca2bd37d4058d4b33d9d4d29b0557f8b811bb8c106942b5b51e1e4aad`  
		Last Modified: Thu, 05 Nov 2026 07:38:33 GMT  
		Size: 25.6 MB (25634385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:411d2dc8717dbb4bb0d3cfa27e6e0275fca455c5220029d7a14dc7a75fbe8665`  
		Last Modified: Thu, 05 Nov 2026 08:32:07 GMT  
		Size: 67.8 MB (67818699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26bc8785a3af54c7ae3a041422519ea0723045576b856f82cf26e4c75aee4f9c`  
		Last Modified: Thu, 05 Nov 2026 08:53:40 GMT  
		Size: 102.5 MB (102469891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e0bb27ae78502103ed383ed33346f88a83943fb7bd93977850d5890ee8fb3b`  
		Last Modified: Tue, 20 Oct 2026 02:42:46 GMT  
		Size: 71.2 MB (71150395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65bcbc1cb0b36e4661f728a273fb845afda7c34d7d16b19a2f3cf5fbaf0f8761`  
		Last Modified: Thu, 05 Nov 2026 08:53:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:4d7512c2338daa1be2c35b0bf314a9da97148e5212593fbbf059ff6a97cbd358
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10823749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63c870247d91ee15fd4491ac033fcb1ae64cd9da0fdec7b712bcb181b5c4b79f`

```dockerfile
```

-	Layers:
	-	`sha256:d6e6bd49bbf7a6c7ea1bb181bed915a75bcda31ebba145a4abae00834792fcf1`  
		Last Modified: Thu, 05 Nov 2026 08:53:38 GMT  
		Size: 10.8 MB (10795372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df8ffe68ce0764fc4ffcd6ce0b1143d44d570e816c37784824a55f383ac05b21`  
		Last Modified: Thu, 05 Nov 2026 08:53:38 GMT  
		Size: 28.4 KB (28377 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-trixie` - linux; arm variant v7

```console
$ docker pull golang@sha256:85f365d7c7e40aaa20ad32f881ab60af3ea72ef0431153a9a60ffd30a6b378ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (274965241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3feb86af357ab0b7da1382741d3bd477c737e7399238a155cde19e7915d0ce27`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:21:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:47:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 04:12:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 04:12:28 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 28 Oct 2026 04:12:28 GMT
ENV GOTOOLCHAIN=local
# Wed, 28 Oct 2026 04:12:28 GMT
ENV GOPATH=/go
# Wed, 28 Oct 2026 04:12:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 04:12:28 GMT
COPY /target/ / # buildkit
# Wed, 28 Oct 2026 04:12:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 28 Oct 2026 04:12:32 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:05cefee146590a5be2c7703c704e5fd78889941e24ab1dfa8296ebafd4153810`  
		Last Modified: Wed, 28 Oct 2026 00:10:51 GMT  
		Size: 45.8 MB (45829380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48a1c0c7b220c9feb691744bd05f84ba55525499337ec4765cb6cddb293d793f`  
		Last Modified: Wed, 28 Oct 2026 02:21:38 GMT  
		Size: 23.6 MB (23636373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a0126d5d4fff102f74230092157c786fe380675192253be404b15787941f55b`  
		Last Modified: Wed, 28 Oct 2026 03:47:33 GMT  
		Size: 62.8 MB (62760118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74b822422d7750c8ad3aca8b96491f0a0d41948f5bcc7b5a8e6d2f450f635db2`  
		Last Modified: Wed, 28 Oct 2026 04:12:56 GMT  
		Size: 73.1 MB (73083407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae9b35601617bc051bb43546b04b850ce4f1eac0f66a3a5d94eff209388a0b2`  
		Last Modified: Tue, 20 Oct 2026 02:43:07 GMT  
		Size: 69.7 MB (69655805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1163e93716a70bbdec39d811f9581eb3b57921825ab7782d433943caa9a37944`  
		Last Modified: Wed, 28 Oct 2026 04:12:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:641afb1b0444569fc4ab403345242326510a7684cec2b0d76d59d3c92b4aa716
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10619806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1ed0d7e4252594f8625b25e94fbd3426e3eeb0d96f08056bd52252365b6b6ab`

```dockerfile
```

-	Layers:
	-	`sha256:4e2b22153eb5b94f757ae0cf6b4931f71613a8435ebc248a706414e1879a15cb`  
		Last Modified: Wed, 28 Oct 2026 04:12:54 GMT  
		Size: 10.6 MB (10591294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc044b27b1df57b5766007e13da6873b66255622bdbb3faf05ccd186481b5139`  
		Last Modified: Wed, 28 Oct 2026 04:12:54 GMT  
		Size: 28.5 KB (28512 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-trixie` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:4f03804fe5085b5e565347663bc51a54177634097cc71e9f816af6c2672f7662
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.8 MB (308787639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1aac4162249d8364f3e5911ea705fa70c227d0485ef55813c8ff0fe2563311c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:29:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:53:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:53:42 GMT
ENV GOLANG_VERSION=1.27.3
# Thu, 05 Nov 2026 08:53:42 GMT
ENV GOTOOLCHAIN=local
# Thu, 05 Nov 2026 08:53:42 GMT
ENV GOPATH=/go
# Thu, 05 Nov 2026 08:53:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:53:42 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 08:53:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 08:53:51 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec7287c5b5ce209cf618681832ded105b3182c871815ac857aeb105737563f59`  
		Last Modified: Thu, 05 Nov 2026 07:42:17 GMT  
		Size: 25.0 MB (25037294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6439840073969a08a9c305e28768838fcea379036919203ccf9f9fc966cc9658`  
		Last Modified: Thu, 05 Nov 2026 08:29:35 GMT  
		Size: 67.6 MB (67633992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6175dd11ea8bae78d618f177ce16b391d40083592fc48a160f12b655bf92b151`  
		Last Modified: Thu, 05 Nov 2026 08:54:20 GMT  
		Size: 98.6 MB (98617859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e7dba5c30798b9d70d746d9fb1606b744e5c3baa8015b51dad60cea99c045b`  
		Last Modified: Tue, 20 Oct 2026 02:42:50 GMT  
		Size: 67.7 MB (67719732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1164b92ca99b4fdc9e6909103e9b0b004d4eddee9f1b461d8d49ba9ac671947a`  
		Last Modified: Thu, 05 Nov 2026 08:54:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:33fd4ee59304d7a5ebe646f53463b5ea9c7531e18fdbc2e9cc835592c34cc668
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10943795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82951e91f6941c6d158e71036fd31686b4847b73c44926bba8d1596a5f56fccd`

```dockerfile
```

-	Layers:
	-	`sha256:a67bdfd04d8db2b5d6e2e59f66dea4332d06ba807ff4e18f62ed73a4fc74b826`  
		Last Modified: Thu, 05 Nov 2026 08:54:18 GMT  
		Size: 10.9 MB (10915239 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7aa17c5511c045ace28bcada0f9c4904a7ccde7193ac09b11d5d721b6e448f4f`  
		Last Modified: Thu, 05 Nov 2026 08:54:18 GMT  
		Size: 28.6 KB (28556 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-trixie` - linux; 386

```console
$ docker pull golang@sha256:f60ae44d428eea2e51bd3bf9b48295bc45989e43a418a59556a4693b023e677a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.8 MB (317833723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e89b4e62b8cd8013594b80bc493e1be1589a46769234e456a59e235a206af1a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:41:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:24:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:47:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:47:12 GMT
ENV GOLANG_VERSION=1.27.3
# Thu, 05 Nov 2026 08:47:12 GMT
ENV GOTOOLCHAIN=local
# Thu, 05 Nov 2026 08:47:12 GMT
ENV GOPATH=/go
# Thu, 05 Nov 2026 08:47:12 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:47:12 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 08:47:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 08:47:20 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:983687147c553c18d6a85d6c62cf12d150ea82b07b75088c878fe988ed17b33f`  
		Last Modified: Thu, 05 Nov 2026 06:16:18 GMT  
		Size: 50.9 MB (50920572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80b96b64012e3ccbf1b300a19570dd596c9a0cd7a0a5a03551ebb02b2ec36eab`  
		Last Modified: Thu, 05 Nov 2026 07:41:35 GMT  
		Size: 26.8 MB (26799507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b19228f96bf86cf5dec51abfdfdb655b9c125b586d1d9776e28024470540be5`  
		Last Modified: Thu, 05 Nov 2026 08:25:24 GMT  
		Size: 69.9 MB (69856854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e26d128b226c3d8e6a506a3df719430eec1da84188cf6ca2b3eecff0e4e564c`  
		Last Modified: Thu, 05 Nov 2026 08:47:48 GMT  
		Size: 100.9 MB (100915766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:905ceead4e5e99c109d9a50239d7fdcd8575f6d62e0036142c62bc81584c8449`  
		Last Modified: Tue, 20 Oct 2026 02:42:52 GMT  
		Size: 69.3 MB (69340868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7e3307218f9cc9143f95a5654cd31ab9b5444d4329f77e017ce4a4b6e4d5d73`  
		Last Modified: Thu, 05 Nov 2026 08:47:45 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:df8f5ee7aeddee5de577a112574a6e0ee33327ea1e111600e4fcec24eceb5e2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10794938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90cd8ef9e1326be4a876866c287a048efa2d600e784c0c05d60be3541d95a9c0`

```dockerfile
```

-	Layers:
	-	`sha256:e6ebc9e6cdf1471b61e08662f1d7a6087e27c0cfa7d264c99896e01cb13c9bcd`  
		Last Modified: Thu, 05 Nov 2026 08:47:45 GMT  
		Size: 10.8 MB (10766616 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7dd5c16587c72cbebcf26ed8cb6e8d80fde4641a0747120a04f419ee1ecb1d8`  
		Last Modified: Thu, 05 Nov 2026 08:47:45 GMT  
		Size: 28.3 KB (28322 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-trixie` - linux; ppc64le

```console
$ docker pull golang@sha256:f866f4467cdae808a3afd928e283f3d82d27f2fa6ec71003b70a6a59c782259b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.0 MB (314979608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae7f797999d69d56bb1c899c1a2198e2984e7fc305c72afb928d55fae0b40101`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 04:20:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 11:57:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 15:07:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 15:06:40 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 28 Oct 2026 15:06:40 GMT
ENV GOTOOLCHAIN=local
# Wed, 28 Oct 2026 15:06:40 GMT
ENV GOPATH=/go
# Wed, 28 Oct 2026 15:06:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 15:06:40 GMT
COPY /target/ / # buildkit
# Wed, 28 Oct 2026 15:07:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 28 Oct 2026 15:07:10 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:afc58b8a231a1e6a214ec81e1a281467fb0d1d7d88266448b5a56d1ec376a47f`  
		Last Modified: Wed, 28 Oct 2026 00:24:13 GMT  
		Size: 53.2 MB (53222242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7c0211c9ed62620780a710c0cb995ed73df4683591de20af0c8ccc39999890b`  
		Last Modified: Wed, 28 Oct 2026 04:20:40 GMT  
		Size: 27.0 MB (27023152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d8d8ceab2b16cf2542e733824abb0b41dde9a2e11d20fda83fd8246cfb3e620`  
		Last Modified: Wed, 28 Oct 2026 11:57:57 GMT  
		Size: 73.1 MB (73093257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4f45f38ac35609e1a6acf7418e770e117df671613ae1834f9a0abc891888eaa`  
		Last Modified: Wed, 28 Oct 2026 15:08:08 GMT  
		Size: 93.1 MB (93148628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99280a61a753e565d841200e74a9ffba4717a286b10e4a5b0e0f4148164d619`  
		Last Modified: Tue, 20 Oct 2026 02:42:42 GMT  
		Size: 68.5 MB (68492171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:668425f95b31b396f9a9be9f207325753288ca7324696602413f6117bbe24e7a`  
		Last Modified: Wed, 28 Oct 2026 15:08:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:3cf5568185d6cdfecf240a00cbe9aada3a0df6199681ba7596cf84e52bd75926
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10819629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:454fc638f31b0dfa14b7b27d993fd31d7fda4d08b9bbe1c079c8cf0be813dcab`

```dockerfile
```

-	Layers:
	-	`sha256:6fa2e27ce181634607a15337d0044c98ea7ba4d1c5a349448e59bb00b5026dd5`  
		Last Modified: Wed, 28 Oct 2026 15:08:06 GMT  
		Size: 10.8 MB (10791183 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab4854e1815041d42a93cfc9c8ecd68805d69318f6cdfd955949824350d7fca5`  
		Last Modified: Wed, 28 Oct 2026 15:08:06 GMT  
		Size: 28.4 KB (28446 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-trixie` - linux; riscv64

```console
$ docker pull golang@sha256:6a06ca0ef607be623771cb20877b160b10c51925e00af5eb49030a121a6e273f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.7 MB (340697710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7661e17f7676e16711ddcbdda982fd80a902c160e854f78e9d956f0f5e43722c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793059200'
# Sun, 01 Nov 2026 11:21:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 03 Nov 2026 07:43:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 04 Nov 2026 22:07:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 04 Nov 2026 22:07:01 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 04 Nov 2026 22:07:01 GMT
ENV GOTOOLCHAIN=local
# Wed, 04 Nov 2026 22:07:01 GMT
ENV GOPATH=/go
# Wed, 04 Nov 2026 22:07:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Nov 2026 22:07:01 GMT
COPY /target/ / # buildkit
# Wed, 04 Nov 2026 22:07:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 04 Nov 2026 22:07:38 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6b9c47bfdb663aa1d432fc6bfee0c5338e5f9e48ccd84b41427dc0fd31a54dc4`  
		Last Modified: Wed, 28 Oct 2026 18:37:39 GMT  
		Size: 47.9 MB (47891536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b7c51a9da84f9a2839fc5053032d47d7167c1d7b755a3ac418f3c281c9a7469`  
		Last Modified: Sun, 01 Nov 2026 11:23:30 GMT  
		Size: 25.0 MB (24972796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5454531f1631dfbcd80e0c769a250fcab56937072652b2af592f111515e13cb`  
		Last Modified: Tue, 03 Nov 2026 07:47:41 GMT  
		Size: 66.7 MB (66713002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0654659357f6ee57c719579931b10f47df4175b8c5c6815cf1986e70fd9b75e`  
		Last Modified: Wed, 04 Nov 2026 22:16:02 GMT  
		Size: 131.9 MB (131949234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb54614ae9ed635bfb8e27e661f01b863c8fcc98d1049b51549da2b2bf52a7a4`  
		Last Modified: Tue, 20 Oct 2026 02:50:40 GMT  
		Size: 69.2 MB (69170985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67de34bae05e07be086c6da72b8cfedfa3cc3b53669b9f5236f983df292e56a5`  
		Last Modified: Wed, 04 Nov 2026 22:15:41 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:d230bb6e10385048a07062bda171609b1e8a11bdc108727a14a3d1418c1d9235
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10893462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38c759c8f04f83ac996eacc51f6206c52c0a977326ffb382d41b3ce8a9c54185`

```dockerfile
```

-	Layers:
	-	`sha256:d70b154d2f7efac7e528dd3c1a2c360078c65e0786fb13ed01c00582b225fa7e`  
		Last Modified: Wed, 04 Nov 2026 22:15:44 GMT  
		Size: 10.9 MB (10865012 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e587c9e181d1b9864a5a77da6916633526a98c1fd93e97427d331557c5c2b1a3`  
		Last Modified: Wed, 04 Nov 2026 22:15:40 GMT  
		Size: 28.4 KB (28450 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-trixie` - linux; s390x

```console
$ docker pull golang@sha256:c15afadce733694b67eaead6236689ebee6ceeb46dae9dcecd18213e3212ad34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.5 MB (291526092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f13e606d99103c368f79f5cc49871dbc70ffbe6bb7dd4391f509981407877a91`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:57:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:48:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:20:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:20:34 GMT
ENV GOLANG_VERSION=1.27.3
# Thu, 05 Nov 2026 09:20:34 GMT
ENV GOTOOLCHAIN=local
# Thu, 05 Nov 2026 09:20:34 GMT
ENV GOPATH=/go
# Thu, 05 Nov 2026 09:20:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 09:20:34 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 09:20:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 09:20:38 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:41b07ac9fb6207a8cfec57ba13f9c1036c8164055359dd5610b3cec2a1af4d37`  
		Last Modified: Thu, 05 Nov 2026 06:15:43 GMT  
		Size: 49.5 MB (49479190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:039a271aeb76e594bdb78f1d76c07538a5ea455b8cd1f6400425ca0d855f8054`  
		Last Modified: Thu, 05 Nov 2026 07:58:08 GMT  
		Size: 26.8 MB (26812003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:236f934549db09dc0f91ef87581d65c0131867d26faf8e80120237f649a6f355`  
		Last Modified: Thu, 05 Nov 2026 08:49:09 GMT  
		Size: 68.7 MB (68671350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98903b246525978eb23277ea714f52e0e9776746e5a299b63d76e87759ce448c`  
		Last Modified: Thu, 05 Nov 2026 09:21:08 GMT  
		Size: 76.3 MB (76281751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c0523718a973c87af9229ebd329dd6cf4e5d8ba37906c1e4c9083f5bb46d84`  
		Last Modified: Tue, 20 Oct 2026 02:41:29 GMT  
		Size: 70.3 MB (70281640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52691c57f57d2ee166bb9a3a4b01c2ea052045071d6a52c27bb7ae88b1a53dc4`  
		Last Modified: Thu, 05 Nov 2026 09:21:07 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:ffe00b110d912fecc912141790b8f09bd4a061f5bd0b0e32d65a42c0dba58ec2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10634641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57116fddb832f5c51bd62ec1286a27dfd00a7b46e2931c9af7efdf6df042179f`

```dockerfile
```

-	Layers:
	-	`sha256:8f548af3a40475c60dd7f57d97ecd911fb8c0385f197b19eceae165f9888c74e`  
		Last Modified: Thu, 05 Nov 2026 09:21:07 GMT  
		Size: 10.6 MB (10606267 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a808456ad5fa893038e4ef315e5216ab3eaa913a22144a6826ddf6df4b1075a`  
		Last Modified: Thu, 05 Nov 2026 09:21:07 GMT  
		Size: 28.4 KB (28374 bytes)  
		MIME: application/vnd.in-toto+json
