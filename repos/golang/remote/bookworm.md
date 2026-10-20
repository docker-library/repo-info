## `golang:bookworm`

```console
$ docker pull golang@sha256:5c3e9b43cfd3bb95c7937462e29d87ada57b481a96fa23ad0eb61778d7a00110
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
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

### `golang:bookworm` - linux; amd64

```console
$ docker pull golang@sha256:cb6e0fba2bfecdf3cdfb1b94e1a27a6951b781e55396b0576e6131ac6726c59a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.9 MB (302888968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c42cef3757f6e85dbce22b3a0282848f9cffae750bf50f7a0ff58f0989d355d3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:41:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:34:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 02:42:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 02:42:28 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:42:28 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:42:28 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:42:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:42:28 GMT
COPY /target/ / # buildkit
# Tue, 20 Oct 2026 02:42:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 02:42:31 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4edf9c328e814bd91b20c8e2211065489ebf15a16c7663d68a880660dfc897d`  
		Last Modified: Tue, 06 Oct 2026 01:41:13 GMT  
		Size: 23.9 MB (23872252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c71fff0869aa9bd48cf80d66e30b83adc9a3fe5e77dd9aaf266282c6ec64ff`  
		Last Modified: Tue, 06 Oct 2026 02:34:58 GMT  
		Size: 66.7 MB (66718068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa45e3b1b86c0206d233caccfac20fec9a556a6d39753ce30c874228fff54fc8`  
		Last Modified: Tue, 20 Oct 2026 02:42:55 GMT  
		Size: 92.6 MB (92630074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e0bb27ae78502103ed383ed33346f88a83943fb7bd93977850d5890ee8fb3b`  
		Last Modified: Tue, 20 Oct 2026 02:42:46 GMT  
		Size: 71.2 MB (71150395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e719d00958068356eef129420b1f2925a02e18b285896ce9c565093b4632484`  
		Last Modified: Tue, 20 Oct 2026 02:42:53 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:aa36715fb3a650514751a6e437c207d2183c43e3259f8683864c47937dfa6484
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10529657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:985edaf7a196812451d4ee0881c6f0bccf7b82ae868c268b3020c01f698f4f07`

```dockerfile
```

-	Layers:
	-	`sha256:8a1aaf8def495d8d44edf3e912d9a67c4aa55ed8f1c99665579959f659453f7b`  
		Last Modified: Tue, 20 Oct 2026 02:42:53 GMT  
		Size: 10.5 MB (10502431 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d01051cc9058ea54ed6cff6e8e7e174b8ce2b7250026ed5050d651b04fe9ccfa`  
		Last Modified: Tue, 20 Oct 2026 02:42:53 GMT  
		Size: 27.2 KB (27226 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:2c25b6a96a49d92b79dc93183c4d90b8fb43bab4f74901140d49680fe9ac7a18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.9 MB (263896817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7832101e6fa6175616f0ff9105329218bf7c33601ed145719697bba7364c2a93`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:23:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:40:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 02:43:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 02:43:00 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:43:00 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:43:00 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:43:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:43:00 GMT
COPY /target/ / # buildkit
# Tue, 20 Oct 2026 02:43:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 02:43:02 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:54b36b054c7cd92d990fdbe776041bda41bca67549e7f2f5b71aa81632707ced`  
		Last Modified: Tue, 06 Oct 2026 00:13:12 GMT  
		Size: 44.2 MB (44213912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d6b6172c735529bdb9ddec421bbd50381be57cbdde9600e8834517a79e2dbd5`  
		Last Modified: Tue, 06 Oct 2026 02:24:08 GMT  
		Size: 21.8 MB (21774996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b768da400527c8a0e4827a2830eb7d6018a22af7b71ff5838ebe45eea9ecbd83`  
		Last Modified: Tue, 06 Oct 2026 03:40:51 GMT  
		Size: 61.8 MB (61771060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:656dc9e61948d1f17930d2cb22478e3f5fb1f18c0ca45b84e1a7d5ecc0d2f326`  
		Last Modified: Tue, 20 Oct 2026 02:43:27 GMT  
		Size: 66.5 MB (66480886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae9b35601617bc051bb43546b04b850ce4f1eac0f66a3a5d94eff209388a0b2`  
		Last Modified: Tue, 20 Oct 2026 02:43:07 GMT  
		Size: 69.7 MB (69655805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c4f9ef15e980c21ad1912f8d31e58f20771c4deeb7da4a156574073fd79c643`  
		Last Modified: Tue, 20 Oct 2026 02:43:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:c1e1d65049c14e748bf8485861b48abd4d38e6abfa24ea2e3a1135d252d7e315
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10336474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:187264a6694381cee8bb1e59825bb0f3a3ae7a75bd3be506aa1843604e02f8ad`

```dockerfile
```

-	Layers:
	-	`sha256:66a218e92446fdc4be57e95dd746e8a69f4342a823498b73a107422f3de97181`  
		Last Modified: Tue, 20 Oct 2026 02:43:25 GMT  
		Size: 10.3 MB (10309143 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abaf2c06fd48add0e482c9c39d182e33bdb9ccb7fe2ae32b02a0ace92a4d3cf3`  
		Last Modified: Tue, 20 Oct 2026 02:43:25 GMT  
		Size: 27.3 KB (27331 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:31212f22f04bae04ae6582fa66fd69da47322526fc71e650856238ae60280ad1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.0 MB (293033850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d13ece4b20eb6441e63d6ec7d470e4d468e38a666ab5f2b31f270eff424f904`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:44:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:25:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 02:42:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 02:42:28 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:42:28 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:42:28 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:42:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:42:28 GMT
COPY /target/ / # buildkit
# Tue, 20 Oct 2026 02:42:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 02:42:31 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc7363672c63abfefdedaf5e03be8e39cb662841d4f31237c4b7d7e3729f65c`  
		Last Modified: Tue, 06 Oct 2026 01:44:28 GMT  
		Size: 23.4 MB (23442412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99713dbe79ee22ead7509cd8c7c37d309206e5ddd834ba41611459b49e6ddc06`  
		Last Modified: Tue, 06 Oct 2026 02:25:53 GMT  
		Size: 66.8 MB (66769669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbec95bba1a2b66123f25ad4f256b185c3df1e82fdf12614c036472c552ecc30`  
		Last Modified: Tue, 20 Oct 2026 02:42:56 GMT  
		Size: 86.7 MB (86700325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e7dba5c30798b9d70d746d9fb1606b744e5c3baa8015b51dad60cea99c045b`  
		Last Modified: Tue, 20 Oct 2026 02:42:50 GMT  
		Size: 67.7 MB (67719732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e719d00958068356eef129420b1f2925a02e18b285896ce9c565093b4632484`  
		Last Modified: Tue, 20 Oct 2026 02:42:53 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:c1fd8575a9b21de8123cdcfe9b5034e3c2d3f2495486b974e31e496cf6dab28b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10557639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77fa44373e7d8b41f62e6025d787f4e9d0565b32cecedd37f93f098519ec5964`

```dockerfile
```

-	Layers:
	-	`sha256:30af9d3894a360fbf590737011417286fa82b5d3c3ba8b0ba3184db041c8c15f`  
		Last Modified: Tue, 20 Oct 2026 02:42:54 GMT  
		Size: 10.5 MB (10530279 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11b2f26fd485fc8734efe206cba0d3a972b17abd2de8865af1e8637b4f25121e`  
		Last Modified: Tue, 20 Oct 2026 02:42:53 GMT  
		Size: 27.4 KB (27360 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:bookworm` - linux; 386

```console
$ docker pull golang@sha256:ecfcbfb10c120e8d5cb82b84263214bff61cb350e122c6e55f1c9cbf339722fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.3 MB (302296575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7436b5de6400603d5c7d07963bfe5011acd3ba3508e68760ffd8852f59cea0f1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:45:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:32:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 02:42:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 02:42:31 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:42:31 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:42:31 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:42:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:42:31 GMT
COPY /target/ / # buildkit
# Tue, 20 Oct 2026 02:42:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 02:42:36 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:70e4ecc0352ac50b173cb5a25f4b7f4f26ea4742d8b6e94d48a7b74d771b75b1`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 49.5 MB (49505330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19ed8fc62fd627a37f6ed2ee27586e27cad83b5283812efa97b05e073356a198`  
		Last Modified: Tue, 06 Oct 2026 01:45:52 GMT  
		Size: 24.7 MB (24708328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:711f4e886b543dd0de1ec42d806d33e26264ccc6571085235d546d2e40a384e9`  
		Last Modified: Tue, 06 Oct 2026 02:32:29 GMT  
		Size: 68.7 MB (68690210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e269f58a0489cb827ce91516b9d076fab80761f77f55395fbd398afd67821924`  
		Last Modified: Tue, 20 Oct 2026 02:43:00 GMT  
		Size: 90.1 MB (90051681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:905ceead4e5e99c109d9a50239d7fdcd8575f6d62e0036142c62bc81584c8449`  
		Last Modified: Tue, 20 Oct 2026 02:42:52 GMT  
		Size: 69.3 MB (69340868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5298510c726019543c61cd8b67af8e743df338c90bb943644097406024573bc8`  
		Last Modified: Tue, 20 Oct 2026 02:42:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:4ef7b94b237aebf08c152955400915c3f690f97cf59839997bde81b4b986a42d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10509192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c3f67cbf48bf523731749555370b4540289037d2ab05cb98a1c0dcd145249d4`

```dockerfile
```

-	Layers:
	-	`sha256:41c83d70a89c4ea191ead148005056e26fd982478a0c8718df75cbea452ac2cd`  
		Last Modified: Tue, 20 Oct 2026 02:42:58 GMT  
		Size: 10.5 MB (10482002 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7dfb285754d5daedee724c4b35c5bf83640f408ba6e71bf5439e410717ff1cf6`  
		Last Modified: Tue, 20 Oct 2026 02:42:58 GMT  
		Size: 27.2 KB (27190 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:8831d152704408235cf374cf477f2a4c914929575300cbc4b0a759433c5eb499
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.3 MB (309278118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:506b357bd04b65a35164ca55dce639b780b957c94053874593b97b280841451d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 04:38:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 11:38:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 08 Oct 2026 17:10:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 02:41:36 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:41:36 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:41:36 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:41:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:41:36 GMT
COPY /target/ / # buildkit
# Tue, 20 Oct 2026 02:41:44 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 02:41:45 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dfced81c6d63d57c61f0cc455733d3e2c3415e1c19808bf1b361b6b77a0db73`  
		Last Modified: Tue, 06 Oct 2026 04:38:35 GMT  
		Size: 25.5 MB (25518268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c264e2b4d19ba4544ecce2e36be7fa5707180176288bd26f8665e49e08103512`  
		Last Modified: Tue, 06 Oct 2026 11:38:50 GMT  
		Size: 72.3 MB (72326849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d41e77c98051f59478b4a49ca0cf4e06c315a989a523c0a6cb8b7fb1d46d288`  
		Last Modified: Thu, 08 Oct 2026 17:12:10 GMT  
		Size: 90.6 MB (90577932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99280a61a753e565d841200e74a9ffba4717a286b10e4a5b0e0f4148164d619`  
		Last Modified: Tue, 20 Oct 2026 02:42:42 GMT  
		Size: 68.5 MB (68492171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5403e7d9966377657a1260567f7fe6da14d4b48ca29776ba6aead2cf294ffed`  
		Last Modified: Tue, 20 Oct 2026 02:42:39 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:c37fd1b7bb79b2349462cf49119720805828948618319cd4e78f3d4540b3be88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10502026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f35675a2d3952dc2dc0cf5fff693104954e154d427d2a27e4be40b2641bacad`

```dockerfile
```

-	Layers:
	-	`sha256:fddaff08220fc025bc8226e2b26a58b30ee3c60ace5d3af8c4e015eb42a3676b`  
		Last Modified: Tue, 20 Oct 2026 02:42:40 GMT  
		Size: 10.5 MB (10474926 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3db8efd480573c0b540fb4cbf950c589e72e893cdedea5c15d0f5a06052d2c5e`  
		Last Modified: Tue, 20 Oct 2026 02:42:39 GMT  
		Size: 27.1 KB (27100 bytes)  
		MIME: application/vnd.in-toto+json
