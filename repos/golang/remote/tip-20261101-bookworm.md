## `golang:tip-20261101-bookworm`

```console
$ docker pull golang@sha256:89322a8b0ab8adc952ba3193a287bfc28d7f5a2c002db04cfe5a7ab409faba14
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `golang:tip-20261101-bookworm` - linux; amd64

```console
$ docker pull golang@sha256:0af54423b8acde1a9dc93c467ae786e32613cbb0b58730669de5d140ec2eab47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.9 MB (333850318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490d0e7b5b9a0dbf06b4de4310ea9ed9b737b32977899b5b46c5ba298183790e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:39:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:23:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:55:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:57:03 GMT
ENV GOTOOLCHAIN=local
# Tue, 03 Nov 2026 00:57:03 GMT
ENV GOPATH=/go
# Tue, 03 Nov 2026 00:57:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:57:03 GMT
COPY /target/ / # buildkit
# Tue, 03 Nov 2026 00:57:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 03 Nov 2026 00:57:06 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49dd0ae7831394e9635b737d684810716dadcb662b5b9b80eefd89cee1d65395`  
		Last Modified: Wed, 28 Oct 2026 01:39:43 GMT  
		Size: 23.9 MB (23873246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661ef7e1e7b1a9919ab256de1deb5be9107b28a15fea74b39921bec95b713038`  
		Last Modified: Wed, 28 Oct 2026 02:23:17 GMT  
		Size: 64.4 MB (64432590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feaa3b6c0200912e322248cdb69a389903284ddbc8b6c69b19106044913fead7`  
		Last Modified: Tue, 03 Nov 2026 00:57:32 GMT  
		Size: 92.6 MB (92630116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd35beab66f9320765c5f7a2a506372f5a6410782483671acaa1e1af5f461ae7`  
		Last Modified: Tue, 03 Nov 2026 00:57:17 GMT  
		Size: 104.4 MB (104389658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65e5b7e81bc0fc3a2932913fc449faa0dabaf1009e8596a753e01a9e6dbed815`  
		Last Modified: Tue, 03 Nov 2026 00:57:29 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261101-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:a130b9bc4119db99b753e7e348d303dc3058258c4920113b7d3084350d15b63b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10529121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e71ac824388e7198166c0a5a63d3271888a667134231e080482c55c7d6493fdc`

```dockerfile
```

-	Layers:
	-	`sha256:db15df22488540cdb7ac55a7f0ee088c5316050db61512b91d71fa99eeb915a9`  
		Last Modified: Tue, 03 Nov 2026 00:57:30 GMT  
		Size: 10.5 MB (10501019 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49e7d28a44af4028558920d705ab75cf9fb6f03e42ea1757bf58d41831048f22`  
		Last Modified: Tue, 03 Nov 2026 00:57:30 GMT  
		Size: 28.1 KB (28102 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261101-bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:86088e58383daaef1ed29b2e505b5dc4f2cf240f2c752e8048e195c583660ddb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.5 MB (292526466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cad4d1a6555cf5020ec588755cd47aaa63f2de7fce47a762dccfa72a356b7e00`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:21:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 03:47:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:56:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:57:34 GMT
ENV GOTOOLCHAIN=local
# Tue, 03 Nov 2026 00:57:34 GMT
ENV GOPATH=/go
# Tue, 03 Nov 2026 00:57:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:57:34 GMT
COPY /target/ / # buildkit
# Tue, 03 Nov 2026 00:57:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 03 Nov 2026 00:57:37 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:72f4613dafbee94a9d937a8241dd188c8143e980307c6c720b773c03ddcb2285`  
		Last Modified: Wed, 28 Oct 2026 00:10:32 GMT  
		Size: 44.2 MB (44221103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f86b36671358a47968a5c63e26422e3e04df59f037bf006fc094ca8b47a4857`  
		Last Modified: Wed, 28 Oct 2026 02:21:28 GMT  
		Size: 21.8 MB (21770330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cfbb29011d30458b56293a68613d94dc4b801df7c78c8b832f4d475cb486667`  
		Last Modified: Wed, 28 Oct 2026 03:47:25 GMT  
		Size: 59.7 MB (59697464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80a6e2925b7aee27962f2eb59999d018f35499bc863c1a5f5edba72a95260f5b`  
		Last Modified: Tue, 03 Nov 2026 00:58:02 GMT  
		Size: 66.5 MB (66481227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a99d7321bc2c634c84fcec56f141b2c3d8e988dc683cfc89c801cc80bc7a7da0`  
		Last Modified: Tue, 03 Nov 2026 00:57:43 GMT  
		Size: 100.4 MB (100356186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d553c366ee313f492e02cf577bbfbdde9670addbf4c5ad642ca620126e4f149`  
		Last Modified: Tue, 03 Nov 2026 00:58:01 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261101-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:a9e8a383d7be504286ebc2fba52616a085a3372b8a1de0540c639fb93ca2f3c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10335926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f188997e87671d4b3b12011f492f02e1b0ff66ffa584b6f3fde67f7dad987d7a`

```dockerfile
```

-	Layers:
	-	`sha256:4fd4ab262b3b2d4c35da847806bd667599e98d5001e0594ff63bb7c5f0ee8807`  
		Last Modified: Tue, 03 Nov 2026 00:58:01 GMT  
		Size: 10.3 MB (10307713 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b89013a11371b790735c5581b7f9258b21240990fe640dfa919f9004b267d4ef`  
		Last Modified: Tue, 03 Nov 2026 00:58:00 GMT  
		Size: 28.2 KB (28213 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261101-bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:647cb47e7f2e4d5b981df24ca7392f6ebb706ddabf184e41fa7c848bc95f20e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.9 MB (321944517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b881dbc59b158500c85ea914b799c73a294f5455a3a5c9ce2659bcbcfb6cfaa7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:43:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:34:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:55:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:57:02 GMT
ENV GOTOOLCHAIN=local
# Tue, 03 Nov 2026 00:57:02 GMT
ENV GOPATH=/go
# Tue, 03 Nov 2026 00:57:02 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:57:02 GMT
COPY /target/ / # buildkit
# Tue, 03 Nov 2026 00:57:05 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 03 Nov 2026 00:57:05 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a8782a51b4859547b9e75033fe9ea76035a0145a516f9599564fbb0a9b01212`  
		Last Modified: Wed, 28 Oct 2026 01:43:15 GMT  
		Size: 23.4 MB (23439758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d9f3d35258fc5018f37db87b726c6d8be6533cd7f9a10f219d805efa5969df3`  
		Last Modified: Wed, 28 Oct 2026 02:34:39 GMT  
		Size: 64.5 MB (64528622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c24234446ea5578eec97abd649c7a961f23ac4e627ca978dafb6fc86a694586`  
		Last Modified: Tue, 03 Nov 2026 00:57:31 GMT  
		Size: 86.7 MB (86700222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c02be16c5cc8cd90f80fa09f773930298fc4772e6eecff5f27de48d2f357cf4`  
		Last Modified: Tue, 03 Nov 2026 00:57:12 GMT  
		Size: 98.9 MB (98870589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65e5b7e81bc0fc3a2932913fc449faa0dabaf1009e8596a753e01a9e6dbed815`  
		Last Modified: Tue, 03 Nov 2026 00:57:29 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261101-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:abff660da21e2343f48b857b74f58901e4c02bcae56eb5fc12a2f7966713cbb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10557077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88b001a5937ed64bc19e7eb0e2836acc03af00274df8c0c2b7961e4f1aee36da`

```dockerfile
```

-	Layers:
	-	`sha256:caa6cdbf00ed8f2c2c61c3d1817674c7f95685677abf10ed584639033e313690`  
		Last Modified: Tue, 03 Nov 2026 00:57:30 GMT  
		Size: 10.5 MB (10528843 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fd2b35b43c3b173c43170bf7b832e1475aedad54cb3aacd0f8bc4f74da4e01b`  
		Last Modified: Tue, 03 Nov 2026 00:57:29 GMT  
		Size: 28.2 KB (28234 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261101-bookworm` - linux; 386

```console
$ docker pull golang@sha256:87b8c195b389d64e0479b84600d22e132e31fd7635660b4537f9a6f709243106
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.8 MB (332772371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33e9925f640d27ceec221a5c6731d12f9d42f314ad5a157e7230243784a0020a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:42:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:28:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:56:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:57:28 GMT
ENV GOTOOLCHAIN=local
# Tue, 03 Nov 2026 00:57:28 GMT
ENV GOPATH=/go
# Tue, 03 Nov 2026 00:57:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:57:28 GMT
COPY /target/ / # buildkit
# Tue, 03 Nov 2026 00:57:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 03 Nov 2026 00:57:31 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:7d013cfb99f9a659ec5a70c7dc91ff3a30fef8cec1975cdded7a6450f2dc79f0`  
		Last Modified: Wed, 28 Oct 2026 00:10:25 GMT  
		Size: 49.5 MB (49513537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c427ac0282c0d463802a24e053ae8fee85e1e035dd9990480227e0565ac7a8d`  
		Last Modified: Wed, 28 Oct 2026 01:42:52 GMT  
		Size: 24.7 MB (24703225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1774d898b2aada2b7099457b957d9c63dcf62f51c7916ce3034941142e49d2a3`  
		Last Modified: Wed, 28 Oct 2026 02:28:36 GMT  
		Size: 66.3 MB (66277930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad592cf70e5b1344e3375964e528867d7c3d55a7e923643ab98dcaf8f6c991e`  
		Last Modified: Tue, 03 Nov 2026 00:57:57 GMT  
		Size: 90.1 MB (90051583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd75b5188259c9b268ed753f81ba2e38b1d9d992be8e9e3b374fc45933b99770`  
		Last Modified: Tue, 03 Nov 2026 00:57:32 GMT  
		Size: 102.2 MB (102225938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8acc24b0566873590aa06a51848a820a9d32492f3e4c136f22dd4eaed0705997`  
		Last Modified: Tue, 03 Nov 2026 00:57:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261101-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:230bb23ed75405bfab6d33ec71713935e4663c8cd5e768e25a2af5c6f712b120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10508668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:779b37a2c29a010bc180794cf38f22cfb305da3184b3d764ede13b109c5b4277`

```dockerfile
```

-	Layers:
	-	`sha256:fe4be245f370bf5aed197518546b98c08e95d516971cb81f3698687491e066ba`  
		Last Modified: Tue, 03 Nov 2026 00:57:55 GMT  
		Size: 10.5 MB (10480599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a3b217f570a8f46bb7371db5b2dd8376fac3eddb3dd370d75e9453f8c2e69e6`  
		Last Modified: Tue, 03 Nov 2026 00:57:54 GMT  
		Size: 28.1 KB (28069 bytes)  
		MIME: application/vnd.in-toto+json
