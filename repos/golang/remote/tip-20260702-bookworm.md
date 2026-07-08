## `golang:tip-20260702-bookworm`

```console
$ docker pull golang@sha256:7c7443f59f8013b6120219f6c30a9e1d35c1c8cb0a1c56fd637388d53ef31ddd
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
	-	linux; mips64le
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `golang:tip-20260702-bookworm` - linux; amd64

```console
$ docker pull golang@sha256:d4e3784e4d6df1dbd5145082d84909e45e58c042209f94b1ebead36bd4dc8a83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.1 MB (332071965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:729cdf250984b1ac5acfac7950a85a723477b4f118399e3be1f2c990a5f3c47a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:41:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:28:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 23:11:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 23:13:21 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 23:13:21 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 23:13:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 23:13:21 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 23:13:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 23:13:23 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:425befdf76e52426879d2abe42093a00dca59a893e7b4fa2a7679b0180b71d4b`  
		Last Modified: Wed, 24 Jun 2026 00:27:40 GMT  
		Size: 48.5 MB (48502210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fd7bf6f6036613e20f62549df75ed694b99118002358bea5a81baf3929d1ff`  
		Last Modified: Wed, 24 Jun 2026 01:41:33 GMT  
		Size: 24.0 MB (24044046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:791c68bc2063683c3d15907b8ed1b777cf14ca153c6f8e5b12db0868dfa7e38a`  
		Last Modified: Wed, 24 Jun 2026 02:28:33 GMT  
		Size: 64.4 MB (64404017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:415350bf838bfe46e45fde7e8be4c92fa9c9fc9aec7dc45d45ffef5799121d2b`  
		Last Modified: Tue, 07 Jul 2026 23:13:50 GMT  
		Size: 92.5 MB (92512961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd1c92ad6988f1e4a91a34b372fd19ca387750289ceb135fe024003cff8c1d9`  
		Last Modified: Thu, 02 Jul 2026 20:04:48 GMT  
		Size: 102.6 MB (102608572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23ac89deba8e519fe415071f3311ecf44313ab331a293dc7284e0605217773ee`  
		Last Modified: Tue, 07 Jul 2026 23:13:48 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260702-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:fcaf27b025a471b8003e8921fbbf82f53a5e15f552a98ef53e9277a43812c116
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10525462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db86a6e4f0ccebd670326fb9113849c873e571b9043f54f47f8bdf46210c8bc5`

```dockerfile
```

-	Layers:
	-	`sha256:75c9e6eacdb3724c28336201b75d9e39a5c72379ba8cba1873e525250dde4cf9`  
		Last Modified: Tue, 07 Jul 2026 23:13:48 GMT  
		Size: 10.5 MB (10497073 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a35346e85fc23dc01fed05d626eb27e3129397319af5ee9079bc52f326006392`  
		Last Modified: Tue, 07 Jul 2026 23:13:48 GMT  
		Size: 28.4 KB (28389 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260702-bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:e236d3b5d520dba4681914026d38355d79f2b5263991741d5737eca3e9ead4f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.5 MB (290501659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44d9860e25f9229adb2b411fbd68f588797a099916d2ddbc11976203c3e61fed`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 02:22:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 03:54:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 23:12:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 23:15:53 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 23:15:53 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 23:15:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 23:15:53 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 23:15:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 23:15:56 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3622debffba3838b917703fb6dd9c161a4d93d9fd97c61d3e8400a2245f93c67`  
		Last Modified: Wed, 24 Jun 2026 00:27:30 GMT  
		Size: 44.2 MB (44208145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d0df8de55f365d832099cabf27409104999d59b26292d91202ca6e160c4b513`  
		Last Modified: Wed, 24 Jun 2026 02:22:52 GMT  
		Size: 21.9 MB (21949935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d16c85bf5ff1b42ae66f83fdb64a6cd05a854ea2289dfe1b0ae9e4ee6a806d0a`  
		Last Modified: Wed, 24 Jun 2026 03:54:41 GMT  
		Size: 59.7 MB (59661949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7778a80d11448c3f3f40284fbba925a62f50fd72996d2023987d8fb5a88b85`  
		Last Modified: Tue, 07 Jul 2026 23:16:21 GMT  
		Size: 66.4 MB (66372629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2521b5e84f3eb625b30d0a87085905f7848aba41e58efeac6475d5cc2efa328`  
		Last Modified: Thu, 02 Jul 2026 20:04:46 GMT  
		Size: 98.3 MB (98308843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cc593c09db1230c056f213410e9d20c6c4dd7f678b7fc48c55104fe3287b5bf`  
		Last Modified: Tue, 07 Jul 2026 23:16:19 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260702-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:4ff7a0684d4e4f89c2d7cadb9a516b102f8db0ebb690c7ad272473dc18364750
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10332267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1de5a756127f5a7373fade4e6559c0913e5bc9d9a828d82b725dcea57333e2f9`

```dockerfile
```

-	Layers:
	-	`sha256:547b1681d375fbbcc1f981a51781911e04708eff4e43b74a064759d1173a2eb8`  
		Last Modified: Tue, 07 Jul 2026 23:16:20 GMT  
		Size: 10.3 MB (10303769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dbbf52682642744363cf9a06106e54c7231c51982c519bfa61a63ad77b10965d`  
		Last Modified: Tue, 07 Jul 2026 23:16:19 GMT  
		Size: 28.5 KB (28498 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260702-bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:9ac6292949e4c5b91a36283ea608a91d3d4442bcaa2fae160f446b699d30faef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.1 MB (320069053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd89aedae42b8e2de67c125d1f727c687899af125d4e393b6664008cfac9227a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:44:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:35:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 23:11:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 23:13:10 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 23:13:10 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 23:13:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 23:13:10 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 23:13:13 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 23:13:13 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0fb1189398e2e4b474d43aac6502510d0da0318e70137a377c21087f198814db`  
		Last Modified: Wed, 24 Jun 2026 00:27:19 GMT  
		Size: 48.4 MB (48389201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ebca214f1a4b66acfdb0bd20aa3ee139d1747885ef4b0f3d07aa2a68459230`  
		Last Modified: Wed, 24 Jun 2026 01:44:48 GMT  
		Size: 23.6 MB (23613316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:533bb0e918720911be6cb7a1a5ba9ad0e1a308fcbf24961a23aba0cd220df6cf`  
		Last Modified: Wed, 24 Jun 2026 02:35:28 GMT  
		Size: 64.5 MB (64487706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26713b3623dbefd375cb982251710cd0215788970f4579ac53c25bf0fe300192`  
		Last Modified: Tue, 07 Jul 2026 23:13:39 GMT  
		Size: 86.6 MB (86587045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:799855040db20c258a4625b397d8157c0e8c8f6fb4330c6dd9bf7584e6997533`  
		Last Modified: Thu, 02 Jul 2026 20:04:53 GMT  
		Size: 97.0 MB (96991627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b2c0d8b5663ae87913d84edc34cd834efb7c6b865f23d32b6191598b9610e28`  
		Last Modified: Tue, 07 Jul 2026 23:13:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260702-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:0d0b58aeaf02452cc9e47c58b119c05af4d21c78ba17f9fc39fb2a31b74b9191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10553419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40a183bb02cc3cc3876d9bf95d3e9174f05544cb1cf2d9b1066617d056303480`

```dockerfile
```

-	Layers:
	-	`sha256:658a779df09ebca6b2663d230ceef7ac69468502bef7aa72cb3ea5c6daaf84cc`  
		Last Modified: Tue, 07 Jul 2026 23:13:37 GMT  
		Size: 10.5 MB (10524897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dbc47efbb0a911089c2bfd6bfd1563ba5eb93e6ffc68bfa3fe2ad05675c0efff`  
		Last Modified: Tue, 07 Jul 2026 23:13:37 GMT  
		Size: 28.5 KB (28522 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260702-bookworm` - linux; 386

```console
$ docker pull golang@sha256:83502d54141749fe95ab168e3d188d97e97c03c2a9de0f946e6d00f1b81f30d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.9 MB (330930575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9a7d008b621d9eb9c584c2a7a4594950932fc6936ea0fed515d101fcd13ca0a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:43:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:34:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 23:11:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 23:13:54 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 23:13:54 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 23:13:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 23:13:54 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 23:13:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 23:13:56 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:96cbacad9c1883b9ae87f68a0550ac0bd7e0b7ba2b15b142a793b89b5a5f36ad`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 49.5 MB (49491378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b45c9ce5ae5ea6ab37787312be8b0a9732642c1221f97d5689baacac874b4cd`  
		Last Modified: Wed, 24 Jun 2026 01:43:48 GMT  
		Size: 24.9 MB (24879740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6db0110899c29fd647e62f912bfb740fc8af5310cdc227454d8f086f16cba33e`  
		Last Modified: Wed, 24 Jun 2026 02:35:05 GMT  
		Size: 66.2 MB (66244204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7df680657925fcd636b72e0ec44ae768d40a2856d0479d19f07dbd2ff505b181`  
		Last Modified: Tue, 07 Jul 2026 23:14:23 GMT  
		Size: 89.9 MB (89935913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09cbde1b461f8bce7bfc1cd1f21a1d7e86c0287b6db3fca745c83eb61347a6e8`  
		Last Modified: Thu, 02 Jul 2026 20:04:45 GMT  
		Size: 100.4 MB (100379181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6c7342c892ce906367e75af6d9aac6adc7b64676b9d2916915ed94b9f62350f`  
		Last Modified: Tue, 07 Jul 2026 23:14:20 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260702-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:d86da636016dcd39b1151671cf8652f69eac166eb19d0b0334fd31489e80bab8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10505008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79c63f73508663176d078d8541cc2b2f0c3e9507f568bc3cbe4cafa57e7de8b9`

```dockerfile
```

-	Layers:
	-	`sha256:05f79de9a7dea1966c5eda4fd4f154283dba997f84864fc422243e2fc257f734`  
		Last Modified: Tue, 07 Jul 2026 23:14:21 GMT  
		Size: 10.5 MB (10476653 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e184b1fdf0f409731ccdef1a199a8abfbaf4f8a9aa417217de5359e8dd4e3164`  
		Last Modified: Tue, 07 Jul 2026 23:14:20 GMT  
		Size: 28.4 KB (28355 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260702-bookworm` - linux; mips64le

```console
$ docker pull golang@sha256:1e7a542e5006c1e6561a9cc8bdce2d4e4162c2b08cfa0233c928ee031a8e488c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.8 MB (301760025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef53c60797746dc9e6df4054dfd1763940cd5830eaa4f871bf82f3889a0337c1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'mips64el' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 14:04:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 19:26:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 20:18:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 20:30:41 GMT
ENV GOTOOLCHAIN=local
# Mon, 06 Jul 2026 20:30:41 GMT
ENV GOPATH=/go
# Mon, 06 Jul 2026 20:30:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 20:30:41 GMT
COPY /target/ / # buildkit
# Mon, 06 Jul 2026 20:30:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 06 Jul 2026 20:30:55 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d06e8744a62761c63cdcacfb2a61022e2f4c0aa854b6cede18fced28342dc1b2`  
		Last Modified: Wed, 24 Jun 2026 00:26:53 GMT  
		Size: 48.8 MB (48792819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a2f466b887b6a2a52424171128948207dccef13979fc60f50cb7beb67f123f`  
		Last Modified: Wed, 24 Jun 2026 14:05:16 GMT  
		Size: 23.6 MB (23623971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:911f76b03057793439aa57a4c1f92b3f5d8467508369f84d1b616a44d437f66f`  
		Last Modified: Wed, 24 Jun 2026 19:28:16 GMT  
		Size: 63.3 MB (63315803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:654b25dab3b07b2704810e9680f6eed67322c4a7200f8be9169d2bc4b30b592c`  
		Last Modified: Wed, 24 Jun 2026 20:21:00 GMT  
		Size: 70.1 MB (70084425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10bfdc853801e8e20c54fe47e3b2af97697979cb5c3846fecb0a513f2377eaaa`  
		Last Modified: Mon, 06 Jul 2026 20:32:54 GMT  
		Size: 95.9 MB (95942849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe8a28d2e0e524e88c215323f8d57909fd278f1680c41f8edf733432dd2e4fb`  
		Last Modified: Mon, 06 Jul 2026 20:32:44 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260702-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:0fa004170cc7c656d858487eebb388e5851b6a37654936d26f669dff93e14539
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 KB (28240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7817e78924bd4a2700d0b5220cc3fb881bd2f00a1a10c292be0b2d8108000bc1`

```dockerfile
```

-	Layers:
	-	`sha256:b9f2d5c7dcc74c9ce4e3ad403a43d13d76d1944596e2c332c6c2b6631982754b`  
		Last Modified: Mon, 06 Jul 2026 20:32:44 GMT  
		Size: 28.2 KB (28240 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260702-bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:33c7638d7a6dfb8bbefc427465ea6dfcb1917ba2381d0c6ba349fbf310b7aa11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.4 MB (337363225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2150ee1337b9581aec6675d5da4c49f420cc0a639a7bd7ff5cdaad9013f46dfd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 03:25:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 09:09:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 11:44:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 20:31:43 GMT
ENV GOTOOLCHAIN=local
# Mon, 06 Jul 2026 20:31:43 GMT
ENV GOPATH=/go
# Mon, 06 Jul 2026 20:31:43 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 20:31:43 GMT
COPY /target/ / # buildkit
# Mon, 06 Jul 2026 20:32:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 06 Jul 2026 20:32:02 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:55b0e891f4e8dc14bf4bc7e853254fcf1f3ba5a8e8e3c07c21e7dd5bd6d87882`  
		Last Modified: Wed, 24 Jun 2026 00:27:34 GMT  
		Size: 52.3 MB (52346847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a217268ac6656bd05839d5770fe7b3c0c976d29750b0c5635d099e473a789a10`  
		Last Modified: Wed, 24 Jun 2026 03:25:44 GMT  
		Size: 25.7 MB (25687048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6542f967f29885e49bf508e83dceee1eda4fdb044dcd68c1237588f15b795e2b`  
		Last Modified: Wed, 24 Jun 2026 09:10:08 GMT  
		Size: 69.9 MB (69853519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9034cb40d1ddee03957e235882d85c3935748284d5ce7d9e3b1fb946a360d593`  
		Last Modified: Wed, 24 Jun 2026 11:45:03 GMT  
		Size: 90.5 MB (90495696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca4ec4c4387f8f7f83dc176a500406f82c3fd2e6dd09f7893384d4f62afdf0cc`  
		Last Modified: Thu, 02 Jul 2026 20:04:51 GMT  
		Size: 99.0 MB (98979957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78ffd47ebae18c8a42c988b11a7cb7bff42ab59fc56e6124a2fa2372b0c5f888`  
		Last Modified: Mon, 06 Jul 2026 20:32:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260702-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:2f7969ec7d67301ce713dba63a7a1d266fa2d902331aa5ae4f37df6b003608a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10497990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3ee1a8652e4519183c5e5fd1637fc0071d8f20a2feb37bde39d93adcbbb04eb`

```dockerfile
```

-	Layers:
	-	`sha256:f48c78442b8480863d5d8972a609c5551453af940e0a54650d57a8f1b196a519`  
		Last Modified: Tue, 07 Jul 2026 23:14:40 GMT  
		Size: 10.5 MB (10469558 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44ed4e975deb8fb51828fcec4b5c5afeeefcf0eba4c04869af90b23c01fbbc90`  
		Last Modified: Tue, 07 Jul 2026 23:14:40 GMT  
		Size: 28.4 KB (28432 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260702-bookworm` - linux; s390x

```console
$ docker pull golang@sha256:780afce59ad36b921952e8d3f9d86ac4e210792fb272a0bc56b317341f04e7c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.8 MB (304834231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81e4541e8ec3dcffe4409dda085e291cb683371ee65aeae2bc5941dbae3fa1bc`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 02:45:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 04:29:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 30 Jun 2026 00:04:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 20:38:38 GMT
ENV GOTOOLCHAIN=local
# Mon, 06 Jul 2026 20:38:38 GMT
ENV GOPATH=/go
# Mon, 06 Jul 2026 20:38:38 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 20:38:38 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 23:13:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 23:13:50 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bdd2e9d83d68023204331dd445067114dbd3500d2d496368624fa7ef81743d4a`  
		Last Modified: Wed, 24 Jun 2026 00:27:09 GMT  
		Size: 47.2 MB (47161675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:075239c7f31ef6bc9923503289fbabd4a216a0cc1314ab546cdb22b3aa178273`  
		Last Modified: Wed, 24 Jun 2026 02:46:07 GMT  
		Size: 24.0 MB (24038997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d98bfd0e5e3c41d5610549c351f2a214a1057c70f21ae763c153398d8481275e`  
		Last Modified: Wed, 24 Jun 2026 04:29:51 GMT  
		Size: 63.5 MB (63498267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03f479bd9436c8612b91c321c7cd06b62747bf0557be0ef448a25fa40836c962`  
		Last Modified: Tue, 30 Jun 2026 00:05:27 GMT  
		Size: 69.1 MB (69087680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30338cafbec1cacd6cfc0e40572821cab5c72836742d527d6275b5cd089d0b66`  
		Last Modified: Thu, 02 Jul 2026 20:04:49 GMT  
		Size: 101.0 MB (101047453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:226deb98997ae50dda7e0597c25ed86d7dc29f0ee2206e8c747366af6ba4a4e8`  
		Last Modified: Tue, 07 Jul 2026 23:14:16 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260702-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:d9352a2e72ce8a96d5df4492c81dcdef27a95eb013ca5258a61ff81673a51e5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 MB (10357795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61325e1142f832cb70290b12f17c2141a61e24cf1e0c71f9262fa362f8da4fce`

```dockerfile
```

-	Layers:
	-	`sha256:6944b26fa592d8bb8b251644249182421819fe7a850c5dfa3c5fa3420485afa6`  
		Last Modified: Tue, 07 Jul 2026 23:14:16 GMT  
		Size: 10.3 MB (10329579 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2cf45430b5d759fdf297926ea73c6eb6b88c467cb1026a2f327f0fd1eb99ce98`  
		Last Modified: Tue, 07 Jul 2026 23:14:15 GMT  
		Size: 28.2 KB (28216 bytes)  
		MIME: application/vnd.in-toto+json
