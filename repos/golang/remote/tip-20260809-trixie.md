## `golang:tip-20260809-trixie`

```console
$ docker pull golang@sha256:a4c33c6663736772ae71066b894952e7819f2672e316d80b016ec3d20a687ebb
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

### `golang:tip-20260809-trixie` - linux; amd64

```console
$ docker pull golang@sha256:34818671aee4a25a749b818cbdddec6ffd0984af4dc414dc93e0c569d4d1b4a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.2 MB (347193771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8356b1570ed267c6d3f09d3ecf0c4056b7906faade4884f03c8d99ff4bed61bd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:33:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 10 Aug 2026 23:30:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:35:20 GMT
ENV GOTOOLCHAIN=local
# Mon, 10 Aug 2026 23:35:20 GMT
ENV GOPATH=/go
# Mon, 10 Aug 2026 23:35:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:35:20 GMT
COPY /target/ / # buildkit
# Mon, 10 Aug 2026 23:35:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 10 Aug 2026 23:35:22 GMT
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
	-	`sha256:f722a6b9e435cbe52a0a5add5642cf994bc0415caa67d7b88b27b9df54ed96aa`  
		Last Modified: Mon, 10 Aug 2026 23:30:48 GMT  
		Size: 102.3 MB (102322004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0ba79db5c7c8b5bee8dd5476917bcc23598ce562ecefd16aed54bc7ddb14e38`  
		Last Modified: Mon, 10 Aug 2026 23:32:52 GMT  
		Size: 102.1 MB (102122658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13c848d7a72f4743b8fdbc00f744c2d6a7bdb7be52a50a206f2f8843ac684274`  
		Last Modified: Mon, 10 Aug 2026 23:35:41 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260809-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:98c409a69dbf931cee23c2d9972446559312333140b75ad436cc3ba02f7e162e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10814782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e695e82a653489cffd70a37909501d2433d8016b77104f8e1efcd607c244f98`

```dockerfile
```

-	Layers:
	-	`sha256:2125e9e8756c76ff4ca7fdbfbd72ca4623f95fce643e541a9215b4eade2a8089`  
		Last Modified: Mon, 10 Aug 2026 23:35:42 GMT  
		Size: 10.8 MB (10786097 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e35482db79ff4a74fbd55701b7d78d2bfd0e3099c24cec3edd9a657827256f81`  
		Last Modified: Mon, 10 Aug 2026 23:35:41 GMT  
		Size: 28.7 KB (28685 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260809-trixie` - linux; arm variant v7

```console
$ docker pull golang@sha256:b696cd4e6013892caf5ab4b9b84085388b1fddc5ab277e0fd506f089ac294b45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.3 MB (303299577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e31d898173d4a34d987a019637a5e0f6fb727628544e54ea0ae8acfda30d17d0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:20:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:54:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 10 Aug 2026 23:33:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:31:21 GMT
ENV GOTOOLCHAIN=local
# Mon, 10 Aug 2026 23:31:21 GMT
ENV GOPATH=/go
# Mon, 10 Aug 2026 23:31:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:31:21 GMT
COPY /target/ / # buildkit
# Mon, 10 Aug 2026 23:36:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 10 Aug 2026 23:36:32 GMT
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
	-	`sha256:2b57c002039e6f41f3edadddf4ea7c0df6936a21db0d5afc4fa8201158d8c71e`  
		Last Modified: Mon, 10 Aug 2026 23:36:53 GMT  
		Size: 73.0 MB (72965847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31fc34d5d8629d6029c50a31a63e1c2cb81b094a58e2d08a759a5cff36008918`  
		Last Modified: Mon, 10 Aug 2026 23:31:34 GMT  
		Size: 98.2 MB (98195783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66a38b18bc82e6daa399c664e64df8e5a71575d4207368bdfe990ffe306cf777`  
		Last Modified: Mon, 10 Aug 2026 23:36:51 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260809-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:88b458d6aef9ee575f49ead5d98ab120926f330c4e1d1f587506b69c88d664c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10610788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3bab0c7c844c9f482cb483c37da519db0a62d39b96e80ab8251e80159ec16cf`

```dockerfile
```

-	Layers:
	-	`sha256:b00b399e977312b039fdcf93f4f33ec714ea33c9a8a47a8a3d13dd13ac719c2f`  
		Last Modified: Mon, 10 Aug 2026 23:36:52 GMT  
		Size: 10.6 MB (10581984 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:688cea0d015524ef0945bd4989c3d9fce3b976d2afe2a05efea73f9cd4c05403`  
		Last Modified: Mon, 10 Aug 2026 23:36:51 GMT  
		Size: 28.8 KB (28804 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260809-trixie` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:176871af0e4b1a973c662d9f30309f5113ed9d19fedb527fdfb1b7f9bcf06143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.4 MB (337391878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ad27b73a0f227e20e31076930c5037730eb300a377e151f57afc00d2f9ee39f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:40:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 10 Aug 2026 23:29:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:35:20 GMT
ENV GOTOOLCHAIN=local
# Mon, 10 Aug 2026 23:35:20 GMT
ENV GOPATH=/go
# Mon, 10 Aug 2026 23:35:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:35:20 GMT
COPY /target/ / # buildkit
# Mon, 10 Aug 2026 23:35:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 10 Aug 2026 23:35:23 GMT
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
	-	`sha256:abca9a2da267b583e6d52191e3520251cfe3e55e0ad6648bebb00e988cc588a2`  
		Last Modified: Mon, 10 Aug 2026 23:29:32 GMT  
		Size: 98.5 MB (98466747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:345d818a4d1d5c30faebf580653ca52f803e6bfa975af792681a5892e0202fba`  
		Last Modified: Mon, 10 Aug 2026 23:31:08 GMT  
		Size: 96.6 MB (96624070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13c848d7a72f4743b8fdbc00f744c2d6a7bdb7be52a50a206f2f8843ac684274`  
		Last Modified: Mon, 10 Aug 2026 23:35:41 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260809-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:28f927077f2985c4f268f16f45160d4616c975a2793f2919720155a05bdafa82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10934751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49cf3e7709aefab29f050412fb5375e48d086661d718cf8c1fa15582e4c103d1`

```dockerfile
```

-	Layers:
	-	`sha256:d03573dce44c485f5dde02a22ee7ddb9a3af07d5ced26404e69ee8746ea0bbf4`  
		Last Modified: Mon, 10 Aug 2026 23:35:45 GMT  
		Size: 10.9 MB (10905915 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a632d8cfe5cf5ef1e8a1d9e037e392a75448e198cebf999dba0d390c13bb5647`  
		Last Modified: Mon, 10 Aug 2026 23:35:45 GMT  
		Size: 28.8 KB (28836 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260809-trixie` - linux; 386

```console
$ docker pull golang@sha256:25d295a689e9d5b65426f41c008fa76f6c9fad375df428ccb18ff6c0d9b925dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.5 MB (348499213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:366aba72f52c6dafc6d662db1eedbfa5b140272f58f7901c9d5f32f9d51cd787`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:41:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 10 Aug 2026 23:27:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:35:39 GMT
ENV GOTOOLCHAIN=local
# Mon, 10 Aug 2026 23:35:39 GMT
ENV GOPATH=/go
# Mon, 10 Aug 2026 23:35:39 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:35:39 GMT
COPY /target/ / # buildkit
# Mon, 10 Aug 2026 23:35:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 10 Aug 2026 23:35:41 GMT
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
	-	`sha256:755892a35a01917d89e479532dd5260a6bcabe1ef21a78807698c3f1b369e7b8`  
		Last Modified: Mon, 10 Aug 2026 23:27:43 GMT  
		Size: 100.8 MB (100764807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3193c8848ea73ab15af846ebf6ea81cd7e12867309e713849b7d248d32dc3451`  
		Last Modified: Mon, 10 Aug 2026 23:29:39 GMT  
		Size: 100.3 MB (100262964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a2d837d5dbefa5b47744c55a4ae708eefe40573bcbe00e9e021c11f55ea154c`  
		Last Modified: Mon, 10 Aug 2026 23:36:00 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260809-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:7c0346bac2bc05b230dd63438e9b1df336043c127bc56980fe4759ba0c2c2661
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10786002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72c127e36964c52d04b04ef2b3e96d52274180bacdb14308b12868311bce9b4b`

```dockerfile
```

-	Layers:
	-	`sha256:d0f7f45c213572185c3d7ad669ceffccacf29824ba39c756d14a386c96832a4d`  
		Last Modified: Mon, 10 Aug 2026 23:36:00 GMT  
		Size: 10.8 MB (10757360 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:678575ecaacb4e365d77a5d9fa38b42b73553c2923a2a8028a68cf58f4fdffd8`  
		Last Modified: Mon, 10 Aug 2026 23:36:00 GMT  
		Size: 28.6 KB (28642 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260809-trixie` - linux; ppc64le

```console
$ docker pull golang@sha256:e1b30d126da42702cf427c95652b58308da5c6171ca1ecb7959b62c5a763055e
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

### `golang:tip-20260809-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:3bf214efa2f680058fae08b10bfa87f996afede7f4fd893fdd939bf0909e1538
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10810619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08d346adf1c1d7122b0ecb34b59373382a5d2c8040878af40ec982d6b9b52734`

```dockerfile
```

-	Layers:
	-	`sha256:2ed880c8712402dd96fa01a80e4fcf017b6db4aed35581d6e5701a93ac705e64`  
		Last Modified: Tue, 11 Aug 2026 00:14:23 GMT  
		Size: 10.8 MB (10781885 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd3015c14c5b7a17f88b618fc9702b2537b590831e659c9452aeddecb266eb3c`  
		Last Modified: Tue, 11 Aug 2026 00:14:22 GMT  
		Size: 28.7 KB (28734 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260809-trixie` - linux; riscv64

```console
$ docker pull golang@sha256:f466d1b9235008772a080c364686dd05ed6fb4d02dfd1755574d675d2c016ebc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **371.0 MB (370972933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e089352131c08ed0c325702273403b7342c93d815e4413c573664801a84aef6b`
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
# Thu, 13 Aug 2026 09:41:56 GMT
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

### `golang:tip-20260809-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:9869fe2cfc75c5e739f47f58f48f7ab8d9aede340f9d2dfc0e75cf34ee79077f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10884457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b4f94a34a355a775a4d60894bd8634cea1158c2a8e3bc85226d2d0fffd48e34`

```dockerfile
```

-	Layers:
	-	`sha256:b3b0af540e3a708e3ab51dfc801690bfb49ba5b6cba66ea452e3a537999ae4d8`  
		Last Modified: Thu, 13 Aug 2026 09:46:46 GMT  
		Size: 10.9 MB (10855718 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c38968eb22c07dd659adee9f7223af917b1134882c7305b05d8eb38f39aa274`  
		Last Modified: Thu, 13 Aug 2026 09:46:44 GMT  
		Size: 28.7 KB (28739 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260809-trixie` - linux; s390x

```console
$ docker pull golang@sha256:3dd4d65469698cf020983c114ca748c4e8852376e12143b6291d06318dd14274
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.8 MB (321837809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b56b012b8c1495689d4675ae5446e7afa81e666f87c14d35a1883fd2b59522cc`
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
# Mon, 10 Aug 2026 23:29:31 GMT
ENV GOTOOLCHAIN=local
# Mon, 10 Aug 2026 23:29:31 GMT
ENV GOPATH=/go
# Mon, 10 Aug 2026 23:29:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:29:31 GMT
COPY /target/ / # buildkit
# Mon, 10 Aug 2026 23:35:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 10 Aug 2026 23:35:59 GMT
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
	-	`sha256:2585e6fc3b735d1a705331aed1b18733b87573ef16def0f8645f8bc7b7f32dfb`  
		Last Modified: Mon, 10 Aug 2026 23:29:58 GMT  
		Size: 100.9 MB (100885433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d7e4f018f6379197f960b4ab76841896a1788dfc6b63b004755a04e804b5421`  
		Last Modified: Mon, 10 Aug 2026 23:36:19 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260809-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:664954da825ed4d1695f8c7458da8a9499974ea4ac87eed5d3671442c0baa6cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10625925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a35f315c186c66cd5eb461e601ef5d4336ccfb6cc92629ff970a0545990a784`

```dockerfile
```

-	Layers:
	-	`sha256:f65c58bda19391739a0303968e8cb22c0365cd8721eb66e3cb748b4773b33e57`  
		Last Modified: Mon, 10 Aug 2026 23:36:19 GMT  
		Size: 10.6 MB (10597245 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f0d582d36fa7cd1d2a78d9f9feec00810d9076b3c6633aac116eb44fe8770a0`  
		Last Modified: Mon, 10 Aug 2026 23:36:19 GMT  
		Size: 28.7 KB (28680 bytes)  
		MIME: application/vnd.in-toto+json
