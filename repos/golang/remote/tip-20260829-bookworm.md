## `golang:tip-20260829-bookworm`

```console
$ docker pull golang@sha256:77986f62d00a305a5ff62250280a31c3fff6a0755373cdc1a210d684725bfa50
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

### `golang:tip-20260829-bookworm` - linux; amd64

```console
$ docker pull golang@sha256:1c763beaa9cca8d1ef10a63152329988b0b82746754a3acc2f99404f027b0042
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.2 MB (336158194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51b734ca86f2d42ef671b0784901e6023c8e0793a0e5a90e38b6a3a54905ee6f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:38:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 19:18:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 19:19:31 GMT
ENV GOTOOLCHAIN=local
# Mon, 31 Aug 2026 19:19:31 GMT
ENV GOPATH=/go
# Mon, 31 Aug 2026 19:19:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:19:31 GMT
COPY /target/ / # buildkit
# Mon, 31 Aug 2026 19:19:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 31 Aug 2026 19:19:33 GMT
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
	-	`sha256:03add69730a485eb9dc64824e932162c884325c49b73ba60a627072527b312fe`  
		Last Modified: Mon, 31 Aug 2026 19:19:58 GMT  
		Size: 92.5 MB (92545205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1749c03789d9e81dba707ab345cde7e034bc9e5638c82fdcb570d9644f19690d`  
		Last Modified: Mon, 31 Aug 2026 19:19:50 GMT  
		Size: 106.6 MB (106646158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94dc60c4f3f82083b1464858a6b87085143ba130bbc7f0a48c0f48e8b9e88555`  
		Last Modified: Mon, 31 Aug 2026 19:19:55 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260829-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:d9a5bcdf505e579a68e51b6d77ae7230692b2470ec227951c61b7439319d7421
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10531931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a7ca3f74c7d1ce62ec43c2ae0edbe57dff86f1b11d04bd0e211c6aebc5699a8`

```dockerfile
```

-	Layers:
	-	`sha256:5f13c0728382aef382fcb9688249d39f2a3044ad997402335f8a8d6db8210efa`  
		Last Modified: Mon, 31 Aug 2026 19:19:56 GMT  
		Size: 10.5 MB (10503829 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e8273e8b00206aa4bce87c748647c6ab58691f85e5f093ffcf3da768b3fb2b0`  
		Last Modified: Mon, 31 Aug 2026 19:19:55 GMT  
		Size: 28.1 KB (28102 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260829-bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:6fcebc58891ae9bde6d1e0df399cc015ade638dc07be5679a99712b433e300a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.6 MB (294618153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f72e73fd4c3e815723f6738f9da89779698c4ca3f86c7fe60ecf4c76d28500f7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:32:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:36:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 19:17:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 19:19:39 GMT
ENV GOTOOLCHAIN=local
# Mon, 31 Aug 2026 19:19:39 GMT
ENV GOPATH=/go
# Mon, 31 Aug 2026 19:19:39 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:19:39 GMT
COPY /target/ / # buildkit
# Mon, 31 Aug 2026 19:19:42 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 31 Aug 2026 19:19:42 GMT
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
	-	`sha256:10d26fdfbef0c6a7eddec01375aacf9d6199dab534bc2ddc106365cabc9e2208`  
		Last Modified: Mon, 31 Aug 2026 19:20:07 GMT  
		Size: 66.4 MB (66410773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b1ec9892daff3df8c8868fd667921d182ceb849f1e765c9d1e87e011cc3d4bf`  
		Last Modified: Mon, 31 Aug 2026 19:19:50 GMT  
		Size: 102.4 MB (102379426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5acda191db8ae1467cb6973ef8798e5eabdebe61020a9569ca31b2d4469e3761`  
		Last Modified: Mon, 31 Aug 2026 19:20:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260829-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:6f164548bb4bc6d25922fc179f0814b1329fa90a173719bc1c780de95fe2d08b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10338737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa4a3d4094d9c1064bb8461bde75910680770e28f73792cafef213c8bda0fd5f`

```dockerfile
```

-	Layers:
	-	`sha256:86f5100688fb9cfe84cc4e32ef527fedbe3d585128ed9a17ca34559204ac8037`  
		Last Modified: Mon, 31 Aug 2026 19:20:06 GMT  
		Size: 10.3 MB (10310523 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33197d14593f4560e0abfbb171d4fc1fa2c9ce90de9ddef74c728a753a336700`  
		Last Modified: Mon, 31 Aug 2026 19:20:05 GMT  
		Size: 28.2 KB (28214 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260829-bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:fe7e45b020aff38a0fb3a80438adebb44dabc8aeecf3c8b6abb6b08e316fb25e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.9 MB (323901675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e16f10e96f06f0ffb9f44992e27d11bc359de2cb6dcc8773151d7acd1acc3a2b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 19:35:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 19:36:45 GMT
ENV GOTOOLCHAIN=local
# Mon, 31 Aug 2026 19:36:45 GMT
ENV GOPATH=/go
# Mon, 31 Aug 2026 19:36:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:36:45 GMT
COPY /target/ / # buildkit
# Mon, 31 Aug 2026 19:36:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 31 Aug 2026 19:36:49 GMT
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
	-	`sha256:005ae10657183ccacff20cf014bc2b671c12c6fb5ed40c23b05e99c953ce84e5`  
		Last Modified: Mon, 31 Aug 2026 19:37:15 GMT  
		Size: 86.6 MB (86627016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5a76591736ba2ca2076090e2b5bb1ee1cb0453562e9eaef712f2aa29b3c161`  
		Last Modified: Mon, 31 Aug 2026 19:37:03 GMT  
		Size: 100.8 MB (100762014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3593354c6958f7f19e68ab636496572e2b772eb5d5baa9ab48968b87891c01c`  
		Last Modified: Mon, 31 Aug 2026 19:37:12 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260829-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:8839913468e6090aad15cf4753e579ccfad2f6980e433feb9cc2a7ba041d6429
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10559890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7951285f24f4e905f36e01d5d2f0885dc53b6711007322f51217dbea7fe6a58d`

```dockerfile
```

-	Layers:
	-	`sha256:17088b9bdc777c24f8abaa6332fbccdfc441983d93abfc7654b02ce2f16905e8`  
		Last Modified: Mon, 31 Aug 2026 19:37:13 GMT  
		Size: 10.5 MB (10531653 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b3585cadcdb1fa5daae6183f5f985a3ed184960901a9d2da836f196a2fb2ac3`  
		Last Modified: Mon, 31 Aug 2026 19:37:12 GMT  
		Size: 28.2 KB (28237 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260829-bookworm` - linux; 386

```console
$ docker pull golang@sha256:18fe924c7d5f2a494268ef38a193376eacc40ffa4f0e8c1986b3d1dfb83f75ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.2 MB (335212901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18341efd23e6bfbafba74078b71524abe1370ce449534a524b1b617108a5a253`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:50:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:41:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 18:50:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 18:51:58 GMT
ENV GOTOOLCHAIN=local
# Mon, 31 Aug 2026 18:51:58 GMT
ENV GOPATH=/go
# Mon, 31 Aug 2026 18:51:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 18:51:58 GMT
COPY /target/ / # buildkit
# Mon, 31 Aug 2026 18:52:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 31 Aug 2026 18:52:01 GMT
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
	-	`sha256:6fcf963472e6d44622ef2fb3af51c1647a2e504266a968fcff434e568a97d1a4`  
		Last Modified: Mon, 31 Aug 2026 18:52:28 GMT  
		Size: 90.0 MB (89972051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:566a64d88b0f9490dd6f4ee5fc00d3336481d6330a0401ccfec0d4720041096b`  
		Last Modified: Mon, 31 Aug 2026 18:51:23 GMT  
		Size: 104.6 MB (104612480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0890e2b12a76eb18413202ee28c2da84a0dfadcf5604756e95a2d78d5c9c8bc`  
		Last Modified: Mon, 31 Aug 2026 18:52:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260829-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:c44cad83a2ae21f724a832533c18e8d69da4c30aefe479bff42ea5adc39eab35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10511475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2aa28b5d199e8f00890e4d07256251c4d2473af4226b9ba296a46d31e1547ba`

```dockerfile
```

-	Layers:
	-	`sha256:e0b9cad0390611091b9d715e051204dfa818369f214705c66e1ccfc0cefe23b5`  
		Last Modified: Mon, 31 Aug 2026 18:52:26 GMT  
		Size: 10.5 MB (10483407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b239660ea4c471192386bbe69f8f0c87c7f59c04c0df08c5f1bea4dda1beddc`  
		Last Modified: Mon, 31 Aug 2026 18:52:25 GMT  
		Size: 28.1 KB (28068 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260829-bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:ee2bd3b8420f7b2ae63480521a87bf4a758e9d291a48b18e14ffe8f75288165c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.5 MB (341509038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97e326ae4b8591656843b3a6b60f97ec92db2e66520b6857d628e4b1eaf21a2e`
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
# Mon, 31 Aug 2026 20:07:50 GMT
ENV GOTOOLCHAIN=local
# Mon, 31 Aug 2026 20:07:50 GMT
ENV GOPATH=/go
# Mon, 31 Aug 2026 20:07:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 20:07:50 GMT
COPY /target/ / # buildkit
# Mon, 31 Aug 2026 20:07:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 31 Aug 2026 20:07:57 GMT
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
	-	`sha256:f641597d3f37f91732431e944316d54cb7c879b61c66d0ebd8dbca246b602bf4`  
		Last Modified: Mon, 31 Aug 2026 20:08:50 GMT  
		Size: 103.1 MB (103064271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2944f6d538601df13ba164142c5ba427343111509fa96850398bad8344a27690`  
		Last Modified: Mon, 31 Aug 2026 20:08:46 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260829-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:34a97b630082f5ac51206065ee33db63917f9c8f871944562a11fd7636dbf0bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10504290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55256d273f868d2c0bcc7e2e9b201c5718eb1c617802201d43cf51f2b613ad84`

```dockerfile
```

-	Layers:
	-	`sha256:23d25c703264cf1677ea557218f64e58e6fbf97c01e05e3e8020142bd1ac3de1`  
		Last Modified: Mon, 31 Aug 2026 20:08:47 GMT  
		Size: 10.5 MB (10476316 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f3c96eda43feb76bdaddb7b4c54eb3709b19243c2d71d8b44134256b575aa1c`  
		Last Modified: Mon, 31 Aug 2026 20:08:46 GMT  
		Size: 28.0 KB (27974 bytes)  
		MIME: application/vnd.in-toto+json
