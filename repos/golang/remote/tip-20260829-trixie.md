## `golang:tip-20260829-trixie`

```console
$ docker pull golang@sha256:e485c3351f606bdf04cf5acbb79a79e58fb26680a934668d7efd2de755613875
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

### `golang:tip-20260829-trixie` - linux; amd64

```console
$ docker pull golang@sha256:6adbdc61f412600aef2db73222720e50535cc9e676d0ee82c5d2e82b9f570b88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.8 MB (351763003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:584b464838f8cbe802d83c9bd5bdf9e5a624904cb374fb51c386967732443d82`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:38:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 01 Sep 2026 23:25:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 01 Sep 2026 23:34:21 GMT
ENV GOTOOLCHAIN=local
# Tue, 01 Sep 2026 23:34:21 GMT
ENV GOPATH=/go
# Tue, 01 Sep 2026 23:34:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:34:21 GMT
COPY /target/ / # buildkit
# Tue, 01 Sep 2026 23:34:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 01 Sep 2026 23:34:24 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00f78834a2fef03250be89a7741ff39d0e6bbd860298ea129a84ce5eadda1f6d`  
		Last Modified: Tue, 25 Aug 2026 00:51:08 GMT  
		Size: 25.6 MB (25639590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc19164244e861d91ebd80a17e2c78c5be43a8059a32ab6fc459a92002b22f2`  
		Last Modified: Tue, 25 Aug 2026 01:38:48 GMT  
		Size: 67.8 MB (67800074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb1cb1e5fd2542a3bd294a2ec0836e9bcb5d3dfaee7c55b74e821f8da2d1e586`  
		Last Modified: Tue, 01 Sep 2026 23:25:39 GMT  
		Size: 102.3 MB (102339195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1749c03789d9e81dba707ab345cde7e034bc9e5638c82fdcb570d9644f19690d`  
		Last Modified: Mon, 31 Aug 2026 19:19:50 GMT  
		Size: 106.6 MB (106646158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e962e50fc6172960dc5ce5229ba1d01f944ca2d65961f81efff02ec4d134d62`  
		Last Modified: Tue, 01 Sep 2026 23:34:46 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260829-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:879e80a984415ec54ba765e61e35f2a84e4a045712c35461156dbd5acb24b200
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10820461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fe067af9ab6714a8f3acd04a3ca81bbf02182ce2ca2dacedf25a598c3f60e36`

```dockerfile
```

-	Layers:
	-	`sha256:330f6c6e493b5b5dccd4e6d1ff2ecb4357992c04d2649040b03c1ab945206a5f`  
		Last Modified: Tue, 01 Sep 2026 23:34:47 GMT  
		Size: 10.8 MB (10791776 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bd361481d7839ca27b4d98e4a24f21fcd706a8b038ad4a3fdf2d8966e494f73`  
		Last Modified: Tue, 01 Sep 2026 23:34:46 GMT  
		Size: 28.7 KB (28685 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260829-trixie` - linux; arm variant v7

```console
$ docker pull golang@sha256:5e03b6a3be9afeeb69ee5abb87cd4dcd1e8c34532d339be937eed36d2fbf31e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.5 MB (307508349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4c3739ff2dd9ac6aba737868884a42ae4d4932dd44844bc75652ef54fe71abf`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:33:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:36:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 01 Sep 2026 23:25:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 01 Sep 2026 23:32:17 GMT
ENV GOTOOLCHAIN=local
# Tue, 01 Sep 2026 23:32:17 GMT
ENV GOPATH=/go
# Tue, 01 Sep 2026 23:32:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:32:17 GMT
COPY /target/ / # buildkit
# Tue, 01 Sep 2026 23:32:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 01 Sep 2026 23:32:20 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:cdac0eac0749288813a078c4279ee1e58b9f6a38246ae0d43ef25f305013e0fc`  
		Last Modified: Mon, 24 Aug 2026 23:20:50 GMT  
		Size: 45.8 MB (45764051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae11486f16a4a24e28283020d5361fb5a7863e1f116ef0dd9df4c0c234a82e9`  
		Last Modified: Tue, 25 Aug 2026 01:33:16 GMT  
		Size: 23.6 MB (23637061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:990008fd0376eedb7a7400308f614aa553c4160bfe5804a99217456a931b9b98`  
		Last Modified: Tue, 25 Aug 2026 02:37:11 GMT  
		Size: 62.7 MB (62745385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4eee01adc73c8829ce45a4a16ad2e90503152d9cdae4e9682c9fd2562e23f7b`  
		Last Modified: Tue, 01 Sep 2026 23:25:40 GMT  
		Size: 73.0 MB (72982268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b1ec9892daff3df8c8868fd667921d182ceb849f1e765c9d1e87e011cc3d4bf`  
		Last Modified: Mon, 31 Aug 2026 19:19:50 GMT  
		Size: 102.4 MB (102379426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae3bc923eccf36685cc05dbc86abd2ebb72538e43d46fef7eb58e7867e5a989`  
		Last Modified: Tue, 01 Sep 2026 23:32:42 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260829-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:014f5114b5cdafcae00cb573bdaa1f95337fc8a02ae17e2236f6dac09a4f992e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10616469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2af189342e150b8d1c8095c1c6e4ed2e7de2247c601b74a0c91b44ff14d233f`

```dockerfile
```

-	Layers:
	-	`sha256:106aec8d5e04dca0f7648abef36aa2d831f482e524e1ed89db5a77bd2ea4fbc3`  
		Last Modified: Tue, 01 Sep 2026 23:32:42 GMT  
		Size: 10.6 MB (10587661 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4006af044eae888371a16246e1672d0f3dfff6f9bf61100a861083683a0b239b`  
		Last Modified: Tue, 01 Sep 2026 23:32:42 GMT  
		Size: 28.8 KB (28808 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260829-trixie` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:2f383f4fd39c405da54980b91d412d1dffab74390b627791f27b2f6668d98b66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.6 MB (341586119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30e776c470c17dc16a0bc10c6350c563d286e24bec0575487fbfbbad0b80b635`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:43:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 01 Sep 2026 23:33:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 01 Sep 2026 23:34:11 GMT
ENV GOTOOLCHAIN=local
# Tue, 01 Sep 2026 23:34:11 GMT
ENV GOPATH=/go
# Tue, 01 Sep 2026 23:34:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:34:11 GMT
COPY /target/ / # buildkit
# Tue, 01 Sep 2026 23:34:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 01 Sep 2026 23:34:14 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa3c72c6402ef534e043b1dca6fc0ab99e044c333c7679d2508eac3817a8570`  
		Last Modified: Tue, 25 Aug 2026 00:53:19 GMT  
		Size: 25.0 MB (25027916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42fd700369b465b3f57ff668eea94fc0b0e67029df25a71600d2c522a452406d`  
		Last Modified: Tue, 25 Aug 2026 01:43:41 GMT  
		Size: 67.6 MB (67604531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dbf4f4bfd8e2a66ce1ab8bef28419c157c9a619a81aa99ec0cbbc7b60a86c92`  
		Last Modified: Tue, 01 Sep 2026 23:34:41 GMT  
		Size: 98.5 MB (98486647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5a76591736ba2ca2076090e2b5bb1ee1cb0453562e9eaef712f2aa29b3c161`  
		Last Modified: Mon, 31 Aug 2026 19:37:03 GMT  
		Size: 100.8 MB (100762014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b986edf4e761a48ce20fc4551b052b64d9a18be2e68d905c515bd923663819f6`  
		Last Modified: Tue, 01 Sep 2026 23:34:39 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260829-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:c60c88c2e805f7cb09e323ca34a4326c16fa860c03e32d210c27ad66f1cbb113
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10940434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe5ce83cb60e75993892d68d6084f41bbd94f56bd1f6e66bf6b46d73f94f12a5`

```dockerfile
```

-	Layers:
	-	`sha256:d8b9a80ce78c39855677be4456272c3d8806ae15afb99de0636bac9ccb46b4fc`  
		Last Modified: Tue, 01 Sep 2026 23:34:39 GMT  
		Size: 10.9 MB (10911594 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:60afd854eb1a794829a3aeb37e387633ad44c6b590408457e278f1afd1395b5f`  
		Last Modified: Tue, 01 Sep 2026 23:34:39 GMT  
		Size: 28.8 KB (28840 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260829-trixie` - linux; 386

```console
$ docker pull golang@sha256:b9b8e618a331cc55cf695f04935d951fc455805059b06226c2b75f9bae30a333
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **352.9 MB (352885210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11345c2c27954c8c430805729db6f3c43951d3abb18d2592be993e0f3e7ca3b1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:42:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 01 Sep 2026 23:35:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 01 Sep 2026 23:36:47 GMT
ENV GOTOOLCHAIN=local
# Tue, 01 Sep 2026 23:36:47 GMT
ENV GOPATH=/go
# Tue, 01 Sep 2026 23:36:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:36:47 GMT
COPY /target/ / # buildkit
# Tue, 01 Sep 2026 23:36:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 01 Sep 2026 23:36:50 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b893e4e8ae50bbe3f6f662d089d78bdcec599d1f4f6ffcc53ea4c77eba1418a5`  
		Last Modified: Mon, 24 Aug 2026 23:21:29 GMT  
		Size: 50.8 MB (50849582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3d6a9e0e8ddbd4b412b0ad592c01d91f7767a3f5d47a973f905c2abd8535165`  
		Last Modified: Tue, 25 Aug 2026 00:51:07 GMT  
		Size: 26.8 MB (26801487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4f786c5c6711279dd7e937949c535eb18515f9760e66ef3ebd7e8bff5946d35`  
		Last Modified: Tue, 25 Aug 2026 01:42:46 GMT  
		Size: 69.8 MB (69837054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6840ab9f4e25072a06ddd82c15e59cdb15c272fc2408ce3a15b40813ad4d6d71`  
		Last Modified: Tue, 01 Sep 2026 23:37:16 GMT  
		Size: 100.8 MB (100784449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:566a64d88b0f9490dd6f4ee5fc00d3336481d6330a0401ccfec0d4720041096b`  
		Last Modified: Mon, 31 Aug 2026 18:51:23 GMT  
		Size: 104.6 MB (104612480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e033295f6416185a11987a1dbcbe1147fe96710f078d1002bb5b70219cf0d834`  
		Last Modified: Tue, 01 Sep 2026 23:37:13 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260829-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:34c0257089533da686ed768eb73139a4507084f5a1c6ad535d22e412e3683f7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10791680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:402f44d8c098fca94daaa75651f98d0d6268cb2f5b2f74a0e0e4fcaffc6dda51`

```dockerfile
```

-	Layers:
	-	`sha256:a43a2dfc9c2a325ae663fbc831b969edf7b63b378c9a40fef4156e5e65398b57`  
		Last Modified: Tue, 01 Sep 2026 23:37:14 GMT  
		Size: 10.8 MB (10763038 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f661bf63a72a18b285cb9edbfe0f276a78988117fb415d58d0e435376470e4ea`  
		Last Modified: Tue, 01 Sep 2026 23:37:13 GMT  
		Size: 28.6 KB (28642 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260829-trixie` - linux; ppc64le

```console
$ docker pull golang@sha256:5dd9a47f5dc9c310fb8716320b137a42e2c0133be6fdde8aab03bafff6153c6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.4 MB (349374411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fa9084a2d03d5d4b63d261969491d79172ebb427fd453a00b7a9099759a5c6c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 03:37:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 09:49:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 20:05:36 GMT
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
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1442b53cb90baed6c48b291e1a0a38334a0f6d974b82a480e299611a8fb76e6e`  
		Last Modified: Tue, 25 Aug 2026 03:38:18 GMT  
		Size: 27.0 MB (27022202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:689900c76da5590e58792b7505c0dbe058be0e1d5c657629bbb7e6fc3cdf33e3`  
		Last Modified: Tue, 25 Aug 2026 09:50:52 GMT  
		Size: 73.1 MB (73076336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63d193985f4543178206a2cc1c3353653643f9eb15b11697b276d2cf6e690d49`  
		Last Modified: Mon, 31 Aug 2026 20:08:55 GMT  
		Size: 93.0 MB (93047161 bytes)  
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

### `golang:tip-20260829-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:cb8540d080a36c8cd0824a1361d1079d90dcf337c8cdfc428065a08aeff7d74d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10816302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c98eda36c9ccc0885c209b4732ebe0aa841b7c35efd39e3cb547c599c5deef8`

```dockerfile
```

-	Layers:
	-	`sha256:d177bad99a611857a93f80219e310222958fc9e4996e33e2bae7688398c2803b`  
		Last Modified: Wed, 02 Sep 2026 01:12:12 GMT  
		Size: 10.8 MB (10787564 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70dcae540b5ac189fce472349d11d733def4165174c62bf2ca2d94bda2380c57`  
		Last Modified: Wed, 02 Sep 2026 01:12:11 GMT  
		Size: 28.7 KB (28738 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260829-trixie` - linux; riscv64

```console
$ docker pull golang@sha256:1b6887506ef04428c0752953e90584734ac48c729e5423b1ac88fd35e110c6fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **378.3 MB (378307296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f38a8529d7caa44372347e25eb8a9023cda5c1a5554b2dfe5c7f73e6d21c39e3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 00:23:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 29 Aug 2026 04:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sun, 30 Aug 2026 14:07:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 01 Sep 2026 14:30:05 GMT
ENV GOTOOLCHAIN=local
# Tue, 01 Sep 2026 14:30:05 GMT
ENV GOPATH=/go
# Tue, 01 Sep 2026 14:30:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 14:30:05 GMT
COPY /target/ / # buildkit
# Tue, 01 Sep 2026 14:30:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 01 Sep 2026 14:30:24 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:acb3599234922b1535fad7591ba58ef476824d3d5c601ad25d9d566dd92a573a`  
		Last Modified: Mon, 24 Aug 2026 23:36:32 GMT  
		Size: 47.8 MB (47830880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b00426f7e0166f533550f928ed9a27165dd3e03cde499c3bb141c9a58e343c8`  
		Last Modified: Thu, 27 Aug 2026 00:25:30 GMT  
		Size: 28.1 MB (28149730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f5c877eebe30544548ad1f38b12e3615f826fa71f90844cbdce21d0843f1b1b`  
		Last Modified: Sat, 29 Aug 2026 04:54:43 GMT  
		Size: 66.7 MB (66698099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:998a450dbf5665d7b23346e5edd3f14ec3ed363948028e24f7cdd66b5c7d3c37`  
		Last Modified: Sun, 30 Aug 2026 14:15:44 GMT  
		Size: 131.8 MB (131824586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2bcd0f928cc2e3da288e2c49d738931eda5be92aecc4863ec265823cfef0af9`  
		Last Modified: Tue, 01 Sep 2026 14:37:24 GMT  
		Size: 103.8 MB (103803843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e58af7032ee89722d6c17171e1692082ddd77f0733cb13cb1596ff8e0db9f3d2`  
		Last Modified: Tue, 01 Sep 2026 14:37:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260829-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:c086f38fc733d7a0c735046fc13cafa007c21d43759864848354ebf93bc155ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10890140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a451d1f437adbb0254f3d194ce7e96ac28d7acbdfc98d940632379452acabedd`

```dockerfile
```

-	Layers:
	-	`sha256:c564683d9c1f5dbd72858020b1aed60a2df1f5a7c9df8f81689f607fba87a09c`  
		Last Modified: Wed, 02 Sep 2026 18:38:22 GMT  
		Size: 10.9 MB (10861397 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73c94ee723d00ad0a957b96353d9552238da139417aa05f9290174e000fa75a4`  
		Last Modified: Wed, 02 Sep 2026 18:38:21 GMT  
		Size: 28.7 KB (28743 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260829-trixie` - linux; s390x

```console
$ docker pull golang@sha256:a2a86a198df80d9b930ee3ce531a6b3f4c5daf10d5fb93bc2f027eb41809a7ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.3 MB (326295080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18f45ba32cdbdb16f6885fef8af9efe6e1262ed46f8d45dbba67d6eab3f9e4db`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:24:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:52:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 01 Sep 2026 23:25:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 19:07:32 GMT
ENV GOTOOLCHAIN=local
# Mon, 31 Aug 2026 19:07:32 GMT
ENV GOPATH=/go
# Mon, 31 Aug 2026 19:07:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:07:32 GMT
COPY /target/ / # buildkit
# Tue, 01 Sep 2026 23:31:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 01 Sep 2026 23:31:48 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:4415ebc808ead343ed2ff09e9ddd7fb38001c3cd021262fe1ae58bf5fa958333`  
		Last Modified: Mon, 24 Aug 2026 23:20:18 GMT  
		Size: 49.4 MB (49406697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fcc139358c0f126bea1e88fe19d9b62a4fedcd110ee450f995e2961ed24b16d`  
		Last Modified: Tue, 25 Aug 2026 01:25:12 GMT  
		Size: 26.8 MB (26805114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e1398c9084f07ed882b54eeab4eff13a12a949c611fe5ec44e503d987b450f`  
		Last Modified: Tue, 25 Aug 2026 02:52:35 GMT  
		Size: 68.7 MB (68651115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:334300c98064ff5942417fd10ae134644c6f860affdb485eca1fa30795f4042f`  
		Last Modified: Tue, 01 Sep 2026 23:26:08 GMT  
		Size: 76.2 MB (76150238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84cf706a32919aca7b61ca98611a2df2887125374161a1b8b1b5cfb7fd6fb8cf`  
		Last Modified: Mon, 31 Aug 2026 19:07:59 GMT  
		Size: 105.3 MB (105281758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62b2dd56f53729b65eb2ba96c4872db54dbb17e66e48de6e8a33f5e1245735ca`  
		Last Modified: Tue, 01 Sep 2026 23:32:14 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260829-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:8b4fdede8ffce855a48149d9e33c85996bc4c23924e2cff8936035cc9a16e1c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10631604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b53161daf0c5e86bc519a4e1c952e43f1c0ab304dc17357a166f17a74858e0ea`

```dockerfile
```

-	Layers:
	-	`sha256:0f1bf692c4e61e7ed790d316bc0874b132e5f43e73720863edbde569901ee442`  
		Last Modified: Tue, 01 Sep 2026 23:32:14 GMT  
		Size: 10.6 MB (10602924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a5413f5ed9dfc3fde3668032eb1de204792337234dd2a2aa113393a4ca3c465`  
		Last Modified: Tue, 01 Sep 2026 23:32:14 GMT  
		Size: 28.7 KB (28680 bytes)  
		MIME: application/vnd.in-toto+json
