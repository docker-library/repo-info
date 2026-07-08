## `golang:1-bookworm`

```console
$ docker pull golang@sha256:fc4332778f8745404df530b4bdef3aed280b8c8da18847baffb4d4b9dd041046
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

### `golang:1-bookworm` - linux; amd64

```console
$ docker pull golang@sha256:5ab8e9af080c5f58dab00dd8055ea9309ec54c47722681b5ee8d0a3602f85316
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.8 MB (296751695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5200da7331d62040c243d788b99a30e296de48b9ddbe04af7dd1a8dd15a45d0c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:41:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:28:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 22:11:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 22:11:52 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 22:11:52 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 22:11:52 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 22:11:52 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 22:11:52 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 22:11:54 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 22:11:54 GMT
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
	-	`sha256:3dc46a619f72018e466dad8e5b208caf5b67ceba18f665848da52d63fb01bcf4`  
		Last Modified: Tue, 07 Jul 2026 22:12:18 GMT  
		Size: 92.5 MB (92512872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea3d467f844b8e6fffc2d7793807a1ec9e3a0582655418c1c17013372a3a910`  
		Last Modified: Tue, 07 Jul 2026 22:12:02 GMT  
		Size: 67.3 MB (67288392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8762a7ccadbe26c9bc347185819cb2ed1ec7b1535b7b38b021175758cf37e2a2`  
		Last Modified: Tue, 07 Jul 2026 22:12:16 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:9683d46673cda12f74f936efe22af827040511e375147f259fd66b7693d40dd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10525692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e90e134d81f6132d8aa7f5aadc9c056c9a199a4ba1c38584570d14efc3930db`

```dockerfile
```

-	Layers:
	-	`sha256:f87cd456d968a7630598f3ee43d83518baa67eb9ea32d213adc4afd195e01b36`  
		Last Modified: Tue, 07 Jul 2026 22:12:16 GMT  
		Size: 10.5 MB (10497895 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2df0b327d04650dc535f80eff989ed70f28394a1e56a2d98db91eeb08da003de`  
		Last Modified: Tue, 07 Jul 2026 22:12:16 GMT  
		Size: 27.8 KB (27797 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:f2719b67325e2308a56f1443756a9fbc61933cf5d44d05cb69f37053865e909d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.0 MB (258004368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a72b91655876dc8436ead780b95f32abad36b9fa115577fe928aef9beed1cb72`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 02:22:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 03:54:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 22:11:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 22:11:54 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 22:11:54 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 22:11:54 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 22:11:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 22:11:54 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 22:12:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 22:12:00 GMT
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
	-	`sha256:fa301ad7b0785f67897ddd64c686c1f12513c28edac44c95e6ff61014188430b`  
		Last Modified: Tue, 07 Jul 2026 22:12:24 GMT  
		Size: 66.4 MB (66372504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15d9454c8d863c76d3a284f97c400d521e643fafb60e60664dbeea8c2a1719dd`  
		Last Modified: Tue, 07 Jul 2026 22:12:00 GMT  
		Size: 65.8 MB (65811677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8b610de1d05b7d4391a592df2e757decb81c69b5faef373da23fea2caf8cfb6`  
		Last Modified: Tue, 07 Jul 2026 22:12:16 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:a87e5d6bab3107083ea36afea6fc3a87b037d617da59a64d8e215298819f145a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10332510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c65c89d326bbb4572043d4cdca39a97e32557944ad58aa36c12ed0ceae9dd32b`

```dockerfile
```

-	Layers:
	-	`sha256:dee6fc326f26a8ffb7124d55713e52d95e47e18472ebac9e1d3d8f7c747df465`  
		Last Modified: Tue, 07 Jul 2026 22:12:23 GMT  
		Size: 10.3 MB (10304607 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb9b9af0a2f7ea28cd7ef83a08176c6fb5ad912ea95a318b10aec1f4921c0feb`  
		Last Modified: Tue, 07 Jul 2026 22:12:22 GMT  
		Size: 27.9 KB (27903 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:d6ba18962125562d4697fff9fd983a32083cb9f8b65fd8784c849e340a8657fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.3 MB (287254580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c4380a14d2dec9bb62f9e26bf97e49577375be728a28fbf11932df1e2fff1d4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:44:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:35:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 22:11:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 22:11:55 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 22:11:55 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 22:11:55 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 22:11:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 22:11:55 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 22:11:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 22:11:59 GMT
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
	-	`sha256:7a9ce3bb8de00021b772f9df89bd509664b40d9c321aefd38daf7660b0f0ab5b`  
		Last Modified: Tue, 07 Jul 2026 22:12:24 GMT  
		Size: 86.6 MB (86586957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e4d5c89bdd324edeb5721c09064e2659473bba39ae9d84fae53c9cc0181cf15`  
		Last Modified: Tue, 07 Jul 2026 22:11:56 GMT  
		Size: 64.2 MB (64177241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd897731cffb5e0e0e2ecc46fd853eea5d29081273efc0451183456e3be0b540`  
		Last Modified: Tue, 07 Jul 2026 22:12:19 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:2e1502d32d04e847f57ef554012c9919deafc70413d33e20e7eeeeb9a16e0c45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10553674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c852d5991549213f8a533d5b88d5d46a1fe952ad0c29720605734e813ec8d06e`

```dockerfile
```

-	Layers:
	-	`sha256:40b9271af8bc07dfd69789f2765ad1915b65738cf21f04c3b2828ec5805b69e3`  
		Last Modified: Tue, 07 Jul 2026 22:12:22 GMT  
		Size: 10.5 MB (10525743 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72294dee66122e6551491bc59a68e44f6600fd8c2ce6a70af6f28b6b6241b629`  
		Last Modified: Tue, 07 Jul 2026 22:12:21 GMT  
		Size: 27.9 KB (27931 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-bookworm` - linux; 386

```console
$ docker pull golang@sha256:f3d7608685f5cc39b85e23f83a4c1599ab9bd5b0b3e307ad775e57b1019e9b01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.2 MB (296167150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:624ba0681e88eb91504fbe0d6d49eea22e44cc97220c3440bb0b1be2b7577d04`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:43:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:34:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 22:12:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 22:12:43 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 22:12:43 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 22:12:43 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 22:12:43 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 22:12:43 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 22:12:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 22:12:46 GMT
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
	-	`sha256:f26823685bae3180362f15a3589aca4a471abbb1710e1c23e997358e4f0d2fa8`  
		Last Modified: Tue, 07 Jul 2026 22:13:11 GMT  
		Size: 89.9 MB (89935913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ab86c6ec2b9315502727ac923e95a71d0712fb3db2ab9d73161056848e1e17`  
		Last Modified: Tue, 07 Jul 2026 22:12:36 GMT  
		Size: 65.6 MB (65615757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dd5ad86672e0dde564dc3f6c47e0e1dcbc2df6ce4102ef8ffcdccceca8b6fe0`  
		Last Modified: Tue, 07 Jul 2026 22:13:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:0801be52f7479ea773428a4bd41b08adc077a6f73705ae20f4b6f74626b3f55f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10505226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:180ee0394de4edcd33c397d7a7faf17d0262eb3486d8dc878c79647a3780d636`

```dockerfile
```

-	Layers:
	-	`sha256:ebefd47c92093efe4afd7eebd29db2352f1bf74384d9541d3dece2ecab65750a`  
		Last Modified: Tue, 07 Jul 2026 22:13:09 GMT  
		Size: 10.5 MB (10477465 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d523da6e4240cb0316f25e983c9189b4f56b589b19ba87045d15edfdb910417`  
		Last Modified: Tue, 07 Jul 2026 22:13:09 GMT  
		Size: 27.8 KB (27761 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-bookworm` - linux; mips64le

```console
$ docker pull golang@sha256:92b705857533e09a06d211272507b89bf9dbe60cebb20526896a16dc9128f1c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268729966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffe4e04c1dfba748319d8b0a78db69d356ebdab45d00c442509181cf1223999c`
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
# Wed, 24 Jun 2026 20:22:15 GMT
ENV GOLANG_VERSION=1.26.4
# Wed, 24 Jun 2026 20:22:15 GMT
ENV GOTOOLCHAIN=local
# Wed, 24 Jun 2026 20:22:15 GMT
ENV GOPATH=/go
# Wed, 24 Jun 2026 20:22:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jun 2026 20:22:15 GMT
COPY /target/ / # buildkit
# Wed, 24 Jun 2026 20:22:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 24 Jun 2026 20:22:32 GMT
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
	-	`sha256:ed9104a2325b60d3f4bd653c4320c061b91ab642faba0de1ac42da207ee36791`  
		Last Modified: Tue, 02 Jun 2026 21:45:23 GMT  
		Size: 62.9 MB (62912790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1afc796fedec846feee0c1cc041598374ca3f1481eb8354373e5856335fcbc67`  
		Last Modified: Wed, 24 Jun 2026 20:24:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:0f0194152ca5d25959f6011f114301dfcd510f0718b760d4f25c4a25622505d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 KB (27654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b611eab5549e87e7ab4a82b6ce582f775373be6248039431353b1470af12a12`

```dockerfile
```

-	Layers:
	-	`sha256:bca4e620e02d392ba79294f04e79c669184674e5084e7f6287d1b9a11b94f97c`  
		Last Modified: Wed, 24 Jun 2026 20:24:11 GMT  
		Size: 27.7 KB (27654 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:22ff58aa0c889fac3a9214390574153e2567624e6e2219ebb7302e4c8d9bb855
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.2 MB (303246398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:930d47b090bf80db67d85471140331c17e36ad9c859ecc9ab97af58a81993231`
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
# Tue, 07 Jul 2026 22:12:59 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 22:12:59 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 22:12:59 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 22:12:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 22:12:59 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 22:13:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 22:13:13 GMT
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
	-	`sha256:ef44659a171c971760f09e18e2fc71c988ee9946f68aac010d8a6276065cb298`  
		Last Modified: Tue, 07 Jul 2026 22:14:21 GMT  
		Size: 64.9 MB (64863129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e6a3cbe5103733995ce33f492bcf6430c8ba640bb77d51dd81b98f8ec121e62`  
		Last Modified: Tue, 07 Jul 2026 22:14:18 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:2bac12be46a5eab01401f3b00138ca2b740d30c30ea14a4d3400ac56d0b807ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10498236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeee590054066bd2a9d329a25844cdfe5d118fdd515ffd69beba4b94c0613691`

```dockerfile
```

-	Layers:
	-	`sha256:e819551b1c262634cf8c5ec9e35705f655c6d0084b866ddfe7c4d7838f8511b2`  
		Last Modified: Tue, 07 Jul 2026 22:14:19 GMT  
		Size: 10.5 MB (10470392 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9451e284b8ecd1fbbfd0e5dca23a75c506f55afcd4581b3418a8c7e5d306665`  
		Last Modified: Tue, 07 Jul 2026 22:14:18 GMT  
		Size: 27.8 KB (27844 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-bookworm` - linux; s390x

```console
$ docker pull golang@sha256:50d861a8588792bc498a42989848c000eba111f3e8220bd2981f0a146f137eee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270348105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b687ac8726db663566b29a574e690ff34a8752923ad178a97d2b7efcf4a690d1`
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
# Tue, 07 Jul 2026 22:11:24 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 22:11:24 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 22:11:24 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 22:11:24 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 22:11:24 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 22:11:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 22:11:26 GMT
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
	-	`sha256:f02a0b92c64bea7b8e82336e0a7f2afcc7dad25aedbcab036aeb985d0f3e2228`  
		Last Modified: Tue, 07 Jul 2026 22:11:51 GMT  
		Size: 66.5 MB (66528843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54d8bd4affd3edd2b3829cc4a29a59b792320442169c2dbfbe7e9f5816db84e8`  
		Last Modified: Tue, 07 Jul 2026 22:11:41 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:5d036480a44b99fdce76c890ccdad9bc13e43479993b45ee38e68e4b8fdf7021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 MB (10357277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2b1de68411562bb9c0496e5e6a1126f3e816ea4a4cf7cb4ff1c6e2fe01ed6d8`

```dockerfile
```

-	Layers:
	-	`sha256:1a7c3b0189b44c5b4c62924547b742ca330b0646976da89df4f7d1d7a17653fc`  
		Last Modified: Tue, 07 Jul 2026 22:11:59 GMT  
		Size: 10.3 MB (10329653 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20924a185d8e878f1a0f829563b257dbcc4435ef9fc18ec0e40590caced8367f`  
		Last Modified: Tue, 07 Jul 2026 22:11:59 GMT  
		Size: 27.6 KB (27624 bytes)  
		MIME: application/vnd.in-toto+json
