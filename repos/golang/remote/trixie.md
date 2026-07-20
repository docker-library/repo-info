## `golang:trixie`

```console
$ docker pull golang@sha256:4ee9ffa999b4583ce281939cdff828763083610292f252279a0cee77473bd9a7
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

### `golang:trixie` - linux; amd64

```console
$ docker pull golang@sha256:dbb10bd1b3400ba0858e2f7c354fd4556b782c187feeff52789d4ee156a84db8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.3 MB (312305560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0bb43a2dcec5fbd07bedbe887849d53b2ac412c7876dd0bfa4c4e07ae80fe1c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:29:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:17:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:17:29 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 14 Jul 2026 03:17:29 GMT
ENV GOTOOLCHAIN=local
# Tue, 14 Jul 2026 03:17:29 GMT
ENV GOPATH=/go
# Tue, 14 Jul 2026 03:17:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 03:17:29 GMT
COPY /target/ / # buildkit
# Tue, 14 Jul 2026 03:17:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 14 Jul 2026 03:17:34 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b453535073b6238aba838c5d063a1468b4d6a9aa54f81de64a4de304dc456685`  
		Last Modified: Tue, 14 Jul 2026 01:44:01 GMT  
		Size: 25.6 MB (25638468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e002cae30c445bfdf70841ba6a8d772e913914a00fa0e0f7bd0e4c089aaa838`  
		Last Modified: Tue, 14 Jul 2026 02:30:15 GMT  
		Size: 67.8 MB (67792989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1804aaf9409d58a6cb447e6aa878d19fbb73a523c66c92e7b725490771b373a0`  
		Last Modified: Tue, 14 Jul 2026 03:17:58 GMT  
		Size: 102.3 MB (102272980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea3d467f844b8e6fffc2d7793807a1ec9e3a0582655418c1c17013372a3a910`  
		Last Modified: Tue, 07 Jul 2026 22:12:02 GMT  
		Size: 67.3 MB (67288392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0baa5049848664e2cf82490fb01950fed63c0373e9c8a832ed3d030a92e1c7e`  
		Last Modified: Tue, 14 Jul 2026 03:17:55 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:trixie` - unknown; unknown

```console
$ docker pull golang@sha256:777cfb56f3d14b8c91407ee8926816d530fcdfd11afbdc3b8b81f5cc846ed8ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10816404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cbaeb1787cf9695a6e1dcf0859872b96af11e1ef5b1816257b1613aa388805d`

```dockerfile
```

-	Layers:
	-	`sha256:6d28ab468d525935702d64b715f89371bbed349839ff266dc862f74ad523aeeb`  
		Last Modified: Tue, 14 Jul 2026 03:17:56 GMT  
		Size: 10.8 MB (10787451 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1a15c9ef6b9fbf2040778eb3ccdf269490663282b49616cd2925c1c970fe5eb`  
		Last Modified: Tue, 14 Jul 2026 03:17:55 GMT  
		Size: 29.0 KB (28953 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:trixie` - linux; arm variant v7

```console
$ docker pull golang@sha256:628c17db2d88a95969118715732049b282f2e5776c03c5c42c2f51d4280d78ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270855476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58ff0725e71d0727f3d70e6666b45657291191a2982ea4abb033d95b70b5ea6b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:31:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 04:15:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 05:15:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 05:15:35 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 14 Jul 2026 05:15:35 GMT
ENV GOTOOLCHAIN=local
# Tue, 14 Jul 2026 05:15:35 GMT
ENV GOPATH=/go
# Tue, 14 Jul 2026 05:15:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 05:15:35 GMT
COPY /target/ / # buildkit
# Tue, 14 Jul 2026 05:15:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 14 Jul 2026 05:15:41 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1d8dcf695fa507a9d4cb0ef3ecaeb24a772f22a09a5795746304d8601933b1dc`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 45.7 MB (45743729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39c8bac7fdc99a9f96cdc34c1e6bd063d1181c8b53c33b04b3148bc8b98c7d8e`  
		Last Modified: Tue, 14 Jul 2026 02:31:35 GMT  
		Size: 23.6 MB (23636524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:847b21004c354c8a82f1e64b061add3c7998d83dfedf44e7b5f3cf76541e114e`  
		Last Modified: Tue, 14 Jul 2026 04:15:41 GMT  
		Size: 62.7 MB (62746773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726b80f02f31d9fd53f5454bfda708879659b3da2e67e7d31e54eff103b89519`  
		Last Modified: Tue, 14 Jul 2026 05:16:06 GMT  
		Size: 72.9 MB (72916614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15d9454c8d863c76d3a284f97c400d521e643fafb60e60664dbeea8c2a1719dd`  
		Last Modified: Tue, 07 Jul 2026 22:12:00 GMT  
		Size: 65.8 MB (65811677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:690dd6c91eb085954759b8882ab0b4753360b8b297e2ca4b504eb8dff5c80a7f`  
		Last Modified: Tue, 14 Jul 2026 05:16:03 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:trixie` - unknown; unknown

```console
$ docker pull golang@sha256:1a30ed0068381fa4be5211a2ee23ff602fe0ca55e70d0aff2e83a027cb01444e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10612457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8b72b69761425374682437c118122506e34a885950ed28c9ebc721bc33c3d7c`

```dockerfile
```

-	Layers:
	-	`sha256:aae05c58c0da6e938a3b3b7f1c417ff61ca8fbf2d14b41344fda7555aa4f06fe`  
		Last Modified: Tue, 14 Jul 2026 05:16:04 GMT  
		Size: 10.6 MB (10583370 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:436519878e1fa536f4d50c6d7a59e8b8b0776a018b03ff875a16b392badbb440`  
		Last Modified: Tue, 14 Jul 2026 05:16:04 GMT  
		Size: 29.1 KB (29087 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:trixie` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:d86488d9077169d6dd4fa32e954e8b68a41e94e32c0ec3d3fefdcc017ac9a759
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.9 MB (304891036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:889f241dd9a4b3db39a5246f3fb8c9383018c276d25ae7f02b23451a18756d43`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:46:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:36:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:17:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:17:34 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 14 Jul 2026 03:17:34 GMT
ENV GOTOOLCHAIN=local
# Tue, 14 Jul 2026 03:17:34 GMT
ENV GOPATH=/go
# Tue, 14 Jul 2026 03:17:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 03:17:34 GMT
COPY /target/ / # buildkit
# Tue, 14 Jul 2026 03:17:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 14 Jul 2026 03:17:43 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3198b4d4653b3225aa62931a3b1ff61435a6c99e83b6f2581bd52915332f78b7`  
		Last Modified: Tue, 14 Jul 2026 01:47:09 GMT  
		Size: 25.0 MB (25026881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4f1d683f65087c4403277cc2e5a3d787025eb59d342271a327b23718904ab1`  
		Last Modified: Tue, 14 Jul 2026 02:37:11 GMT  
		Size: 67.6 MB (67595593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc98e650d0c56d3599a822f7359b264ff24cc3913019a68dc82e051c3dcbe938`  
		Last Modified: Tue, 14 Jul 2026 03:18:10 GMT  
		Size: 98.4 MB (98416979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e4d5c89bdd324edeb5721c09064e2659473bba39ae9d84fae53c9cc0181cf15`  
		Last Modified: Tue, 07 Jul 2026 22:11:56 GMT  
		Size: 64.2 MB (64177241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:670d42cf8b4364eac939465668b17e1a15c633e59b9bb4e088b31c3ca6c23747`  
		Last Modified: Tue, 14 Jul 2026 03:18:07 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:trixie` - unknown; unknown

```console
$ docker pull golang@sha256:b8cb2ea34bac76702b4b205fe6f9961b33aebabfd2245d1203d725224a783fd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10936448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6512032bd41f960292783c09330ee1680e85e61e8fafdd450afd4386e68a97f`

```dockerfile
```

-	Layers:
	-	`sha256:294ec4d8750951ca1285d335ddf2ac1266e90abdae8433942db2fa55ebb332df`  
		Last Modified: Tue, 14 Jul 2026 03:18:08 GMT  
		Size: 10.9 MB (10907317 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bace997e66973cb6d1c29cd57d77a2c38eadf8bc533e233f950d042f9a898e7d`  
		Last Modified: Tue, 14 Jul 2026 03:18:07 GMT  
		Size: 29.1 KB (29131 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:trixie` - linux; 386

```console
$ docker pull golang@sha256:3c4ea941022cf88a3831e939025ac65e43bffca752458515eeb3342351f6483f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.8 MB (313793044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1ec7afa71685ec78ec86fc8885223f88a03876d1446b060cf49c7cad3ae8919`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:47:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:38:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:17:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:17:34 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 14 Jul 2026 03:17:34 GMT
ENV GOTOOLCHAIN=local
# Tue, 14 Jul 2026 03:17:34 GMT
ENV GOPATH=/go
# Tue, 14 Jul 2026 03:17:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 03:17:34 GMT
COPY /target/ / # buildkit
# Tue, 14 Jul 2026 03:17:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 14 Jul 2026 03:17:40 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f9e72967b6159d1a82908643c7f71f363d2dec972d7b546172e1833794af64b0`  
		Last Modified: Tue, 14 Jul 2026 00:14:50 GMT  
		Size: 50.8 MB (50831490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d062c05844db57ef4065a60eaa0d1715c922df19034daf883e4dadec97adf52b`  
		Last Modified: Tue, 14 Jul 2026 01:47:23 GMT  
		Size: 26.8 MB (26800462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e1cc5ea947cd62ae2ce24a372d1d425ed7b2f973139c39ecafd214ac3b75fcb`  
		Last Modified: Tue, 14 Jul 2026 02:38:41 GMT  
		Size: 69.8 MB (69829128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0333755c6a343a6667c3e85bd30934f25801920c67f70028fd0cb0003e6a4bc`  
		Last Modified: Tue, 14 Jul 2026 03:18:07 GMT  
		Size: 100.7 MB (100716048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ab86c6ec2b9315502727ac923e95a71d0712fb3db2ab9d73161056848e1e17`  
		Last Modified: Tue, 07 Jul 2026 22:12:36 GMT  
		Size: 65.6 MB (65615757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc2605e076f38641dff173fa6dcd7b32be5c4be63164ed88a2f5edcb0716827`  
		Last Modified: Tue, 14 Jul 2026 03:18:03 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:trixie` - unknown; unknown

```console
$ docker pull golang@sha256:f49c2bba6ffbfb517a2515526350d2c44a1d014029fba42c28730da43e61f2ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10787591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d0aaafe715af4138f8a89b1865a6e0b394ac2e1fe36198881386fb42ac7a8f`

```dockerfile
```

-	Layers:
	-	`sha256:79d8db0fb3fb9f438b4da1eb717d2fde3a092d1ae96e8af09785f8e7ba60e2f0`  
		Last Modified: Tue, 14 Jul 2026 03:18:04 GMT  
		Size: 10.8 MB (10758694 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ccf753263ad140e1497d462f1c1320ca98f1ae60eac955645a5432049775ace6`  
		Last Modified: Tue, 14 Jul 2026 03:18:04 GMT  
		Size: 28.9 KB (28897 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:trixie` - linux; ppc64le

```console
$ docker pull golang@sha256:16a70a5fa5d2be930fbf049da9021c90f824c2f05b6b0e0c04d6cafe426e0c1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.0 MB (311043867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df2b192a7e208628dc0c474456350aaa75ab08fc6dbc646e7d46c61e1cb2e2c6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:51:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 12:15:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 14:54:29 GMT
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
# Tue, 14 Jul 2026 14:54:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 14 Jul 2026 14:54:35 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83863de742cad030811407b90530c7828802e9f11207386bf85f9d35cecf7503`  
		Last Modified: Tue, 14 Jul 2026 03:51:33 GMT  
		Size: 27.0 MB (27021065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b551dcb76f19ba607c6efcd591fb5d3e48d58c66dc467f180227abb4f55f0844`  
		Last Modified: Tue, 14 Jul 2026 12:16:23 GMT  
		Size: 73.0 MB (73044102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64ae770b3c9dac0da1a351285e8f0037daa047e8d6fdffa859a4b6917863f5de`  
		Last Modified: Tue, 14 Jul 2026 14:55:33 GMT  
		Size: 93.0 MB (92981402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef44659a171c971760f09e18e2fc71c988ee9946f68aac010d8a6276065cb298`  
		Last Modified: Tue, 07 Jul 2026 22:14:21 GMT  
		Size: 64.9 MB (64863129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:197a3b7d2f444c5b7726552fdac9c06f286d4141e044c428298cb118b976ffa6`  
		Last Modified: Tue, 14 Jul 2026 14:55:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:trixie` - unknown; unknown

```console
$ docker pull golang@sha256:fda7287703c7289510d682ee11ec2e1b856e631c676e6b13a1688b031489315b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10812284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c8ed01618b3b73ff058d3bc3a959bffd3a97d7021dd0c7d64d3d64dd35a5968`

```dockerfile
```

-	Layers:
	-	`sha256:60df218ef19d5ec80b16eda706b32a91d20ff6e08d1fa8b94bfd21b35d7d3877`  
		Last Modified: Tue, 14 Jul 2026 14:55:30 GMT  
		Size: 10.8 MB (10783263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d1c865f5161dedb66fe31b16db3d21dd3dc1ebff6c01668512292a22a668aa5`  
		Last Modified: Tue, 14 Jul 2026 14:55:30 GMT  
		Size: 29.0 KB (29021 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:trixie` - linux; riscv64

```console
$ docker pull golang@sha256:57603eb74230a7eff25d7e098ca6d7cda934e8ecce7ff44ef0dae1ae6858e91f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.4 MB (336369204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b27bb83be1376d0a8eb1f2bf2a35732c0bb98f2954be0c6ef7e8aa10f29c6b2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Wed, 15 Jul 2026 17:32:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 16 Jul 2026 22:52:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 20 Jul 2026 00:58:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 08 Jul 2026 20:35:16 GMT
ENV GOLANG_VERSION=1.26.5
# Wed, 08 Jul 2026 20:35:16 GMT
ENV GOTOOLCHAIN=local
# Wed, 08 Jul 2026 20:35:16 GMT
ENV GOPATH=/go
# Wed, 08 Jul 2026 20:35:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 Jul 2026 20:35:16 GMT
COPY /target/ / # buildkit
# Mon, 20 Jul 2026 01:08:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 20 Jul 2026 01:08:34 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3b6761664ee64309406635b6031c9fbc23849478cf77b4c50cc52c5a5a142dc8`  
		Last Modified: Tue, 14 Jul 2026 00:28:46 GMT  
		Size: 47.8 MB (47797790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e56e13f8ba5640653be74c77c11bec4a12b57a50d949a7c24cdcd88f8c959bb5`  
		Last Modified: Wed, 15 Jul 2026 17:33:59 GMT  
		Size: 25.0 MB (24968294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81442ecb065fc9c5f293fca1a82fcd48a01ca1d9549e5862c62bee3c2c85b85e`  
		Last Modified: Thu, 16 Jul 2026 22:55:38 GMT  
		Size: 66.7 MB (66683012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1122ed21429f3ed16374064128a8e211d4bd14f3883466b6c753262b1b54d92d`  
		Last Modified: Mon, 20 Jul 2026 01:06:54 GMT  
		Size: 131.8 MB (131756600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11ba61866bff16c6d67dd671f0c2945d522b517e8a4429596c829088207b394e`  
		Last Modified: Wed, 08 Jul 2026 20:41:58 GMT  
		Size: 65.2 MB (65163350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c032b6639f10c9080324cd5aeef8647a071c1b78b83ceef2b88977a9ec0ac87`  
		Last Modified: Mon, 20 Jul 2026 01:13:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:trixie` - unknown; unknown

```console
$ docker pull golang@sha256:63de5e2adb18c5f80991edc744fde37d59bc6501ca3ca20e86a1cee8f8aae63a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10886121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:807c76e28a5729aa3a3b94aac33f9ea33b5cd9395b59361a5fe8123729e9a6a0`

```dockerfile
```

-	Layers:
	-	`sha256:3e6510e7f4c76106403cf09b31952b2179233ae661763f66533969f121e91a6d`  
		Last Modified: Mon, 20 Jul 2026 01:13:10 GMT  
		Size: 10.9 MB (10857096 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ca4fe345b2008ba23547ffcfe8b932803594da94e63b1d1482bcc8d2e9d225e`  
		Last Modified: Mon, 20 Jul 2026 01:13:09 GMT  
		Size: 29.0 KB (29025 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:trixie` - linux; s390x

```console
$ docker pull golang@sha256:1906b3888db50e456a68d79c6a8c2c0d1bda8ee17f68af02504a75b06666fbbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.4 MB (287432419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73e84fecba1d5f84a2c4053e4296a554f3115de6442f3bdee775d2ab1a62738e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:08:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 04:47:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 05:28:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 22:11:26 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 22:11:26 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 22:11:26 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 22:11:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 22:11:26 GMT
COPY /target/ / # buildkit
# Tue, 14 Jul 2026 05:28:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 14 Jul 2026 05:28:26 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e63c11684f0eef7c3f7f0fbefbbe513218c6eb99f11d347384595ee632687aaa`  
		Last Modified: Tue, 14 Jul 2026 03:08:18 GMT  
		Size: 26.8 MB (26804611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c8feb8bfdc0a1416f379cc1a217d8affe7b45e12197ca17393856ccbc9910b`  
		Last Modified: Tue, 14 Jul 2026 04:47:29 GMT  
		Size: 68.6 MB (68633831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22aa02c29236f86f016bb79abc7f5dd28a947ac0d16757196d60a8cf50ccdd82`  
		Last Modified: Tue, 14 Jul 2026 05:29:09 GMT  
		Size: 76.1 MB (76083267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f02a0b92c64bea7b8e82336e0a7f2afcc7dad25aedbcab036aeb985d0f3e2228`  
		Last Modified: Tue, 07 Jul 2026 22:11:51 GMT  
		Size: 66.5 MB (66528843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46a306d1e60a086c1cda5c427e5b1c061c21b33d9dcde54ab83cdea4eb3d46f4`  
		Last Modified: Tue, 14 Jul 2026 05:29:02 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:trixie` - unknown; unknown

```console
$ docker pull golang@sha256:83b8e4e23f97b866c3d508a8bf331febb7faed73c4b6b01ee8a2ddaedd50d755
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10626800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0845b6ad8324a200a79435788d8e81e4444a63209568190104aa42a294bede0a`

```dockerfile
```

-	Layers:
	-	`sha256:9a1f377d17998b3f9e308263b44ce756fb79c8bcc36e2274aa39e1ccd97885bc`  
		Last Modified: Tue, 14 Jul 2026 05:29:06 GMT  
		Size: 10.6 MB (10597851 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e02d5b36563dadcb75d81293f7a27a355b3c329e95ca41f8b0b95b729807df3`  
		Last Modified: Tue, 14 Jul 2026 05:29:03 GMT  
		Size: 28.9 KB (28949 bytes)  
		MIME: application/vnd.in-toto+json
