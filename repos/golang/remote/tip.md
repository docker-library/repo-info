## `golang:tip`

```console
$ docker pull golang@sha256:6019d4fda5767edb7b8bdaa30253670dabd532e8adf2ae3413ef33aac997762a
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
$ docker pull golang@sha256:91d7d97d8cdee2e9505b6099007d6b006ca7dc72044e4cbaf435101528d91c8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.3 MB (347260030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:103a22391de0c6be246e5dc1f478e6029694d1106ee4f5b86e4cf8016594eaf8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:33:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 19 Aug 2026 20:11:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 20:13:01 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 20:13:01 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 20:13:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 20:13:01 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 20:13:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 20:13:04 GMT
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
	-	`sha256:746da19a70a177da99ab4875598b7de441d11a4691abd7d0d4be7c5226a58f62`  
		Last Modified: Wed, 19 Aug 2026 20:13:33 GMT  
		Size: 102.3 MB (102321613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78fd4b108dc2887f1874e475aa93655dfb3cee66bdcaa485cfef77f44a1da802`  
		Last Modified: Wed, 19 Aug 2026 00:13:58 GMT  
		Size: 102.2 MB (102189309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:322986fae4c0499450608a66461b4eaae246bb6120cb53ab565a1c7ed5d969ad`  
		Last Modified: Wed, 19 Aug 2026 20:13:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:550382a5ae694a0151836c5ea8b82e960821ae83ead944797798fee6d3bedbd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10814782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c2d8d081e29ab4941fdfff8b685542975baf4d748251f2cb01efb2561100ce0`

```dockerfile
```

-	Layers:
	-	`sha256:2543402363f74edbe82a5489f2313dbfe7b241cc9d0e5daf505df2c97ec13242`  
		Last Modified: Wed, 19 Aug 2026 20:13:31 GMT  
		Size: 10.8 MB (10786097 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b03f24cc3252c9eed442ec18c815ea113d4ef07b09eaa9ee1e96e69792dfa49f`  
		Last Modified: Wed, 19 Aug 2026 20:13:30 GMT  
		Size: 28.7 KB (28685 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; arm variant v7

```console
$ docker pull golang@sha256:f87ea4d5d3441d2f503d736e3ba00caa41a3be4c067b74fd2a557d42ceb67c16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.4 MB (303352399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7b5102ba6b781d6ff9974868d8b71d54d4e3f650c17a6cf0382e9af78a169f7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:20:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:54:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 19 Aug 2026 20:13:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 20:16:10 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 20:16:10 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 20:16:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 20:16:10 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 20:16:13 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 20:16:13 GMT
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
	-	`sha256:ca106e83a23afa5eaf614b5382c56f1e64a0d96229a13069721e743d3bad537b`  
		Last Modified: Wed, 19 Aug 2026 20:16:39 GMT  
		Size: 73.0 MB (72966542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fafa218b44764d9c306166742866e740ed62051825597c3c8a3bea4bd4709bb`  
		Last Modified: Wed, 19 Aug 2026 00:15:48 GMT  
		Size: 98.2 MB (98247908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe2a86ab3322c039500191d4cad1d55f342f42db4c3591735556098857f3d3aa`  
		Last Modified: Wed, 19 Aug 2026 20:16:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:4e6f6d42580d8dbbae99a6bd4eb277f26f950cb09e506c0223b5f0b7f0fbb680
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10610788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:548ee6e977c5bd905b9bf878b9ac41512818b93685b3a35b35a08c303436d67c`

```dockerfile
```

-	Layers:
	-	`sha256:8f2fb66a37c25a410da5ad790cf6cd6456e884a47833ab8924ca024c43ae1854`  
		Last Modified: Wed, 19 Aug 2026 20:16:37 GMT  
		Size: 10.6 MB (10581984 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12f5036f3b94646c95c455146bb18a850b81d978c3100cda429bb61823a096b4`  
		Last Modified: Wed, 19 Aug 2026 20:16:36 GMT  
		Size: 28.8 KB (28804 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:12ca64cb0180b944886b91ebbc1ceffff816f9fc072ba67d37ecd9fe083fee80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.5 MB (337455306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:146ff7f091693094183d1a00a3d34e62bf12fe6d3355cb013bdbcd9404c682de`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:40:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 19 Aug 2026 20:10:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 20:12:11 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 20:12:11 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 20:12:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 20:12:11 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 20:12:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 20:12:14 GMT
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
	-	`sha256:3641bbb1fd6f16bbad7a8b800584c46df58b7c58ca6fcfd0fbb9892ee4a5c7f0`  
		Last Modified: Wed, 19 Aug 2026 20:12:41 GMT  
		Size: 98.5 MB (98466744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ad9b83df000c9f6c1608586eb67529963919d8f16a0c472bc1c8f6bb835fe29`  
		Last Modified: Wed, 19 Aug 2026 00:13:29 GMT  
		Size: 96.7 MB (96687502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbb266252df40e4d6c831442ad0025bf7f5c73b374c2fc24d18a38d6f2eecb9f`  
		Last Modified: Wed, 19 Aug 2026 20:12:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:d8c2f2192cc4fb00a4898e36bc90c834bf0a3b394901bb61e44d779d639d7942
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10934751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d92f216b2745da28c4eb127ecd8fcaeea7b46e32830b674210ea34cdccd8a08`

```dockerfile
```

-	Layers:
	-	`sha256:e3f81ab8025bc739ff1dd6a9de5f9abaecf78ecee3bb09919eaf685050bfab74`  
		Last Modified: Wed, 19 Aug 2026 20:12:38 GMT  
		Size: 10.9 MB (10905915 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92e4a77e1e3e46462edff32b5660275879ca46dfae3774124b73a5f9d2767d2c`  
		Last Modified: Wed, 19 Aug 2026 20:12:38 GMT  
		Size: 28.8 KB (28836 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; 386

```console
$ docker pull golang@sha256:5a8f57671b6b3c10a15dd6b20562e60aa1051d4d43357583de5c3b367b13029c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.6 MB (348569556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af8d1d919b72ce4a90bc26ee3ca071cee6605efa494af17d6685ea991dbdeedf`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:41:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 19 Aug 2026 20:11:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 20:13:03 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 20:13:03 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 20:13:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 20:13:03 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 20:13:05 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 20:13:05 GMT
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
	-	`sha256:0ac08a7d91d260104e0748d1b13f4f17859723a0f08e65cb4f42925e8e6e625f`  
		Last Modified: Wed, 19 Aug 2026 20:13:30 GMT  
		Size: 100.8 MB (100764684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:385b49515783d03dec2ef915a8f13b4f3ee4ca575a14e7cc8e02b6f494c0cf82`  
		Last Modified: Wed, 19 Aug 2026 00:14:20 GMT  
		Size: 100.3 MB (100333432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:266a62c6324cead2995eed37ccdaf007bed6e84c5a61ef076a5504c27ca45b76`  
		Last Modified: Wed, 19 Aug 2026 20:13:27 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:0621197ec9dea06823790f88defd7ede9b7ec670b57901826a5c6e13000e2718
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10786002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a31aae598738c97e9e7de58ee2a7aaa91ce084c9523128cebb4b7fff6c877f4`

```dockerfile
```

-	Layers:
	-	`sha256:b8a18f344fa09c6d29e505997abcc74f5ae418d521200d7b7a796440fc599b2e`  
		Last Modified: Wed, 19 Aug 2026 20:13:28 GMT  
		Size: 10.8 MB (10757360 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfa6028553edb74ec0d77e70594b1bc51f86ee68010e6c0b4c4aa6d97a97e4fa`  
		Last Modified: Wed, 19 Aug 2026 20:13:28 GMT  
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
$ docker pull golang@sha256:077bff5bccb4a0010507e3c0b6025ba9e47e7093508d99cc2c189b1a51d6a797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **371.1 MB (371051782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:700a90f26b2def18a5bd0a9e585eb5a881c1bea82159d56ab0636e32add6473e`
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
# Wed, 19 Aug 2026 01:38:45 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 01:38:45 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 01:38:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 01:38:45 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 01:39:03 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 01:39:03 GMT
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
	-	`sha256:8b66ced02a080459655fe9028bf92837cf230d038730ed43c848544aa262c9c3`  
		Last Modified: Wed, 19 Aug 2026 01:46:04 GMT  
		Size: 99.8 MB (99782858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd3cce22ebe1a9edba0ca0833f70d9babcae304bdd84ba73f82fd60e9d0692b`  
		Last Modified: Wed, 19 Aug 2026 01:45:48 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:c0ee2f3be34d0050bf4a763236b0aaa8ec38ab055e55947579907ea062d0ff87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10884457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbc44d638225ab287a1e6b140b56367d022627a4fdd114639db0082675763bcc`

```dockerfile
```

-	Layers:
	-	`sha256:36cbe58969fc22dcf7cb7585de85fa4222d7eddcf351b2d094378a1190109ae6`  
		Last Modified: Wed, 19 Aug 2026 01:45:51 GMT  
		Size: 10.9 MB (10855718 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08e38fe00ca0479bd9f699e1ee422193ecbc6c8e351f465b6db24286f00671d0`  
		Last Modified: Wed, 19 Aug 2026 01:45:48 GMT  
		Size: 28.7 KB (28739 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; s390x

```console
$ docker pull golang@sha256:91f37d12c4fd4392bd60878cbb13971f935a656edd0005119ccf90f8ca830d07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.9 MB (321914633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82f9ac2e8d8c17a8413a26fb17270736ef09c68e95ea1305a64495e2a813af0f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:08:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:03:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 19 Aug 2026 20:09:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 20:12:02 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 20:12:02 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 20:12:02 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 20:12:02 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 20:12:05 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 20:12:05 GMT
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
	-	`sha256:ea7b3f24db74c186f74ba279160a0183e0ee323a21c88f89d76e8d304d81247c`  
		Last Modified: Wed, 19 Aug 2026 20:12:52 GMT  
		Size: 76.1 MB (76132408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e711788918c346e1a3f433c8b9817ec45f0192b16aeb86ddced82c503184f525`  
		Last Modified: Wed, 19 Aug 2026 00:13:13 GMT  
		Size: 100.9 MB (100948068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd3ecd013e7e28acaad98d88deb8ab44a111fe1c59c2ccce1a587f15b42867c`  
		Last Modified: Wed, 19 Aug 2026 20:12:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:f65a4f12363df12da86ab6480879cf695126e27a0aaeae76ecefdeccdcac3e1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10625924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8480e311549cc529c6860eaa63d2eb851e782623d4260cc006f49ab9648b9b3`

```dockerfile
```

-	Layers:
	-	`sha256:6b8eea7cbd37c7db2573f8c3911b98faa8d361016c755894883cbf7eed9ae880`  
		Last Modified: Wed, 19 Aug 2026 20:12:51 GMT  
		Size: 10.6 MB (10597245 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d96cd2dcb6480366e67180211ffea73706e95df0b9f76ee7eb5a3e1b064d1ae5`  
		Last Modified: Wed, 19 Aug 2026 20:12:50 GMT  
		Size: 28.7 KB (28679 bytes)  
		MIME: application/vnd.in-toto+json
