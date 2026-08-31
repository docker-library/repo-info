## `golang:tip-20260829-trixie`

```console
$ docker pull golang@sha256:1ee19aae8e1fdbd7f4d96d222cc7d2fb19dd61fcda84042caeb04808aab04f64
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
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
	-	linux; s390x
	-	unknown; unknown

### `golang:tip-20260829-trixie` - linux; amd64

```console
$ docker pull golang@sha256:45f97108df95c8d616d914f0f5d6700bf5483feec42c8a9be9f04d9088dab113
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.8 MB (351763089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a2497d6c25715588a0ccfeed3e7fe2592e1a5ee3e6535f209f2a64406f7bbc5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:38:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 19:18:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 19:19:25 GMT
ENV GOTOOLCHAIN=local
# Mon, 31 Aug 2026 19:19:25 GMT
ENV GOPATH=/go
# Mon, 31 Aug 2026 19:19:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:19:25 GMT
COPY /target/ / # buildkit
# Mon, 31 Aug 2026 19:19:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 31 Aug 2026 19:19:28 GMT
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
	-	`sha256:0bed03daac5dbb0cadfea19aaa0550a65f77a93b8620d09ff97bd05a7687c474`  
		Last Modified: Mon, 31 Aug 2026 19:19:55 GMT  
		Size: 102.3 MB (102339282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1749c03789d9e81dba707ab345cde7e034bc9e5638c82fdcb570d9644f19690d`  
		Last Modified: Mon, 31 Aug 2026 19:19:50 GMT  
		Size: 106.6 MB (106646158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6d9843c85c76543e891b34f7560026a9f2120483e4ab27599ad59fa8466992f`  
		Last Modified: Mon, 31 Aug 2026 19:19:50 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260829-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:4732c5b244a795a2844a59cbcb5d1c6438548f98502a3832b872dec77b73485f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10820461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab12e1ed49306cb6e7445e8daf24515eb502e49ca40263f5c4d1ed2b57f88335`

```dockerfile
```

-	Layers:
	-	`sha256:61958dacf91e7742f7f46feaca981a1f94d224134f0fb5a491e29f117a4f614f`  
		Last Modified: Mon, 31 Aug 2026 19:19:51 GMT  
		Size: 10.8 MB (10791776 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ecc6137c60bef5801322f2063e400aa5aaef6a53cf7a3064af6ccd06fa45bf14`  
		Last Modified: Mon, 31 Aug 2026 19:19:50 GMT  
		Size: 28.7 KB (28685 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260829-trixie` - linux; arm variant v7

```console
$ docker pull golang@sha256:60b1154ececb112cae51148dcacd51807f43b6bc3cb2b2325b2e717c0adfa4cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.5 MB (307508985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d625a30ae76460dd3f50809072ef4ed99414ca3ba54d2fae93ca0901de8c8f66`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:33:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:36:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 19:17:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 19:19:33 GMT
ENV GOTOOLCHAIN=local
# Mon, 31 Aug 2026 19:19:33 GMT
ENV GOPATH=/go
# Mon, 31 Aug 2026 19:19:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:19:33 GMT
COPY /target/ / # buildkit
# Mon, 31 Aug 2026 19:19:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 31 Aug 2026 19:19:36 GMT
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
	-	`sha256:3cd07000afeb20dfac25e0c931f98fc25245feca62f733572283bfae350fe1c4`  
		Last Modified: Mon, 31 Aug 2026 19:20:01 GMT  
		Size: 73.0 MB (72982904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b1ec9892daff3df8c8868fd667921d182ceb849f1e765c9d1e87e011cc3d4bf`  
		Last Modified: Mon, 31 Aug 2026 19:19:50 GMT  
		Size: 102.4 MB (102379426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f08e4e9c0cb8051d6ff7bf18071a0460240a77c2c0dc1dbe5aaa2c920760dc3`  
		Last Modified: Mon, 31 Aug 2026 19:19:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260829-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:161bd550854a95cf75aad4062a5e49a388454217e663e9deefb93983129b39c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10616468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e53e795d3567ce9b9fe982ff227b5c402ab6e4e99376c24a5754ae4b5bbe3d72`

```dockerfile
```

-	Layers:
	-	`sha256:04898dfcb4dd9050a5ef079f41f6c8cac874b954f488a8ed6aea041deadb43ea`  
		Last Modified: Mon, 31 Aug 2026 19:20:00 GMT  
		Size: 10.6 MB (10587661 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ad50699da7b17115bfbfe2547988c07308e9eb1e07e234613449bd4fc805819`  
		Last Modified: Mon, 31 Aug 2026 19:19:59 GMT  
		Size: 28.8 KB (28807 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260829-trixie` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:275534889552c6638868ab48f910979c0b6a27e1d402972673ab6c3ab3ebdc68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.6 MB (341586176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e860e2139956e0e9a4071824317d9e4fb881b8718f748638cb766122587524aa`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:43:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 19:35:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 19:36:41 GMT
ENV GOTOOLCHAIN=local
# Mon, 31 Aug 2026 19:36:41 GMT
ENV GOPATH=/go
# Mon, 31 Aug 2026 19:36:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:36:41 GMT
COPY /target/ / # buildkit
# Mon, 31 Aug 2026 19:36:44 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 31 Aug 2026 19:36:44 GMT
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
	-	`sha256:bf44027620d73cd2446763072a7d31640c1edcc7db45bfbefa0cdb6a126741a0`  
		Last Modified: Mon, 31 Aug 2026 19:37:11 GMT  
		Size: 98.5 MB (98486703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5a76591736ba2ca2076090e2b5bb1ee1cb0453562e9eaef712f2aa29b3c161`  
		Last Modified: Mon, 31 Aug 2026 19:37:03 GMT  
		Size: 100.8 MB (100762014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fc8b05946fce3dfa2f5a03ef99e85f8d47238eb84950898f62dd289c8cd2b68`  
		Last Modified: Mon, 31 Aug 2026 19:37:01 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260829-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:b887839b4c789bcf92038c2a57ce8d50eed32d5b73a8600532e8be1102aac502
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10940434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36d05d8d28882847048bffabdc258ea5d3af6078b04129248287bc5a59c17fda`

```dockerfile
```

-	Layers:
	-	`sha256:25a512ec8dc0124e8417cbba3d4522d15a07f713266aea41bd8797c40a82e035`  
		Last Modified: Mon, 31 Aug 2026 19:37:09 GMT  
		Size: 10.9 MB (10911594 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62cea3e9aa9f36c6590700c7d09f410522f94cd38cb41ae4fecf367caf02ad7a`  
		Last Modified: Mon, 31 Aug 2026 19:37:08 GMT  
		Size: 28.8 KB (28840 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260829-trixie` - linux; 386

```console
$ docker pull golang@sha256:8a1aba4decdfa21ef230b63177011f758c15744e41493825f3b9009403257695
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **352.9 MB (352885173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56ad368ffdacf18aeae91b3e63d641ac1d5792a752d9e510701d8c8035b9ae5b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:42:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 18:49:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 18:50:54 GMT
ENV GOTOOLCHAIN=local
# Mon, 31 Aug 2026 18:50:54 GMT
ENV GOPATH=/go
# Mon, 31 Aug 2026 18:50:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 18:50:54 GMT
COPY /target/ / # buildkit
# Mon, 31 Aug 2026 18:50:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 31 Aug 2026 18:50:56 GMT
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
	-	`sha256:ee549ddf9268c4d4cb9baca5e4f83a88ad16fc69df2b3cbd37d850fedb812e51`  
		Last Modified: Mon, 31 Aug 2026 18:51:23 GMT  
		Size: 100.8 MB (100784412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:566a64d88b0f9490dd6f4ee5fc00d3336481d6330a0401ccfec0d4720041096b`  
		Last Modified: Mon, 31 Aug 2026 18:51:23 GMT  
		Size: 104.6 MB (104612480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:524dbf0f57a4f91f65ea8e82571e6d557eb524ff40b3d93b5550e3f5bdf4bc2b`  
		Last Modified: Mon, 31 Aug 2026 18:51:19 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260829-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:da327c305a247a79e069c72bbb98675437d72db8eed6a698917f2a837b5e15bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10791680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:177b3fd1fda9035f2da030c99d2e2c6dab86c8aa0c79a74b652ee48fbf3a783a`

```dockerfile
```

-	Layers:
	-	`sha256:eb7dd1fa34bb3a4d22da5f62a73dc46bb328f0fd5aebe5d24c0c30e010857ac6`  
		Last Modified: Mon, 31 Aug 2026 18:51:20 GMT  
		Size: 10.8 MB (10763038 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78829d7dea9d2d06f3d8d0afcdec8a16fd5de779c5f88ff0a6b052fa3ae32708`  
		Last Modified: Mon, 31 Aug 2026 18:51:19 GMT  
		Size: 28.6 KB (28642 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260829-trixie` - linux; ppc64le

```console
$ docker pull golang@sha256:e9aff519d43ad4d439aff8a7a2e56d7c0c13e5564325052fcade4e0cdae7335f
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
$ docker pull golang@sha256:749045365260f2bbb366cde8802a2e0ce094efcb6e8b218215ad320608715c8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10816301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63d9aa57065758d839c2eeb3d127e037545ade1d8af8e7b1cb6d3456f4bb83e6`

```dockerfile
```

-	Layers:
	-	`sha256:94bd4fb7cdc41d2f3971e3a4ee93a3e70b8d908cddb0d516fe96371b6ddc1ccc`  
		Last Modified: Mon, 31 Aug 2026 20:08:53 GMT  
		Size: 10.8 MB (10787564 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a64c0c72b8244844e32e7948a3c5e266ca2f39a7fc2157653c03e1f33dbae6ec`  
		Last Modified: Mon, 31 Aug 2026 20:08:52 GMT  
		Size: 28.7 KB (28737 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260829-trixie` - linux; s390x

```console
$ docker pull golang@sha256:2f087fe2539c7083f3a4667c737b34de20bf5ddc20015f90a946321c02202d48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.3 MB (326295025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:279814795dedb740fe2db8d8d2facb318e43ee41e3028241a4b394b367e6bfdd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:24:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:52:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 19:05:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 19:08:21 GMT
ENV GOTOOLCHAIN=local
# Mon, 31 Aug 2026 19:08:21 GMT
ENV GOPATH=/go
# Mon, 31 Aug 2026 19:08:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:08:21 GMT
COPY /target/ / # buildkit
# Mon, 31 Aug 2026 19:08:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 31 Aug 2026 19:08:24 GMT
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
	-	`sha256:13e59fab915fc7b430ed90221eb626067a878a313cafb6a886346c0c4c87008b`  
		Last Modified: Mon, 31 Aug 2026 19:08:57 GMT  
		Size: 76.2 MB (76150183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84cf706a32919aca7b61ca98611a2df2887125374161a1b8b1b5cfb7fd6fb8cf`  
		Last Modified: Mon, 31 Aug 2026 19:07:59 GMT  
		Size: 105.3 MB (105281758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e2422269af130ce8cea972dac1f32179e4008b408d5c0c146672302a58ae74c`  
		Last Modified: Mon, 31 Aug 2026 19:08:56 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260829-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:64db6c77fc8f85ac4707b2ce8e9df110460e6e2d82fef3cc016a2fac64e7ef11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10631429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5fc0be5dc4d0606834168560b645806290415418bea66003448d01062b64db2`

```dockerfile
```

-	Layers:
	-	`sha256:79e66bbef31d63f55eda10092e7e75b332b56c9a292a531c21c887ac63c9833e`  
		Last Modified: Mon, 31 Aug 2026 19:08:56 GMT  
		Size: 10.6 MB (10602924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b13e5f724c72a5677d0a17254a7fbb302da49b64e59dc7d6aa8d0cf6147f4d0f`  
		Last Modified: Mon, 31 Aug 2026 19:08:56 GMT  
		Size: 28.5 KB (28505 bytes)  
		MIME: application/vnd.in-toto+json
