## `golang:tip-alpine3.23`

```console
$ docker pull golang@sha256:8b469e5abc8b571e01aa9643c7d1f2ec929d3948f6c4930c14ef51e14e652cee
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

### `golang:tip-alpine3.23` - linux; amd64

```console
$ docker pull golang@sha256:ca73bec5c6f4d3d04ef24625459dce508b6b48cfba6ffd1a0e8e1200b09b2832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109250041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64372b0e4983b894a28d4ef491914eb2b92cab9630720420a9a145147e1bf964`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Mon, 19 Oct 2026 18:01:47 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 19 Oct 2026 18:01:04 GMT
ENV GOTOOLCHAIN=local
# Mon, 19 Oct 2026 18:01:04 GMT
ENV GOPATH=/go
# Mon, 19 Oct 2026 18:01:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 18:01:04 GMT
COPY /target/ / # buildkit
# Mon, 19 Oct 2026 18:03:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 19 Oct 2026 18:03:08 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bae2c4a1a579af800d731d15a3e6e9a87ed57bbaa38e6f3fb07e4bdb059981c`  
		Last Modified: Mon, 19 Oct 2026 18:03:15 GMT  
		Size: 247.5 KB (247524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d07970771627d0fc44985d114123f5fd927a97b65faecc0513972b352bc31ef`  
		Last Modified: Mon, 19 Oct 2026 18:01:33 GMT  
		Size: 105.2 MB (105153851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f5e89889e2c6367e33689501d7a2c054f36dc30cc7f18369cd85d763f1ba55a`  
		Last Modified: Mon, 19 Oct 2026 18:03:15 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:ce27eef9fff8440e34f1e4dddb2d14a688ba86ac5f3a89e2d549245cccef40b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.4 KB (203368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b0f6c77120b74890742380312910d340997ee6d167083ca7fa408ef9da4003e`

```dockerfile
```

-	Layers:
	-	`sha256:a6af303bcdd2bedbddaa841367fdfcba886e77eacc498ab04f9e0cc0360397d4`  
		Last Modified: Mon, 19 Oct 2026 18:03:15 GMT  
		Size: 178.9 KB (178900 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e1d61c22c2acbf35060ce02ba7e04ee19382bb9874b7a94eec4cc38014cf8ba`  
		Last Modified: Mon, 19 Oct 2026 18:03:15 GMT  
		Size: 24.5 KB (24468 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v6

```console
$ docker pull golang@sha256:a05f906be1f6da2a01914fdb9ccd5dd80ce22d8562e0fe84237629212684da89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.2 MB (105178017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1ccd36518c32a71da224a198978b5820c6f730d65be8bfe78ed88df9294116e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Mon, 19 Oct 2026 17:59:30 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 19 Oct 2026 18:01:09 GMT
ENV GOTOOLCHAIN=local
# Mon, 19 Oct 2026 18:01:09 GMT
ENV GOPATH=/go
# Mon, 19 Oct 2026 18:01:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 18:01:09 GMT
COPY /target/ / # buildkit
# Mon, 19 Oct 2026 18:01:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 19 Oct 2026 18:01:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d0d42deaba7d414fb9f277491146e35e6554cf9df23ed3045fe1cd944456557`  
		Last Modified: Mon, 19 Oct 2026 18:01:26 GMT  
		Size: 248.5 KB (248466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efef78d19f54812d5d037ba04fe740ef126ef50b1dfb5b609ec9061ac0659dec`  
		Last Modified: Mon, 19 Oct 2026 18:01:15 GMT  
		Size: 101.4 MB (101374467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97576aaf73b047a57032d77f8b29b7ea5bc02273820dc304b47c87bda104a200`  
		Last Modified: Mon, 19 Oct 2026 18:01:26 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:3345d98779bb087ee521088e9b18d905d7efc5173f40d2bf568a4429f433a3ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 KB (24366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffbb49be765e501cac2f38f1d67ee909bfa1ff0c7e3e27f7f43073c260becc58`

```dockerfile
```

-	Layers:
	-	`sha256:1d4805fc185c630da6c18709c40a951aa29761c41b140f1c3e2e5b12184720e8`  
		Last Modified: Mon, 19 Oct 2026 18:01:26 GMT  
		Size: 24.4 KB (24366 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v7

```console
$ docker pull golang@sha256:1d1ad4bcd72c740f0f0606430d651619524e6c73b93832652efc653a7d48434c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.6 MB (104563786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbb54abac125ae0529ae2725dd57ca12950e097a84124fdb477904aeeab569e7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Mon, 19 Oct 2026 17:59:31 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 19 Oct 2026 18:01:14 GMT
ENV GOTOOLCHAIN=local
# Mon, 19 Oct 2026 18:01:14 GMT
ENV GOPATH=/go
# Mon, 19 Oct 2026 18:01:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 18:01:14 GMT
COPY /target/ / # buildkit
# Mon, 19 Oct 2026 18:01:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 19 Oct 2026 18:01:17 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a03d2bfdc7bf8c0daa996dee92660c9be7ad91ef73ccf2543ce64c1feee80a0`  
		Last Modified: Mon, 19 Oct 2026 18:01:34 GMT  
		Size: 247.6 KB (247557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc91ee2721cd9a109da67ffc60c54000b7efede3b8d6128a3f9c3f61597e002c`  
		Last Modified: Mon, 19 Oct 2026 18:01:38 GMT  
		Size: 101.1 MB (101053157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec454bb00c7f4edf24b4552c4df767a6a5891c5864916b4ecad0c871000c8ba3`  
		Last Modified: Mon, 19 Oct 2026 18:01:34 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:9a7c0070a7af573364f5122f638142be4e687962b56e941a046b6c4b78cc9f80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.8 KB (202833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7e75e628c95d7a002fcdf9d07fb00979e881513f952d15aac9cc2c1d1a41567`

```dockerfile
```

-	Layers:
	-	`sha256:214dd8403bddba1c9638731860c36d023afe1aaf5fa4a0b94c11a00dcfba33d5`  
		Last Modified: Mon, 19 Oct 2026 18:01:34 GMT  
		Size: 178.3 KB (178252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2fc7c550fef296e5dd1ad73ba049bce440a815030dfbbc55a77f8d2aa86e0f5e`  
		Last Modified: Mon, 19 Oct 2026 18:01:34 GMT  
		Size: 24.6 KB (24581 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:cc81a54e92a63787239dc5e8335ef130101c160bed10fc3ea780e7ae0629370e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.0 MB (103990902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f07aba13b2245993efd2d508a2cb5de3b58c59e8551d5674c005501662ad899d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Mon, 19 Oct 2026 18:02:25 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 19 Oct 2026 18:01:44 GMT
ENV GOTOOLCHAIN=local
# Mon, 19 Oct 2026 18:01:44 GMT
ENV GOPATH=/go
# Mon, 19 Oct 2026 18:01:44 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 18:01:44 GMT
COPY /target/ / # buildkit
# Mon, 19 Oct 2026 18:03:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 19 Oct 2026 18:03:32 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3aba4aa4fbb0109b40986d9a67c5c77962aaff168a6048088c0728706e505c7`  
		Last Modified: Mon, 19 Oct 2026 18:03:39 GMT  
		Size: 249.8 KB (249847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9417cdc878b050430cd75ecb0e089d66a342451bcf0ecc4ee4953b6cb8a5882`  
		Last Modified: Mon, 19 Oct 2026 18:02:17 GMT  
		Size: 99.6 MB (99554841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3e47a8741f5efa7c964fcc664394e611321c40de561f9ee05dae633cf6573f4`  
		Last Modified: Mon, 19 Oct 2026 18:03:39 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:ca0f7ebb5b5e42ee4cf091b6194cba77b680c0624b30e17158abba2c07b1376c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.9 KB (202883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b79c641c224b65fb4598086841b90b6b2c579cf5876ac2f403e42bdb21b9539e`

```dockerfile
```

-	Layers:
	-	`sha256:a6fcf7398f3f37ae4bb7e80ca7029f9ce1d6f2db6dd206f6fa7bbf752066d83a`  
		Last Modified: Mon, 19 Oct 2026 18:03:39 GMT  
		Size: 178.3 KB (178282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebb93abcb32d8edeff80b79f76642d5ddbae4dbdef71b248adce8b722967d870`  
		Last Modified: Mon, 19 Oct 2026 18:03:39 GMT  
		Size: 24.6 KB (24601 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; 386

```console
$ docker pull golang@sha256:e9028e756c7ff97ea8d9b1863f712ac2783b1ab66b0a0c690c0a0e7203b4d19f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.9 MB (106865068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80ee587f1ef9572e896532d2f01b1637715f0cd85544827002869ebb4750ac98`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:28 GMT
ADD alpine-minirootfs-3.23.6-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:28 GMT
CMD ["/bin/sh"]
# Mon, 19 Oct 2026 18:03:02 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 19 Oct 2026 18:02:19 GMT
ENV GOTOOLCHAIN=local
# Mon, 19 Oct 2026 18:02:19 GMT
ENV GOPATH=/go
# Mon, 19 Oct 2026 18:02:19 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 18:02:19 GMT
COPY /target/ / # buildkit
# Mon, 19 Oct 2026 18:04:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 19 Oct 2026 18:04:34 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1f89eeb8219ece88ee6dd2e7cad6761d1e9da9e18f4b7929d9ee0052902df74a`  
		Last Modified: Thu, 17 Sep 2026 20:37:33 GMT  
		Size: 3.7 MB (3675111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b83f2cba6b3a0a187a181fb272038a31c5614bc8763c481de77545f7e7ab02`  
		Last Modified: Mon, 19 Oct 2026 18:04:41 GMT  
		Size: 248.0 KB (248046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f34ae54752f89828f255f547252f84b9b2f661f73e2c00f48ff397c18791686`  
		Last Modified: Mon, 19 Oct 2026 18:02:53 GMT  
		Size: 102.9 MB (102941753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e50dbf8d024742c39399b1aa8407a7c3e8bbd7aa1e6dd9fbde9dc4aea500ad6f`  
		Last Modified: Mon, 19 Oct 2026 18:04:41 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:82ee5d197013c3fbfafadc3eabb472d652499d77d1e7ae8156a1a7205b0988ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.3 KB (203303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:749970f8bce942a5ab37a6c2e457bd5ab81478e555c4101b8a21e472dec11e57`

```dockerfile
```

-	Layers:
	-	`sha256:821d221622ad0a4a180e821a5454299285f12d93fbc537e63e96618d022f1cbc`  
		Last Modified: Mon, 19 Oct 2026 18:04:41 GMT  
		Size: 178.9 KB (178867 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44624a06f7af4193f968188a68d2d373752447a28c25ca004fc39995b1359752`  
		Last Modified: Mon, 19 Oct 2026 18:04:41 GMT  
		Size: 24.4 KB (24436 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; ppc64le

```console
$ docker pull golang@sha256:b37875cd2e565e7e3035d52ec22760bfbb84f493dda0ff0456267cd68e5e7c81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.8 MB (105828852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1af3421e83d0dcbc16e74f3a9d373336a8d1a548999c4fea29cf3ccd79112a00`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 08 Oct 2026 17:13:15 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 19 Oct 2026 18:02:53 GMT
ENV GOTOOLCHAIN=local
# Mon, 19 Oct 2026 18:02:53 GMT
ENV GOPATH=/go
# Mon, 19 Oct 2026 18:02:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 18:02:53 GMT
COPY /target/ / # buildkit
# Mon, 19 Oct 2026 18:07:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 19 Oct 2026 18:07:10 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:301ada7d2b2eb8bf6af773232f9ea181bb90403b0af4f6b307b49191890df265`  
		Last Modified: Thu, 08 Oct 2026 17:13:51 GMT  
		Size: 250.3 KB (250258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3969c5ba5e57deec40f3cea5a93cb146887629c240af3dd3c420cc91bb72540`  
		Last Modified: Mon, 19 Oct 2026 18:04:11 GMT  
		Size: 101.8 MB (101763666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34f776d8a12126a0ecb1d8078d497056165983407a8296d0d1beaae7aaaa2a2c`  
		Last Modified: Mon, 19 Oct 2026 18:07:37 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:e5bca38fc4ae8ab6340b62f8ddcec6e6720b3a1b8e0e65add01ca4121e3a68ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.6 KB (202630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07b73591b18b4ad3a41bd1f74eda07db785d6cc0352d524cfe254415d3884fb2`

```dockerfile
```

-	Layers:
	-	`sha256:fab85b3ee70d4c14ac5bbfb6aa70aa62d8d37b9d8ad9a74f4d63f96cf1c11c17`  
		Last Modified: Mon, 19 Oct 2026 18:07:37 GMT  
		Size: 178.3 KB (178289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba8c21f86bc9f657dfda96bd252c2eded6d14942a722f6eae549edf7d4393b19`  
		Last Modified: Mon, 19 Oct 2026 18:07:37 GMT  
		Size: 24.3 KB (24341 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; riscv64

```console
$ docker pull golang@sha256:75d8c48ffcded47dccc00c89ea77faa7471ff02162606834a45de0a8ec052e1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.0 MB (105971504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:497f20802ff61bca2ba7ebc0e9d26826a68d0cfbd20604121fd21432a1966e26`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 09:45:55 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 14 Oct 2026 03:44:12 GMT
ENV GOTOOLCHAIN=local
# Wed, 14 Oct 2026 03:44:12 GMT
ENV GOPATH=/go
# Wed, 14 Oct 2026 03:44:12 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 03:44:12 GMT
COPY /target/ / # buildkit
# Wed, 14 Oct 2026 04:58:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 14 Oct 2026 04:58:31 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:125f7ed2919501383cc2a463efb0a6d988a780211c71de97a05b674ca6bb8dde`  
		Last Modified: Fri, 18 Sep 2026 16:50:46 GMT  
		Size: 3.6 MB (3576321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a26110e639e5c2f5ae2a279e28220c86acc4835d7de4818e4ea9064ba9bcf1f`  
		Last Modified: Mon, 21 Sep 2026 09:47:07 GMT  
		Size: 248.0 KB (247955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f686821d439c90a713f67c450fbd3f02efc57ea0fb9d8422c655741e608f173`  
		Last Modified: Wed, 14 Oct 2026 03:51:38 GMT  
		Size: 102.1 MB (102147070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:025c90d97bafa36b5b9e1c088a3d4f9b8ac52827baf4db050109e066fc6f8645`  
		Last Modified: Wed, 14 Oct 2026 04:59:52 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:f208d3d2970868f789d04065802c691fc2a7ac7c000d7642ec4202aa5de8547e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.0 KB (202005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb523729791f9e07603ca98fc48800494fc927fca5e32b6c789c34d9c2b6eea2`

```dockerfile
```

-	Layers:
	-	`sha256:33771593282e3ae217d69edfcd63f8d67dbba346850ae27e71e92ce514b97a81`  
		Last Modified: Wed, 14 Oct 2026 04:59:52 GMT  
		Size: 178.3 KB (178285 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:365d45a172863bae507137c9d41b05b3a62905b3715acc5e1e5cd9ce53a79b4a`  
		Last Modified: Wed, 14 Oct 2026 04:59:52 GMT  
		Size: 23.7 KB (23720 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; s390x

```console
$ docker pull golang@sha256:94427a3485fed3bc819f13e0ba034eab9affeddcbdffbaa1126558ce4e2bdd1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.7 MB (107748905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:065e03c0386f0c0836eb846d0d8e178ac893c8dd4a52f04e4b154ba0a1e8499b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:23 GMT
ADD alpine-minirootfs-3.23.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:23 GMT
CMD ["/bin/sh"]
# Thu, 08 Oct 2026 17:11:33 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 19 Oct 2026 18:02:58 GMT
ENV GOTOOLCHAIN=local
# Mon, 19 Oct 2026 18:02:58 GMT
ENV GOPATH=/go
# Mon, 19 Oct 2026 18:02:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 18:02:58 GMT
COPY /target/ / # buildkit
# Mon, 19 Oct 2026 18:03:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 19 Oct 2026 18:03:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:4387077d70188f8428b97ed5df25698ad5aa9b8967d00a98ebb627a3e08ae986`  
		Last Modified: Thu, 17 Sep 2026 21:38:32 GMT  
		Size: 3.7 MB (3713255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43634c453f74eed3f83d5578f4fd982aa592ea1a55a006a5df0f43d5775a88de`  
		Last Modified: Thu, 08 Oct 2026 17:13:13 GMT  
		Size: 248.6 KB (248578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6fb31eef0025b29c46700c5b5c80f355cb9e06a94e748ae3ea31b41560eb52`  
		Last Modified: Mon, 19 Oct 2026 18:02:56 GMT  
		Size: 103.8 MB (103786913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18e0c291fd5377c596d33ac7e73653688ce28e7666707905012b35bcfa37d4e8`  
		Last Modified: Mon, 19 Oct 2026 18:03:25 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:cf77e87e9595231ca590226babdabc4c89688d0fe1eedcba8001abc3a3f8e216
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.3 KB (203292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9a466e0f4998b3d21288f215fcb749d0e6d4412f922ceeb8ea154fd84155f39`

```dockerfile
```

-	Layers:
	-	`sha256:eafdf556407243d798956989de3412c8559445f824f520f845b39ebb21c9be26`  
		Last Modified: Mon, 19 Oct 2026 18:03:31 GMT  
		Size: 179.0 KB (178997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3d7542c9eac8297af8c0abc6e997557822538a8d0b54330a2dd82bd81c8304f`  
		Last Modified: Mon, 19 Oct 2026 18:03:31 GMT  
		Size: 24.3 KB (24295 bytes)  
		MIME: application/vnd.in-toto+json
