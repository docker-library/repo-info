## `golang:tip-alpine`

```console
$ docker pull golang@sha256:433f5c72639c0b3fbe4fb691ce41dc00bbd4a1b43af98595416d52d95c4238a7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
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

### `golang:tip-alpine` - linux; amd64

```console
$ docker pull golang@sha256:0b490426bc3000d3a2036b558516f08d4a48a101f71179d11134823c55c66948
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.7 MB (110737776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:500ee68e989fa3d506f7428feebf95a697b7ad5b03d49c0fa04888b1bcb5562f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 23:24:59 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 01 Sep 2026 23:35:06 GMT
ENV GOTOOLCHAIN=local
# Tue, 01 Sep 2026 23:35:06 GMT
ENV GOPATH=/go
# Tue, 01 Sep 2026 23:35:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:35:06 GMT
COPY /target/ / # buildkit
# Tue, 01 Sep 2026 23:35:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 01 Sep 2026 23:35:09 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a12b2df95d81e0646230784c610be014bf67567dfdbf5b3365c9ec022b95ff28`  
		Last Modified: Tue, 01 Sep 2026 23:25:23 GMT  
		Size: 245.1 KB (245069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1749c03789d9e81dba707ab345cde7e034bc9e5638c82fdcb570d9644f19690d`  
		Last Modified: Mon, 31 Aug 2026 19:19:50 GMT  
		Size: 106.6 MB (106646158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa0365b7e5c87f25e379eca1bb91c106f3b3cf7307b84e32da6e480b33328d2`  
		Last Modified: Tue, 01 Sep 2026 23:35:24 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:bf241daf6887b68c85411f7c81b2ff48c37fac05f037ca94bdf7a8c5360df6d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.3 KB (203332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50e2e54e6491a54fbdce16b09d09a4254dccf9bdf81ba933f0a15784cfc3c926`

```dockerfile
```

-	Layers:
	-	`sha256:7974df8d0db43f2b4a8fcf2f3a72f81f6b4d2eb49b693090b3d59be895861450`  
		Last Modified: Tue, 01 Sep 2026 23:35:24 GMT  
		Size: 178.2 KB (178233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1fadd4ae896c580313e0ca1fb941829e69c96b8ffef6fa419142320853abac2e`  
		Last Modified: Tue, 01 Sep 2026 23:35:24 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:cfdadf8db26a7a9ff90ad877503a77cd567fd0542811f397997673e937abd58a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.5 MB (106491787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f94aaa256e4ec85be071492fdb0aa95f27e4ceda433e35d54f2d76af47ebb3af`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 23:29:52 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 01 Sep 2026 23:31:55 GMT
ENV GOTOOLCHAIN=local
# Tue, 01 Sep 2026 23:31:55 GMT
ENV GOPATH=/go
# Tue, 01 Sep 2026 23:31:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:31:55 GMT
COPY /target/ / # buildkit
# Tue, 01 Sep 2026 23:31:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 01 Sep 2026 23:31:58 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db85ca555ff7db297ca5b41aa2df15a8352fe106a0c9aa9ca9586a17554821a0`  
		Last Modified: Tue, 01 Sep 2026 23:32:12 GMT  
		Size: 246.1 KB (246135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:891d431ec0c605926320ac4108c6b9debb770d3eaf5e388d8938c1afcb3ec3aa`  
		Last Modified: Mon, 31 Aug 2026 18:51:44 GMT  
		Size: 102.7 MB (102692044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:049a7c7f4f9e9bcca0d089c91f399ce9e055657870517e31210fde732b093a26`  
		Last Modified: Tue, 01 Sep 2026 23:32:12 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:0c64c991f617780dc7feaf16700232a98f135a49e5e48d4a8e5a348a12dbe57f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 KB (25010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc9dd614c47ada3d0be0acefe902aa9a1d5e4724370226635fb6f9e51b8df69d`

```dockerfile
```

-	Layers:
	-	`sha256:e9d4732778cd9dc5bb771edd43eaca76eabd12ea30304f7f14e50f0c605f1e8e`  
		Last Modified: Tue, 01 Sep 2026 23:32:12 GMT  
		Size: 25.0 KB (25010 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; arm variant v7

```console
$ docker pull golang@sha256:6cf78a841c6106670d09f6f37d23e92dc7418dae79c06114801c8e3f22c2ea5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.9 MB (105885310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:274797350db8954673f71b2fbfb89b606ea0f56b0619bc47440f9069df3af5f5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 23:25:00 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 01 Sep 2026 23:32:28 GMT
ENV GOTOOLCHAIN=local
# Tue, 01 Sep 2026 23:32:28 GMT
ENV GOPATH=/go
# Tue, 01 Sep 2026 23:32:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:32:28 GMT
COPY /target/ / # buildkit
# Tue, 01 Sep 2026 23:32:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 01 Sep 2026 23:32:31 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4399a0fe16dacf840fadc9ce4c62d487b0199502e4ceb432b356b3cace28a470`  
		Last Modified: Tue, 01 Sep 2026 23:25:26 GMT  
		Size: 245.1 KB (245111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b1ec9892daff3df8c8868fd667921d182ceb849f1e765c9d1e87e011cc3d4bf`  
		Last Modified: Mon, 31 Aug 2026 19:19:50 GMT  
		Size: 102.4 MB (102379426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7948caff51092b21120d3ea1786ab00d340affe3850e628bd381e697c6ff6130`  
		Last Modified: Tue, 01 Sep 2026 23:32:47 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:5ab8d294e3e5475c3f013f01769ab61d43af0eccab710ab1f1ecd7bbfc5d5a9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.8 KB (202828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd5df42b9dee536e558e167dd0010d036e5aa301ad95aaba696c9ec98e6c7303`

```dockerfile
```

-	Layers:
	-	`sha256:f91168078e18f3727b2167225270f8aa2ec74683565a06b13cbb7b17dbc1cd05`  
		Last Modified: Tue, 01 Sep 2026 23:32:47 GMT  
		Size: 177.6 KB (177601 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:732a98a037de0e56cf157e4d31f9ed3214353d17c1fc6880ee6948a0a7d85099`  
		Last Modified: Tue, 01 Sep 2026 23:32:47 GMT  
		Size: 25.2 KB (25227 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:2f4ef9e314802db2b4649fa9f331598680e435a331c80d1b953f373667b728da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.2 MB (105192713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e2fabeb68dd77022c01a2da80847be5bc0f5cce077650ea0c338939fb1f1d00`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 23:33:38 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 01 Sep 2026 23:34:58 GMT
ENV GOTOOLCHAIN=local
# Tue, 01 Sep 2026 23:34:58 GMT
ENV GOPATH=/go
# Tue, 01 Sep 2026 23:34:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:34:58 GMT
COPY /target/ / # buildkit
# Tue, 01 Sep 2026 23:35:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 01 Sep 2026 23:35:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ece023e9cf778c7e504a6ef142ac2730015aef795b5a6a261c361dc1d0c268bb`  
		Last Modified: Tue, 01 Sep 2026 23:35:17 GMT  
		Size: 247.5 KB (247504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5a76591736ba2ca2076090e2b5bb1ee1cb0453562e9eaef712f2aa29b3c161`  
		Last Modified: Mon, 31 Aug 2026 19:37:03 GMT  
		Size: 100.8 MB (100762014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:517bd35a9d0249e4d942e55e3c2756889999a82420ddd3188b79bb86fa3f346a`  
		Last Modified: Tue, 01 Sep 2026 23:35:17 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:afe62c36ad6648094398b4d90a98cac5b27d1a23e1ff703cda882d77ce1fa19a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.9 KB (202898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb3d65ad5b625e39452a32d2beef0cd089f761e082bb61b49f3088aa4b120792`

```dockerfile
```

-	Layers:
	-	`sha256:98cd97169a9e04b7d098100c31b7b40682c5cb5751a9272cdc8cf4251795a98f`  
		Last Modified: Tue, 01 Sep 2026 23:35:17 GMT  
		Size: 177.6 KB (177639 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5321f691caad07ce091cf5c01d39cd31aa497dd0e5583da0f421999b0b5f4b1`  
		Last Modified: Tue, 01 Sep 2026 23:35:16 GMT  
		Size: 25.3 KB (25259 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; 386

```console
$ docker pull golang@sha256:cffb0ebb00bc0653ca2a36db5353175f7ab22936432ac99d558f47cb17f770bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.5 MB (108528369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05b2b5579581644c2e371ab0a9736e24a42c703570e1cc37e031b3ae273eb7d1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 23:35:07 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 01 Sep 2026 23:36:41 GMT
ENV GOTOOLCHAIN=local
# Tue, 01 Sep 2026 23:36:41 GMT
ENV GOPATH=/go
# Tue, 01 Sep 2026 23:36:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:36:41 GMT
COPY /target/ / # buildkit
# Tue, 01 Sep 2026 23:36:44 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 01 Sep 2026 23:36:44 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65fc5fd3f91364f90291549610491d3425cd6165f4eae0479dc65bd742113712`  
		Last Modified: Tue, 01 Sep 2026 23:36:58 GMT  
		Size: 245.6 KB (245590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:566a64d88b0f9490dd6f4ee5fc00d3336481d6330a0401ccfec0d4720041096b`  
		Last Modified: Mon, 31 Aug 2026 18:51:23 GMT  
		Size: 104.6 MB (104612480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503e5c345c6bb4975af80810ac58738473f4490d77ad64fd637c8b02da78e25e`  
		Last Modified: Tue, 01 Sep 2026 23:36:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:ab0aa17a7655d10960269ec4ea6972632be08f86ec593ebc617e62a631d8d29f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.2 KB (203246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:666de03517730d78d06e2ae1c51d3e565992afc0446908f506a23496b838f545`

```dockerfile
```

-	Layers:
	-	`sha256:5aa1184c6280335663b7a839809ed55346108e2960a221223f7e10c7d39ce725`  
		Last Modified: Tue, 01 Sep 2026 23:36:58 GMT  
		Size: 178.2 KB (178190 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d6b748d69c1d7f0a1f910c28c909228da402d484ce0ada2f6021f5c67b27bd1`  
		Last Modified: Tue, 01 Sep 2026 23:36:58 GMT  
		Size: 25.1 KB (25056 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:74e0a5b9929a1fd97cf08ff398e5fcd6fcada7d9c9e97bba974839ba4e3ae1a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.1 MB (107125754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:346e474ca246843fdbf49d52338172fa00a10223fee3dec46c64a4e7bc64fbd0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 20:09:04 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 31 Aug 2026 20:07:50 GMT
ENV GOTOOLCHAIN=local
# Mon, 31 Aug 2026 20:07:50 GMT
ENV GOPATH=/go
# Mon, 31 Aug 2026 20:07:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 20:07:50 GMT
COPY /target/ / # buildkit
# Mon, 31 Aug 2026 20:11:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 31 Aug 2026 20:11:37 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bffbdab6c90a4322a9180bc8e51cf7e0d5252d269efaeaca51c8841d8f5e6f45`  
		Last Modified: Mon, 31 Aug 2026 20:11:50 GMT  
		Size: 247.9 KB (247925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f641597d3f37f91732431e944316d54cb7c879b61c66d0ebd8dbca246b602bf4`  
		Last Modified: Mon, 31 Aug 2026 20:08:50 GMT  
		Size: 103.1 MB (103064271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b69de2501c9fc2465031ff411782dacc8f0e20fbef5e59884d4a6386ac351c4`  
		Last Modified: Mon, 31 Aug 2026 20:11:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:4e5344be92fbd4fc2a6496df431be6a83b155e1ac292c3eafff1e1e34c35d1c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.8 KB (202791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f96c087323e881e07f3c471ca236ae8d2b3c3f7bd5ddbcd2ca69dab1373f63b`

```dockerfile
```

-	Layers:
	-	`sha256:dedeb9648fa6de0d3cf602187de585f48dcd5551402a31d8aaf7b3c232acb850`  
		Last Modified: Wed, 02 Sep 2026 01:15:34 GMT  
		Size: 177.6 KB (177634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f17d7dd54931369338f0ae73708ee9f4c617059e0e921b42947fb2f492dc797e`  
		Last Modified: Wed, 02 Sep 2026 01:15:34 GMT  
		Size: 25.2 KB (25157 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; riscv64

```console
$ docker pull golang@sha256:139909382e824d21157371af53d1fd693aad5e69593035c4cff49f0414ac30cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.6 MB (107623856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbd6c2b2c78a042ab6b0d2c21609350e3b90fde07e3362131165eaef4454f9e2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Sun, 16 Aug 2026 13:03:06 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 01 Sep 2026 14:30:05 GMT
ENV GOTOOLCHAIN=local
# Tue, 01 Sep 2026 14:30:05 GMT
ENV GOPATH=/go
# Tue, 01 Sep 2026 14:30:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 14:30:05 GMT
COPY /target/ / # buildkit
# Tue, 01 Sep 2026 15:09:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 01 Sep 2026 15:09:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a4eb8a0847d9b0c7c04686bc15eb9657f78c75e47160e656e88ff25111d0b39`  
		Last Modified: Sun, 16 Aug 2026 13:05:32 GMT  
		Size: 245.5 KB (245497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2bcd0f928cc2e3da288e2c49d738931eda5be92aecc4863ec265823cfef0af9`  
		Last Modified: Tue, 01 Sep 2026 14:37:24 GMT  
		Size: 103.8 MB (103803843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ee015ec69106e055027382fb83602213beecaacac21eefccd6ebc5a6225b28`  
		Last Modified: Tue, 01 Sep 2026 15:10:20 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:b98695b00793a8147659956dccaabc400e97a7fffc964f9ff2980ee5f39fa6c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.8 KB (202787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:186c34fa2cb28937a903abe173d2d6ed796aac97ed00ba15c5cb9c7bc20790b1`

```dockerfile
```

-	Layers:
	-	`sha256:e115dcceccfb58816a0ba668067718b745187119e441bc81fc951e956ccd088e`  
		Last Modified: Wed, 02 Sep 2026 19:10:43 GMT  
		Size: 177.6 KB (177630 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39c172960f078ba685ce9941de457a9bf5e466ce14c7d086a32272e79d4f38f3`  
		Last Modified: Wed, 02 Sep 2026 19:10:43 GMT  
		Size: 25.2 KB (25157 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; s390x

```console
$ docker pull golang@sha256:45ffdecb7aa6d7307c57259cda3afb297e72756a9806e712f2f617dcc072d770
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.2 MB (109237389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2398e1877aa7c5621368690a6db745c8cdd24dd2f943d4017d117d1a88a83392`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:08:21 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 31 Aug 2026 19:08:21 GMT
ENV GOTOOLCHAIN=local
# Mon, 31 Aug 2026 19:08:21 GMT
ENV GOPATH=/go
# Mon, 31 Aug 2026 19:08:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:08:21 GMT
COPY /target/ / # buildkit
# Mon, 31 Aug 2026 19:08:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 31 Aug 2026 19:08:22 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbde71a8d0f4159ad95d87f3e71c3bb3cc16ac0fb2ca16bf030d951dce9d328d`  
		Last Modified: Mon, 31 Aug 2026 19:08:47 GMT  
		Size: 246.2 KB (246153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84cf706a32919aca7b61ca98611a2df2887125374161a1b8b1b5cfb7fd6fb8cf`  
		Last Modified: Mon, 31 Aug 2026 19:07:59 GMT  
		Size: 105.3 MB (105281758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff44fd7eaa03419fb7e3b32ca929fcba2d0198530867e88adcb16cac850156b4`  
		Last Modified: Mon, 31 Aug 2026 19:08:47 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:600ebe092ffdf1814d7e9a6fa87c301a44b90c82adc10be4c0e0719cd71a883b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.4 KB (203429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad1e14296364a1866999ed47ce658648266bff841cec043d1e254785c43d125d`

```dockerfile
```

-	Layers:
	-	`sha256:bc73b63164462861aa2db952d34685f8801c797d5d534fe0a6831810ffc1b7b2`  
		Last Modified: Tue, 01 Sep 2026 23:33:12 GMT  
		Size: 178.3 KB (178330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9b1290ff70e9cbfc3c84f30223823a141ecdc269f5a5090e9d37d1093e154e9`  
		Last Modified: Tue, 01 Sep 2026 23:33:14 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json
