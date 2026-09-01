## `golang:tip-alpine3.24`

```console
$ docker pull golang@sha256:fb6c1f9880330be394d9a5c75fea45a8096d4107a801a8ca57a2cd2e833145fe
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

### `golang:tip-alpine3.24` - linux; amd64

```console
$ docker pull golang@sha256:f8d39d2ae3477998897d2231f8670bb1594c5139a7e7764c275a85e76a94e65d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.7 MB (110737770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdad6260cfc26fc1d0db54ebce0afaaec624d9ec0f619085aae7c37202537722`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:18:07 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 31 Aug 2026 19:19:29 GMT
ENV GOTOOLCHAIN=local
# Mon, 31 Aug 2026 19:19:29 GMT
ENV GOPATH=/go
# Mon, 31 Aug 2026 19:19:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:19:29 GMT
COPY /target/ / # buildkit
# Mon, 31 Aug 2026 19:19:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 31 Aug 2026 19:19:32 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:118f25f6e67cd9f25169507ff9d47294ba37751899387551325961a9198255c0`  
		Last Modified: Mon, 31 Aug 2026 19:19:47 GMT  
		Size: 245.1 KB (245063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1749c03789d9e81dba707ab345cde7e034bc9e5638c82fdcb570d9644f19690d`  
		Last Modified: Mon, 31 Aug 2026 19:19:50 GMT  
		Size: 106.6 MB (106646158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28a001aac9946928933c92d3ade66486325bf87401d7fc2de803fb83ccf7e669`  
		Last Modified: Mon, 31 Aug 2026 19:19:47 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:ed00e23741a007ff535cb159d47d429fa6a0859a49b8c53504feb77a7d207be3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.3 KB (203332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52304ffd97972c9903465848e62a6e538a25351b6c53491b9cff3ca478943b02`

```dockerfile
```

-	Layers:
	-	`sha256:430497363b26840e4611b4a741cfa948d5996b6d49907004d200383a5abc45cb`  
		Last Modified: Mon, 31 Aug 2026 19:19:47 GMT  
		Size: 178.2 KB (178233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0cf36a21594b067a53a8e03bcfd986979d9be9f69061bc2e50aa434f3fd5a3bb`  
		Last Modified: Mon, 31 Aug 2026 19:19:47 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; arm variant v6

```console
$ docker pull golang@sha256:f68ea445828370ca5e4cb79e682400aaa3224a5e910c76e48892a9ef5e4ff494
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.5 MB (106491787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1d2b3cf27179cc10b66254d98feaeedab9e2fd0741a3598232ef56e292a3af`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 18:49:33 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 31 Aug 2026 18:51:25 GMT
ENV GOTOOLCHAIN=local
# Mon, 31 Aug 2026 18:51:25 GMT
ENV GOPATH=/go
# Mon, 31 Aug 2026 18:51:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 18:51:25 GMT
COPY /target/ / # buildkit
# Mon, 31 Aug 2026 18:51:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 31 Aug 2026 18:51:28 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:219418db6f38f9f685d8c94ec6265c7808d834ef0e4172d6db479b41e60df7aa`  
		Last Modified: Mon, 31 Aug 2026 18:51:42 GMT  
		Size: 246.1 KB (246134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:891d431ec0c605926320ac4108c6b9debb770d3eaf5e388d8938c1afcb3ec3aa`  
		Last Modified: Mon, 31 Aug 2026 18:51:44 GMT  
		Size: 102.7 MB (102692044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35d0481d158e7cddc2f178b7d7d84d38fb5f22042bea7379c876805815850050`  
		Last Modified: Mon, 31 Aug 2026 18:51:42 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:2c40c5a3202e4418ca8880e125a692478d8c8d6a322f3845cae222ca7bd325ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 KB (25012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c03d06ed57a84f968caf063588c4770b649cc6f1e35f367d575972701a46ad1`

```dockerfile
```

-	Layers:
	-	`sha256:c1d0c598f85a7df096a833b7c8255210fb4e357d95435b28fa4b91a180367721`  
		Last Modified: Mon, 31 Aug 2026 18:51:42 GMT  
		Size: 25.0 KB (25012 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; arm variant v7

```console
$ docker pull golang@sha256:824bddc0620ea026fc1cb924bbf631bab0d7ee3170b60088e8045ebbb2c09b98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.9 MB (105885319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7cc912ccaf9c6d6963e5d76e9a7084b1b00877e228e361653595517aa525e2a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:17:33 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 31 Aug 2026 19:19:28 GMT
ENV GOTOOLCHAIN=local
# Mon, 31 Aug 2026 19:19:28 GMT
ENV GOPATH=/go
# Mon, 31 Aug 2026 19:19:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:19:28 GMT
COPY /target/ / # buildkit
# Mon, 31 Aug 2026 19:19:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 31 Aug 2026 19:19:31 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fc57961af5bdfecf92514c7379696579b581fe9b1db335e47e60cf5e5b5a98b`  
		Last Modified: Mon, 31 Aug 2026 19:19:48 GMT  
		Size: 245.1 KB (245120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b1ec9892daff3df8c8868fd667921d182ceb849f1e765c9d1e87e011cc3d4bf`  
		Last Modified: Mon, 31 Aug 2026 19:19:50 GMT  
		Size: 102.4 MB (102379426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d134462bb9c8a80a346af58c995b65320516c56310a89f0ffe3b16e7273c558`  
		Last Modified: Mon, 31 Aug 2026 19:19:47 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:0a784a28495c895c4d9d877e9ad3c6a32e36388a082fa59ab847a685e6a92609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.8 KB (202828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75195800a920f82e95d14322b751e1eb72302e082f0f77c51c297199cc3d3d2e`

```dockerfile
```

-	Layers:
	-	`sha256:15b4ef0f3ed612d8b70f9e07a33868fed4fdf0cc10cbd512fc92020d764b0c0d`  
		Last Modified: Mon, 31 Aug 2026 19:19:47 GMT  
		Size: 177.6 KB (177601 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1bb52efe12550aa13ef00831defcc52026327a14a42e453fa7a497e9809cb49`  
		Last Modified: Mon, 31 Aug 2026 19:19:47 GMT  
		Size: 25.2 KB (25227 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:9c787452a191b2587674c92d96fd344dd18e06cf26c7b0c9128bb80a025ecb40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.2 MB (105192707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aec7a9a51712f3b3e68c25c42351b4c03007bc7f09aaa5c12d45c92efec2e03d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:35:23 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 31 Aug 2026 19:36:44 GMT
ENV GOTOOLCHAIN=local
# Mon, 31 Aug 2026 19:36:44 GMT
ENV GOPATH=/go
# Mon, 31 Aug 2026 19:36:44 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:36:44 GMT
COPY /target/ / # buildkit
# Mon, 31 Aug 2026 19:36:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 31 Aug 2026 19:36:47 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd45fdfec3bcb7afb13055a95a4ac45d8c7a16b6ad6e357bcc3c6b1d2fb8470`  
		Last Modified: Mon, 31 Aug 2026 19:37:03 GMT  
		Size: 247.5 KB (247498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5a76591736ba2ca2076090e2b5bb1ee1cb0453562e9eaef712f2aa29b3c161`  
		Last Modified: Mon, 31 Aug 2026 19:37:03 GMT  
		Size: 100.8 MB (100762014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552056508b499237cebb8f5fa6f7cd9e4b4840e830ce23712a80d0eba80a0c03`  
		Last Modified: Mon, 31 Aug 2026 19:37:03 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:5ba420fb639f5f802b31a54e7b77e5fab510de8b737c0bf52acb6a3858b772b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.9 KB (202898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c04720cc4c56b95a68cf8ea5ec5df9794bbcb53c9c9dd0f92e3c32b0e65065b0`

```dockerfile
```

-	Layers:
	-	`sha256:8aa62064efb31a0387ee0c58e47a606e2a04dcb497aaea11fab94ca326b2cec0`  
		Last Modified: Mon, 31 Aug 2026 19:37:03 GMT  
		Size: 177.6 KB (177639 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c0014bcc642d25a090b6ccfaf090bf14e299576a25d15b12fd6417cbb4b51a8`  
		Last Modified: Mon, 31 Aug 2026 19:37:03 GMT  
		Size: 25.3 KB (25259 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; 386

```console
$ docker pull golang@sha256:6dc0424b3b6acb35a44759031f703acc4c0405321c3eb52aae34dd979ef71fbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.5 MB (108528371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:740e1957a11e2d8dbd6d1d43bfd72382b37fe05fba523d47a05e5594bc0e3c16`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 18:50:14 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 31 Aug 2026 18:52:04 GMT
ENV GOTOOLCHAIN=local
# Mon, 31 Aug 2026 18:52:04 GMT
ENV GOPATH=/go
# Mon, 31 Aug 2026 18:52:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 18:52:04 GMT
COPY /target/ / # buildkit
# Mon, 31 Aug 2026 18:52:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 31 Aug 2026 18:52:07 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c58eda2420e82bcf754deb2b7b152ad99e91030f2f1431ee1d66deafbda2cc2`  
		Last Modified: Mon, 31 Aug 2026 18:52:23 GMT  
		Size: 245.6 KB (245592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:566a64d88b0f9490dd6f4ee5fc00d3336481d6330a0401ccfec0d4720041096b`  
		Last Modified: Mon, 31 Aug 2026 18:51:23 GMT  
		Size: 104.6 MB (104612480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb37e62c71638e4ab5ee0e765551723b46cd73ea55218738f95ef40ef40b53d1`  
		Last Modified: Mon, 31 Aug 2026 18:52:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:9de498ebca4cb738db24615526da46e1cebb3ea384c02dd86f60505e41cd89b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.2 KB (203246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42390a6aabe64b77502f8f8c4ecd40c8eda2ed12a84495bbd89a89d9ecab72d1`

```dockerfile
```

-	Layers:
	-	`sha256:ee4a603ffe70a1442ea603c21f936409bb26deb642cc80775a4bdccab1f8787b`  
		Last Modified: Mon, 31 Aug 2026 18:52:23 GMT  
		Size: 178.2 KB (178190 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d921ef1828e0fabce7d75a17a3fd5091a2485cd173fb5556cac5ce1e2558dbf5`  
		Last Modified: Mon, 31 Aug 2026 18:52:23 GMT  
		Size: 25.1 KB (25056 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; ppc64le

```console
$ docker pull golang@sha256:aeaa34691e9be0a30ed8a442e51775726feb3ebda30f7431dceec43cd93405c0
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

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:4c5697af2e58518dd38f4b0840ec2de1a8a41df7647fa4802241547ac98f37cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.8 KB (202790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37ad62d9243249a2e17e56d65ac69134430a4c4669cada20dbce5f87b014e06a`

```dockerfile
```

-	Layers:
	-	`sha256:c4e156fbe44f0e19d96d698edc367c9e7b7b0f39ecf792cff1215f0d01d24ce4`  
		Last Modified: Mon, 31 Aug 2026 20:11:50 GMT  
		Size: 177.6 KB (177634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1a5441099abb4278ad44229e70143545fdd804de3683b880bc2b27d0e25ea85`  
		Last Modified: Mon, 31 Aug 2026 20:11:50 GMT  
		Size: 25.2 KB (25156 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; riscv64

```console
$ docker pull golang@sha256:2943a4130bf69c12a8a35c751735406e6876e700d83dc444f5436e2936ef3b85
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

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:8c4a86e1bb34c7bc409ea8bc05293c5c30437457d1f1d84cd99922bed4ba6894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.8 KB (202787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f539b5cc91fda70ae00ba1dc6303aadaf077b72a4cf37c308226a98cacf37e7d`

```dockerfile
```

-	Layers:
	-	`sha256:0acec04846acad448672d97651d712f0aad14996a013d20aa9deaf6286907908`  
		Last Modified: Tue, 01 Sep 2026 15:10:19 GMT  
		Size: 177.6 KB (177630 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61203f1fab12bdde2d7337b57e5ee631a2e11c68016b9d30b96c91de7d1571b7`  
		Last Modified: Tue, 01 Sep 2026 15:10:19 GMT  
		Size: 25.2 KB (25157 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; s390x

```console
$ docker pull golang@sha256:6e0a386877cd0d906b35cb0503ab8c046689c3adcf09ada0758b7fa4a4007e55
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

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:6c267c738264bb284a06d6cf7eee528ff46727bb046302dcb3f03635b63c3604
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.4 KB (203429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88bcb9ff4b1e2361b7376e1137efbbe65954327807fbc3a63d0436ef8c5d7ea6`

```dockerfile
```

-	Layers:
	-	`sha256:d628a8b1b1155115449df49f3e0bba4681dab11b96c3e7fa970833ceb40231eb`  
		Last Modified: Mon, 31 Aug 2026 19:08:47 GMT  
		Size: 178.3 KB (178330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e24f4cb29a6cfd6b3c7963b00345d412402b15fc1093530ffef33aebccb1b15`  
		Last Modified: Mon, 31 Aug 2026 19:08:47 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json
