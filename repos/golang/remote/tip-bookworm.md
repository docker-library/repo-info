## `golang:tip-bookworm`

```console
$ docker pull golang@sha256:b05af048de19a0f721d7807341d2b9268fca30b38832d3df142d7489738f10b7
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
$ docker pull golang@sha256:28f9b90deeccc0e6145b7a6449779664a18328a7f37d34b551148e479dfdca76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.6 MB (290577154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1fa68ebfab1e7409b95c8c01617f66c41ba93dea9f020307c2c28e9516faf05`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:32:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:36:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 04:24:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 04:26:23 GMT
ENV GOTOOLCHAIN=local
# Tue, 25 Aug 2026 04:26:23 GMT
ENV GOPATH=/go
# Tue, 25 Aug 2026 04:26:23 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 04:26:23 GMT
COPY /target/ / # buildkit
# Tue, 25 Aug 2026 04:26:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 25 Aug 2026 04:26:26 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f34a2bdae3eadbac864ccf45cb15b796471ec889c8ee7890ef006e1d1d2844ea`  
		Last Modified: Mon, 24 Aug 2026 23:20:15 GMT  
		Size: 44.2 MB (44203124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddce92283d0a5e3f72b169dd7bcd4e4fc63e74707cbf8d82ce1b207f53fd7bfa`  
		Last Modified: Tue, 25 Aug 2026 01:32:47 GMT  
		Size: 22.0 MB (21961670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ca08be0fd7d081e4e78483a7fa3f9237219740d03869baa583db09e6007a80`  
		Last Modified: Tue, 25 Aug 2026 02:36:28 GMT  
		Size: 59.7 MB (59663002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3da9f604b2469642307e1b5703f8fc8a98921bad49ed3717d287cefbc75c21e`  
		Last Modified: Tue, 25 Aug 2026 04:26:51 GMT  
		Size: 66.4 MB (66410748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7255779f6f088311aa395ef24afc4b95b730438cebd6e48b859df371384a6824`  
		Last Modified: Mon, 24 Aug 2026 18:07:35 GMT  
		Size: 98.3 MB (98338452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c05a595468471595c87a6261641bbb6a2a9e767cb5cff91a23427a9b84d3e7`  
		Last Modified: Tue, 25 Aug 2026 04:26:49 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:5595b659f3be1e2cc6b07b0a796b5c827b95e9d2df5cfa75573b0548df8f2bc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10337254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78e4ffcc626417552b7b2d0359b00b485ba1ad0f720479108e30ebc278482ca9`

```dockerfile
```

-	Layers:
	-	`sha256:60a42b3a957bcec9961883af1468f513739fffacca76bb2500941c4694ebfddf`  
		Last Modified: Tue, 25 Aug 2026 04:26:50 GMT  
		Size: 10.3 MB (10309044 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:754008cb7ac59f3315e8d3874e553523eba711d5024a4248e393841b42e1cfe5`  
		Last Modified: Tue, 25 Aug 2026 04:26:49 GMT  
		Size: 28.2 KB (28210 bytes)  
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
$ docker pull golang@sha256:cde79e9b2fef102d6f221802be1de149685808ea861752a7ad3e1a460a47273c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.4 MB (337430242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ccfa18b858936dc273abfa15cb0878b6eb24cbefa8c5041d878df52c5fea82f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 03:35:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 09:47:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 12:43:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 24 Aug 2026 18:13:40 GMT
ENV GOTOOLCHAIN=local
# Mon, 24 Aug 2026 18:13:40 GMT
ENV GOPATH=/go
# Mon, 24 Aug 2026 18:13:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Aug 2026 18:13:40 GMT
COPY /target/ / # buildkit
# Tue, 25 Aug 2026 14:41:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 25 Aug 2026 14:41:22 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5cb8c52004f6a91d118309e28cbaf33c7aeec9fae708d5fcc09c38fffccf0d`  
		Last Modified: Tue, 25 Aug 2026 03:36:10 GMT  
		Size: 25.7 MB (25706335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d593bbbc0b5465b54adbcb93bc425eace3b89a83d8cc7b8dcd0b9d1ae61a51e7`  
		Last Modified: Tue, 25 Aug 2026 09:48:06 GMT  
		Size: 69.9 MB (69853402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8744ab97fde4f11936c1ec8fb885efa527e8e05428f2b78d93e25f1b3e55f776`  
		Last Modified: Tue, 25 Aug 2026 12:44:52 GMT  
		Size: 90.5 MB (90543252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfcb6e0defe743ac8a5d841ea2eadeae0745aa70db2dbb65ba20339689647f97`  
		Last Modified: Mon, 24 Aug 2026 18:14:47 GMT  
		Size: 99.0 MB (98985330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4db4d56cd42b546d2ffc158f3305ce8a7bbb4aa5713ec7469786fb1df257deb`  
		Last Modified: Tue, 25 Aug 2026 14:41:58 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:f25df9ae07377952ab2c27c82319da9c7bb2687bb4a9cc17ca3fe6079f169ca3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10502977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:507e574b879401b9628644a5772c1cc5a63761017fe515a9bfcd974a83ed1fe8`

```dockerfile
```

-	Layers:
	-	`sha256:e26c830a6f04abaee40e66b3ed1357b0eefaadb0b63af065a7f38c9cb6682a9e`  
		Last Modified: Tue, 25 Aug 2026 14:41:59 GMT  
		Size: 10.5 MB (10474833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c69a583c1d019a7d2f60764307e0e1487a254f03e3eed387c48cbe99fc52bec`  
		Last Modified: Tue, 25 Aug 2026 14:41:58 GMT  
		Size: 28.1 KB (28144 bytes)  
		MIME: application/vnd.in-toto+json
