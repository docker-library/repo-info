## `golang:tip-20261101-bookworm`

```console
$ docker pull golang@sha256:ba0c10b4f934d9261f9142f99bd8edef77c03c6c14c9357b8b79484e58203d66
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

### `golang:tip-20261101-bookworm` - linux; amd64

```console
$ docker pull golang@sha256:a145662e377e4b92c544fc777afc3818e1d1b0ec2996dacff382b1d1da89ecec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.9 MB (333852109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfe0059953c1eeed4c36f138d283f404bfbb5993ec3e3cfb4985bc2b206a95e4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:31:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:16:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:17:55 GMT
ENV GOTOOLCHAIN=local
# Thu, 05 Nov 2026 09:17:55 GMT
ENV GOPATH=/go
# Thu, 05 Nov 2026 09:17:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 09:17:55 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 09:17:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 09:17:58 GMT
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
	-	`sha256:b2150bcae8b4e4d68e5224bf382612f52fa00f430323bb8eb01e862044590834`  
		Last Modified: Thu, 05 Nov 2026 09:18:27 GMT  
		Size: 92.6 MB (92629972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd35beab66f9320765c5f7a2a506372f5a6410782483671acaa1e1af5f461ae7`  
		Last Modified: Tue, 03 Nov 2026 00:57:17 GMT  
		Size: 104.4 MB (104389658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:309c9e57f25cad8aef179ddb72977243bc5679fa05cbbdb673ec9a912d385ab4`  
		Last Modified: Thu, 05 Nov 2026 09:18:24 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261101-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:50bf9b1481b92b2fd854d4ff8ce5401338d3ec55b8edb0b34f743bb23675ddd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10529175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa17d2d044e7e46473798c499140ea6fea93c2b72c56f083d3189c42adce5980`

```dockerfile
```

-	Layers:
	-	`sha256:976c8755373adc5f69ac4b35a6352fb436997cdf9317dbbf2d3d1e441c5e725b`  
		Last Modified: Thu, 05 Nov 2026 09:18:25 GMT  
		Size: 10.5 MB (10501073 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:215646ec977e2f4b9423bac1f6cb27bb4ccf825d4ed20e21d48fc4d4590d743a`  
		Last Modified: Thu, 05 Nov 2026 09:18:24 GMT  
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
$ docker pull golang@sha256:3ab0b6ed40b79e73b5ae6857c63c4935f9d3b99ddcb8175aaf74c25bdc86a10a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.0 MB (321952639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dba8e1cba9b7538b5d5730bdc7ca0c8fc8623d190975b90f7304b3fd218b7c9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:28:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:28:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:29:14 GMT
ENV GOTOOLCHAIN=local
# Thu, 05 Nov 2026 09:29:14 GMT
ENV GOPATH=/go
# Thu, 05 Nov 2026 09:29:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 09:29:14 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 09:29:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 09:29:17 GMT
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
	-	`sha256:62b277a9df4db42e33940e785465702f953d4cf628dd12fcd957361efd0d69a2`  
		Last Modified: Thu, 05 Nov 2026 09:29:43 GMT  
		Size: 86.7 MB (86700314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c02be16c5cc8cd90f80fa09f773930298fc4772e6eecff5f27de48d2f357cf4`  
		Last Modified: Tue, 03 Nov 2026 00:57:12 GMT  
		Size: 98.9 MB (98870589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e534fe2264566102cd3d127d44971779e97ec51b17a4c48176639483dd550613`  
		Last Modified: Thu, 05 Nov 2026 09:29:41 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261101-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:faffe40a1e0c197d3b34ce82baa71e85a295b64a168960d0ccb0543854bd0599
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10557130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9722e31ff1654ef5711dbf623a4e0a018fa6416e7e50f69fe160c8d4f3525f0`

```dockerfile
```

-	Layers:
	-	`sha256:9c9eff34ebba876b7ed32e4ba49aa46e8f0d0e87ca39b278aa6837dc04cddd34`  
		Last Modified: Thu, 05 Nov 2026 09:29:41 GMT  
		Size: 10.5 MB (10528897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34f63e3a9bb9af0986b383b981dcba642b2f417a724b47e5fc638624fa9c3eb0`  
		Last Modified: Thu, 05 Nov 2026 09:29:40 GMT  
		Size: 28.2 KB (28233 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261101-bookworm` - linux; 386

```console
$ docker pull golang@sha256:6076c85e6599fc9cdc72f5be9bf2a62b691229be5573d50664139425bfacfc3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.8 MB (332774705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:554d00b1272396f4a626a774e762f8a8b9d67d92af7b6d5a57b76bf199f59b24`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:24:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:13:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:15:12 GMT
ENV GOTOOLCHAIN=local
# Thu, 05 Nov 2026 09:15:12 GMT
ENV GOPATH=/go
# Thu, 05 Nov 2026 09:15:12 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 09:15:12 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 09:15:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 09:15:15 GMT
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
	-	`sha256:53195c50c239d8028f2fdebaee5e79125768b44e9c6ac15d5b77e46f71d7c537`  
		Last Modified: Thu, 05 Nov 2026 09:15:39 GMT  
		Size: 90.1 MB (90051662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd75b5188259c9b268ed753f81ba2e38b1d9d992be8e9e3b374fc45933b99770`  
		Last Modified: Tue, 03 Nov 2026 00:57:32 GMT  
		Size: 102.2 MB (102225938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e8bc40f5ee3de4bb248ca0681632b49a654c06f7a243628d4514c268ddf6c51`  
		Last Modified: Thu, 05 Nov 2026 09:15:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261101-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:d57753ad3edbc1dd14bd633b51d55caf4edba1fe77103d31c6a0f27f21788f93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10508720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e47a444925c066f4f503e04048d49ea9a979c00b3654afe49a2785781b5ed66`

```dockerfile
```

-	Layers:
	-	`sha256:6a28933223ec253447c055a7c027b65893004a3c3e8c6f69438b6429dfc3cd7b`  
		Last Modified: Thu, 05 Nov 2026 09:15:38 GMT  
		Size: 10.5 MB (10480653 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e54e57a4951c760b862f5fc24d73ef287d8832d37e3aff813c2fd1b486d7c161`  
		Last Modified: Thu, 05 Nov 2026 09:15:37 GMT  
		Size: 28.1 KB (28067 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261101-bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:17629c3ac1dc54efe53a9df1e1373e80d87c73ef0b14eea7001440c87a04e310
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.5 MB (339494003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb42c8e5d5927b0ce190fad156a9d2b722f4fc35fa3f589142df2cc22a7fef3e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 04:18:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 11:54:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 01:27:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 01:28:50 GMT
ENV GOTOOLCHAIN=local
# Tue, 03 Nov 2026 01:28:50 GMT
ENV GOPATH=/go
# Tue, 03 Nov 2026 01:28:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 01:28:50 GMT
COPY /target/ / # buildkit
# Tue, 03 Nov 2026 01:28:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 03 Nov 2026 01:28:59 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:76d39433e5f7ff3fe5badf80d81523262cac841a13ec65f6dee0fceb621f6b0f`  
		Last Modified: Wed, 28 Oct 2026 00:20:21 GMT  
		Size: 52.4 MB (52366307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7339b62b6463010208cd0f9bd95fca3c60b698cdfeeda413d511e883ce2f291`  
		Last Modified: Wed, 28 Oct 2026 04:19:13 GMT  
		Size: 25.5 MB (25514966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cac3a369b48a110414ca84367074180b8af9539eba053b90f33f4b4032884eaa`  
		Last Modified: Wed, 28 Oct 2026 11:55:23 GMT  
		Size: 69.9 MB (69899322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19838cff1785423c6ff124f3b47f534fd92870a8e40117a497454bf0bd0a5110`  
		Last Modified: Tue, 03 Nov 2026 01:30:06 GMT  
		Size: 90.6 MB (90623068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb982b356b87d80bb7f1d8c2c33f7bc1ec026469cef4eb9595fff52794f2b6d4`  
		Last Modified: Tue, 03 Nov 2026 01:30:06 GMT  
		Size: 101.1 MB (101090181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4234d453546fa27e2319c5922706c0473248ac50793ee50cc94a125f83efb555`  
		Last Modified: Tue, 03 Nov 2026 01:30:02 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261101-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:244f68013f637bf30d8206d9b24c9a46cbfa71f344c63a1850172adfa8a95f94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10501475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e2a3375ac04f6233308f5c4774a43b26180351cb18af99a1c7124f9412203c`

```dockerfile
```

-	Layers:
	-	`sha256:a7d9995b963371f0e235c61992b53d3c984edab402c08dae46036234f0102211`  
		Last Modified: Tue, 03 Nov 2026 01:30:03 GMT  
		Size: 10.5 MB (10473502 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e9c0a0036f30da4b66a127b1103963eca2d879cc157e4a461878d5899cdfb4a`  
		Last Modified: Tue, 03 Nov 2026 01:30:02 GMT  
		Size: 28.0 KB (27973 bytes)  
		MIME: application/vnd.in-toto+json
