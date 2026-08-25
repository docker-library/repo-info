## `golang:tip-bookworm`

```console
$ docker pull golang@sha256:36ace9c073cff7cb63e33efb2a9750f0ffad4b81d3ae83c49af1cb294e8c5820
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

### `golang:tip-bookworm` - linux; amd64

```console
$ docker pull golang@sha256:23393fd6ab6f791b1c491e50f2b9e5c2975957191901fb10e985ca772bf66ac8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.8 MB (331809616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd32d8e6a0e1a50ddc64d1f6f989a9e66fe3adc7a7fc24406376f7b36ae12e1b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:38:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:16:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:17:30 GMT
ENV GOTOOLCHAIN=local
# Tue, 25 Aug 2026 03:17:30 GMT
ENV GOPATH=/go
# Tue, 25 Aug 2026 03:17:30 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 03:17:30 GMT
COPY /target/ / # buildkit
# Tue, 25 Aug 2026 03:17:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 25 Aug 2026 03:17:33 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cab6ce149c24516f80b26a762b6b9aaebcaf4fbe51d4c6844af7d7dbc372f2d`  
		Last Modified: Tue, 25 Aug 2026 01:38:25 GMT  
		Size: 64.4 MB (64413065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:537a1a1bf3489014027fa5ebd32ce97eb3c68c4acd222008b8e597969fa2824b`  
		Last Modified: Tue, 25 Aug 2026 03:17:57 GMT  
		Size: 92.5 MB (92545159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1f5ec76dbd4d404cbaa638424fa28400fa9bc9e560cc28415edde34653affa8`  
		Last Modified: Mon, 24 Aug 2026 18:08:05 GMT  
		Size: 102.3 MB (102297625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20f20fb65f28c21817e2056e167f5f7b4ec5adf59762b59700f9b0eb18c1555f`  
		Last Modified: Tue, 25 Aug 2026 03:17:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:26d333722bbc7ae29c65492b9d58fae0c1a2663a0514a2c0b254f6a767474332
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10530450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ddf147cf6faf3ea6ffbcced071ae811050991eda6770a487c2ccd4d7ccd811b`

```dockerfile
```

-	Layers:
	-	`sha256:759a16c278569c7258352b7417c9880204aa372d66cfae73ab6fc8c0ed752116`  
		Last Modified: Tue, 25 Aug 2026 03:17:55 GMT  
		Size: 10.5 MB (10502348 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa4a6f50b5b7106522f95f50467b272a946348809cc4e7b37b286692fcf555cc`  
		Last Modified: Tue, 25 Aug 2026 03:17:55 GMT  
		Size: 28.1 KB (28102 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:74fc62b189f99e8a128d6cf5e252fa90d37c78f4f077980b81fa3e34527af77a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.6 MB (290564496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb9c03289d18c1359c52c7de497b552d2ce1dc39df4247cbe171c0e56a0714fc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:20:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:53:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 24 Aug 2026 18:05:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 24 Aug 2026 18:07:06 GMT
ENV GOTOOLCHAIN=local
# Mon, 24 Aug 2026 18:07:06 GMT
ENV GOPATH=/go
# Mon, 24 Aug 2026 18:07:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Aug 2026 18:07:06 GMT
COPY /target/ / # buildkit
# Mon, 24 Aug 2026 18:07:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 24 Aug 2026 18:07:09 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f3b34a29a0aa5af6a89a8656609312c9143362ac97ab4160c356553e27763d93`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 44.2 MB (44202872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f413ab31d7d1aa698770db491033136d52bb10d50fb70ca919bde399d2aed7d6`  
		Last Modified: Wed, 05 Aug 2026 01:20:09 GMT  
		Size: 21.9 MB (21949940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:417c1710fd8f34b875b5a02ec81646b473df0d6e420f71c9e6f065ab8e79ec66`  
		Last Modified: Wed, 05 Aug 2026 02:53:59 GMT  
		Size: 59.7 MB (59662276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d56633bc17a1e8e433d22374af7f39669e2af8b926bdba2d83ce6b2d05bcf172`  
		Last Modified: Mon, 24 Aug 2026 18:07:35 GMT  
		Size: 66.4 MB (66410798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7255779f6f088311aa395ef24afc4b95b730438cebd6e48b859df371384a6824`  
		Last Modified: Mon, 24 Aug 2026 18:07:35 GMT  
		Size: 98.3 MB (98338452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7bed5950a9de1ff769b3917806590c0effc6e507e7833aaaca6dca3e0ac4632`  
		Last Modified: Mon, 24 Aug 2026 18:07:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:3a4a729d49b2e00571d8160e484122f4962d67375a5f1eb5af1540aa24f89ab7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10332014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb8b902d485fa6956054091135e9ee65fda15c49f92bf8d28511506779940559`

```dockerfile
```

-	Layers:
	-	`sha256:655726010c29f73da48c4c77e9c9ad15f13007f057b8697ee43a625e3e510cfb`  
		Last Modified: Mon, 24 Aug 2026 18:07:33 GMT  
		Size: 10.3 MB (10303805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69683d2d8b302c7bc14e6b016598c21fbf21cc1bf8c39e9842951468d30b041d`  
		Last Modified: Mon, 24 Aug 2026 18:07:32 GMT  
		Size: 28.2 KB (28209 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:48dcd052aca892e7de9752711bd5d904f8ddcdb96698f7b5cdf523794e993e8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.9 MB (319935674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42293f3b832a0782a4f6c4bd8620b3f94d6d4e13551608d1a59270975d4ed601`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:17:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:18:23 GMT
ENV GOTOOLCHAIN=local
# Tue, 25 Aug 2026 03:18:23 GMT
ENV GOPATH=/go
# Tue, 25 Aug 2026 03:18:23 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 03:18:23 GMT
COPY /target/ / # buildkit
# Tue, 25 Aug 2026 03:18:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 25 Aug 2026 03:18:26 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fea2228218a869ae6619766dc4aae2d5e251700ebac01541d63cafea4bc7fc7`  
		Last Modified: Tue, 25 Aug 2026 00:52:53 GMT  
		Size: 23.6 MB (23628261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:742d423df6ec83a05afd11c678f055935985f615115c46681d670810438c3732`  
		Last Modified: Tue, 25 Aug 2026 01:43:21 GMT  
		Size: 64.5 MB (64500577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:561a2b786c31b04a65177e324c4229157a7831308bdda6acca1a2012ad9342b0`  
		Last Modified: Tue, 25 Aug 2026 03:18:51 GMT  
		Size: 86.6 MB (86627018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:686a1d3b809c5999b3dc7e69208936d8f8330b30050130d366bfa62a4bf5e61d`  
		Last Modified: Mon, 24 Aug 2026 18:07:41 GMT  
		Size: 96.8 MB (96796012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4b678fc87fe0c19ef9ea9510bca5889e7ddc279c27e6f16cc2aa7d231f6fece`  
		Last Modified: Tue, 25 Aug 2026 03:18:48 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:9fb98ef5acf36c778d9dc4d289b7fb104d88acf8cbb5aa3b3aa99f5a1e00b848
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10558406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e51c552b71be642e5675b7f4f5c63258aa46391622d44653c3da009155a8f03`

```dockerfile
```

-	Layers:
	-	`sha256:4fea5d0b61d1143c6c3e502e5857ed0929341b41cff2929d0f4a000f49a1585e`  
		Last Modified: Tue, 25 Aug 2026 03:18:49 GMT  
		Size: 10.5 MB (10530172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80d17fc8e48d5560b339f64f145688e87b9da1275f943eaa89ba5135725add6f`  
		Last Modified: Tue, 25 Aug 2026 03:18:48 GMT  
		Size: 28.2 KB (28234 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; 386

```console
$ docker pull golang@sha256:b77b4069440caa285aecdc4e66a991a5bf4be60a0e84146904899d73a098e52c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.0 MB (330982652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec09060acf1d63ba3b1266c6b27c93502f54b8e8c747027b3d3d6f1134dab256`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:50:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:41:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:14:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:16:05 GMT
ENV GOTOOLCHAIN=local
# Tue, 25 Aug 2026 03:16:05 GMT
ENV GOPATH=/go
# Tue, 25 Aug 2026 03:16:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 03:16:05 GMT
COPY /target/ / # buildkit
# Tue, 25 Aug 2026 03:16:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 25 Aug 2026 03:16:08 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:87896a92d6ed96e4c8127d574fb44191e126b11d1a05b77306bc1034c455ec5d`  
		Last Modified: Mon, 24 Aug 2026 23:20:08 GMT  
		Size: 49.5 MB (49485396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e667f089dfad67bed8f75b85559d08d30af99795a5da5d45e73bef386a85ea20`  
		Last Modified: Tue, 25 Aug 2026 00:50:36 GMT  
		Size: 24.9 MB (24890438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:900bdd75b1bff668db87c57193fc93484238fbbc250f83a36df417cadc73eb32`  
		Last Modified: Tue, 25 Aug 2026 01:42:05 GMT  
		Size: 66.3 MB (66252378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8246f5be5ee4289775488b71e1a3110e16e32482fc2f273272d267c15c2b29b5`  
		Last Modified: Tue, 25 Aug 2026 03:16:34 GMT  
		Size: 90.0 MB (89972070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86a8f36cf8449bb2cfbd44774de054c6e99e0a8aea8bf1245033545b0b380609`  
		Last Modified: Mon, 24 Aug 2026 18:07:27 GMT  
		Size: 100.4 MB (100382211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65de7d52c568d7cf80929278a10e32e499962c7e2a2cdc3fb17c8c6f88d576f4`  
		Last Modified: Tue, 25 Aug 2026 03:16:32 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:cb99bce87f092b1834cd4191d18c97279412f69b3e112a831837845e33a38089
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10509997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:062ca221c02642baae8b5a4f702873f93ddc758d260fc5e1d0f585e4bfa238d3`

```dockerfile
```

-	Layers:
	-	`sha256:195b6713ff32a519c9b17a392c616178529fd3c131149110f2627863185062b1`  
		Last Modified: Tue, 25 Aug 2026 03:16:32 GMT  
		Size: 10.5 MB (10481928 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0318f5448b735158cb5c820ce4dc534cdfc418450b7731504df2809bd152ef2`  
		Last Modified: Tue, 25 Aug 2026 03:16:32 GMT  
		Size: 28.1 KB (28069 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:c2c2352230a7ae02f708ce71c407e3d11f74d8d3c099125d829239e58006a54d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.4 MB (337408838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddefa1bae2cc81b4619f8264f42cc349e8b0df0f4d86910e1c546e4727d2fd16`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:57:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 05:23:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 18:31:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 24 Aug 2026 18:13:40 GMT
ENV GOTOOLCHAIN=local
# Mon, 24 Aug 2026 18:13:40 GMT
ENV GOPATH=/go
# Mon, 24 Aug 2026 18:13:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Aug 2026 18:13:40 GMT
COPY /target/ / # buildkit
# Mon, 24 Aug 2026 18:13:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 24 Aug 2026 18:13:46 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ec967797e5dd9489be310b03bea17111b4e6049dc869f8b0a3a81cc540a0e7b`  
		Last Modified: Wed, 05 Aug 2026 00:57:30 GMT  
		Size: 25.7 MB (25687275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bb1bed36611a08515b1a40e861280de5d11d18c2f44c9f9eafc31d2ced5dcc1`  
		Last Modified: Wed, 05 Aug 2026 05:24:07 GMT  
		Size: 69.9 MB (69851499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5cf9e08414083437a6d9312a72e2e0811581db4aa953baf2b05dca42a9410d8`  
		Last Modified: Wed, 19 Aug 2026 18:35:14 GMT  
		Size: 90.5 MB (90543099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfcb6e0defe743ac8a5d841ea2eadeae0745aa70db2dbb65ba20339689647f97`  
		Last Modified: Mon, 24 Aug 2026 18:14:47 GMT  
		Size: 99.0 MB (98985330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:297cd86baf27477aee07196d34e2c053f058575f9e12a0ef63d8e7f0fbdbe1db`  
		Last Modified: Mon, 24 Aug 2026 18:14:44 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:70ce82cde01641d30b12513c1c5f400551e604ed25cf3ceab7168d17b054f774
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10497565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8df91568bc3f01439ff174cf391ceb2708c72729bbf8aded4aac4c269fff3183`

```dockerfile
```

-	Layers:
	-	`sha256:86f3fcea58511e154262acc8000c6ebb64b5d865bf21c18c1dc55ebf67f98cfa`  
		Last Modified: Mon, 24 Aug 2026 18:14:45 GMT  
		Size: 10.5 MB (10469594 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20526d61716be6cfae598e7fdacf3bcc926f6f6f4064143d187224a3c708d807`  
		Last Modified: Mon, 24 Aug 2026 18:14:44 GMT  
		Size: 28.0 KB (27971 bytes)  
		MIME: application/vnd.in-toto+json
