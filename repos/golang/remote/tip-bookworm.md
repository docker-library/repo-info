## `golang:tip-bookworm`

```console
$ docker pull golang@sha256:d208c715a456a20fe1e4cdb4385a986e870dc97631c68740b3f56436aa92eb59
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
$ docker pull golang@sha256:18c395b2ca1485b95640b0888c3f15da890aeb49a36b1927db4478c500f744e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.3 MB (336345328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c90a81da6825064054929e5e1377dea9b2b09adfbf8e7b444ed845604f2201ef`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:38:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 21:49:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 21:51:06 GMT
ENV GOTOOLCHAIN=local
# Tue, 08 Sep 2026 21:51:06 GMT
ENV GOPATH=/go
# Tue, 08 Sep 2026 21:51:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Sep 2026 21:51:06 GMT
COPY /target/ / # buildkit
# Tue, 08 Sep 2026 21:51:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 08 Sep 2026 21:51:09 GMT
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
	-	`sha256:12818ea407bd32152b881b70b35b29bf0330b1d9b4a26810ad62871352d821ab`  
		Last Modified: Tue, 08 Sep 2026 21:51:34 GMT  
		Size: 92.6 MB (92575918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac17540f5cceac916e4539f8deaa7cbe1cd8da5e1f61a1a2b7c72ecdfa1de309`  
		Last Modified: Tue, 08 Sep 2026 21:51:23 GMT  
		Size: 106.8 MB (106802578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47312753de78e4deff32c064c8a12ea2e86927a034cc60f88d2345a4df924a3e`  
		Last Modified: Tue, 08 Sep 2026 21:51:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:9207db0609bf29fa8822b421b0ab3ec0db8945f48706e9ed3d6e4f7223ed0166
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10531931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d745a68d9260968ab912ecac72cdfbdfebe159098d5ef42c1addc8c35a71865`

```dockerfile
```

-	Layers:
	-	`sha256:23014c8191fca13094b9ec874533b1f62fb3d6c3e3c9abdbc646763c6aa2102f`  
		Last Modified: Tue, 08 Sep 2026 21:51:32 GMT  
		Size: 10.5 MB (10503829 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2173f438a0c43bb04e964d075bc3ef4f5682eced905873c0c81541597e381c0a`  
		Last Modified: Tue, 08 Sep 2026 21:51:32 GMT  
		Size: 28.1 KB (28102 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:0bd53c984f184527f6030719a4404fcb193667caec9e9bb40961ea4edd2985ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.8 MB (294779048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:690acc378d2cfd5df75fe9a36b648362ccba099d474770a2ade810e39ccfbb3e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:32:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:36:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 21:49:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 21:51:25 GMT
ENV GOTOOLCHAIN=local
# Tue, 08 Sep 2026 21:51:25 GMT
ENV GOPATH=/go
# Tue, 08 Sep 2026 21:51:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Sep 2026 21:51:25 GMT
COPY /target/ / # buildkit
# Tue, 08 Sep 2026 21:51:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 08 Sep 2026 21:51:28 GMT
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
	-	`sha256:7d2adefe3d2a71edc56d2f632b25f4dbfc3ab0785866fdb789da0c019ba5a04e`  
		Last Modified: Tue, 08 Sep 2026 21:51:54 GMT  
		Size: 66.4 MB (66426296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b736addc0c7bb190fb28c994eb775c4b9149f8b95ece971021c0922a87fddd90`  
		Last Modified: Tue, 08 Sep 2026 21:51:43 GMT  
		Size: 102.5 MB (102524798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:429712957fa19c56906d37d36948f8ef48a7b0863c00422197ac4aeacba749c4`  
		Last Modified: Tue, 08 Sep 2026 21:51:52 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:072af169d3265fd7cd886f4f852a68ce3196106f0b724b250496f197d79cd158
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10338737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b0758051cf2443c0dbcec3ee00d9f9213aa55d209771e34fda08afed9be2dcf`

```dockerfile
```

-	Layers:
	-	`sha256:7a48cd1bcab6fd7624ed30ce409f8fe75115afa8244626ac43ee793d42fabca4`  
		Last Modified: Tue, 08 Sep 2026 21:51:52 GMT  
		Size: 10.3 MB (10310523 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:668dc62351d8ff1acfa509a4598f02562462935d17fb487148dd4eebecf345d7`  
		Last Modified: Tue, 08 Sep 2026 21:51:52 GMT  
		Size: 28.2 KB (28214 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:78932778705ecee76854c23f3e5f82f7828c47733307540d229502414c85e175
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.1 MB (324067631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deabd443fdd0bcea3215f1a05da076b0eaecb6724e1789af7788199993b6ec46`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 21:51:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 21:52:45 GMT
ENV GOTOOLCHAIN=local
# Tue, 08 Sep 2026 21:52:45 GMT
ENV GOPATH=/go
# Tue, 08 Sep 2026 21:52:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Sep 2026 21:52:45 GMT
COPY /target/ / # buildkit
# Tue, 08 Sep 2026 21:52:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 08 Sep 2026 21:52:48 GMT
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
	-	`sha256:45520f7448c7ca73d3509a341e4e4f30853e6c04ef0f2ba0593838fce2621316`  
		Last Modified: Tue, 08 Sep 2026 21:53:14 GMT  
		Size: 86.6 MB (86641995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b9b7efd6afd01c2a4c783a8f61a196df40c8b99fcc4e927ebb9e0be51a36cb9`  
		Last Modified: Tue, 08 Sep 2026 21:53:15 GMT  
		Size: 100.9 MB (100912991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0df71888e8f6449b5ff53165dd07d693a46aaf54b53d10fba34306f71c8387f`  
		Last Modified: Tue, 08 Sep 2026 21:53:02 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:32d7d4c6358d95658898ecd7dfac31abc26dd6a757f9387408d029299ccc586e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10559891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4656e786e2db909c5c680e1403726c367bef17086ca0572a222fb8b4c5765055`

```dockerfile
```

-	Layers:
	-	`sha256:a40f60d1fe814af5817f433bee8c8adfb40a6e14fee1fdbee9d34ed1df6b1983`  
		Last Modified: Tue, 08 Sep 2026 21:53:12 GMT  
		Size: 10.5 MB (10531653 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0b9f92729ecb9985ebe092e9086450806f76e61d8d17d9e6999787f3c8c0958`  
		Last Modified: Tue, 08 Sep 2026 21:53:11 GMT  
		Size: 28.2 KB (28238 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; 386

```console
$ docker pull golang@sha256:831a983cebb99d46d6880548087df4739a8be4f637cb6d7766f43baef8ad16c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.4 MB (335379799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c04c68177c50d9df114358d2e85e1ab4b893b06b7b3f3b826ea4d8cfbe17cafa`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:50:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:41:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 21:50:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 21:52:10 GMT
ENV GOTOOLCHAIN=local
# Tue, 08 Sep 2026 21:52:10 GMT
ENV GOPATH=/go
# Tue, 08 Sep 2026 21:52:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Sep 2026 21:52:10 GMT
COPY /target/ / # buildkit
# Tue, 08 Sep 2026 21:52:13 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 08 Sep 2026 21:52:13 GMT
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
	-	`sha256:bfebac693b116a218416536c7b66fd42059edb979615ef66006985a771fc1699`  
		Last Modified: Tue, 08 Sep 2026 21:52:39 GMT  
		Size: 90.0 MB (89991430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0147ca65fb42a1c50d6e29537e267f9a761330f8e8325a648de2209a3b0fb512`  
		Last Modified: Tue, 08 Sep 2026 21:51:27 GMT  
		Size: 104.8 MB (104759999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b537e2255acb5979c79f8147252fe85cab663282850af1efac235b3c72d56028`  
		Last Modified: Tue, 08 Sep 2026 21:52:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:496e5cdfd5af752f63ca56dcf63601de718a82814cf71bd7b12235934e332611
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10511475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c30906f366572036f06b18f59f4c3cc62f934474429174535a032296f57aea8a`

```dockerfile
```

-	Layers:
	-	`sha256:5986f2dd03da0bd1a72710a03925e9aafdcf5da9879b9a9fb8e517ebe7a397d9`  
		Last Modified: Tue, 08 Sep 2026 21:52:38 GMT  
		Size: 10.5 MB (10483407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11127644168736f5b962bdab9f6d485f80bd41a0a2131125461b361e3df11023`  
		Last Modified: Tue, 08 Sep 2026 21:52:37 GMT  
		Size: 28.1 KB (28068 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:7dc99cb0add3c369686fb49f5b7a745716b7e663665e2c9ac43bfc790bf2516d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.7 MB (341698963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c8c475346a2e6bb32620fb5b5cf43d1361e19936317f20fad89697707e0591c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 03:35:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 09:47:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 20:05:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 21:54:10 GMT
ENV GOTOOLCHAIN=local
# Tue, 08 Sep 2026 21:54:10 GMT
ENV GOPATH=/go
# Tue, 08 Sep 2026 21:54:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Sep 2026 21:54:10 GMT
COPY /target/ / # buildkit
# Tue, 08 Sep 2026 21:54:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 08 Sep 2026 21:54:30 GMT
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
	-	`sha256:ab97d6c86c4c9d046b724863206ba218be9b417cddc31a614c2878f576cc609c`  
		Last Modified: Mon, 31 Aug 2026 20:08:50 GMT  
		Size: 90.5 MB (90543108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce9303b243b143ded787a4bc1455983d7a51b7b67d2848e6f305ffc6faeb6b60`  
		Last Modified: Tue, 08 Sep 2026 21:56:12 GMT  
		Size: 103.3 MB (103254196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7dec94f8186acfdd6c0cdef561b07d7be20eb86d774c663e5f0a8c47e67c646`  
		Last Modified: Tue, 08 Sep 2026 21:56:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:f37d2e5099ad54b2cc519da887337d9920b5d3d1d4d65b8aeadb145164b2fa59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10504290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fe3044cd8eed4b30b4448835d86466325d1cb560d6da14077442109258a9ac7`

```dockerfile
```

-	Layers:
	-	`sha256:f7331104beb8ae07dc7534b8d6c62fdac40d782cbf627e989dbfb34ceb5cd5b6`  
		Last Modified: Tue, 08 Sep 2026 21:56:10 GMT  
		Size: 10.5 MB (10476316 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f96df9ee7593749187fcecdf6b65ca7bb5c84385537ea9aea05e2264aed50e39`  
		Last Modified: Tue, 08 Sep 2026 21:56:09 GMT  
		Size: 28.0 KB (27974 bytes)  
		MIME: application/vnd.in-toto+json
