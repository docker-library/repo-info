## `golang:tip-bookworm`

```console
$ docker pull golang@sha256:af0b46fc285779b00b6ee80d46b0d69a5c384eedb2f6920faaaf70752aebfc97
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

### `golang:tip-bookworm` - linux; amd64

```console
$ docker pull golang@sha256:e93bb8740f47defa44448ee1dda472864cb46e43de1c12c1ea75457859627763
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.1 MB (332072052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d2950b2e62e1236f3326bef0ac978f2d995434080858cfe6e8e6c21f38204e3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:41:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:28:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 20:07:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 20:09:08 GMT
ENV GOTOOLCHAIN=local
# Mon, 06 Jul 2026 20:09:08 GMT
ENV GOPATH=/go
# Mon, 06 Jul 2026 20:09:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 20:09:08 GMT
COPY /target/ / # buildkit
# Mon, 06 Jul 2026 20:09:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 06 Jul 2026 20:09:11 GMT
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
	-	`sha256:fc6a153ee7621f29fa6bb867dcacd52fad7b066dd0c55c9b42c2ba1cce6979a5`  
		Last Modified: Mon, 06 Jul 2026 20:09:37 GMT  
		Size: 92.5 MB (92513049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd1c92ad6988f1e4a91a34b372fd19ca387750289ceb135fe024003cff8c1d9`  
		Last Modified: Thu, 02 Jul 2026 20:04:48 GMT  
		Size: 102.6 MB (102608572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2425b1816d2956dc7c50a62583755ae3a472d4688b7aab639dbf3f6fe9e57afd`  
		Last Modified: Mon, 06 Jul 2026 20:09:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:37e0e4477bf376e5f2921cf8e47c8bb861bc842cf62aad6bc2123cefbebf9351
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10525463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60a5e7c7c545f52025971fdd6fb3b1414c76e7ad34da0cafd21d1762cdf88d74`

```dockerfile
```

-	Layers:
	-	`sha256:24f9f1b50e2d06e20572fcf17a62d5784a07d51e012fff623adbfe6ec1f3445b`  
		Last Modified: Mon, 06 Jul 2026 20:09:35 GMT  
		Size: 10.5 MB (10497073 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8011a53b551fb5713acec96ca5d59742d2da9b17357088f2b843fa02c6fe7cab`  
		Last Modified: Mon, 06 Jul 2026 20:09:35 GMT  
		Size: 28.4 KB (28390 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:20b0d2dfed24e11ed6e84aaf901bbeb84288bf67ddca870921e0c9a20cd1d744
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.5 MB (290501648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:652f49ba4b73b2c5ed9be563d282273f1c3b0903a1e7bd20410213027027b24a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 02:22:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 03:54:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 20:06:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 20:09:24 GMT
ENV GOTOOLCHAIN=local
# Mon, 06 Jul 2026 20:09:24 GMT
ENV GOPATH=/go
# Mon, 06 Jul 2026 20:09:24 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 20:09:24 GMT
COPY /target/ / # buildkit
# Mon, 06 Jul 2026 20:09:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 06 Jul 2026 20:09:27 GMT
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
	-	`sha256:b26119e1b53619e6ead648b3e489d1d2880504381e84e6ccb3511bc82a9f7cae`  
		Last Modified: Mon, 06 Jul 2026 20:09:53 GMT  
		Size: 66.4 MB (66372618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2521b5e84f3eb625b30d0a87085905f7848aba41e58efeac6475d5cc2efa328`  
		Last Modified: Thu, 02 Jul 2026 20:04:46 GMT  
		Size: 98.3 MB (98308843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf0d4517e1f8c2625331c214dd82f289064c21e71593cb70466a73b2e02baef`  
		Last Modified: Mon, 06 Jul 2026 20:09:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:f8d13254dcf30bfb4ab40d61a3bfd100cd9099d57f4a0a9419f37da6711f98f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10332267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1d356852a5835c91bdffba2e7150607a258934c86170305e8bbe41d1019ad00`

```dockerfile
```

-	Layers:
	-	`sha256:b2f247476ebe939f836d1e765b20abdd4a7c0667f35a6ee914d976acbc350736`  
		Last Modified: Mon, 06 Jul 2026 20:09:51 GMT  
		Size: 10.3 MB (10303769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cddcd812819f6a6888d72036cab293ec8eabf5d222317bb4103dbc313177ca8a`  
		Last Modified: Mon, 06 Jul 2026 20:09:50 GMT  
		Size: 28.5 KB (28498 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:452e4776ad16ec43d8417735278338bd0347e2d9582320c94f40e6b212fcf613
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.1 MB (320068771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:949fa4e2be543568e3e4b47d2d4a541a1c004ba93faaee15f254bfdb14dfd024`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:44:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:35:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 20:07:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 20:09:12 GMT
ENV GOTOOLCHAIN=local
# Mon, 06 Jul 2026 20:09:12 GMT
ENV GOPATH=/go
# Mon, 06 Jul 2026 20:09:12 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 20:09:12 GMT
COPY /target/ / # buildkit
# Mon, 06 Jul 2026 20:09:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 06 Jul 2026 20:09:15 GMT
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
	-	`sha256:f84c86794579f6191dcfe0aa1f978ef07fbdffb0507644b16a8d1d2dbcf559c3`  
		Last Modified: Mon, 06 Jul 2026 20:09:41 GMT  
		Size: 86.6 MB (86586763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:799855040db20c258a4625b397d8157c0e8c8f6fb4330c6dd9bf7584e6997533`  
		Last Modified: Thu, 02 Jul 2026 20:04:53 GMT  
		Size: 97.0 MB (96991627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d62770552fcbf7c04d19ad7181b40eb51765b2aa2e516b3f14032e5953d19407`  
		Last Modified: Mon, 06 Jul 2026 20:09:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:af067aaf1862a25f5d2a85bdf0b0234cc8dd17ea010cf443bf1de4a6880b91c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10553418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2f8db589a52c0f588e28b6acd4789e7056795f2c871b648c9d9306da6a4a3cd`

```dockerfile
```

-	Layers:
	-	`sha256:8c654cef5acdec2c16800978ac26bd474e81452baacec95f21a23d528978044c`  
		Last Modified: Mon, 06 Jul 2026 20:09:39 GMT  
		Size: 10.5 MB (10524897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45de681baa0c9cea4d9b9b4f20b0a784ccc1480f6843d075abf012fba719ad32`  
		Last Modified: Mon, 06 Jul 2026 20:09:38 GMT  
		Size: 28.5 KB (28521 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; 386

```console
$ docker pull golang@sha256:280bd3efe0d14d18057cecec6a3bb85cc7d771ab32c183f113e6a75a85eac094
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.9 MB (330930591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaf9acc01dfa21073e371512fd392e5923d0ea60b8f3881df07224c30fe0cf96`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:43:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:34:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 20:07:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 20:09:38 GMT
ENV GOTOOLCHAIN=local
# Mon, 06 Jul 2026 20:09:38 GMT
ENV GOPATH=/go
# Mon, 06 Jul 2026 20:09:38 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 20:09:38 GMT
COPY /target/ / # buildkit
# Mon, 06 Jul 2026 20:09:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 06 Jul 2026 20:09:40 GMT
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
	-	`sha256:b93398ed5c658f4ef5694134db40029019ad041393ba19e51a6a0f96d74ac722`  
		Last Modified: Mon, 06 Jul 2026 20:10:05 GMT  
		Size: 89.9 MB (89935930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09cbde1b461f8bce7bfc1cd1f21a1d7e86c0287b6db3fca745c83eb61347a6e8`  
		Last Modified: Thu, 02 Jul 2026 20:04:45 GMT  
		Size: 100.4 MB (100379181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fae925b0bab1263162f4ee84b43723e16151736e2657b7c11bc3a18bb06b5ac7`  
		Last Modified: Mon, 06 Jul 2026 20:10:02 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:d561a18a4a4d19a31bf4a379702ebadd2e2bd15019c0f41cc8a50ad0bf649e55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10505010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2798a17f4a5663c600e444bfa8e0c62e24c6da00fec1fac34c7b32839af7998b`

```dockerfile
```

-	Layers:
	-	`sha256:8361f00d89a0aadf41d4f7264cd1849de3634e9f1bf33dfb45728df38dae9574`  
		Last Modified: Mon, 06 Jul 2026 20:10:03 GMT  
		Size: 10.5 MB (10476653 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d56c90f56d36fc7285d045273319cf5023c26a8c71f12446803864487bf2668`  
		Last Modified: Mon, 06 Jul 2026 20:10:02 GMT  
		Size: 28.4 KB (28357 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; mips64le

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

### `golang:tip-bookworm` - unknown; unknown

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

### `golang:tip-bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:5f60b13b99c1f25eaafeb41676753d8023cbfdf3e8e5a32db7f2605088e0981f
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

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:d95895db7d515c217c01387864a9656d9c88d74bfa47addf5db9c1897d8f3a1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10497817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e22459fd0ab2a63fff0f5f50a81f52b0708de1e9aa5d544da931e07a9b490b4a`

```dockerfile
```

-	Layers:
	-	`sha256:d9229bb1f26ad6d463d9bfee9320b59e02b8ecd26e27dcb0acb0255dd7acbd44`  
		Last Modified: Mon, 06 Jul 2026 20:32:45 GMT  
		Size: 10.5 MB (10469558 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8325041eefee99a5d53ad54eca0e9cf0132d5b0d3c786655659e126b8424b9e6`  
		Last Modified: Mon, 06 Jul 2026 20:32:44 GMT  
		Size: 28.3 KB (28259 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; s390x

```console
$ docker pull golang@sha256:c403991e9c3cd262ae2d208117babd8c870420dabe57abd6622539032ea62876
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.9 MB (304866714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59780a6872491380a2eb706e5a17286937ef25fc374a3c46a6ace2fc6bda89e2`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 02:45:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 04:29:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 20:41:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 20:40:59 GMT
ENV GOTOOLCHAIN=local
# Mon, 06 Jul 2026 20:40:59 GMT
ENV GOPATH=/go
# Mon, 06 Jul 2026 20:40:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 20:40:59 GMT
COPY /target/ / # buildkit
# Mon, 06 Jul 2026 20:41:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 06 Jul 2026 20:41:43 GMT
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
	-	`sha256:7b4283f204f6628df7ef93b2b62912562b7a359f0997a131878f7f1ca95862be`  
		Last Modified: Mon, 06 Jul 2026 20:43:25 GMT  
		Size: 69.1 MB (69120165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30338cafbec1cacd6cfc0e40572821cab5c72836742d527d6275b5cd089d0b66`  
		Last Modified: Thu, 02 Jul 2026 20:04:49 GMT  
		Size: 101.0 MB (101047453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2bda8b1f9b822f2fb137eb4307133a76ace873493294660c1761eb2cbfb97b0`  
		Last Modified: Mon, 06 Jul 2026 20:43:23 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:4edb7d33914ecb4c987dbad4c308cfcd557a107cabc8c3004fd3b9a40d1c8e4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 MB (10357795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93d9c915c299ce3fb31b8fec06d932928a31e0fdebb06de3b98b53f6222f6214`

```dockerfile
```

-	Layers:
	-	`sha256:23c98d1f6299b6f6769dcc7ca2d179580f8c09f45c2bb570fa9d7a7b51b0c27a`  
		Last Modified: Mon, 06 Jul 2026 20:43:23 GMT  
		Size: 10.3 MB (10329579 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37118ec617b48c3db4bb8f40970cbea2d6fb935917c32a20f758828c33d9223f`  
		Last Modified: Mon, 06 Jul 2026 20:43:23 GMT  
		Size: 28.2 KB (28216 bytes)  
		MIME: application/vnd.in-toto+json
