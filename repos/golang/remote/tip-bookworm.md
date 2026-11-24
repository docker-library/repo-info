## `golang:tip-bookworm`

```console
$ docker pull golang@sha256:6677149b37d7addf7250dd7769b96c0b849bc17486bc2ceda34c972244f377bb
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
$ docker pull golang@sha256:ac74432b3291452f8c52de499e908e4da7cf8e194185a11b7b0fc3b5a84a8803
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.0 MB (336951600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3f6f2300854b926ab5eef45f58a957489078361d459b5f39373c4abb7cb5ca3`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:31:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 21:51:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 21:52:37 GMT
ENV GOTOOLCHAIN=local
# Mon, 23 Nov 2026 21:52:37 GMT
ENV GOPATH=/go
# Mon, 23 Nov 2026 21:52:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 21:52:37 GMT
COPY /target/ / # buildkit
# Mon, 23 Nov 2026 21:52:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 23 Nov 2026 21:52:40 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6c30932f8d3f5798b438cce12cdf6cebb1717b52f51e22ff010b4d86667031d`  
		Last Modified: Thu, 05 Nov 2026 08:31:58 GMT  
		Size: 64.4 MB (64432621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b97f6fb5af2da972664e555e3bedb175d45ab0055dcacd3cbc13020d3d60844`  
		Last Modified: Mon, 23 Nov 2026 21:53:08 GMT  
		Size: 92.7 MB (92679371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9efe33ce08c2ab749d7e469454c13bd2c73074fd6987df765916f579beb88f77`  
		Last Modified: Mon, 23 Nov 2026 21:52:44 GMT  
		Size: 107.4 MB (107439749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b70108b95ec2a5e7e3ee951a94fe54bd97267f8d94a70e9418ac92db054cd3ec`  
		Last Modified: Mon, 23 Nov 2026 21:53:05 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:bf9b891027d1f97aa475af119abdcea6b8e9b0ff86b06caa9581e6b8152961c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10529174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5708713787515655b0e40b2a77b31a2139c82a032f497024d6ffa0d6473981eb`

```dockerfile
```

-	Layers:
	-	`sha256:4b681f498b672712efcfc621f6a0aa92c2ca772f1998448d68255f8180378df7`  
		Last Modified: Mon, 23 Nov 2026 21:53:06 GMT  
		Size: 10.5 MB (10501073 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:229a2b8493c1d9600ffe6cc38f9a46bfcd1405bf9ecfdadcf07fce06e2c6398c`  
		Last Modified: Mon, 23 Nov 2026 21:53:05 GMT  
		Size: 28.1 KB (28101 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:f7a66c1c452875c1efa36884c35101e3276d2b0098b95197e04324ea0fb78b86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.6 MB (295578698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4b387f9eb8a2ad79643bc892263222cac9d6c6683d70eec4819f4b2b104e0c9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:23:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 21:51:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 21:52:48 GMT
ENV GOTOOLCHAIN=local
# Mon, 23 Nov 2026 21:52:48 GMT
ENV GOPATH=/go
# Mon, 23 Nov 2026 21:52:48 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 21:52:48 GMT
COPY /target/ / # buildkit
# Mon, 23 Nov 2026 21:52:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 23 Nov 2026 21:52:51 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b6d0c47d4db8cde48b4a6494637b995ef0a318b3071c7117bba0ff1d4b8ee097`  
		Last Modified: Thu, 05 Nov 2026 06:15:46 GMT  
		Size: 44.2 MB (44223287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e97ea351e800ac58cc1253f0ef68e502b7678904c141c7d93e6a9042e0e5dd`  
		Last Modified: Thu, 05 Nov 2026 08:18:28 GMT  
		Size: 21.8 MB (21769801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50deba4733467d14fa01e8bfb1524dd99d6586f87bd64d8d193d5c9fae44d49e`  
		Last Modified: Thu, 05 Nov 2026 09:23:44 GMT  
		Size: 59.7 MB (59697462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30f1f8b03a1c29955fccccc9b95547c439b5505ddbc899750b768cf84a24e355`  
		Last Modified: Mon, 23 Nov 2026 21:53:17 GMT  
		Size: 66.5 MB (66532706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c39b245899a237a3af132c690f97082215657bd5be945fcbe2d30fc351bd15f3`  
		Last Modified: Mon, 23 Nov 2026 21:52:15 GMT  
		Size: 103.4 MB (103355283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef47c9299ec1778eba920427cb0a34ab34e4c750a7803c0c28e2443c9ed02dfc`  
		Last Modified: Mon, 23 Nov 2026 21:53:15 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:200d98b47ba7b0b8aac99b9dfa179f429a78fd9e6315d6384b6320eaade974c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10335981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec6bd2e1943aee9bfdfe1f6264f2c86b50f30a34eee3700540094e500aa41146`

```dockerfile
```

-	Layers:
	-	`sha256:16da1abc3921e50c4d53f1e2d5231729cd0ff1aa953a419f2a524dc1055f9a0b`  
		Last Modified: Mon, 23 Nov 2026 21:53:16 GMT  
		Size: 10.3 MB (10307767 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5468d3bc8e29f0d6a68c80d3b78ff6f683f35ec6562059b010bd9250ca00c241`  
		Last Modified: Mon, 23 Nov 2026 21:53:15 GMT  
		Size: 28.2 KB (28214 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:07bfadc5b5f6212895900b83125c1aecbe9684f32dccdc54be26f7c37586e573
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.8 MB (324776840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8549fb8b60d86f212e3173b3a879dd60595fb7aba668aa6c69ebef94051e7508`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:28:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 21:51:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 21:52:16 GMT
ENV GOTOOLCHAIN=local
# Mon, 23 Nov 2026 21:52:16 GMT
ENV GOPATH=/go
# Mon, 23 Nov 2026 21:52:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 21:52:16 GMT
COPY /target/ / # buildkit
# Mon, 23 Nov 2026 21:52:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 23 Nov 2026 21:52:19 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92caadca69c9f4ea298e05129560a9ab38de70d82c9bf5ee3038f358be50d32a`  
		Last Modified: Thu, 05 Nov 2026 07:42:05 GMT  
		Size: 23.4 MB (23440662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8af2c9772ed715b222362477c9f5e5d8622bc2dddb9bd26cc8a32da4345de7`  
		Last Modified: Thu, 05 Nov 2026 08:28:57 GMT  
		Size: 64.5 MB (64528461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1179c1497f56875a8eca849b73f21a0cca0b0ca35b70db2dce034eadd951e8e`  
		Last Modified: Mon, 23 Nov 2026 21:52:45 GMT  
		Size: 86.7 MB (86749707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba5832b11a785e394735436b1d989145581e95a9a87780254d1918be0af3a577`  
		Last Modified: Mon, 23 Nov 2026 21:51:59 GMT  
		Size: 101.6 MB (101645398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9f24b486abcf7556e04f358f87495fdabb378629cfa06ad02ec8f7fc273e84`  
		Last Modified: Mon, 23 Nov 2026 21:52:43 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:86bbc65eab4c988afcd98c1db63efde0664a3b05acb4c6e963319cbab95331c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10557135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e79678311f4890e0c58b359bdbd57352862ee6b5ec0a2a2bfb524768b6c28cf`

```dockerfile
```

-	Layers:
	-	`sha256:7df6a9737906b3bd85f4ace0b0e1129d03144d39627b74c28214a510384437d1`  
		Last Modified: Mon, 23 Nov 2026 21:52:44 GMT  
		Size: 10.5 MB (10528897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1e447da90b072ee590497cb5ec1fef483a4e035ecafcde06c275ab0707caa78`  
		Last Modified: Mon, 23 Nov 2026 21:52:43 GMT  
		Size: 28.2 KB (28238 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; 386

```console
$ docker pull golang@sha256:7f8e44e709e54408bda15da1422d900c9f7f630a2255629362bcc8067e75ad43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.8 MB (335795523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bc517c078e2c3fb735429a367eaeb152b48d6961f62034b0fdd2b7b2bb0e200`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:24:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 21:51:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 21:52:27 GMT
ENV GOTOOLCHAIN=local
# Mon, 23 Nov 2026 21:52:27 GMT
ENV GOPATH=/go
# Mon, 23 Nov 2026 21:52:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 21:52:27 GMT
COPY /target/ / # buildkit
# Mon, 23 Nov 2026 21:52:30 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 23 Nov 2026 21:52:30 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:989072a722e618d620157d5cc8f15a040692a796ff019856adc5dce2389b3232`  
		Last Modified: Thu, 05 Nov 2026 06:15:51 GMT  
		Size: 49.5 MB (49515693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0be98d36659ede814751c7330e91612ca4d73d055912e94b9a90e6adfc1eb30b`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 24.7 MB (24703903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc2dca7ecb6f0d6c1c3297d7e97569ff07eaf0a74e8949b12aa33e39b2fee126`  
		Last Modified: Thu, 05 Nov 2026 08:24:39 GMT  
		Size: 66.3 MB (66277351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ec81aad9e02c0f31044e5e43344248e48b7e902c206df571a7c91b96f7f02b6`  
		Last Modified: Mon, 23 Nov 2026 21:52:54 GMT  
		Size: 90.1 MB (90099979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4213e3c8db6bf2b11a1cac7a3711fe6e326415ca3b60eb2f135ec39bd863251d`  
		Last Modified: Mon, 23 Nov 2026 21:52:20 GMT  
		Size: 105.2 MB (105198439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43e5d5b98b641d596e54ea01914fdcab0fb272916f139ddd32723eab090d5d1d`  
		Last Modified: Mon, 23 Nov 2026 21:52:52 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:c8ba634e54d4b717a6c5e5f7b1d189689c55f3c9bd2a25e7cbd89fa96cd25f35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10508722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72c9a9086a17c84e1ba3f9e5a8a8f7d4da7d65d0dccf0334f58534387ffc72b8`

```dockerfile
```

-	Layers:
	-	`sha256:c83ef91e34ced7a52b86a220b37045d9cc916772e541863a357a010e586af325`  
		Last Modified: Mon, 23 Nov 2026 21:52:52 GMT  
		Size: 10.5 MB (10480653 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6fd8f6028f0e8dd3317c360077744e6657b26161fc01a39f8c9467cd7656345`  
		Last Modified: Mon, 23 Nov 2026 21:52:51 GMT  
		Size: 28.1 KB (28069 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:d92ab6088c529cc4f33c9afa02e39f2d5df0361a07ea3b40bac698b5f762b224
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.5 MB (342490058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b470ba17a126377824dd0083c5b7d532dba2cd51cdd09664064a45568f277364`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 10:07:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 17:24:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 21:52:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 21:52:13 GMT
ENV GOTOOLCHAIN=local
# Mon, 23 Nov 2026 21:52:13 GMT
ENV GOPATH=/go
# Mon, 23 Nov 2026 21:52:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 21:52:13 GMT
COPY /target/ / # buildkit
# Mon, 23 Nov 2026 21:52:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 23 Nov 2026 21:52:38 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50ffec0873fe14b6e584873c80e384c7a988558ed670b69a2083f4a9eff8ef04`  
		Last Modified: Thu, 05 Nov 2026 10:08:16 GMT  
		Size: 25.5 MB (25515174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912f86862ce2795897774b132f3a86834590ad3758900c8ec8c600b44058ae52`  
		Last Modified: Thu, 05 Nov 2026 17:25:45 GMT  
		Size: 69.9 MB (69899279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:222de5b50f2abd621cbc11c50c62cfde16f4092aba11774b57afda04fba26127`  
		Last Modified: Mon, 23 Nov 2026 21:53:44 GMT  
		Size: 90.7 MB (90670990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d6398754657f6617d56396f3bdc393c5a6e4b0491499f8730567ce43a74afb4`  
		Last Modified: Mon, 23 Nov 2026 21:53:45 GMT  
		Size: 104.0 MB (104035836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:416cfd649b1f0d16a76e002e690ae9b127a8b823bd723450cf6f90f39b154280`  
		Last Modified: Mon, 23 Nov 2026 21:52:53 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:f46cea0d442e8e13c28476fcc8f4b8c665e2275e0e7f05590719c91e7150b5c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10501704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c485a5c89f9176c381337b189a914850195994faea4aa3171fff258a1ad07c9`

```dockerfile
```

-	Layers:
	-	`sha256:93728b13bf0b6948e97db2f72b85ab16df7ab1f294adc7428c976d7ae937aeb1`  
		Last Modified: Mon, 23 Nov 2026 21:53:41 GMT  
		Size: 10.5 MB (10473556 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:333e6a878273d1ae53ac3907749a9f35a79e918abda993c9b765d7f60f772602`  
		Last Modified: Mon, 23 Nov 2026 21:53:40 GMT  
		Size: 28.1 KB (28148 bytes)  
		MIME: application/vnd.in-toto+json
