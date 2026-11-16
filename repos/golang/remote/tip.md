## `golang:tip`

```console
$ docker pull golang@sha256:3e2adafd72df7604f0954bb721c593e6b7a91303383c5d1acef906e0b1c2e5a0
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
$ docker pull golang@sha256:12b23c753c312f7fd8cd265bdcea19b438a22940b13037abb715ff6253abe0e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.7 MB (350675612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d04464381f37397fe5b884b5d8fde81419418676318cfbb67d1ce3341d54aa3`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:38:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:31:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 16 Nov 2026 20:02:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 20:03:44 GMT
ENV GOTOOLCHAIN=local
# Mon, 16 Nov 2026 20:03:44 GMT
ENV GOPATH=/go
# Mon, 16 Nov 2026 20:03:44 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 20:03:44 GMT
COPY /target/ / # buildkit
# Mon, 16 Nov 2026 20:03:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 16 Nov 2026 20:03:46 GMT
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
	-	`sha256:beb63e2b5c93ade386314ee82b5e52a97eaaba2f2ac6a1f14c86b177439e6315`  
		Last Modified: Mon, 16 Nov 2026 20:04:13 GMT  
		Size: 102.5 MB (102508880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad85a89f87fc149936abff9320ce12e5276df7e3e0b9baf1d1634a8964fe99fa`  
		Last Modified: Mon, 16 Nov 2026 20:04:06 GMT  
		Size: 105.3 MB (105300982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38d3eed9eaa40a5be5f202f22a31c917b5f06ba7a5e935f040f7b52a2a2fd13f`  
		Last Modified: Mon, 16 Nov 2026 20:04:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:4fabe94d27a1b955458f02b76e0c45296ab1a66c1195d3beea8c6a1470023eec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10824148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d31d4f1b6bf83cd5abfe156c78b537353ed86f1aa59e5e25e2751af2334fcbe5`

```dockerfile
```

-	Layers:
	-	`sha256:deac22a36bdc9f601efc836e4db248ee6564e66946225b3507607240abf91127`  
		Last Modified: Mon, 16 Nov 2026 20:04:11 GMT  
		Size: 10.8 MB (10795463 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72c5e47831b8686cdb57b30b218fce6bc4ee686a362224492261216812010188`  
		Last Modified: Mon, 16 Nov 2026 20:04:10 GMT  
		Size: 28.7 KB (28685 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; arm variant v7

```console
$ docker pull golang@sha256:260be821241da316ac67e920e5197d7cf8792b97c429efeaf10ba7645f3a09aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.8 MB (306784553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ea99b7399331e3b4c83d07b5875656c210d70c68a5b2f41b36ce507d2712b93`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:18:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:24:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 16 Nov 2026 19:47:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:48:36 GMT
ENV GOTOOLCHAIN=local
# Mon, 16 Nov 2026 19:48:36 GMT
ENV GOPATH=/go
# Mon, 16 Nov 2026 19:48:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:48:36 GMT
COPY /target/ / # buildkit
# Mon, 16 Nov 2026 19:48:39 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 16 Nov 2026 19:48:39 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:865302b150ef6501d10367f445f0f9d34479768facdaad7ff5f2570ef01e64e0`  
		Last Modified: Thu, 05 Nov 2026 06:16:17 GMT  
		Size: 45.8 MB (45831124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec22bd8270a456c344320ca1bfb723ebee36d6367951065776d9dd7282537e25`  
		Last Modified: Thu, 05 Nov 2026 08:18:57 GMT  
		Size: 23.6 MB (23636480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f984886b94a931860c42ddaa1f808f518535286e993896a737731d0219bcbf9`  
		Last Modified: Thu, 05 Nov 2026 09:24:27 GMT  
		Size: 62.8 MB (62760090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7414633a5de6a5493c3de4db8f08af37786ce0cefe9872c8b1f4a50253554e6d`  
		Last Modified: Mon, 16 Nov 2026 19:49:04 GMT  
		Size: 73.1 MB (73147832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff0682325f35574741c2b46338269a06687f5ff9e31a5f02cab62501cd269ece`  
		Last Modified: Mon, 16 Nov 2026 19:48:51 GMT  
		Size: 101.4 MB (101408869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a323f0b395d7f834b8449be7e0f3948d6fb905c972fbb88f046749fb652f10`  
		Last Modified: Mon, 16 Nov 2026 19:48:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:72d959f03b4bce2efa54f4fcd1f380e2fd1bed59b95167a15d7a43b696bd1051
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10620159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3735b2077ccd8064ae1173d5f6287f1c746510c591fa0f6ae7a80785fa82ee32`

```dockerfile
```

-	Layers:
	-	`sha256:0cb0627a6a6e1948c8519a5b53c7e0f895d9129b950a9342026f40c8463859ab`  
		Last Modified: Mon, 16 Nov 2026 19:49:03 GMT  
		Size: 10.6 MB (10591351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cdee9798a73bce96e0ea8e8d1b327e3293885e668f6d167970ebc14ce9551201`  
		Last Modified: Mon, 16 Nov 2026 19:49:02 GMT  
		Size: 28.8 KB (28808 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:5ae5ccd3a9ee735348e00b4ffff1ed337bfc8a87ea61d19617fd3b1009345472
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.8 MB (340806713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70f68ac58a549474153e2678c06df51a066f6c659c3facc82a59572a29da5ac3`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:29:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 16 Nov 2026 19:47:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:48:16 GMT
ENV GOTOOLCHAIN=local
# Mon, 16 Nov 2026 19:48:16 GMT
ENV GOPATH=/go
# Mon, 16 Nov 2026 19:48:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:48:16 GMT
COPY /target/ / # buildkit
# Mon, 16 Nov 2026 19:48:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 16 Nov 2026 19:48:19 GMT
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
	-	`sha256:7f40360e35496c5d2e2ee1ffc9ae9c59412c5e88ec18c352bc6a960018bd7336`  
		Last Modified: Mon, 16 Nov 2026 19:48:46 GMT  
		Size: 98.7 MB (98655743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2987a923307e8bb085d010c49e21c6802ab42ee36a1373237f3317b5e0604ed0`  
		Last Modified: Mon, 16 Nov 2026 19:48:27 GMT  
		Size: 99.7 MB (99700922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f6770c7ea74ce7d3fdfc070e55a1bf7659d78641e426089f2b38fcb0a68eee`  
		Last Modified: Mon, 16 Nov 2026 19:48:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:bbb97c0ad69a69402decc498bae81af646fd04f1c10b8e8217f5a828a8425269
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10944117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db0277cc82ed823411cd362eb215bde1b0ee3278b72c0ac011c24e31a12ecb27`

```dockerfile
```

-	Layers:
	-	`sha256:677068038d3b44369ed3c0d8fb6324fda1496c06dbd09247765730b3fff98865`  
		Last Modified: Mon, 16 Nov 2026 19:48:44 GMT  
		Size: 10.9 MB (10915282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f74797bca516a8411903786755fb25ceeab16749177693931415746129c9afb`  
		Last Modified: Mon, 16 Nov 2026 19:48:43 GMT  
		Size: 28.8 KB (28835 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; 386

```console
$ docker pull golang@sha256:f5a5f1de7a54dd90e6d98842b51bc898906635cd720b78093d9d75d838211821
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.8 MB (351769385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9a5785cfea15d9ce284d5425ad0439f44513fc93d587466e079e94960203c34`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:41:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:24:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 16 Nov 2026 19:47:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:48:46 GMT
ENV GOTOOLCHAIN=local
# Mon, 16 Nov 2026 19:48:46 GMT
ENV GOPATH=/go
# Mon, 16 Nov 2026 19:48:46 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:48:46 GMT
COPY /target/ / # buildkit
# Mon, 16 Nov 2026 19:48:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 16 Nov 2026 19:48:49 GMT
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
	-	`sha256:052d9f52d36533e086f047acc0f699075582e54ac3f3f2a048719dae5e2b34be`  
		Last Modified: Mon, 16 Nov 2026 19:49:15 GMT  
		Size: 100.9 MB (100949576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68753a5ee6310f665de8b43bde628a2a60c5be6510cc4d63d8f7a5872ff51b5b`  
		Last Modified: Mon, 16 Nov 2026 19:49:15 GMT  
		Size: 103.2 MB (103242718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:047d282864680309bd8c75533d377a1a86ea824f2473c01b13f36d9a8322aa38`  
		Last Modified: Mon, 16 Nov 2026 19:49:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:e5c6d41036e16843241264f241c349ec9e1ed1bb56863ba88c508715571a46fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10795367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c5f4d1f485637d0c315e1f7d78279b4261384cc54851ef3df3ea1d625db9d77`

```dockerfile
```

-	Layers:
	-	`sha256:30fdaa7144ad19b40ad07ad5bac80a521c04fa1878a8e7e24eb31556c114429b`  
		Last Modified: Mon, 16 Nov 2026 19:49:11 GMT  
		Size: 10.8 MB (10766725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06f34fa6ba0454772d7bc3e0b065c44beb14b3dedce176ced67755755c567ea4`  
		Last Modified: Mon, 16 Nov 2026 19:49:11 GMT  
		Size: 28.6 KB (28642 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; ppc64le

```console
$ docker pull golang@sha256:c6e30063ae4ccda3ba34d424a2813d37be3d1fceb0ee43991d7121e6999fd5ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.5 MB (348528226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6666d72ac29123532ec3fcc363502b433b2247a7657fdeef6d7145e7f4cc1c19`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 10:10:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 17:26:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 20:54:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 20:18:47 GMT
ENV GOTOOLCHAIN=local
# Mon, 16 Nov 2026 20:18:47 GMT
ENV GOPATH=/go
# Mon, 16 Nov 2026 20:18:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 20:18:47 GMT
COPY /target/ / # buildkit
# Mon, 16 Nov 2026 20:18:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 16 Nov 2026 20:18:59 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b441821aef48e4927b60b63cc49b02baaf25f64d2d6badc6044a1184761c737`  
		Last Modified: Thu, 05 Nov 2026 10:10:24 GMT  
		Size: 27.0 MB (27023201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5eacbf9637539d8aa77e81054651dcf509dbf3851a0a1aa8980495316a23c2e`  
		Last Modified: Thu, 05 Nov 2026 17:27:43 GMT  
		Size: 73.1 MB (73093471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:088f544464ccc68bb2fa206ce89e09e7138da8df265edea104d7076e0f9e0275`  
		Last Modified: Thu, 05 Nov 2026 20:55:24 GMT  
		Size: 93.2 MB (93178365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83f5395f83e6cd48331cd9ec5843ef191fbe2946bb645580c1e8235aa95b7bb1`  
		Last Modified: Mon, 16 Nov 2026 20:20:10 GMT  
		Size: 102.0 MB (102007441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a59b8a163543404f9822fab549dc34362a6cf4fb23413db98178becaae20b595`  
		Last Modified: Mon, 16 Nov 2026 20:20:07 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:3f3d5ce8d1de6d6db2a311528e6d1541bcf5b3db4218ac9ad0f2bcf16a20255e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10819989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdc86f504a22bae6f16068cfbc9ad6c01c6b064dea6fae147a334acb50953615`

```dockerfile
```

-	Layers:
	-	`sha256:c511e61ffc275d5dc76c8173ebdb800950152a8b2e4bcec1927d56c34926ba5c`  
		Last Modified: Mon, 16 Nov 2026 20:20:07 GMT  
		Size: 10.8 MB (10791252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67b2f41ed6d3655ee581c8704c22c80a59dc6e74be96db5eb51761ab60f39b1c`  
		Last Modified: Mon, 16 Nov 2026 20:20:07 GMT  
		Size: 28.7 KB (28737 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; riscv64

```console
$ docker pull golang@sha256:8819fa7a538ece116949aaf19c4956133f7c0f725fba91191c8e28a6adcf495a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **372.9 MB (372884958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffb40bc83dba111a8da0606d82393cc5919d858e2e3ed380d79d587e44ca6075`
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
# Tue, 03 Nov 2026 09:59:47 GMT
ENV GOTOOLCHAIN=local
# Tue, 03 Nov 2026 09:59:47 GMT
ENV GOPATH=/go
# Tue, 03 Nov 2026 09:59:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 09:59:47 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 01:54:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 01:54:57 GMT
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
	-	`sha256:2f407f2d466bfcd495056aca7e9a0c35ac87e4089ae72db918b17348bab9a459`  
		Last Modified: Tue, 03 Nov 2026 10:03:39 GMT  
		Size: 101.4 MB (101358233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46cf91bfece1ce2ff1f600c39c74dad924809695e92433e68e1694e3dc7b1766`  
		Last Modified: Thu, 05 Nov 2026 02:00:14 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:f73a5fcb9388da84a22565ceae4d8253c97f1192426101bb2b6a74662175f12d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10893824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f134a995fa3369637e9bdeadf8b87c000a4d4631fdf3fc4c200d297aa704a77e`

```dockerfile
```

-	Layers:
	-	`sha256:c96f6592596a93a0d4774e085a4e0ae4d00d4ceeb8f9727d2ffae61703c8fcb5`  
		Last Modified: Thu, 05 Nov 2026 02:00:16 GMT  
		Size: 10.9 MB (10865081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64485c584c072fc00f9382a73ccbc1cbf600373d8d19408dfb7d36c5d61752cd`  
		Last Modified: Thu, 05 Nov 2026 02:00:14 GMT  
		Size: 28.7 KB (28743 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; s390x

```console
$ docker pull golang@sha256:d033862f237708df33db307e7e21761d72fc180a64911ef391ec7468917e36bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.3 MB (325298917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8efcc92f3168386c372f4881094eed3baaa7618274add9c08987e3b81b4533b5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:57:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:48:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 10:12:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:58:11 GMT
ENV GOTOOLCHAIN=local
# Mon, 16 Nov 2026 19:58:11 GMT
ENV GOPATH=/go
# Mon, 16 Nov 2026 19:58:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:58:11 GMT
COPY /target/ / # buildkit
# Mon, 16 Nov 2026 19:58:13 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 16 Nov 2026 19:58:14 GMT
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
	-	`sha256:8460bb8f6558dc3ddd4a8daa929584f2696b8bfea7fce567fd1593ed616a1ee3`  
		Last Modified: Thu, 05 Nov 2026 10:15:43 GMT  
		Size: 76.3 MB (76282477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c977d3bf21c83de39aa3b449c5e12fc1ab0455e0298cf241d6d6cdbaf369627a`  
		Last Modified: Mon, 16 Nov 2026 19:57:25 GMT  
		Size: 104.1 MB (104053739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50de7f4899c9e6ef95a71cfb3edde75498b9b960d55bd9d39b3b40a8554bde35`  
		Last Modified: Mon, 16 Nov 2026 19:58:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:da82a1d55049e6bf85caae5385cf5ec549c2463afe015d6d064b71822a60f3ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10634542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02cc8a747bb7cd57295adac3b17116114af405401c601919150f8d200ad08928`

```dockerfile
```

-	Layers:
	-	`sha256:7d9038d28509df4c3ba99a5bcb96b8a7cbace3c1281c3d880e4b90246b4e4ab0`  
		Last Modified: Mon, 16 Nov 2026 19:58:42 GMT  
		Size: 10.6 MB (10605862 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8092b9530f3879cc88a8ff2ed78db5c0d8e4c09a55a6991a8212098a5b5b3438`  
		Last Modified: Mon, 16 Nov 2026 19:58:42 GMT  
		Size: 28.7 KB (28680 bytes)  
		MIME: application/vnd.in-toto+json
