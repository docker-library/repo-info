## `golang:tip-bookworm`

```console
$ docker pull golang@sha256:5a687ffb13916dcdc9835274660f87b40b930ba78090b11940fa53bc7778993e
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

### `golang:tip-bookworm` - linux; amd64

```console
$ docker pull golang@sha256:c26d94f2e68a958acc29e7d3ef8fc3e8b777e54cf19850a26dbeb4cc52f8aa85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.1 MB (332065182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49ab607146d36dfa80e0055296be193d1f13f2bfb44708df48e929b62103b4e6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:29:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:17:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:19:33 GMT
ENV GOTOOLCHAIN=local
# Tue, 14 Jul 2026 04:19:33 GMT
ENV GOPATH=/go
# Tue, 14 Jul 2026 04:19:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:19:33 GMT
COPY /target/ / # buildkit
# Tue, 14 Jul 2026 04:19:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 14 Jul 2026 04:19:36 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0ec93c9c52acfa7f522ce201898ba8ebdf67a6d01c6a4ea70e8d413dbc534a`  
		Last Modified: Tue, 14 Jul 2026 01:43:26 GMT  
		Size: 24.0 MB (24044100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd2dd4f152bd44fe5b02de3e47483f6cdf32bf3d7ea1c7cc70d57b075f2eebd`  
		Last Modified: Tue, 14 Jul 2026 02:29:56 GMT  
		Size: 64.4 MB (64408455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1209ad7536daa73aed9ec2178f228b1c96ce8090537ff85ad7e5fb8317d68ba2`  
		Last Modified: Tue, 14 Jul 2026 04:20:02 GMT  
		Size: 92.5 MB (92512805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a5d7d048677a9e309f15f3f0a5e4ac8cb6bd6248d7f3bce4134c428fd02ac61`  
		Last Modified: Mon, 13 Jul 2026 17:42:08 GMT  
		Size: 102.6 MB (102602261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67201af07cc5f3c7d44d8f6be2961c836651fddee45142559c8fd950d61a94fc`  
		Last Modified: Tue, 14 Jul 2026 04:20:00 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:0df63f34cb63b41b407a23517ef4421fabb2dfbbca64630d9fae1e63d31fd499
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10525499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2200c06899195ca144f8de79d8526528beb4f89a0b03e44db9263b7b1dfb7e11`

```dockerfile
```

-	Layers:
	-	`sha256:9c969db22e73ca721bfc36c768b6443113f407d8d0e8e16d84923e255897d11f`  
		Last Modified: Tue, 14 Jul 2026 04:20:00 GMT  
		Size: 10.5 MB (10497109 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:856242cb5c945ba613065f13c43acf91f1b6a8f974870ec5f32a6d5878ba3fdd`  
		Last Modified: Tue, 14 Jul 2026 04:20:00 GMT  
		Size: 28.4 KB (28390 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:1b3eaf2abeb720d16430256b69fd2be66eae450b79e51fe0dac935de77211ef4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.5 MB (290508179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f70638c6f63c8171277a13f843c9326f37ba01f3b2f18ec8484f75c6aa09711`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:29:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:15:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 06:30:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 06:33:49 GMT
ENV GOTOOLCHAIN=local
# Tue, 14 Jul 2026 06:33:49 GMT
ENV GOPATH=/go
# Tue, 14 Jul 2026 06:33:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 06:33:49 GMT
COPY /target/ / # buildkit
# Tue, 14 Jul 2026 06:33:52 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 14 Jul 2026 06:33:52 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f08ce4a309195cc7b461516684fc0628d56fd465c538e7c129a9eecab47df45a`  
		Last Modified: Tue, 14 Jul 2026 00:13:47 GMT  
		Size: 44.2 MB (44203181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1132f9cb1292797584a716d4e35906092ffde6a92ac73ad7e53bf2011c37fd7c`  
		Last Modified: Tue, 14 Jul 2026 02:29:25 GMT  
		Size: 22.0 MB (21950005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0890883874051ebbc97c0f302949cefff32c87f2ad60cc2477409b9c7da643b4`  
		Last Modified: Tue, 14 Jul 2026 04:15:26 GMT  
		Size: 59.7 MB (59662246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b56cd97e8483f64da4e765521b092986d4573b9fa341af72453af302006a1ac`  
		Last Modified: Tue, 14 Jul 2026 06:34:17 GMT  
		Size: 66.4 MB (66372513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e45e113ca2e6199a8c4198583f287b92df437e9eebbbfb343c97477f57a0f94d`  
		Last Modified: Mon, 13 Jul 2026 17:41:27 GMT  
		Size: 98.3 MB (98320075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a1f80ac7ba6d91a5f09ae0263ab195fef185bfc1ccf00e0a3d3cb51d2d92dd`  
		Last Modified: Tue, 14 Jul 2026 06:34:15 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:5e5fac171df599525560400ea4d94d98bcf982a6f31ff8fe156526e5cccf3048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10332303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:339b75655a2481699fce9626053628a03aa39e0c965f73938caf3bf5d673c278`

```dockerfile
```

-	Layers:
	-	`sha256:53f53ea0df4321df979b85347aa6eca3a63e0fe900f3656c1a8a8a6303ba265b`  
		Last Modified: Tue, 14 Jul 2026 06:34:15 GMT  
		Size: 10.3 MB (10303805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:598d5cd2654f07636c2e2709a4c32d51ef6617061764a7da8178fa601e3a4d4a`  
		Last Modified: Tue, 14 Jul 2026 06:34:15 GMT  
		Size: 28.5 KB (28498 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:0f32256455ae4cfbbebcadbafae4c346f2af0467a382657d9f65fce4d6cfe3bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.1 MB (320063460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13aca73df68a50463dfeacc21e2ac0b35af5ee17edb373026dd5f62b7649b326`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:36:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:19:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:21:28 GMT
ENV GOTOOLCHAIN=local
# Tue, 14 Jul 2026 04:21:28 GMT
ENV GOPATH=/go
# Tue, 14 Jul 2026 04:21:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:21:28 GMT
COPY /target/ / # buildkit
# Tue, 14 Jul 2026 04:21:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 14 Jul 2026 04:21:31 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb3bfe7e3c6a92e1bda6d3ddde9de882610239eba4323fd75d10ba1bccee7876`  
		Last Modified: Tue, 14 Jul 2026 01:46:42 GMT  
		Size: 23.6 MB (23612703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5af2d47cd8540f7af1f8ba488289fa82e9a2258d051477163651baf22fc99ea6`  
		Last Modified: Tue, 14 Jul 2026 02:37:00 GMT  
		Size: 64.5 MB (64498147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ec7660be60b8220aba8e43f373f6818e7a8030d83d3c25f3e301be7bb31f180`  
		Last Modified: Tue, 14 Jul 2026 04:21:58 GMT  
		Size: 86.6 MB (86586813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5731a5f94e129c46506b6f51b7f1d416b6d39475c8508894e8e48a8d20505fff`  
		Last Modified: Mon, 13 Jul 2026 17:42:09 GMT  
		Size: 97.0 MB (96981949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ff7356cb045ec36a2455b338327a8f033612209b04fbdbdc5770b26e12956cf`  
		Last Modified: Tue, 14 Jul 2026 04:21:55 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:ac9447b61fde79831f8c26de5b4e9edd36c095f8f53a4985223903ba4d5cfa02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10553454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f931190254eee46505fb1fcb213c95addbc96b830f6807651e4ce5cb8585e44`

```dockerfile
```

-	Layers:
	-	`sha256:e12260e556e88a1bd85d6e7d2b6efd80ae81ad9d3cf71bfc896261d735c33ac5`  
		Last Modified: Tue, 14 Jul 2026 04:21:56 GMT  
		Size: 10.5 MB (10524933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57eb045baa56e75164331e6b93d158f4d7c5cb665b69f754992f36f76bdc1a34`  
		Last Modified: Tue, 14 Jul 2026 04:21:55 GMT  
		Size: 28.5 KB (28521 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; 386

```console
$ docker pull golang@sha256:6216b8d3760e00d02f3f50b32727fdf8cb5e671b59b49c2cf7ca6dc1f955c6af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.9 MB (330945859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f399220418b090674ae14a89cfdc534c06fa7d70631ca639eeb194944ce591eb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:38:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:14:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:16:56 GMT
ENV GOTOOLCHAIN=local
# Tue, 14 Jul 2026 04:16:56 GMT
ENV GOPATH=/go
# Tue, 14 Jul 2026 04:16:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:16:56 GMT
COPY /target/ / # buildkit
# Tue, 14 Jul 2026 04:16:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 14 Jul 2026 04:16:59 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:7ed62c27c4f21adf732321eceae8ffb1eec07091e8f0d4e0c808bda76320013f`  
		Last Modified: Tue, 14 Jul 2026 00:13:55 GMT  
		Size: 49.5 MB (49485439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57925bd1ff28d8c7df42e8e4386b1a8e5104548196adaa28c62e0c7b26b5f2b9`  
		Last Modified: Tue, 14 Jul 2026 01:46:55 GMT  
		Size: 24.9 MB (24879833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85a17209efcdd987645a47d85b886216acc5254a2a0c1aef2364b9a70bdfd8b2`  
		Last Modified: Tue, 14 Jul 2026 02:38:33 GMT  
		Size: 66.2 MB (66249184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:715dede5f43846f5fba4fbac85ebee6252c23d9f6344677540b1c1dbfb9c081f`  
		Last Modified: Tue, 14 Jul 2026 04:17:26 GMT  
		Size: 89.9 MB (89935843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:380b58f291fa5b273e41e2f61343526fcb5023064f6760d0ecb0cd1486c9909e`  
		Last Modified: Mon, 13 Jul 2026 17:41:10 GMT  
		Size: 100.4 MB (100395402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e14f4cd5a8968d80592692f7d63aee92d7a85f0f45c66503ff8195ba7771d6`  
		Last Modified: Tue, 14 Jul 2026 04:17:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:ab22efb7c1ddf56ef38f8a3e5d8980b473dd006ebf748660039d2d31eda0f1ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10505046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1acc262c61557bed74a18e36847eefe96fea444ad713ad3ab4f93787d6ec51dc`

```dockerfile
```

-	Layers:
	-	`sha256:2a226b18552bfb3888b59601f56bde4995d90434b3ae47650aca65ab1ee57c68`  
		Last Modified: Tue, 14 Jul 2026 04:17:24 GMT  
		Size: 10.5 MB (10476689 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8bd604ad5f7178abc0bdef0e2b32908acc6e8ac4515bd0c527a1a52e1b445639`  
		Last Modified: Tue, 14 Jul 2026 04:17:23 GMT  
		Size: 28.4 KB (28357 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; mips64le

```console
$ docker pull golang@sha256:d2a416aacb026c4329b7156ab6dc21cbe86d2e585732b75dd1f6bae4443cfcc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.8 MB (301799995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94a7221dfa4989a44a052b258532b33a9f53e04cab2fc8510affedc0693365de`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'mips64el' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 15:23:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 20:35:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 21:27:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 23:42:04 GMT
ENV GOTOOLCHAIN=local
# Tue, 14 Jul 2026 23:42:04 GMT
ENV GOPATH=/go
# Tue, 14 Jul 2026 23:42:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 23:42:04 GMT
COPY /target/ / # buildkit
# Tue, 14 Jul 2026 23:42:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 14 Jul 2026 23:42:23 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:2c328c8c141bfe93d6858b21fa00b7c39f26eabfa97b46e975fdb98a417abb35`  
		Last Modified: Tue, 14 Jul 2026 00:13:01 GMT  
		Size: 48.8 MB (48787637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76566152e1d6c0e89b31535cd95a023c05f7a786977745a6d5a4e7142f155ef7`  
		Last Modified: Tue, 14 Jul 2026 15:24:33 GMT  
		Size: 23.6 MB (23624346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55e94da2d06bbf493038b6b10b2d438560e41649cc15cd3a34176f7d9c726ae2`  
		Last Modified: Tue, 14 Jul 2026 20:36:21 GMT  
		Size: 63.3 MB (63317624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a518d15ab415a9a35659ceba9c9a510178d3cd2c5a02b0a6eba1e273ebee823a`  
		Last Modified: Tue, 14 Jul 2026 21:29:49 GMT  
		Size: 70.1 MB (70117864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa0a14f3f700263fe78d18234062fe834f2ba3aead253a37aabc69d405f101bb`  
		Last Modified: Mon, 13 Jul 2026 18:04:23 GMT  
		Size: 96.0 MB (95952365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d9701589167f1dc1782ee508a86187df1232f31491001283c08c29dd69fac4`  
		Last Modified: Tue, 14 Jul 2026 23:44:15 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:eeea947fb9033a342aa43d09f881d02f1bcca42a47920774ca8bd507fac8aa1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 KB (28239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39682267dbbf85bf3debd856655c60c1aabd7e5772e314a62eac40c393cbafbe`

```dockerfile
```

-	Layers:
	-	`sha256:e958cc05a8192e7e7cb4b03840ca4ee3eda733a167957784b8f6bb7d196ec000`  
		Last Modified: Tue, 14 Jul 2026 23:44:15 GMT  
		Size: 28.2 KB (28239 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:90bb195028bb00de70e3654747b91e6ae4103c2c4e5d27033ec1800b3961935b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.4 MB (337359842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6619f8b74ca42f1e2f74df11960aa17db14f2b003555874100e119de54e9a648`
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
# Mon, 13 Jul 2026 17:41:17 GMT
ENV GOTOOLCHAIN=local
# Mon, 13 Jul 2026 17:41:17 GMT
ENV GOPATH=/go
# Mon, 13 Jul 2026 17:41:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 17:41:17 GMT
COPY /target/ / # buildkit
# Mon, 13 Jul 2026 17:41:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 13 Jul 2026 17:41:23 GMT
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
	-	`sha256:f5ba5e95b6ffee5086f0309826a8282fcab9ba9ae8fcd16a3725ed1ee2dc1cd2`  
		Last Modified: Mon, 13 Jul 2026 17:42:19 GMT  
		Size: 99.0 MB (98976574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e12e54124dd8cfcc57b0c601f967e7aedb840b6a0fb88a8e77f43f6e990d1c12`  
		Last Modified: Mon, 13 Jul 2026 17:41:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:0245dc8b1f3d63b7c495ebe60ef4174bb14582f27b14b66f28237c099f6eabf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10497990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6de57c09c002ffb236fefc77794d5b68d11daee91fab21101e6bde2a0e8def5`

```dockerfile
```

-	Layers:
	-	`sha256:db10b76193c069ee0a9a126e74e84d35fbea65082a4a9cd85f4851587dba0c85`  
		Last Modified: Mon, 13 Jul 2026 17:42:17 GMT  
		Size: 10.5 MB (10469558 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65f67001fad39ac11d9c271c4180c59f95daa1085101b97870ed730295e493cc`  
		Last Modified: Mon, 13 Jul 2026 17:42:16 GMT  
		Size: 28.4 KB (28432 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; s390x

```console
$ docker pull golang@sha256:d76bdaf01541f163b74cfbaaefcebc461d0dc6996b9d25d1a12e601cb3fa94e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.9 MB (304862528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93becff5aa4eb56861ac883a383238147c654092ad97f8054aa5f61151508613`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 03:07:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:46:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 05:28:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 13 Jul 2026 17:39:52 GMT
ENV GOTOOLCHAIN=local
# Mon, 13 Jul 2026 17:39:52 GMT
ENV GOPATH=/go
# Mon, 13 Jul 2026 17:39:52 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 17:39:52 GMT
COPY /target/ / # buildkit
# Tue, 14 Jul 2026 08:36:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 14 Jul 2026 08:36:58 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4fa1f9755ea504ea510505c6aa6140e24c157db826373159a938bdb7846c5eb`  
		Last Modified: Tue, 14 Jul 2026 03:07:36 GMT  
		Size: 24.0 MB (24039166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b278779eeefc8e0ab5a2dec92882cc188d61f2766e99be2360e27e73c4c186e6`  
		Last Modified: Tue, 14 Jul 2026 04:47:17 GMT  
		Size: 63.5 MB (63505738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beb6889e933e1beec1147c57fd914538012d8678c9164e2cefa755198afdee14`  
		Last Modified: Tue, 14 Jul 2026 05:28:56 GMT  
		Size: 69.1 MB (69119922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9d8998f4596451be5e05276e8f2804dc2705dbebe9a9aee61d0e143808d1960`  
		Last Modified: Mon, 13 Jul 2026 17:40:31 GMT  
		Size: 101.0 MB (101040264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370deeaa2e7a387c1ea8d8cee006901f351dbe6cf3c438a51301725748824806`  
		Last Modified: Tue, 14 Jul 2026 08:37:25 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:4850b11b149b78febf478f8e72ba098dec07a11c7d93e5d47e5374402c923d77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 MB (10358005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c5015b473eac34407e27611f7aa5c848dcd81b7889d91df579c935ecd84fd6f`

```dockerfile
```

-	Layers:
	-	`sha256:a21edcebcf8081c84b6d0b001f462eeacc940970e891c53d99612579043ef7a6`  
		Last Modified: Tue, 14 Jul 2026 08:37:25 GMT  
		Size: 10.3 MB (10329615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99a345a803c6168844948eef3f63311bf2311498d5b9d2371e15ed196f54a8cb`  
		Last Modified: Tue, 14 Jul 2026 08:37:25 GMT  
		Size: 28.4 KB (28390 bytes)  
		MIME: application/vnd.in-toto+json
