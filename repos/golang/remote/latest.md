## `golang:latest`

```console
$ docker pull golang@sha256:f20d83a83e18dbd2a4714b8ffd4b30b287b6243962dd75608e86abcc63ba4efc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
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
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `golang:latest` - linux; amd64

```console
$ docker pull golang@sha256:8aa2821993207ae840ce09e4223217efcd14e01f71525db734faf4232bd59999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.4 MB (316443642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f320504681311625326bbcea73247b25857f43e74098ddcb4a589192c024e5d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:46:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:27:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:16:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 02:16:46 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 02:16:46 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 02:16:46 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 02:16:46 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 02:16:46 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 02:16:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 02:16:48 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63040bd9752a74c5b1082903de92d441d30121f994018576b4a2f4cf8bb3bca4`  
		Last Modified: Wed, 21 Oct 2026 00:46:31 GMT  
		Size: 25.6 MB (25635564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7046f4e749f0e32d9fc67f654ad5e33cc555534f82a9971e45a00dbdb899e309`  
		Last Modified: Wed, 21 Oct 2026 01:28:14 GMT  
		Size: 67.8 MB (67818834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f218a6f1819c3da32b6186c7b269e01900311ded961ad0c3aeac465886ec2f2b`  
		Last Modified: Wed, 21 Oct 2026 02:17:15 GMT  
		Size: 102.4 MB (102445069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e0bb27ae78502103ed383ed33346f88a83943fb7bd93977850d5890ee8fb3b`  
		Last Modified: Tue, 20 Oct 2026 02:42:46 GMT  
		Size: 71.2 MB (71150395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e436409a7823d65d1789487c782441b0727711d5da06a4a0dd7ad682afcd468c`  
		Last Modified: Wed, 21 Oct 2026 02:17:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:latest` - unknown; unknown

```console
$ docker pull golang@sha256:0f4744d7be47686abafc1a444c070450da4c401902ac8fe5672187b20dfd4e8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10824526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:020f9ab02f2ef486155822af6ea93d51b64eaa49d3d40730a5f37899a1f331d0`

```dockerfile
```

-	Layers:
	-	`sha256:766753200901fbb8f2232a465af5fd65a0f4cbba6ce59259a5d2637b83458922`  
		Last Modified: Wed, 21 Oct 2026 02:17:12 GMT  
		Size: 10.8 MB (10796148 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7c629cf96faf81ab79e3e751877ca6aa7ae0a35a90182c33f1f59a6519c55d5`  
		Last Modified: Wed, 21 Oct 2026 02:17:11 GMT  
		Size: 28.4 KB (28378 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:latest` - linux; arm variant v7

```console
$ docker pull golang@sha256:d874a4b456af568e6859a3a4bc75d8dbe3b9946bcf21db00122e819d93a44428
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (274952057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a6843d447ff3facd3b75de89a0f327ca6d7ddc0da0fb81f9012d5e9d9f0b356`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:29:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:48:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 03:13:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 03:13:52 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 03:13:52 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 03:13:52 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 03:13:52 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 03:13:52 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 03:13:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 03:13:57 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1754e402841fcf147f7bb4372f827a1d5e90cc18bd4014a1d7bd715e8ece4ecc`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 45.8 MB (45813599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f16e2f397e50daf634a3bb1659923e40dd3e4076bc5fc9bd98990ae4a7e2671`  
		Last Modified: Wed, 21 Oct 2026 01:29:28 GMT  
		Size: 23.6 MB (23637827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a82e1136011681a455e5beb76c55bc9d39fc7a8874f4396f669db2d589d371f8`  
		Last Modified: Wed, 21 Oct 2026 02:48:48 GMT  
		Size: 62.8 MB (62761753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f23b7a8341a7e2be489ded03dd30824730d1adef9b1fe8904b89ee6a8f76d938`  
		Last Modified: Wed, 21 Oct 2026 03:14:22 GMT  
		Size: 73.1 MB (73082915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae9b35601617bc051bb43546b04b850ce4f1eac0f66a3a5d94eff209388a0b2`  
		Last Modified: Tue, 20 Oct 2026 02:43:07 GMT  
		Size: 69.7 MB (69655805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67dab7829531c72b480b1a9b7f30a6221a5a4a5ad34b96129c95978105686d4c`  
		Last Modified: Wed, 21 Oct 2026 03:14:20 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:latest` - unknown; unknown

```console
$ docker pull golang@sha256:a7d67a8a14ba6922e80e698dad69e8fec051fa5ad973b4f332124b694a8d3d6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10620581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2de2112a4b9f7458a7d4518593840adf010ff15879906ee2bbc8a25a40a96c87`

```dockerfile
```

-	Layers:
	-	`sha256:2e52af21947c798bac3c6596705609da8c49fb1de92bee91b58df3ba90529651`  
		Last Modified: Wed, 21 Oct 2026 03:14:20 GMT  
		Size: 10.6 MB (10592070 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57ef59265881bc57bb689be9aea84f91d297397e8fdd5fb598a65c09ebe65529`  
		Last Modified: Wed, 21 Oct 2026 03:14:20 GMT  
		Size: 28.5 KB (28511 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:latest` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:288557fbc328e4ef9a78bae2eb44f24447029ff08667be883d79eeaa9029cf0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.7 MB (308744582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aae5338477e3fceac8012980e0dff7562618cad4f12a3c469d42a2583b3a76d4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:49:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:34:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:16:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 02:16:27 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 02:16:27 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 02:16:27 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 02:16:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 02:16:27 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 02:16:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 02:16:35 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fb30108d3afde03433416a48caa9604703eb8530a12c943ec11a1e46a4d84a9`  
		Last Modified: Wed, 21 Oct 2026 00:50:04 GMT  
		Size: 25.0 MB (25036616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b7d3237c24572d428cffa50bed9ee6a1844db67c96c4f566bd3a67853d3c223`  
		Last Modified: Wed, 21 Oct 2026 01:34:22 GMT  
		Size: 67.6 MB (67634136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a808941d520b81507a6b623ecf0594c8b35f327c1c1378c722c237a28ceabce1`  
		Last Modified: Wed, 21 Oct 2026 02:17:02 GMT  
		Size: 98.6 MB (98592338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e7dba5c30798b9d70d746d9fb1606b744e5c3baa8015b51dad60cea99c045b`  
		Last Modified: Tue, 20 Oct 2026 02:42:50 GMT  
		Size: 67.7 MB (67719732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a8c2a12de32a3293c52cbb3d85baacf7578df3fcd4a8d53491747d6b782907`  
		Last Modified: Wed, 21 Oct 2026 02:17:00 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:latest` - unknown; unknown

```console
$ docker pull golang@sha256:2c4406104911f16a2bf16bf411c61a192870bdb073294abd6470214438d017eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10944571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e073519bd88d7b17f130bfc8acefd3db70a5c374854eb143572a85833e8ae3f`

```dockerfile
```

-	Layers:
	-	`sha256:837f1744259caebf8683fbea59dc2c79ea8c977b8d02331bd32698723dede257`  
		Last Modified: Wed, 21 Oct 2026 02:17:00 GMT  
		Size: 10.9 MB (10916015 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:834dd3627adcd0277f80f2f3b921b3684ebd8781de58ca1c454169279385d158`  
		Last Modified: Wed, 21 Oct 2026 02:17:00 GMT  
		Size: 28.6 KB (28556 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:latest` - linux; 386

```console
$ docker pull golang@sha256:884c8cb03cd31f61f4a0252d5e8bad2845f08b4dd74acaac1648b727db97c782
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.8 MB (317791198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faeaea8c9477195a24efca962da7d602397d9e10d47cbcbd61f9b5daba6a7745`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:48:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:24:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:16:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 02:16:42 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 02:16:42 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 02:16:42 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 02:16:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 02:16:42 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 02:16:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 02:16:50 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:32b56ddaffdf524e89e42fd33cbc0e53bfe71b517148f5e7cb00252a55c2fc0c`  
		Last Modified: Tue, 20 Oct 2026 23:30:52 GMT  
		Size: 50.9 MB (50906545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef26afe69679f8b13ee7b9263765e639dffada5bcafbad584be699579b53be36`  
		Last Modified: Wed, 21 Oct 2026 00:48:41 GMT  
		Size: 26.8 MB (26801719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a909f16c3ccf238c02074d6be87cb65bdd236ef35710db0691a4d49412dc9f8`  
		Last Modified: Wed, 21 Oct 2026 01:24:52 GMT  
		Size: 69.9 MB (69856853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dbb6cd997771f25381837b78e00ab75d1c9c7de8fe01be5025fd834e07e23c6`  
		Last Modified: Wed, 21 Oct 2026 02:17:18 GMT  
		Size: 100.9 MB (100885055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:905ceead4e5e99c109d9a50239d7fdcd8575f6d62e0036142c62bc81584c8449`  
		Last Modified: Tue, 20 Oct 2026 02:42:52 GMT  
		Size: 69.3 MB (69340868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:077025f4aa4d37617b8609ba730be5ccc52a990f1a4ae265563225470cb76e21`  
		Last Modified: Wed, 21 Oct 2026 02:17:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:latest` - unknown; unknown

```console
$ docker pull golang@sha256:c2ccd53c2e7f8cc6004288293e879f86213a20ad062df18ef8842604357e429b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10795713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b609d4312442c4bc2ac99e68806c0b60a3d49c2bd417437b2c03b83a1bca4470`

```dockerfile
```

-	Layers:
	-	`sha256:ea34d6dcd8fe26bcbc7ef7006a3359dea718bad4aa737dcdc02ab7f67dfacf3b`  
		Last Modified: Wed, 21 Oct 2026 02:17:15 GMT  
		Size: 10.8 MB (10767391 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8b0590c1a0eca6a124df3297d614538c28b8594f7a21c0eae05283d357c8286`  
		Last Modified: Wed, 21 Oct 2026 02:17:15 GMT  
		Size: 28.3 KB (28322 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:latest` - linux; ppc64le

```console
$ docker pull golang@sha256:c22982eca62bebfeae01dbeeaf67efb706887430ab754fb6a49bc6e49c31d047
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.0 MB (314970229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:222423ed8525bd71e5367a529fabeda773eda609ff50b87c7c841422877215b8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 04:22:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 12:05:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 15:36:29 GMT
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
# Wed, 21 Oct 2026 15:36:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 15:36:37 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:7e28d103a30c4298a73f4f08206c12912fd590fd7ccd17f15fb979ae48224ee4`  
		Last Modified: Tue, 20 Oct 2026 23:35:13 GMT  
		Size: 53.2 MB (53207578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba8de6f8901db850f86f9e68b13db2e5cfb33d704fa35193b08356b97ed1e8ec`  
		Last Modified: Wed, 21 Oct 2026 04:22:54 GMT  
		Size: 27.0 MB (27024125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7744e5d6fd3bfcd3262b3a9e3b2a27318e06fd070d6b1166cec1ffd0eb1390b`  
		Last Modified: Wed, 21 Oct 2026 12:06:36 GMT  
		Size: 73.1 MB (73097411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a73b899953497f894d2dea78ad5302f6f2c7f8df2c494fff2ecda04c3c7e944`  
		Last Modified: Wed, 21 Oct 2026 15:37:54 GMT  
		Size: 93.1 MB (93148786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99280a61a753e565d841200e74a9ffba4717a286b10e4a5b0e0f4148164d619`  
		Last Modified: Tue, 20 Oct 2026 02:42:42 GMT  
		Size: 68.5 MB (68492171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efa2be610e391d5a78cad5ee3567ae70df395162a3f01f5f79a395c9a0ce4a6c`  
		Last Modified: Wed, 21 Oct 2026 15:37:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:latest` - unknown; unknown

```console
$ docker pull golang@sha256:edfb5590112f87c16a872a581c57904a8d5dc78c5bbc99a05720f6cbef3e9638
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10820407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f3438c58ffe8997d8b354317692e7cca2527c287f296e581a94c1c6441dcd8a`

```dockerfile
```

-	Layers:
	-	`sha256:0f0fb5b5e3bece8147e68b216bedcd9ac3f3c7546dc5bda5a8d53fee206f9b0a`  
		Last Modified: Wed, 21 Oct 2026 15:37:51 GMT  
		Size: 10.8 MB (10791961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f37d9a1682c90e80ac8b2fbc98ff9a3c89d488ec7dea85b5ab2e744273bb1a5d`  
		Last Modified: Wed, 21 Oct 2026 15:37:51 GMT  
		Size: 28.4 KB (28446 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:latest` - linux; riscv64

```console
$ docker pull golang@sha256:8454b949685329149c221e35c35ae539b64cb6c70bb4e90a911dc640ac7eff9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.6 MB (340611293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d72db5bb52aa8afa563709c4a2a842976169b93a1a72987e33f37ee60daf722`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Wed, 07 Oct 2026 20:14:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 08 Oct 2026 13:45:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 10 Oct 2026 07:44:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 02:43:35 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:43:35 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:43:35 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:43:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:43:35 GMT
COPY /target/ / # buildkit
# Tue, 20 Oct 2026 02:43:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 02:43:53 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:45e9f88af4f41939baf397baad507403b0b2ad7362c860679e184bbd563c9aca`  
		Last Modified: Tue, 06 Oct 2026 00:30:31 GMT  
		Size: 47.9 MB (47876327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4e0101e88ea96d4f49e7fe9273c6eef716c54c0e06234a5a7880913f417bfc5`  
		Last Modified: Wed, 07 Oct 2026 20:16:35 GMT  
		Size: 25.0 MB (24972632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1122ad31d36d17ee6939e04e1683afb298fda9a5815f638ddd642254a8cd102f`  
		Last Modified: Thu, 08 Oct 2026 13:49:03 GMT  
		Size: 66.7 MB (66705470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4cd477161cdd2b30ec371c89dc566cb5623e15556c206ab4af7a6ab7a2f9b06`  
		Last Modified: Sat, 10 Oct 2026 08:07:54 GMT  
		Size: 131.9 MB (131885721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb54614ae9ed635bfb8e27e661f01b863c8fcc98d1049b51549da2b2bf52a7a4`  
		Last Modified: Tue, 20 Oct 2026 02:50:40 GMT  
		Size: 69.2 MB (69170985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec8a4434ed54914df9977d170a0a5455f5ffca7b87365afe38e61308305667e`  
		Last Modified: Tue, 20 Oct 2026 02:50:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:latest` - unknown; unknown

```console
$ docker pull golang@sha256:261326fa9923ae0cdb509dc518c5235b7cbbff64e8252dfd794ea1637061ff9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10895517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51bbf5379417e6f6f569497f400fc0273b6ba0d9362a45dc16afca2363e2175d`

```dockerfile
```

-	Layers:
	-	`sha256:abe22b8a91c2bee2cdbe35ccf7cc0037d01a29bb6fc8854cccd92b42bfe80a08`  
		Last Modified: Tue, 20 Oct 2026 02:50:31 GMT  
		Size: 10.9 MB (10867067 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:592ecd0905610541ad8163a321a360b9cf2ba0af6311dc06b0860ba939c83a02`  
		Last Modified: Tue, 20 Oct 2026 02:50:28 GMT  
		Size: 28.4 KB (28450 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:latest` - linux; s390x

```console
$ docker pull golang@sha256:12d78ed4798a0d911c5ce6064343376907138b21cba6f57053582e775fd29cda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.5 MB (291478950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d11d39bcc323b7e1adcbbac3825f95f2076bebcc73a161e37a2ff306a9b9f989`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:10:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:56:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:24:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 02:40:59 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:40:59 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:40:59 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:40:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:40:59 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 02:24:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 02:24:51 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:704f7e15662a961f845613a96026b2730c44eeb4278aaecb894b38a2faf73324`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 49.5 MB (49460141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd33cdea1fbdb4ffcd44fee7135b211b2c5a2a70ab9e516ec85432c1bc07fb61`  
		Last Modified: Wed, 21 Oct 2026 01:10:22 GMT  
		Size: 26.8 MB (26814219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f44aa5ddd4c553ac7c2cac8bb00eeba4af94a81fbefe6045c863220ef11212b`  
		Last Modified: Wed, 21 Oct 2026 01:56:41 GMT  
		Size: 68.7 MB (68663139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db4d0b72674326f73cd9ccd5727686a4585a0269996082d4d8ce86544d70eb5f`  
		Last Modified: Wed, 21 Oct 2026 02:25:26 GMT  
		Size: 76.3 MB (76259652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c0523718a973c87af9229ebd329dd6cf4e5d8ba37906c1e4c9083f5bb46d84`  
		Last Modified: Tue, 20 Oct 2026 02:41:29 GMT  
		Size: 70.3 MB (70281640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e176ba16a62809bceaffb30a2c361f3a9bfb2e4e19e02e3f8ffea8364fa85ce`  
		Last Modified: Wed, 21 Oct 2026 02:25:24 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:latest` - unknown; unknown

```console
$ docker pull golang@sha256:be50bb54d21f53f2f0217f2e7531a49992e3322d9615350559ca8b47e81ac5c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10635417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43390169a692da3d4a9e039c341bbb557a5900775c1d8cb1ae20d70e087b7e35`

```dockerfile
```

-	Layers:
	-	`sha256:0fe9393e0ff5dd7ea5b45a9f429040f830367f1610f0d4c1427df7ac9a649510`  
		Last Modified: Wed, 21 Oct 2026 02:25:25 GMT  
		Size: 10.6 MB (10607043 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20650dca1feaa467a5f481a87e185c56ba199926a0a9956d6f0d318c0930925a`  
		Last Modified: Wed, 21 Oct 2026 02:25:24 GMT  
		Size: 28.4 KB (28374 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:latest` - windows version 10.0.26100.33650; amd64

```console
$ docker pull golang@sha256:8b292aeb071fbb7576f953d5276553d5691c5b2f2ba48f878210e811931cf9b3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2517355019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55e5893af8620cc1f4e1036bec1b85c73368490bb339b7ab263dfe1e9de9b65d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 20 Oct 2026 02:45:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 20 Oct 2026 02:45:25 GMT
ENV GIT_VERSION=2.48.1
# Tue, 20 Oct 2026 02:45:27 GMT
ENV GIT_TAG=v2.48.1.windows.1
# Tue, 20 Oct 2026 02:45:28 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/MinGit-2.48.1-64-bit.zip
# Tue, 20 Oct 2026 02:45:29 GMT
ENV GIT_DOWNLOAD_SHA256=11e8f462726827acccc7ecdad541f2544cbe5506d70fef4fa1ffac7c16288709
# Tue, 20 Oct 2026 02:46:40 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Tue, 20 Oct 2026 02:46:40 GMT
ENV GOPATH=C:\go
# Tue, 20 Oct 2026 02:46:47 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 20 Oct 2026 02:46:48 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:48:32 GMT
RUN $url = 'https://dl.google.com/go/go1.27.3.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'f26081f438319757f8a1b46d7d0b2c5ec7583d4038e485e0aa725cfde7885fff'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Tue, 20 Oct 2026 02:48:34 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93f5b5fbf54a9a53db96fc574bf58ab76da0727b15b3a02df070f49bdaffe99`  
		Last Modified: Tue, 20 Oct 2026 02:48:53 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6819a74b31dc041e9d3439a787880be8b21c09e04776450796af3c0c78e113b`  
		Last Modified: Tue, 20 Oct 2026 02:48:53 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c10ff1326f5673b88e2eaf65b59bb2ed17d90546d955f80070e89644938ab7`  
		Last Modified: Tue, 20 Oct 2026 02:48:51 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d68f40ec1c6f663e3d44affbc3aa88f77c75add4ce8e74543106ae86f7d63f5`  
		Last Modified: Tue, 20 Oct 2026 02:48:51 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d922ed2d128a26b3d34863ebfc9391bda02f28e63da0ca98c548d578e3f754`  
		Last Modified: Tue, 20 Oct 2026 02:48:51 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb9b54d88a1e2f1754ffc9e0155394363409fe910f4b18e5d24571c4c83aba0`  
		Last Modified: Tue, 20 Oct 2026 02:48:56 GMT  
		Size: 51.2 MB (51246494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53870688e7d3e2d3ecb943c9e77c0bfd385df35f696a8d3e3b94411a27dd08e`  
		Last Modified: Tue, 20 Oct 2026 02:48:49 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e35b24b722e268923ddc98d2d50af67782a25dd4c5b6d2598c5180d0e1fb650`  
		Last Modified: Tue, 20 Oct 2026 02:48:49 GMT  
		Size: 327.5 KB (327518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4e0f6e1e0e0ed5b8e11d460a09232d7b2c11653af8f97b2159e974be0d4ee5`  
		Last Modified: Tue, 20 Oct 2026 02:48:49 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd53cb07926255a01abcf02981b6f1e5519b4000cc9d717b01c034a3fb935258`  
		Last Modified: Tue, 20 Oct 2026 02:48:59 GMT  
		Size: 73.8 MB (73776246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:debdac51b4fe4ab67e591451005e2808c7b2177297e2c76c2c2712c76abad463`  
		Last Modified: Tue, 20 Oct 2026 02:48:49 GMT  
		Size: 1.4 KB (1406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - windows version 10.0.20348.5761; amd64

```console
$ docker pull golang@sha256:7ef303374777013adb29d37959af7412e41440bfe196332ec784910ac436cf80
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2351521328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbccd14a31b8e939df77e3490e6ed11ff2bc924597bbf96bf4526b00b5204047`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 20 Oct 2026 02:45:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 20 Oct 2026 02:45:40 GMT
ENV GIT_VERSION=2.48.1
# Tue, 20 Oct 2026 02:45:41 GMT
ENV GIT_TAG=v2.48.1.windows.1
# Tue, 20 Oct 2026 02:45:42 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/MinGit-2.48.1-64-bit.zip
# Tue, 20 Oct 2026 02:45:44 GMT
ENV GIT_DOWNLOAD_SHA256=11e8f462726827acccc7ecdad541f2544cbe5506d70fef4fa1ffac7c16288709
# Tue, 20 Oct 2026 02:47:00 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Tue, 20 Oct 2026 02:47:01 GMT
ENV GOPATH=C:\go
# Tue, 20 Oct 2026 02:47:07 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 20 Oct 2026 02:47:08 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:49:29 GMT
RUN $url = 'https://dl.google.com/go/go1.27.3.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'f26081f438319757f8a1b46d7d0b2c5ec7583d4038e485e0aa725cfde7885fff'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Tue, 20 Oct 2026 02:49:30 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fee8f9bf7eeac3899ec23d9e3ef0bc6b5d154297da198b1beaa2018208dc7c`  
		Last Modified: Tue, 20 Oct 2026 02:49:46 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9602ff7c39399b30fd5b28051ca33d0c163d4f993f6896557546714bb960a86`  
		Last Modified: Tue, 20 Oct 2026 02:49:45 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c677f360ca0b505b7641190ea33ab118c2929f6972641f77b50e60524927383`  
		Last Modified: Tue, 20 Oct 2026 02:49:44 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7347e4ffd71c191a651ed89a7a560c9f3eced45cd19a787a2a40b9a81f8b5ac5`  
		Last Modified: Tue, 20 Oct 2026 02:49:44 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46dc9b647a97119cf4b32c70786d594c98c88d1e1e15bac994513dcd0c761491`  
		Last Modified: Tue, 20 Oct 2026 02:49:44 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69070e079c58b7bacf022ca9f26068f40fdaa388e3bead5b051bf6ff506cda27`  
		Last Modified: Tue, 20 Oct 2026 02:49:49 GMT  
		Size: 51.2 MB (51201255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88fb3df51795f4a9a3b5782d63d55ae6a35536a5091412cd959bf3aee9b58c0`  
		Last Modified: Tue, 20 Oct 2026 02:49:42 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0d07fb2fa3bfff3b494b155de75328a4df1f98a4b514165bd3bcbdf5dde02c`  
		Last Modified: Tue, 20 Oct 2026 02:49:42 GMT  
		Size: 294.0 KB (294048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea9f837be172635850655f9ca1491d23be5278566820e989f4b6229a88b7f578`  
		Last Modified: Tue, 20 Oct 2026 02:49:42 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f910a2542e15fcd1f5fb853b960e5fbe544a16232518652e2643f234603d5ed6`  
		Last Modified: Tue, 20 Oct 2026 02:49:52 GMT  
		Size: 73.7 MB (73729899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:406d0662e7d6bee7b0856664dad1d1a90c40c58a090e841d249fcae87bda35fd`  
		Last Modified: Tue, 20 Oct 2026 02:49:42 GMT  
		Size: 1.4 KB (1442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
