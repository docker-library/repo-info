## `golang:1-trixie`

```console
$ docker pull golang@sha256:9d41bc0272def1f2aa133746aa2567dff35ddf2ae9893bb306da5b6631981898
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
$ docker pull golang@sha256:7bffdb405cd12940d2980daa49a86ef575ed4525a17ee7d0c9562547357ab46a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.2 MB (316244813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecb923204467d17aa269ee9b123c80892bcd202eae287617a8baeb6afbd42a5e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:23:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:17:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:16:54 GMT
ENV GOLANG_VERSION=1.27.1
# Sat, 19 Sep 2026 02:16:54 GMT
ENV GOTOOLCHAIN=local
# Sat, 19 Sep 2026 02:16:54 GMT
ENV GOPATH=/go
# Sat, 19 Sep 2026 02:16:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 02:16:54 GMT
COPY /target/ / # buildkit
# Sat, 19 Sep 2026 02:17:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Sat, 19 Sep 2026 02:17:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42f0cc32f2e355552fbfad163210ddc51f7b8bc7cfaddb2a41bd9c4a7c5e3c49`  
		Last Modified: Sat, 19 Sep 2026 00:45:14 GMT  
		Size: 25.6 MB (25640088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38985a14f2b1b8215895ecb448f3dfc4067cb494aa00b547c78c9a012e9b2460`  
		Last Modified: Sat, 19 Sep 2026 01:24:14 GMT  
		Size: 67.8 MB (67807472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0069ea6125d297a10b4b4bc7dc56696fd2f9177b6641779483b72b53923de728`  
		Last Modified: Sat, 19 Sep 2026 02:17:30 GMT  
		Size: 102.3 MB (102339512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef1dbfdbb5d59bdeac07b1398a9f0808b453513bf6a76eb3ffd509a284483095`  
		Last Modified: Tue, 01 Sep 2026 23:25:25 GMT  
		Size: 71.1 MB (71077884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f84d036a45371878e3498c1b82b1da44b27f7c50ad6c36b9c7662dc084bce8f`  
		Last Modified: Sat, 19 Sep 2026 02:17:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:229e4de59d56b122ef9b5640ec7167895d9c8f185eb4d5adf542a40a816f5367
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10825803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:101b24f3f76b4e068b57fd4eaa2163727c8ea7bdb216f2b0395838fca0b02829`

```dockerfile
```

-	Layers:
	-	`sha256:fed529105d401513c351f9a7c897825998433dfc29d8b89464facb102c735ffc`  
		Last Modified: Sat, 19 Sep 2026 02:17:28 GMT  
		Size: 10.8 MB (10797425 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98619fbe7d280c21ecde5b224a9449eedd7459fb85f77106abb8d2aa6b836765`  
		Last Modified: Sat, 19 Sep 2026 02:17:27 GMT  
		Size: 28.4 KB (28378 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-trixie` - linux; arm variant v7

```console
$ docker pull golang@sha256:5cd49a1e0c05e19eae3044d4aa75b99f0d5571515139d1d3b39016ad639a2a41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.8 MB (274775422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24080aa40ea0cde39e6fd550790aad1ef1cc6a2f09742cac3a8209577e03ff5b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:28:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:26:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:18:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 03:17:59 GMT
ENV GOLANG_VERSION=1.27.1
# Sat, 19 Sep 2026 03:17:59 GMT
ENV GOTOOLCHAIN=local
# Sat, 19 Sep 2026 03:17:59 GMT
ENV GOPATH=/go
# Sat, 19 Sep 2026 03:17:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 03:17:59 GMT
COPY /target/ / # buildkit
# Sat, 19 Sep 2026 03:18:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Sat, 19 Sep 2026 03:18:04 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d2a96b81f7dd856e671dd780163738168310a9b621a2e674fe3f0d153d5d2c28`  
		Last Modified: Sat, 19 Sep 2026 00:03:37 GMT  
		Size: 45.8 MB (45804267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5263bfac9f818f4ca845fc2fa75a1e1d26ab28688cfeac566c3195860cb82ae8`  
		Last Modified: Sat, 19 Sep 2026 01:28:39 GMT  
		Size: 23.6 MB (23641382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:147b8adbb165d616a23eb3cfaefae1bbc21052b5d1f10a004e035c3229e1add3`  
		Last Modified: Sat, 19 Sep 2026 02:26:59 GMT  
		Size: 62.8 MB (62752934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89d4cb196efeb0ea4e5dab1f72d94cbc313b375472afa38c54cfa285097b87a9`  
		Last Modified: Sat, 19 Sep 2026 03:18:29 GMT  
		Size: 73.0 MB (72982618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c87d6cd0bfacc76bdbce7c62a92cd8c0545cfe85ace1f630659004478cd2a0a`  
		Last Modified: Tue, 01 Sep 2026 23:25:28 GMT  
		Size: 69.6 MB (69594062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e311473b177754ed914d26902de1c22156ecbf32cb94595d2d33146a38643840`  
		Last Modified: Sat, 19 Sep 2026 03:18:27 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:abb1820b671e6ae9522bf4ffdb2a598c1ff8a24bc947d5694d6c9887483ad334
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10621859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91e671cfc6fac98a3f4ea1fe087f6f5f489768ce20d022ad98df6399081fcdc0`

```dockerfile
```

-	Layers:
	-	`sha256:70e388537a620244631f532c4500b860e2521545b629f20d96b181d0d652f1cc`  
		Last Modified: Sat, 19 Sep 2026 03:18:27 GMT  
		Size: 10.6 MB (10593347 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a90527085f1236cdaee4788d7f9447316b2e19188431fc54108a9060b4f15d42`  
		Last Modified: Sat, 19 Sep 2026 03:18:27 GMT  
		Size: 28.5 KB (28512 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-trixie` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:21758bb7e93fe251a31f1c2390cdaaea748885814d1a8f00fcb37480dc0df0ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.6 MB (308634878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:211b281df59fbd2bcd0035f0e6d341fad1bd98d20936585e1d683e66d02423a8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:25:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:15:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:15:49 GMT
ENV GOLANG_VERSION=1.27.1
# Tue, 06 Oct 2026 03:15:49 GMT
ENV GOTOOLCHAIN=local
# Tue, 06 Oct 2026 03:15:49 GMT
ENV GOPATH=/go
# Tue, 06 Oct 2026 03:15:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:15:49 GMT
COPY /target/ / # buildkit
# Tue, 06 Oct 2026 03:15:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 06 Oct 2026 03:15:58 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86f385aa2c76a7dd234ab579740a6011f59b0284b9e77b56b88dfad43c2fd58b`  
		Last Modified: Tue, 06 Oct 2026 01:44:53 GMT  
		Size: 25.0 MB (25038980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f73cdbf7c744c3331ef0185e57129804983040b8484e91af064b3bfa14750c`  
		Last Modified: Tue, 06 Oct 2026 02:26:06 GMT  
		Size: 67.6 MB (67622292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a1596a794cd2e47c670e9ac8812fa322e7ad997b933666f93f23e2f830a0149`  
		Last Modified: Tue, 06 Oct 2026 03:16:24 GMT  
		Size: 98.6 MB (98559477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:125215c6056cfe0a165d14de8a72a3546ec1167a4468ebcd93c0f403469ef15d`  
		Last Modified: Tue, 01 Sep 2026 23:25:44 GMT  
		Size: 67.7 MB (67652866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a6adabd62831292d2afb3ec306ec6d79d44a32500332a1540d456ff01b70c8a`  
		Last Modified: Tue, 06 Oct 2026 03:16:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:3943538044d213b17810be9b77e2d11d9a41e058108a9c4ea84503a88da1b43a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10945848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f470bd0ab9f5aec75579979edfb54dbed7bf5f7755fa6ae8adf7ddd1138ad4cd`

```dockerfile
```

-	Layers:
	-	`sha256:2dbd1d442d86ab21a0b619da15bf9ec676c0712ceee02e9605d1125d8566a379`  
		Last Modified: Tue, 06 Oct 2026 03:16:22 GMT  
		Size: 10.9 MB (10917292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35dfe04e7388f96d31651bb50cf1fdc4d012e0e24b4e7fde72f585f29acc105b`  
		Last Modified: Tue, 06 Oct 2026 03:16:21 GMT  
		Size: 28.6 KB (28556 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-trixie` - linux; 386

```console
$ docker pull golang@sha256:d6a6c204e927093dbaa91410ca4078b1be80a60ee0647dfcee4faecc23dd28f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.7 MB (317685997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5311cff1197011ed8dee6fe9b63f9c6ad60f89a17186624d798ba0b00c4803d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:46:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:32:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:16:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:16:03 GMT
ENV GOLANG_VERSION=1.27.1
# Tue, 06 Oct 2026 03:16:03 GMT
ENV GOTOOLCHAIN=local
# Tue, 06 Oct 2026 03:16:03 GMT
ENV GOPATH=/go
# Tue, 06 Oct 2026 03:16:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:16:03 GMT
COPY /target/ / # buildkit
# Tue, 06 Oct 2026 03:16:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 06 Oct 2026 03:16:09 GMT
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
	-	`sha256:f042deed9e5e4d53b1f5d42192a4f0f5c6fe8936837f41d5ad034fa077cce3f3`  
		Last Modified: Tue, 06 Oct 2026 03:16:34 GMT  
		Size: 100.9 MB (100853019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f40cfba955b4fb208767a32cc904e9cf28a3e0e64e1ebc859bdfe4f763816dc`  
		Last Modified: Tue, 01 Sep 2026 23:26:33 GMT  
		Size: 69.3 MB (69276355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e69921bdec115de07f29fec9fdac40e7f6b48af51328c1324e19eecbf8ab42a`  
		Last Modified: Tue, 06 Oct 2026 03:16:31 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:62a332ba077d6f5a37f1d0c069e7268d7e81a27d53b9f8d4b7afd2c2042fdbe0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10796989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f32093ac12784c8470b6989b3f4b9de3eac0a5e366caadabd5d565cce69c838`

```dockerfile
```

-	Layers:
	-	`sha256:6db084f42975b419042f13918fc8f8fba7c546004b70269ccd004167c7a57514`  
		Last Modified: Tue, 06 Oct 2026 03:16:32 GMT  
		Size: 10.8 MB (10768668 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89e2cd85c8ab0900fa2168684a171cc4108b28600f00cf5dc61b3e9a34cb07ab`  
		Last Modified: Tue, 06 Oct 2026 03:16:31 GMT  
		Size: 28.3 KB (28321 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-trixie` - linux; ppc64le

```console
$ docker pull golang@sha256:8ebb2b5e248c52e771d0aaa71549086466a8f44638d43dbf912c40f4f16032f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.8 MB (314776657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9dc4c11a56a2ae36940360d2a6740de7b5e596f7dc0ea0ff06d6160b6bce912`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 03:17:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 09:07:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 11:52:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 02 Sep 2026 00:33:47 GMT
ENV GOLANG_VERSION=1.27.1
# Wed, 02 Sep 2026 00:33:47 GMT
ENV GOTOOLCHAIN=local
# Wed, 02 Sep 2026 00:33:47 GMT
ENV GOPATH=/go
# Wed, 02 Sep 2026 00:33:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 00:33:47 GMT
COPY /target/ / # buildkit
# Sat, 19 Sep 2026 11:52:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Sat, 19 Sep 2026 11:52:58 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57552d4d0f86a402301d735d57c01cd3d2d1724c711b625717be1f6749424be9`  
		Last Modified: Sat, 19 Sep 2026 03:17:41 GMT  
		Size: 27.0 MB (27022750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:688421ee6cf78616bfc56c3cd74e55a2ab39b5a15aae8b60dd132fa0e6540f48`  
		Last Modified: Sat, 19 Sep 2026 09:08:06 GMT  
		Size: 73.1 MB (73088760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4db9f074b5e8a7c2890007e86f8eeae29f8548fda10db6f236a7f340541f308d`  
		Last Modified: Sat, 19 Sep 2026 11:53:51 GMT  
		Size: 93.0 MB (93046418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc1383ca9979dac83a00fd2d5a8ae62102a5d700d144342a55ab6b86117926e`  
		Last Modified: Wed, 02 Sep 2026 00:34:40 GMT  
		Size: 68.4 MB (68423497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64c2c3c9236b24cf2bbd364688b9b0c72cc44c979905d69438e3d3dce12d49f4`  
		Last Modified: Sat, 19 Sep 2026 11:53:49 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:aecc79e3dd24ffa177be98072ea346c2631a4b207bd57f59a5861613ad1451ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10821684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:436e9f17b353af0109be53a1e824723b19c7ad2f85cd8554df8eb15bd329400c`

```dockerfile
```

-	Layers:
	-	`sha256:4184927b4cceea72dcbcd1c82a6f767eb24c19a5216d09cb25ca10fd8f7dbda7`  
		Last Modified: Sat, 19 Sep 2026 11:53:49 GMT  
		Size: 10.8 MB (10793238 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce162573b825616318969815364b989b8759fc13ba9fc785ceaa03ad00529320`  
		Last Modified: Sat, 19 Sep 2026 11:53:48 GMT  
		Size: 28.4 KB (28446 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-trixie` - linux; riscv64

```console
$ docker pull golang@sha256:6537d2aeeaa500d48ed4a5540ce324b40a20baf6e41439951bcc45a45b7c7b17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.6 MB (340553103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e245fb1a0fec9dec079d11b4e3c6b809e112ff7e571785c86d3944a6e03a0bb6`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1789689600'
# Thu, 24 Sep 2026 23:42:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 29 Sep 2026 00:23:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 30 Sep 2026 06:48:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 30 Sep 2026 06:48:00 GMT
ENV GOLANG_VERSION=1.27.1
# Wed, 30 Sep 2026 06:48:00 GMT
ENV GOTOOLCHAIN=local
# Wed, 30 Sep 2026 06:48:00 GMT
ENV GOPATH=/go
# Wed, 30 Sep 2026 06:48:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 Sep 2026 06:48:00 GMT
COPY /target/ / # buildkit
# Wed, 30 Sep 2026 06:48:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 30 Sep 2026 06:48:36 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b576f41196ce391ebaeeb058ed0bf8ef716528b15a0986154f91cf04d5b72aea`  
		Last Modified: Sat, 19 Sep 2026 04:07:24 GMT  
		Size: 47.9 MB (47866994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:719a46bffab9fce37ab8764ddc4a0df7902b9a552542a9a0b30211b8ecfd8e11`  
		Last Modified: Thu, 24 Sep 2026 23:44:16 GMT  
		Size: 25.0 MB (24972374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f1f71bb791d26a4189c3a956df1abf3f0a0d661ce0d2e3143516a36ad6b66e6`  
		Last Modified: Tue, 29 Sep 2026 00:27:17 GMT  
		Size: 66.7 MB (66705357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf353757a3c02e82ebc2429f87b2b595cc306b3e16d394ff76ac310d50923631`  
		Last Modified: Wed, 30 Sep 2026 06:56:51 GMT  
		Size: 131.9 MB (131885599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc1bd247561c0ae6515e4e2fc8a588c5796762e9480c377ba968f3296aed766`  
		Last Modified: Wed, 30 Sep 2026 06:56:42 GMT  
		Size: 69.1 MB (69122621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89b806dec8c34d545082afa6922fd1fcd4cc5c082ab00dce7b5fbfdb053b5b4d`  
		Last Modified: Wed, 30 Sep 2026 06:56:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:424e164d2b09498cc9cb25e666299cfe1dcfc06e0baf5034ebbda49a366d9ac9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10895517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa9d58451e3a987ff608a484bd9ccecad619db6ef64e5bfe344a1e39d67c371b`

```dockerfile
```

-	Layers:
	-	`sha256:7573b59ae36f18a8c1cdaf7a3bec79040eaaa7b4f8165dbc0bdb9a424b21150d`  
		Last Modified: Wed, 30 Sep 2026 06:56:24 GMT  
		Size: 10.9 MB (10867067 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9eb5aab5b2d114bf5cb8af2fb541ffdbfc59e13d4708829182da61dc83b176d1`  
		Last Modified: Wed, 30 Sep 2026 06:56:20 GMT  
		Size: 28.4 KB (28450 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-trixie` - linux; s390x

```console
$ docker pull golang@sha256:dcf8084dc99c901eeda579a649e0f64e8671a06d581bf15e183b681cfebc0bc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.4 MB (291378708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e733bb1eeea00b322d1534059b4bca32cbb5ba14b8b523de21c3f9281c20f9de`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:58:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:38:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:13:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:13:57 GMT
ENV GOLANG_VERSION=1.27.1
# Tue, 06 Oct 2026 03:13:57 GMT
ENV GOTOOLCHAIN=local
# Tue, 06 Oct 2026 03:13:57 GMT
ENV GOPATH=/go
# Tue, 06 Oct 2026 03:13:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:13:57 GMT
COPY /target/ / # buildkit
# Tue, 06 Oct 2026 03:14:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 06 Oct 2026 03:14:00 GMT
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
	-	`sha256:e8049586ee937159c118b88f121abcccffbbe01d21a8598a2e314a4c275edd5b`  
		Last Modified: Tue, 06 Oct 2026 03:14:32 GMT  
		Size: 76.2 MB (76226693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cdf782217446d8f5c55dd5fedfa6da1094820bbf610bbdd9bc0564db4e82fd9`  
		Last Modified: Tue, 01 Sep 2026 23:25:53 GMT  
		Size: 70.2 MB (70220888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:098ff351883ae3350d0135ae1e6eb88533afdcaa0607f2ce492d5a82a67160e2`  
		Last Modified: Tue, 06 Oct 2026 03:14:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:a07ead6c39955ccdd25523376f5cf394244ac316d981e73038dba69a9be49b3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10636694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46a481ff38bf7edf4af87e97d47dba1eae004cb32fc9e89993411f2633511585`

```dockerfile
```

-	Layers:
	-	`sha256:9294d0a6380b87a2dd2da88985f19c3532ba3e540d898c450c7ac02030df11a3`  
		Last Modified: Tue, 06 Oct 2026 03:14:31 GMT  
		Size: 10.6 MB (10608320 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3362a81e8906165545a15c2091977ebfcc5567c12ff342cf3bcf140f2ab39bd`  
		Last Modified: Tue, 06 Oct 2026 03:14:30 GMT  
		Size: 28.4 KB (28374 bytes)  
		MIME: application/vnd.in-toto+json
