## `golang:tip`

```console
$ docker pull golang@sha256:a2967016955fcd885a763cf9a56469e58800aa116dea2115c80b08cd179d9f46
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

### `golang:tip` - linux; amd64

```console
$ docker pull golang@sha256:09bbe560f082d946c0d305efc88fed436a824856380eb0460c224579972ac87a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.3 MB (347260464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13a98ff44a50c39daaf3e63fde8218a6ace7b5752110628a63f433c6b8bfc9c3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:33:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 19 Aug 2026 00:11:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 00:13:26 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 00:13:26 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 00:13:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 00:13:26 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 00:13:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 00:13:29 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b64c51cda3d04397bcf5742a29a9a1ba7adcfd18a376bacb8d114ed64cbd5a`  
		Last Modified: Wed, 05 Aug 2026 00:45:14 GMT  
		Size: 25.6 MB (25638637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec935196e6a095bdd6ac865248321ea4fd33424071fe14264cd33900f8ae6212`  
		Last Modified: Wed, 05 Aug 2026 01:33:41 GMT  
		Size: 67.8 MB (67797999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c653c84fcf34b989da0b3b42fff2f66c6d78ff16819ab26120ffcbb86b15e0b`  
		Last Modified: Wed, 19 Aug 2026 00:13:58 GMT  
		Size: 102.3 MB (102322047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78fd4b108dc2887f1874e475aa93655dfb3cee66bdcaa485cfef77f44a1da802`  
		Last Modified: Wed, 19 Aug 2026 00:13:58 GMT  
		Size: 102.2 MB (102189309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34054eadc13cc7717061beea5a966f468ca184c4998913f9252930b56889a77e`  
		Last Modified: Wed, 19 Aug 2026 00:13:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:9246bafbe897b5aa7e021f1f272ac2b6c496c3885b9ca8b2082fac22238faa9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10814782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14d8039fe75ed8a36df6ae11cd9dc1f31d62707a37df5dbe641164996a663b3f`

```dockerfile
```

-	Layers:
	-	`sha256:91a35d44f24fa020c91d700581403d539b4106be8c890386cfb655f913d4d7f6`  
		Last Modified: Wed, 19 Aug 2026 00:13:54 GMT  
		Size: 10.8 MB (10786097 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80e5f73beaa04211ffe0f8eb7183cfcc829366c45e1a84dff36b980b2ce494a6`  
		Last Modified: Wed, 19 Aug 2026 00:13:54 GMT  
		Size: 28.7 KB (28685 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; arm variant v7

```console
$ docker pull golang@sha256:32a8c4e471d8b114f8bf571fb7d8a3b9683f4a83802c25251c3abe70b68426a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.4 MB (303351708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ab69fbfc34c1aaad5e843e7c70e45756471d9af6da9a258c13aff5c8eba4ff4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:20:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:54:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 19 Aug 2026 00:12:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 00:15:18 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 00:15:18 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 00:15:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 00:15:18 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 00:15:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 00:15:21 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ce00596802fbbb6f672716803836be915a7fa1e431e304e27380b560f4b25c8e`  
		Last Modified: Tue, 04 Aug 2026 23:52:16 GMT  
		Size: 45.7 MB (45743375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f0dd361d89842d87704123c0af11b4564310574a6d57fefd0e2be36925c3d8d`  
		Last Modified: Wed, 05 Aug 2026 01:20:38 GMT  
		Size: 23.6 MB (23636453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb135e1760d1271aea3209c73b2b3ca0ea7f9cfde6d547d3d7e708701db7379`  
		Last Modified: Wed, 05 Aug 2026 02:54:53 GMT  
		Size: 62.8 MB (62757963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e514488eee77b295b971582a8a17e436f98d5672fff8f3859e0632fb87e0dc2`  
		Last Modified: Wed, 19 Aug 2026 00:15:47 GMT  
		Size: 73.0 MB (72965852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fafa218b44764d9c306166742866e740ed62051825597c3c8a3bea4bd4709bb`  
		Last Modified: Wed, 19 Aug 2026 00:15:48 GMT  
		Size: 98.2 MB (98247908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:160f78d1bb93d5f6041631580ca0b1025bf0080ff7b50b18153544563da702de`  
		Last Modified: Wed, 19 Aug 2026 00:15:44 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:c993e780edbef5a2e521ccefca5355986fbc39021b63e12ce9423ff06792fcb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10610788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c53fe3ca49f12475c691aa665d3331d8caf1a6c19d5ad4077944c5a08c04608b`

```dockerfile
```

-	Layers:
	-	`sha256:7006ac3bfdf7034b2c52fcd810cf5504544a0536dbdc246da728011dda5bd6cf`  
		Last Modified: Wed, 19 Aug 2026 00:15:45 GMT  
		Size: 10.6 MB (10581984 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73d50d6e7c6285f51a4d5ae349fd1c3744304668b8ba7fd21f4fd7ff70c66774`  
		Last Modified: Wed, 19 Aug 2026 00:15:44 GMT  
		Size: 28.8 KB (28804 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:f129be5cccb0492ca76242c17837875c66045ed95e020ee557eb6bea80122328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.5 MB (337455186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c19b7142d44bf3c21ae7087b0662f7db867a127a8489e52befd1b24b34ef2d65`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:40:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 19 Aug 2026 00:11:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 00:12:58 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 00:12:58 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 00:12:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 00:12:58 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 00:13:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 00:13:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3df26e3af2ffa164164818cbb63174def2450bcdee94680a9fe9f3ecaddbee`  
		Last Modified: Wed, 05 Aug 2026 00:47:38 GMT  
		Size: 25.0 MB (25026975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50fe3346a36b8a110ecc263e7e06ae8e67594eceaf987bbc84fa7ceb29b1a6cd`  
		Last Modified: Wed, 05 Aug 2026 01:40:24 GMT  
		Size: 67.6 MB (67600081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43302cd6a5a41cd5670d7bbdcb42555caede1e39a7aa457a47606ce7c3a7b428`  
		Last Modified: Wed, 19 Aug 2026 00:13:29 GMT  
		Size: 98.5 MB (98466623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ad9b83df000c9f6c1608586eb67529963919d8f16a0c472bc1c8f6bb835fe29`  
		Last Modified: Wed, 19 Aug 2026 00:13:29 GMT  
		Size: 96.7 MB (96687502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f31ff7589ddaa9b329803db5b13fefc796d4b271e67425b19a2b079309745c2`  
		Last Modified: Wed, 19 Aug 2026 00:13:25 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:d36bd400851ac0884f012a609c60f9a9268e155a162ecfcdecf1c940acc4f92b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10934751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d4938912bdbc636ca83dc351a19a65974293ef1a9fcc558592b13584e68e3f5`

```dockerfile
```

-	Layers:
	-	`sha256:737be06ba02ffe30eabc21465c488e445c903661ee1c307d07ddc9782a85ee3f`  
		Last Modified: Wed, 19 Aug 2026 00:13:26 GMT  
		Size: 10.9 MB (10905915 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33020cfd7127f499c8df211865ec2f04898d01c575d67c6340b401496d5ea515`  
		Last Modified: Wed, 19 Aug 2026 00:13:25 GMT  
		Size: 28.8 KB (28836 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; 386

```console
$ docker pull golang@sha256:b33ff4aaf5300c0852e98fea7913d5db56e14c8edb3b116ffd5b0a44d6d821e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.6 MB (348569891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41b365f8efc0f7396d5aa16a931879e7bc4ef4b11e04cd243ac5428ae4b78970`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:41:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 19 Aug 2026 00:12:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 00:13:48 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 00:13:48 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 00:13:48 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 00:13:48 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 00:13:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 00:13:51 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:7675708177d5a41df755bb146c3624b6c71f646d85f7bcb8f5f3bb587af896f8`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 50.8 MB (50831168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f34fbe13383f04539c7849f0cc79bc728d4e964e24cda9b947d4784426bd636`  
		Last Modified: Wed, 05 Aug 2026 00:47:13 GMT  
		Size: 26.8 MB (26800384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a3ec548455cf061e33066b297b3d6422e0f3a9b061c1f92a46c05e3687aee2`  
		Last Modified: Wed, 05 Aug 2026 01:41:30 GMT  
		Size: 69.8 MB (69839732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0b1a6a9b8fa8d6ffcdf8dfe3097199dfbe73a72f0c163846767b57dd6aa54b7`  
		Last Modified: Wed, 19 Aug 2026 00:14:20 GMT  
		Size: 100.8 MB (100765016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:385b49515783d03dec2ef915a8f13b4f3ee4ca575a14e7cc8e02b6f494c0cf82`  
		Last Modified: Wed, 19 Aug 2026 00:14:20 GMT  
		Size: 100.3 MB (100333432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da7c5d7fc67653c48caac2e65f718e8d6be7390d53ef124f12cdaa150fa4347c`  
		Last Modified: Wed, 19 Aug 2026 00:14:15 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:6d268aad7bc5de18689928f734c4921377a161d0446f9576575b7d466fcbd7e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10786002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cfeea961f6d2b10c091978eea42b8ddbee9fbc710f957365c39b57262574a7e`

```dockerfile
```

-	Layers:
	-	`sha256:ae4f840e433e1636a19cd2b28d1da6389a1605b2e4200c2a65bf32f10f8a7d41`  
		Last Modified: Wed, 19 Aug 2026 00:14:17 GMT  
		Size: 10.8 MB (10757360 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d80ed76a4cd072d479b5a976a2f73bab98cc4d93d5962958d4e369347eab32c`  
		Last Modified: Wed, 19 Aug 2026 00:14:16 GMT  
		Size: 28.6 KB (28642 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; ppc64le

```console
$ docker pull golang@sha256:3f617df8e5453b896ec79eadfe12b44be803e30ef20111aa359d2c4167ea54b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.1 MB (345058639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e150e0747f035706bf2be53116dfe6e2e2a5b5cfda47407c29de30cd2b476ab`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 05:25:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 08:58:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 11:42:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:42:31 GMT
ENV GOTOOLCHAIN=local
# Mon, 10 Aug 2026 23:42:31 GMT
ENV GOPATH=/go
# Mon, 10 Aug 2026 23:42:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:42:31 GMT
COPY /target/ / # buildkit
# Tue, 11 Aug 2026 00:13:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 11 Aug 2026 00:13:44 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf3e6efa722094ba9a2c33899d007294d906fe7730bc19901e78bf43c969f32`  
		Last Modified: Wed, 05 Aug 2026 05:26:21 GMT  
		Size: 27.0 MB (27021100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57c136ff5d1eed42b29e608b2fa6073b2ec631c910e2ba490e022e4d31f4ae2f`  
		Last Modified: Wed, 05 Aug 2026 08:58:54 GMT  
		Size: 73.1 MB (73074780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e3f0f5b402dece7615c4ffda3cb1eef1790a5091c1011cb7ca95d9143ba521a`  
		Last Modified: Wed, 05 Aug 2026 11:43:23 GMT  
		Size: 93.0 MB (93012725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9d95ff9656836b4d4f9ed4e91f0626382d9c4c4ab41dde220889f5b92f87744`  
		Last Modified: Mon, 10 Aug 2026 23:43:24 GMT  
		Size: 98.8 MB (98816272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d72dfacb0f59f337b1a80ae048923bd0e64bce8d9440ab90489ab87f3e91d6b6`  
		Last Modified: Tue, 11 Aug 2026 00:14:22 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:a4d73cfc76a0121616866f1d0564d65bb24d3ae620ffabd8a234d098538452e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10810619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06288f30d65793babef7349e47a208c0c7ad8a5f58225620b278daccaa0eb587`

```dockerfile
```

-	Layers:
	-	`sha256:3799ec1865f3cbfec88ecf7cbee5eb82b41d722b449b55c38f8062bc39428754`  
		Last Modified: Thu, 13 Aug 2026 22:30:56 GMT  
		Size: 10.8 MB (10781885 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c67c5cb8f99bfcee9153407843067306371f582e3a375b8efb7f8db54d2a19f0`  
		Last Modified: Thu, 13 Aug 2026 22:30:56 GMT  
		Size: 28.7 KB (28734 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; riscv64

```console
$ docker pull golang@sha256:fdcae461e5bd6c2cee308560de30e64887f64789c59b3f6d80352d22da7afc6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **371.0 MB (370972933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eca3e995c11f3aa55f94c2d7b58e5a293f7a3fb7f6331da9fa2f3b4fb022e23`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Thu, 06 Aug 2026 19:44:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 12 Aug 2026 00:17:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 13 Aug 2026 04:47:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 02:53:31 GMT
ENV GOTOOLCHAIN=local
# Tue, 11 Aug 2026 02:53:31 GMT
ENV GOPATH=/go
# Tue, 11 Aug 2026 02:53:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 02:53:31 GMT
COPY /target/ / # buildkit
# Thu, 13 Aug 2026 09:41:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 17 Aug 2026 02:31:25 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:7e2cce4c4a850aec1e4a483b50128246f3126dfd2358f0bcea094e0a9777c25b`  
		Last Modified: Wed, 05 Aug 2026 00:56:00 GMT  
		Size: 47.8 MB (47797481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1945d0945ecd590a3ceb924cca41cd29af5c2598b2fddd7323957355ada24075`  
		Last Modified: Thu, 06 Aug 2026 19:46:15 GMT  
		Size: 25.0 MB (24969684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b352e09933f4b05efde7aceb0834e303817d62f09bb339866d97e70454a5d8ef`  
		Last Modified: Wed, 12 Aug 2026 00:20:31 GMT  
		Size: 66.7 MB (66693765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d13e13b96042538ec41e84b5186c55bc7c6722f6fe6fe060b1ad00de9a27909`  
		Last Modified: Thu, 13 Aug 2026 04:55:36 GMT  
		Size: 131.8 MB (131807836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:816adc9907e95ba61a538b68e3405fd060c36e77845839e12392cd93ab7a3a04`  
		Last Modified: Tue, 11 Aug 2026 02:57:01 GMT  
		Size: 99.7 MB (99704008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d10b7f3cfb6d86cd299daeeb59963a8c5ed790f6e24b157a4b861aa3ee3c664e`  
		Last Modified: Thu, 13 Aug 2026 09:46:44 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:78d4d30f436fa22063983f107f82ee7b9f1b9f427a968d46eb2a9dbccd6c01e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10884457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa804b1c420690ec280fd37efc0ddf6af62147c0715b46d6d09557d9c6c09c6b`

```dockerfile
```

-	Layers:
	-	`sha256:367e4317ab92d344726bf37fa38bb8229828fa93fa4ce256b649f99cd0a748e6`  
		Last Modified: Mon, 17 Aug 2026 02:36:16 GMT  
		Size: 10.9 MB (10855718 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:becf67c0127ed3e8d66130af31d24d7cf5637ec08d10718ad3ab7805afa69927`  
		Last Modified: Mon, 17 Aug 2026 02:36:15 GMT  
		Size: 28.7 KB (28739 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; s390x

```console
$ docker pull golang@sha256:03d4e65e681af75077753a021aac300ed2e0d1fd1015d8247b7d903bba059c0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.9 MB (321900445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2b2069e31ae161aebe7f70b01463509738fc0634b992da6806a778f828d4b56`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:08:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:03:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:42:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 00:12:34 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 00:12:34 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 00:12:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 00:12:34 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 00:12:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 00:12:36 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f8b239a9d975f9d9fa57e1220f0c69c47026f4fbd5094809de5f822f2097b9c`  
		Last Modified: Wed, 05 Aug 2026 01:08:39 GMT  
		Size: 26.8 MB (26804560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e84d63eaa6137e87f6d73d15defc7c8e1c5f48351989da2ae83463f41f98de2`  
		Last Modified: Wed, 05 Aug 2026 02:03:58 GMT  
		Size: 68.6 MB (68648013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f1467200a6d0b769a7af7bb69faf55f0ddc257b1c2f12914659a3b60aae5f1`  
		Last Modified: Wed, 05 Aug 2026 02:42:53 GMT  
		Size: 76.1 MB (76118219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e711788918c346e1a3f433c8b9817ec45f0192b16aeb86ddced82c503184f525`  
		Last Modified: Wed, 19 Aug 2026 00:13:13 GMT  
		Size: 100.9 MB (100948068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26bc2e8ff5a0594f711c93d946a4a5a02f064b20c561c7680e68ebaa2c0212e0`  
		Last Modified: Wed, 19 Aug 2026 00:13:11 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:30c5d48b80b3aabf64d5008020c5725accdb255fb49106e4cd0a2c4569de1dbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10625925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82457012d45c416b36dca3b356913f34bb5cec2301e62e48b3b748af72407de1`

```dockerfile
```

-	Layers:
	-	`sha256:40e36614486026681ea9e079522423e8d90bf79f781331ab8ec781554ad4efba`  
		Last Modified: Wed, 19 Aug 2026 00:13:11 GMT  
		Size: 10.6 MB (10597245 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20df838b7853eabd51af450c4f3f2ad03594a787bbd31a9eeb38b53451c2b5a2`  
		Last Modified: Wed, 19 Aug 2026 00:13:11 GMT  
		Size: 28.7 KB (28680 bytes)  
		MIME: application/vnd.in-toto+json
