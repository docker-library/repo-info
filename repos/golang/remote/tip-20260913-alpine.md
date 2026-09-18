## `golang:tip-20260913-alpine`

```console
$ docker pull golang@sha256:9fa6b69ff3fc40d103bcb809b94c37e7606e1c9357b8796916f4d630013c69cb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
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

### `golang:tip-20260913-alpine` - linux; amd64

```console
$ docker pull golang@sha256:1a18c15066d9dead9e96ad0440ce8fd18cfc57f1a4a6e7890f76e3d13680865a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.6 MB (109551365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:852427003130ba8447e8963b981c86ade3526230536d3ff2b84fdb6270d4ae50`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:23:58 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 22:25:22 GMT
ENV GOTOOLCHAIN=local
# Thu, 17 Sep 2026 22:25:22 GMT
ENV GOPATH=/go
# Thu, 17 Sep 2026 22:25:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 22:25:22 GMT
COPY /target/ / # buildkit
# Thu, 17 Sep 2026 22:25:25 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 17 Sep 2026 22:25:25 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da786e547abd4b632c3b23e380770096db23fa9b0d9f1579735389d83886347e`  
		Last Modified: Thu, 17 Sep 2026 22:25:41 GMT  
		Size: 247.5 KB (247520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7984364c80cd3e9761745232561ae808c7875b1c675fe35a820ab7faba4a7d30`  
		Last Modified: Tue, 15 Sep 2026 22:35:56 GMT  
		Size: 105.5 MB (105453948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0715a660d8d7871019bbc3b3218d545e1e09154db1cd30a23370f1d9b5e00b3b`  
		Last Modified: Thu, 17 Sep 2026 22:25:41 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260913-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:ffc5fb45e087e202d9e45f8b1981c8b352d907b9288021d1af56ef9e4343efda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.6 KB (204625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bc186fe3e7f60cd5bb372c688961e2dd275330f51b1fb217ec96b3a4cf53b22`

```dockerfile
```

-	Layers:
	-	`sha256:ef8916d0cb784b41b6ce6746320883da73168213370b0cb8fe026d3f5b5bbc75`  
		Last Modified: Thu, 17 Sep 2026 22:25:41 GMT  
		Size: 179.5 KB (179526 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7996ecdcfb883c9993dc28d3ae59d9234f21e98cf0f5e79a5ad338e8e3569d1`  
		Last Modified: Thu, 17 Sep 2026 22:25:41 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260913-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:50fd7af5389364f1d4efcb03ce3d31f245ae6ef8aa8f2cc8fd72a6ae2186d56f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.5 MB (105452946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e77edec7c16cb93ff7d945a32a86cd1322ad3c9b64638d3e8b175b4de7fa7e2b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:38:44 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 22:40:30 GMT
ENV GOTOOLCHAIN=local
# Thu, 17 Sep 2026 22:40:30 GMT
ENV GOPATH=/go
# Thu, 17 Sep 2026 22:40:30 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 22:40:30 GMT
COPY /target/ / # buildkit
# Thu, 17 Sep 2026 22:40:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 17 Sep 2026 22:40:34 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53c6c9c1d001182b3714174da810d9ac8af67015b7f96d0434c2788e916dec6f`  
		Last Modified: Thu, 17 Sep 2026 22:40:48 GMT  
		Size: 248.5 KB (248481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eb9508dd029c503a81a8bd52b79a32b5213c3ae31081f2fd0601d9e9ccd2b75`  
		Last Modified: Tue, 15 Sep 2026 22:27:50 GMT  
		Size: 101.6 MB (101649194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e79e2de019cdd37c79d2aad08e3582677a3958c63b7b959f6c9fa5392d1879d`  
		Last Modified: Thu, 17 Sep 2026 22:40:48 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260913-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:014bd5a671b1cedef5312367db6255ea024e0750a6139a17c6d6201e354f3f28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 KB (25011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72a4af50e35b7bf1d5dfe04ac485f559497df39f4b94d5c5f4790a17af18bd39`

```dockerfile
```

-	Layers:
	-	`sha256:f3d1eb787e4f4d3583684e4d24090babb1835d346907ec002ec0890571cd53bc`  
		Last Modified: Thu, 17 Sep 2026 22:40:48 GMT  
		Size: 25.0 KB (25011 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260913-alpine` - linux; arm variant v7

```console
$ docker pull golang@sha256:29bd8f6bcf8d336ada4adbdc64479dd8b35a29f6e1b05f1ca725e285759bc88f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104837669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cc5502259b6f85d7ea41b69f7af1e34b9af26fb6b2e5447c739eb49a7447736`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:41:10 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 22:42:56 GMT
ENV GOTOOLCHAIN=local
# Thu, 17 Sep 2026 22:42:56 GMT
ENV GOPATH=/go
# Thu, 17 Sep 2026 22:42:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 22:42:56 GMT
COPY /target/ / # buildkit
# Thu, 17 Sep 2026 22:42:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 17 Sep 2026 22:42:59 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c151cc353f20d1ca6ec0f0d06c47fc012b17b54b1754b10f27b7ed55055c79e`  
		Last Modified: Thu, 17 Sep 2026 22:43:15 GMT  
		Size: 247.5 KB (247544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a8118ca32c9948b098dacae41a0ef4f00bc8c18d9d65a6518bba5d8fdb4961`  
		Last Modified: Tue, 15 Sep 2026 22:46:37 GMT  
		Size: 101.3 MB (101324765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3684d420920881101b8d2c32beebc06456d2f6346e954e1af1059cd37747e169`  
		Last Modified: Thu, 17 Sep 2026 22:43:16 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260913-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:cf5218508627a3a480b03767445a36592cedc38425032fac9d41c5c074c1c247
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.1 KB (204121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf4fc33a1c21cf669e354d30dca00eac5c5e7ff50f8ded758b6acb3c3a572c33`

```dockerfile
```

-	Layers:
	-	`sha256:2ff1651ec553ff93330e83d925628455f1098b988aea3b6b85163c2a12f8f78e`  
		Last Modified: Thu, 17 Sep 2026 22:43:15 GMT  
		Size: 178.9 KB (178894 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c35f5f0a1303dc2c0b8426d3ace1e6367b56095a9a23724184116fb06eb00400`  
		Last Modified: Thu, 17 Sep 2026 22:43:15 GMT  
		Size: 25.2 KB (25227 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260913-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:dcc926b84916e3d9f0c9400500c5d89318caf931f90d82af50c80af6ed93f96d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104218415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:188c52d652dde8e75fe89eb48f2c537caacc208c31b04965b86050b67bedb45b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:48:09 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 22:49:22 GMT
ENV GOTOOLCHAIN=local
# Thu, 17 Sep 2026 22:49:22 GMT
ENV GOPATH=/go
# Thu, 17 Sep 2026 22:49:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 22:49:22 GMT
COPY /target/ / # buildkit
# Thu, 17 Sep 2026 22:49:25 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 17 Sep 2026 22:49:25 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6888a35b57e6244378484e3894b185e23059495da230f0c3c57a163dfe2dbc9`  
		Last Modified: Thu, 17 Sep 2026 22:49:41 GMT  
		Size: 249.8 KB (249808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d18b6513c88a847af1c37f160e3913f457d3bc3723fc14f1e120510ea5e92930`  
		Last Modified: Tue, 15 Sep 2026 22:23:46 GMT  
		Size: 99.8 MB (99780790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35eaa2b33c65a03e8e5dba230e8f6dbfac287bb68c5637bf9b9d3b61600cc090`  
		Last Modified: Thu, 17 Sep 2026 22:49:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260913-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:bb0afb896ba7dc21fb94fd90f850e06145940540d0b39c2b61fc7308d12917d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.2 KB (204187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d2fb9178130adb400364fe4952103961c33c7bdcb173d595c1df2bbfac0b255`

```dockerfile
```

-	Layers:
	-	`sha256:3145eeaf4ceebfa08ff8758834048afef65f213d1a634abd9ed1b3984b2c1d6c`  
		Last Modified: Thu, 17 Sep 2026 22:49:41 GMT  
		Size: 178.9 KB (178932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9eba8765295ae1f9230a27d1bc11c60f0b29e8589843e961b874b7da834989c3`  
		Last Modified: Thu, 17 Sep 2026 22:49:40 GMT  
		Size: 25.3 KB (25255 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260913-alpine` - linux; 386

```console
$ docker pull golang@sha256:d159412b938c97608724834141196d48e9718e6cfd28b4601545a7672d27b098
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.3 MB (107291340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0348d8a13aab316560604a7247f43f938387043962796d9389b2b5eebd0a4258`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 22:21:41 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 15 Sep 2026 22:23:07 GMT
ENV GOTOOLCHAIN=local
# Tue, 15 Sep 2026 22:23:07 GMT
ENV GOPATH=/go
# Tue, 15 Sep 2026 22:23:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:23:07 GMT
COPY /target/ / # buildkit
# Tue, 15 Sep 2026 22:23:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 15 Sep 2026 22:23:10 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:755606880f3c5735e507522d6b7ea817e52859b4d67475ff2d011fc356232c6d`  
		Last Modified: Tue, 15 Sep 2026 22:23:23 GMT  
		Size: 245.6 KB (245597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:674ba6bfdf2c64013eea230b964b8c691dae63c1096886f4d77b5a6042ef67ab`  
		Last Modified: Tue, 15 Sep 2026 22:23:26 GMT  
		Size: 103.4 MB (103375443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f4842b4ea4f4f410dbe3e29af7ef53a6f14b43fd80f76d0b0078ae56c5616b8`  
		Last Modified: Tue, 15 Sep 2026 22:23:23 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260913-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:55484e42f5f660a83f51275e6a363ef447195c820eedd0a88b8b338c74de3917
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.2 KB (203246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06658a13ca30108c0634a8585f816009768450681475bfbcba50e317ddaee7a4`

```dockerfile
```

-	Layers:
	-	`sha256:fb61ffbe3ea109bd8c4f973aaba2dc8c60cac79aab6507c4023e5602895842ce`  
		Last Modified: Tue, 15 Sep 2026 22:23:23 GMT  
		Size: 178.2 KB (178190 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d74a4ac34046ad2868b59af0194a8469d6b9dd90400e5388fd65f7bc8c82b9d8`  
		Last Modified: Tue, 15 Sep 2026 22:23:23 GMT  
		Size: 25.1 KB (25056 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260913-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:4d2d09739621ed456d50b81dc4affa7dcd28d311353d507a33eb6f4471161cf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.1 MB (106055119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc6ea555a711cd7c522045b3030f08d7153c586a68e1df2d073954e2a0f1217e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 20:09:04 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 16 Sep 2026 02:38:44 GMT
ENV GOTOOLCHAIN=local
# Wed, 16 Sep 2026 02:38:44 GMT
ENV GOPATH=/go
# Wed, 16 Sep 2026 02:38:44 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 02:38:44 GMT
COPY /target/ / # buildkit
# Wed, 16 Sep 2026 02:45:45 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 16 Sep 2026 02:45:45 GMT
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
	-	`sha256:c6ceb2c9618f01c240dc561b5c26ab7c2feab790a9451333a05b4a24f478c5ec`  
		Last Modified: Wed, 16 Sep 2026 02:40:01 GMT  
		Size: 102.0 MB (101993636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec0cee13e9c13431d87f8584f453ed3a4017a739a9187e401d069855469effca`  
		Last Modified: Wed, 16 Sep 2026 02:46:00 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260913-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:466ba7884f4b142200625a390475ed710894d46a47fa9e4890e2f8faf84a7b6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.8 KB (202791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e089a01b3a79b112fb32d02a5db3caff2e12a727cf08e65fcf784059ea5b571`

```dockerfile
```

-	Layers:
	-	`sha256:ff16c6c4580bf2d6224dde690ce30a722110dcaa80d7c790f23e7c6c799857ab`  
		Last Modified: Wed, 16 Sep 2026 02:46:00 GMT  
		Size: 177.6 KB (177634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69c8d88be6403c7e122ca7baed4d5cec47dcbfd442a35e1389b4ee3202381867`  
		Last Modified: Wed, 16 Sep 2026 02:46:00 GMT  
		Size: 25.2 KB (25157 bytes)  
		MIME: application/vnd.in-toto+json
