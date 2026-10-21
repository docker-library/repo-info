## `golang:1-trixie`

```console
$ docker pull golang@sha256:290a54a1f70d617560f843301bcb32b339f1687e8e0bff49ebc043903aeb19d8
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
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `golang:1-trixie` - linux; amd64

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

### `golang:1-trixie` - unknown; unknown

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

### `golang:1-trixie` - linux; arm variant v7

```console
$ docker pull golang@sha256:feda9b4a34381d483c68dfd32c84e8e67d5efcece3bbbb44e0cdf226775d74be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (274954320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:755ca1e5da356deeb2e5a01f9085e07fceea939d7021a7bfbbd2744567e15a68`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:24:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:40:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 20 Oct 2026 02:43:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 02:42:58 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:42:58 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:42:58 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:42:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:42:58 GMT
COPY /target/ / # buildkit
# Tue, 20 Oct 2026 02:43:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 02:43:04 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b2e7b40559933644a31714a37346ff1796717d607ea763ad445b388befffd0bb`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 45.8 MB (45813264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a18046e6eeb6e12f2b634e0f7041e5c3fe7d2c4ac0f9b15f4eba7d3be40fb25`  
		Last Modified: Tue, 06 Oct 2026 02:25:06 GMT  
		Size: 23.6 MB (23642235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49da2bc1d40e0c89474b55c8511c5a9f0d1fca3b48964954bc979f105fab0963`  
		Last Modified: Tue, 06 Oct 2026 03:41:06 GMT  
		Size: 62.8 MB (62759938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6f4b41aebaf9acf1b5af55187cdef8679afb84bac5fa7b35381a5044d799b7f`  
		Last Modified: Tue, 20 Oct 2026 02:43:28 GMT  
		Size: 73.1 MB (73082921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae9b35601617bc051bb43546b04b850ce4f1eac0f66a3a5d94eff209388a0b2`  
		Last Modified: Tue, 20 Oct 2026 02:43:07 GMT  
		Size: 69.7 MB (69655805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55c769bb6e7dffcfb1819688c2dbb5d5afccf8b41d1efc71cc9dc08b26a22c43`  
		Last Modified: Tue, 20 Oct 2026 02:43:26 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:f2d60a64c4176790ad395fdcf6f8458aebb74812275e3bb708d5c3bf44873164
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10621859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:becfe3cdf148d2846043c8b68f71014a167e548f428d8ad9a85bd7710fd40f5f`

```dockerfile
```

-	Layers:
	-	`sha256:c26b1f62937ca43eb078a16e580f34bd39f3f40f315aaf25b97f57d427d096b0`  
		Last Modified: Tue, 20 Oct 2026 02:43:26 GMT  
		Size: 10.6 MB (10593347 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b19f04544ae0d6348302dbb26a7d691556ea28b35d75db81764eeb25bd568ae`  
		Last Modified: Tue, 20 Oct 2026 02:43:26 GMT  
		Size: 28.5 KB (28512 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-trixie` - linux; arm64 variant v8

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

### `golang:1-trixie` - unknown; unknown

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

### `golang:1-trixie` - linux; 386

```console
$ docker pull golang@sha256:5f3a9e745547f44da3aafbaf5a5208c3cdb4ed52c6e2c0c376ce7852c829cdc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.8 MB (317782720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0f26a47712797c6b47ea09d4d1399d27a6b71bf56652e69d237c82565759817`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:46:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:32:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 20 Oct 2026 02:42:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 02:42:17 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:42:17 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:42:17 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:42:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:42:17 GMT
COPY /target/ / # buildkit
# Tue, 20 Oct 2026 02:42:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 02:42:24 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ace453750484672581012d135658fd142a37f3cc1464965baca36cee819b3d13`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 50.9 MB (50906096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e890ebc79ce3bfd401a922c9c49295c408b186867c30528006e35a6e0353fb31`  
		Last Modified: Tue, 06 Oct 2026 01:46:17 GMT  
		Size: 26.8 MB (26803382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6cbfaeb235ad0daa03294a921e8d9fb916fac246df65aa13cbf5696fdb61f8a`  
		Last Modified: Tue, 06 Oct 2026 02:33:15 GMT  
		Size: 69.8 MB (69846987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32ab329ec230ab8b33530adc57a25056a02db91957f5093a0135893b39bdaebb`  
		Last Modified: Tue, 20 Oct 2026 02:42:52 GMT  
		Size: 100.9 MB (100885229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:905ceead4e5e99c109d9a50239d7fdcd8575f6d62e0036142c62bc81584c8449`  
		Last Modified: Tue, 20 Oct 2026 02:42:52 GMT  
		Size: 69.3 MB (69340868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a95dc053565e58c634aea02b4a9789ffef6b91566ff813fd575ee07fed19dc1`  
		Last Modified: Tue, 20 Oct 2026 02:42:49 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:8e373be4919591b49a0d15322e9dcf9e412044e516a2dec06c9dcc93286e0927
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10796990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f866a17f351fff198e439600ab34d76d353c1efffa5d9043244e43c5fc619c4b`

```dockerfile
```

-	Layers:
	-	`sha256:0b1edaffac922d4d6c56f1c694628bd8c2ec287e2e907fce3081ef9fff9249ce`  
		Last Modified: Tue, 20 Oct 2026 02:42:49 GMT  
		Size: 10.8 MB (10768668 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e22ca34ee89d37b2ceb5b780870aadb9d71504bd94945556acb436d28af0528f`  
		Last Modified: Tue, 20 Oct 2026 02:42:48 GMT  
		Size: 28.3 KB (28322 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-trixie` - linux; ppc64le

```console
$ docker pull golang@sha256:adf79312d6965fab66af9b0344acd1e724bc447bce4717bb2446403bb6fc3200
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.9 MB (314927412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1241bb5287c42844508bdfef03037795c90f9a8c34eb8a4f280a7c40ee6dc9e7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 04:41:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 11:40:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 08 Oct 2026 17:10:50 GMT
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
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cee8c75408fb545ab55e5cbdf6e0c4e4b171baf24f9b88c760adbc0ef14b65b4`  
		Last Modified: Tue, 06 Oct 2026 04:41:57 GMT  
		Size: 27.0 MB (27023111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12fd755399b9c7323fd96b40a78a5e5e123878fa481c517d7cb1672f297a2b8b`  
		Last Modified: Tue, 06 Oct 2026 11:41:10 GMT  
		Size: 73.1 MB (73088931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70dc472977c636274c1b1d32bf5023796c007057041972564e07292bb2035f7c`  
		Last Modified: Thu, 08 Oct 2026 17:12:09 GMT  
		Size: 93.1 MB (93115916 bytes)  
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

### `golang:1-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:8fd43ed92782cfd15d4ae0ae476e146a8d3e18c8c4c6173d461d4dd5425fe640
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10821684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff147c9d30251e93f12f7473c78025a0466bad29ccc6013c52dce4d4b86c13bc`

```dockerfile
```

-	Layers:
	-	`sha256:cbe3cc4704136b6466cc8b795bfaeaf18030fb58f108c94cedf887277c79d81c`  
		Last Modified: Tue, 20 Oct 2026 02:42:40 GMT  
		Size: 10.8 MB (10793238 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cec168aa4ef0e8609682f85a6a3898e9d4daeb73ee0207cc46d38932efec1ad6`  
		Last Modified: Tue, 20 Oct 2026 02:42:39 GMT  
		Size: 28.4 KB (28446 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-trixie` - linux; riscv64

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

### `golang:1-trixie` - unknown; unknown

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

### `golang:1-trixie` - linux; s390x

```console
$ docker pull golang@sha256:af65164a427a2a059d4bbb3dfbae02fc290fa49ca36995ff0c81a0e3b24e5416
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.4 MB (291440109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:018a7c35e3a55b0cb64618d53c16e9c4d96d3a5e4add28274c7c00857de67b32`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:58:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:38:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 08 Oct 2026 17:13:22 GMT
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
# Tue, 20 Oct 2026 02:41:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 02:41:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e171de089919cf9725221bfd863a1283919b0c9a94568de0bbce5db73d2ddff0`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 49.5 MB (49457000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:606d7b170e34e7dca9460179c992b6eda381e85641ec044682549ce9ced27e23`  
		Last Modified: Tue, 06 Oct 2026 01:58:17 GMT  
		Size: 26.8 MB (26817179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf1b78aae7260f76f502ab7b85bc020f8bd10bf4a2140f84573948d91aba0b30`  
		Last Modified: Tue, 06 Oct 2026 02:38:36 GMT  
		Size: 68.7 MB (68656790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:387a29ae14c98774937784799a3115d81d0ecc1b9863949073bdeb9304791146`  
		Last Modified: Thu, 08 Oct 2026 17:19:16 GMT  
		Size: 76.2 MB (76227342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c0523718a973c87af9229ebd329dd6cf4e5d8ba37906c1e4c9083f5bb46d84`  
		Last Modified: Tue, 20 Oct 2026 02:41:29 GMT  
		Size: 70.3 MB (70281640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dac87c065ee1eb089195ae77f4f2dc5ac7ff407fda73ece47de2f418d621268`  
		Last Modified: Tue, 20 Oct 2026 02:41:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:cc53adad95e8e00856e1e957c13a0e3dd1b78c99722d09048559c66e27495315
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10636694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8015f3e711849bf58a61ba36d974302754d7b0a0e272d723ab43c4f486de00d`

```dockerfile
```

-	Layers:
	-	`sha256:71a82c0cfe9af047565431d5d9d33561ac767aa12d194fff35dd457dd34bb3da`  
		Last Modified: Tue, 20 Oct 2026 02:41:30 GMT  
		Size: 10.6 MB (10608320 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6175a5e45f3aba439fd70c7607f831e85e78454507084b4dca1b79fce8765c50`  
		Last Modified: Tue, 20 Oct 2026 02:41:30 GMT  
		Size: 28.4 KB (28374 bytes)  
		MIME: application/vnd.in-toto+json
