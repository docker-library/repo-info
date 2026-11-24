## `golang:tip-alpine`

```console
$ docker pull golang@sha256:a74e6ea219f6e790bb1a2eece2bf8dc34a8b5d8bce2560457243e6032b24c1ce
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
$ docker pull golang@sha256:734dce824895a6a2dd0c62b039ea69ab3dfef9fcc10fd95b643ba67ac2a7cfc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.5 MB (111538062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e26403eedc309c1d4942bc083302cfb83a39c0481d39649f2514d914ba5d8194`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 21:51:05 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 23 Nov 2026 21:52:24 GMT
ENV GOTOOLCHAIN=local
# Mon, 23 Nov 2026 21:52:24 GMT
ENV GOPATH=/go
# Mon, 23 Nov 2026 21:52:24 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 21:52:24 GMT
COPY /target/ / # buildkit
# Mon, 23 Nov 2026 21:52:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 23 Nov 2026 21:52:27 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d610c63efd7d82ce5275938b83ce42ec2013611f80ec45e37f310c10db12d599`  
		Last Modified: Mon, 23 Nov 2026 21:52:41 GMT  
		Size: 244.5 KB (244482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9efe33ce08c2ab749d7e469454c13bd2c73074fd6987df765916f579beb88f77`  
		Last Modified: Mon, 23 Nov 2026 21:52:44 GMT  
		Size: 107.4 MB (107439749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f5fbf5f911f138faeb00867f1e7773e5739fff98f2be85fdfb667d703a90e38`  
		Last Modified: Mon, 23 Nov 2026 21:52:41 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:70c79f6ba499827fbc1addc317aee89476a462736e5af0adab72644d7a250d7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.7 KB (202688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36f48dc0ebd69a891468a2fa77cef1320087df1cf172f7e1873e71c2aefbf09e`

```dockerfile
```

-	Layers:
	-	`sha256:bc579093c05b2810b7c2a853b06bd389679149f3819d6dfe06e124ab5187a309`  
		Last Modified: Mon, 23 Nov 2026 21:52:41 GMT  
		Size: 177.6 KB (177589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6756fcad8bd0f02db0960c44a7c636edcb30024db76cd99404e16b4711c2f38`  
		Last Modified: Mon, 23 Nov 2026 21:52:41 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:f6a047745f14bf76551cbec08b97bf329b212179191c8eb2d1068e74f6a9b519
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.5 MB (107496745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a32a174463151bd13c18ad39cf84a32b2cf6a3b52ce30260ae913a283776ab15`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 21:49:59 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 23 Nov 2026 21:51:43 GMT
ENV GOTOOLCHAIN=local
# Mon, 23 Nov 2026 21:51:43 GMT
ENV GOPATH=/go
# Mon, 23 Nov 2026 21:51:43 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 21:51:43 GMT
COPY /target/ / # buildkit
# Mon, 23 Nov 2026 21:51:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 23 Nov 2026 21:51:46 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:416fcb0b11e4c1cf43f9221843c14bc9cac51f037fa01a147cc371ef86dccdce`  
		Last Modified: Mon, 23 Nov 2026 21:52:00 GMT  
		Size: 245.6 KB (245576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:524698e95b691be2af9b6eb9bd742a14f1cc978595ff164fdfc0bfc682c844a3`  
		Last Modified: Mon, 23 Nov 2026 21:52:03 GMT  
		Size: 103.7 MB (103692611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8615c1738723fe9a6bf9f265b46f1b7b32dadb494538397d4d01529e62c326c7`  
		Last Modified: Mon, 23 Nov 2026 21:52:00 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:de7cb66c865e51a759d1fdc1bbcb637783f1759840ec9746b49569ea7ea98340
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 KB (25012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bc4a1756e99fc16303bdedf5f4f1d6fb52d360d958d8e7c4ed3485a772c4a68`

```dockerfile
```

-	Layers:
	-	`sha256:5108932b930ff3db4857e657ad357c81e8d1e9ec5bb6f44c008d36bc19440c0e`  
		Last Modified: Mon, 23 Nov 2026 21:52:00 GMT  
		Size: 25.0 KB (25012 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; arm variant v7

```console
$ docker pull golang@sha256:3231a2c1bc595bd7802f67573f6e33aec05258bda610c62264611b78aefe7065
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.9 MB (106867708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a56d40e00190a949d082fa7c1e87243ffd7a8a48623e3ca10e092b6a94beb7f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 21:51:37 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 23 Nov 2026 21:53:20 GMT
ENV GOTOOLCHAIN=local
# Mon, 23 Nov 2026 21:53:20 GMT
ENV GOPATH=/go
# Mon, 23 Nov 2026 21:53:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 21:53:20 GMT
COPY /target/ / # buildkit
# Mon, 23 Nov 2026 21:53:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 23 Nov 2026 21:53:23 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2edda91ea7f3b3cf8ff6e449c5f0d87232fdc418556e80e0fef3474d4d5ae65e`  
		Last Modified: Mon, 23 Nov 2026 21:53:40 GMT  
		Size: 244.5 KB (244534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c39b245899a237a3af132c690f97082215657bd5be945fcbe2d30fc351bd15f3`  
		Last Modified: Mon, 23 Nov 2026 21:52:15 GMT  
		Size: 103.4 MB (103355283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce36bd201b7b9a10493c2ee9164ac97ed7f447360546d36abfeea1ca949fe027`  
		Last Modified: Mon, 23 Nov 2026 21:53:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:a8b35122cd3f188e7690a2b4823a2a8e0cb3cac2375b08b8dfdcbd77adad0909
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.2 KB (202184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbe8c941ce29cbebdac1e23bda6bad27e21d9a310483d784082e8e95df09428a`

```dockerfile
```

-	Layers:
	-	`sha256:be70fe78dff282fee8e66d79b8ce0c5063d3a5330bfdb9fab3a07b13eb4d840e`  
		Last Modified: Mon, 23 Nov 2026 21:53:40 GMT  
		Size: 177.0 KB (176957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2cbf28f7f5fc59333c3846c165279cceba5f6c33ab7b4329cc696a467a227d8`  
		Last Modified: Mon, 23 Nov 2026 21:53:40 GMT  
		Size: 25.2 KB (25227 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:d025f3768769f08685037b0da8f842120a3743d4daaf2167e19e84e8d55074f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.1 MB (106083086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba714f05f85b0916e235ce19bfcd780bbd08cce9eaa37017c8e5c28a575d1ed`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 21:51:02 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 23 Nov 2026 21:52:15 GMT
ENV GOTOOLCHAIN=local
# Mon, 23 Nov 2026 21:52:15 GMT
ENV GOPATH=/go
# Mon, 23 Nov 2026 21:52:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 21:52:15 GMT
COPY /target/ / # buildkit
# Mon, 23 Nov 2026 21:52:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 23 Nov 2026 21:52:18 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b68e081decdfbc8ae0cc2eb7d0282acb8316b53c873065b07c08b9de669afc4`  
		Last Modified: Mon, 23 Nov 2026 21:52:34 GMT  
		Size: 246.9 KB (246935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba5832b11a785e394735436b1d989145581e95a9a87780254d1918be0af3a577`  
		Last Modified: Mon, 23 Nov 2026 21:51:59 GMT  
		Size: 101.6 MB (101645398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4ca0f4a5edf0713f5906c1257f1617cfc9c46f7db30a8c1cd91f8e01556a06d`  
		Last Modified: Mon, 23 Nov 2026 21:52:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:934cfbc32ad4a6e861f6cf9cc7f80e6527965660511f6bfa8b182a77fa6d6f0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.3 KB (202254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b48e81fb8db8521e3d8a9951f790adce185b4dbd6eabae65a7fa3de5a003bb`

```dockerfile
```

-	Layers:
	-	`sha256:d9926e65090bc8ef8643d351fc35ea9f61f155ab64e289a968e92bfcc7ca1427`  
		Last Modified: Mon, 23 Nov 2026 21:52:34 GMT  
		Size: 177.0 KB (176995 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65b57640abb565f3b8a7143b88f5dafcce2ee9f68e7971dd7eb8fb2b302ef1e1`  
		Last Modified: Mon, 23 Nov 2026 21:52:34 GMT  
		Size: 25.3 KB (25259 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; 386

```console
$ docker pull golang@sha256:b3f050e29d53d7199e0660e89572a96a4b3882459d574112ae8ab123b8f4d1e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.1 MB (109123967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b352c770321ee162a09a153cf4a21835e0d39f44eaae697816db8ba892fe8a5c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 21:51:06 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 23 Nov 2026 21:52:36 GMT
ENV GOTOOLCHAIN=local
# Mon, 23 Nov 2026 21:52:36 GMT
ENV GOPATH=/go
# Mon, 23 Nov 2026 21:52:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 21:52:36 GMT
COPY /target/ / # buildkit
# Mon, 23 Nov 2026 21:52:39 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 23 Nov 2026 21:52:39 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bb4c6b58c1073f056ca45fb6322af0f821961239229ca33ef8727aebf9c8ceb`  
		Last Modified: Mon, 23 Nov 2026 21:52:53 GMT  
		Size: 245.0 KB (245008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4213e3c8db6bf2b11a1cac7a3711fe6e326415ca3b60eb2f135ec39bd863251d`  
		Last Modified: Mon, 23 Nov 2026 21:52:20 GMT  
		Size: 105.2 MB (105198439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:416cfd649b1f0d16a76e002e690ae9b127a8b823bd723450cf6f90f39b154280`  
		Last Modified: Mon, 23 Nov 2026 21:52:53 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:7fda2406597f8f9997a1f8f0adcd099d1ff393d891b7a70bd8d96deb0ad4cbd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.6 KB (202602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79e13daa0b5964a8aa921b99c6e92fa92289a984ff7d9fca0ac8f9dfc12b453a`

```dockerfile
```

-	Layers:
	-	`sha256:980113fd57b829faec5c87c3f2fd501160c51e89a6039e72ae684806fa021a42`  
		Last Modified: Mon, 23 Nov 2026 21:52:54 GMT  
		Size: 177.5 KB (177546 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb5abc61a7c44fb4347e8861e7734a8f6a097d7bb17a6ecea1cd4a7101169664`  
		Last Modified: Mon, 23 Nov 2026 21:52:53 GMT  
		Size: 25.1 KB (25056 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:f5b771ce428e794eab45e8e8cb50b672f9c96598b90a69030c23dad4b9b6c839
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.1 MB (108105289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d5e12460bbef1eda84caf5fca3194d43ece56a572bd5ff500909f78925d99c4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 21:56:38 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 23 Nov 2026 21:52:13 GMT
ENV GOTOOLCHAIN=local
# Mon, 23 Nov 2026 21:52:13 GMT
ENV GOPATH=/go
# Mon, 23 Nov 2026 21:52:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 21:52:13 GMT
COPY /target/ / # buildkit
# Mon, 23 Nov 2026 21:56:42 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 23 Nov 2026 21:56:43 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18d9b7f4fb0db72782512ea38e90d5fd0a665458a54954b522c202e68a4efc50`  
		Last Modified: Mon, 23 Nov 2026 21:57:06 GMT  
		Size: 247.4 KB (247375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d6398754657f6617d56396f3bdc393c5a6e4b0491499f8730567ce43a74afb4`  
		Last Modified: Mon, 23 Nov 2026 21:53:45 GMT  
		Size: 104.0 MB (104035836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1d16c8bf8010045a46238064bd79d5718b361ab453a25b6649d1e3959fbdda8`  
		Last Modified: Mon, 23 Nov 2026 21:57:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:dd7300c1dcd788d26e080c9f061d5e9868987408429c61a2cf8c306655aa01d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.1 KB (202147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42f93ed58543e97f4993cc7a86359c89fb31152e1e96c88830be5ace4c1dcc8c`

```dockerfile
```

-	Layers:
	-	`sha256:1b4f646b592686e73b0a243672b8dfabf4e3d1cbafdebd08c13f6bfa0b60092f`  
		Last Modified: Mon, 23 Nov 2026 21:57:07 GMT  
		Size: 177.0 KB (176990 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db836c029d6e9a3f596634ada8ac93206f977fb80f16d107a4d8833d0c981058`  
		Last Modified: Mon, 23 Nov 2026 21:57:07 GMT  
		Size: 25.2 KB (25157 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; riscv64

```console
$ docker pull golang@sha256:88a9ea1084945f3e5297ff32772ab17a4465d5efb30869799a05269629331b3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.5 MB (105528647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d722c3a04acb61c297fc7ae3e9e44f360b5d9bee96f87314f5f8f8fd32ef54`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sun, 08 Nov 2026 12:33:46 GMT
ADD alpine-minirootfs-3.24.4-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:33:46 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 04:34:27 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 19 Nov 2026 04:24:43 GMT
ENV GOTOOLCHAIN=local
# Thu, 19 Nov 2026 04:24:43 GMT
ENV GOPATH=/go
# Thu, 19 Nov 2026 04:24:43 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 04:24:43 GMT
COPY /target/ / # buildkit
# Thu, 19 Nov 2026 05:08:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 19 Nov 2026 05:08:22 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:248497acdc975d47d1d576f068cfa311688b2fc870a859b6631b3538b043c70e`  
		Last Modified: Sun, 08 Nov 2026 12:34:20 GMT  
		Size: 3.6 MB (3580610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a40699febf5c5058af6785dea85aa9d1c5909c36a46d520d81666060614090ff`  
		Last Modified: Thu, 19 Nov 2026 05:09:44 GMT  
		Size: 244.9 KB (244873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:218ca22bbc2fda98851746abe4b299e0c714b7e488a3ecf02950cb68449ddefe`  
		Last Modified: Thu, 19 Nov 2026 04:33:33 GMT  
		Size: 101.7 MB (101703006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daed521d12be0a20f8610440c144f4ff0e2d783b09eb238b5c3f9967ab63efff`  
		Last Modified: Thu, 19 Nov 2026 05:09:44 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:2b16dac56d0b63f9e6b7dc53bf3f95150db4b0b19d71b71479a8331fd22dc945
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.1 KB (202143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1c067a8507e96b4f2e552d763bd062e78876bc0a5c0053262231529df12d6ff`

```dockerfile
```

-	Layers:
	-	`sha256:359756f931c735c27850bb482c3ab605decf5413ab4e0369be3722e9b4489a97`  
		Last Modified: Thu, 19 Nov 2026 05:09:44 GMT  
		Size: 177.0 KB (176986 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb770687674b761adf3c294769b35634bf525d6ea64fda1ab0ce89be813150f1`  
		Last Modified: Thu, 19 Nov 2026 05:09:44 GMT  
		Size: 25.2 KB (25157 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; s390x

```console
$ docker pull golang@sha256:a510919504e8e646fdeaf05996593583a5e0a61cb2982efdd07e0a9f8dcd4cf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.1 MB (110082870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57008b96318d42eb12376eee141e5412538a7a3043722987613d4939a673dba1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 21:51:49 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 23 Nov 2026 21:51:48 GMT
ENV GOTOOLCHAIN=local
# Mon, 23 Nov 2026 21:51:48 GMT
ENV GOPATH=/go
# Mon, 23 Nov 2026 21:51:48 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 21:51:48 GMT
COPY /target/ / # buildkit
# Mon, 23 Nov 2026 21:51:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 23 Nov 2026 21:51:50 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d809ab4e59f8539917cf1d7c4ffe41b6e82b3d4af7abe1cd72e2407a1fbd93c7`  
		Last Modified: Mon, 23 Nov 2026 21:52:14 GMT  
		Size: 245.6 KB (245570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4cd34b458c6176d100150fefe22bd10abee9b4e1cc0bcf39f09c5dde1a049c5`  
		Last Modified: Mon, 23 Nov 2026 21:51:39 GMT  
		Size: 106.1 MB (106116472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea86eb8115b2f5848b0ea2ecc1e92778b142722a7eb62bd05e53c77e963d1d7e`  
		Last Modified: Mon, 23 Nov 2026 21:52:13 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:0ac081386c564381192dedfa282d7ef7358b3038613b1f04675a67c910c1d002
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.9 KB (201863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3706d72b390837d939feb2449da0b9bbe03435624307881cc74d7d06c5c7d17`

```dockerfile
```

-	Layers:
	-	`sha256:d0a90ab0ff40ae71e26fb3d449fb925cdb03dbd9157dc953d41abb0d5e2a9f06`  
		Last Modified: Mon, 23 Nov 2026 21:52:14 GMT  
		Size: 176.9 KB (176938 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4ea0fd2e6e831e1acbc134d0fadbbb130ac21ec7a85769f6ec3c7ebd2ea5894`  
		Last Modified: Mon, 23 Nov 2026 21:52:14 GMT  
		Size: 24.9 KB (24925 bytes)  
		MIME: application/vnd.in-toto+json
