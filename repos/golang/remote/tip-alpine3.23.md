## `golang:tip-alpine3.23`

```console
$ docker pull golang@sha256:1ee9f678c049013f941a555c9b8578eb8947061b755c7a32b6aa9d7ca0336224
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
$ docker pull golang@sha256:1541649420bb1f6b6b55acb42bc1c30439395241471ec48dc9ffd0b8ad297c7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106691895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5e44aadc0c35deaa1bfc35a8061509d8b362b9cf3bf44ec8435b8db4634eb2f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 13 Jul 2026 17:42:27 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 13 Jul 2026 17:44:24 GMT
ENV GOTOOLCHAIN=local
# Mon, 13 Jul 2026 17:44:24 GMT
ENV GOPATH=/go
# Mon, 13 Jul 2026 17:44:24 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 17:44:24 GMT
COPY /target/ / # buildkit
# Mon, 13 Jul 2026 17:44:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 13 Jul 2026 17:44:26 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:960ffdf7b5e5f662c00f02f551c0c95addc0cc8ee9b1fe22906f6ffd3b8a82f9`  
		Last Modified: Mon, 13 Jul 2026 17:44:41 GMT  
		Size: 245.1 KB (245054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a5d7d048677a9e309f15f3f0a5e4ac8cb6bd6248d7f3bce4134c428fd02ac61`  
		Last Modified: Mon, 13 Jul 2026 17:42:08 GMT  
		Size: 102.6 MB (102602261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9d063094fb6da1e655048995a803f3f64e6819ed899df5722801228db5363aa`  
		Last Modified: Mon, 13 Jul 2026 17:44:40 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:ce51ff8dadc91eafdc592bbbfca6fa4d91afc8611837ffb6c0266f8e2056e1bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 KB (200595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2a59de05c249bc3e1bdaf9e47d640375989d21fac8d77ceda9756c8ad35f031`

```dockerfile
```

-	Layers:
	-	`sha256:08b992c846a9717246b8cff7615cda055f7836f3849ae84ad37b96de6d14657d`  
		Last Modified: Mon, 13 Jul 2026 17:44:41 GMT  
		Size: 176.1 KB (176126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f8abc2e40edb82fda1ff395f1449532c77ac19f48a5f8d390487cfcfe1ab2251`  
		Last Modified: Mon, 13 Jul 2026 17:44:40 GMT  
		Size: 24.5 KB (24469 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v6

```console
$ docker pull golang@sha256:082054ec46c215453989e2b4893e232c8d809cc73725f4bc758b5b75a6801dc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.4 MB (102419697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d611fdfff381d00d72a67da65ef94c4fa5bce1007fc07b5e4c038f264fa9c84`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 13 Jul 2026 17:38:44 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 13 Jul 2026 17:41:51 GMT
ENV GOTOOLCHAIN=local
# Mon, 13 Jul 2026 17:41:51 GMT
ENV GOPATH=/go
# Mon, 13 Jul 2026 17:41:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 17:41:51 GMT
COPY /target/ / # buildkit
# Mon, 13 Jul 2026 17:41:54 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 13 Jul 2026 17:41:54 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ab4a7d419104d34b49e555e2bf96c1c933206b0052aa6cfbc62a820f2e74c8e`  
		Last Modified: Mon, 13 Jul 2026 17:42:06 GMT  
		Size: 246.2 KB (246150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34e72ca6502141a290d10b5ee2262d155e7faedd9759e3c1e4f4a918d200c4f5`  
		Last Modified: Mon, 13 Jul 2026 17:40:58 GMT  
		Size: 98.6 MB (98620794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31042df73dd667361450282a23f45a3994009a0ce1d8a19b06241b90d40cc735`  
		Last Modified: Mon, 13 Jul 2026 17:42:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:706cadea5161e306fc4c1bba3639d8f530f5d366f2f591878915832c9305ffb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 KB (24361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9d063bc0541d430f71275f281b558074c084bf55c25b2c8822eafa16748a120`

```dockerfile
```

-	Layers:
	-	`sha256:b950ce397194032cf47589728568b2b00f24710ebf166377a969897b25239a9f`  
		Last Modified: Mon, 13 Jul 2026 17:42:06 GMT  
		Size: 24.4 KB (24361 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v7

```console
$ docker pull golang@sha256:354e23b7c8bbcf1fb21979c0a995b2a1a1dbe3ba3496943ae5ba69dacf5768b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101827225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48af2aee8304c879c629931551353b70f2567767b6bfda6f525d90fac1a8987c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Mon, 13 Jul 2026 17:39:59 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 13 Jul 2026 17:43:02 GMT
ENV GOTOOLCHAIN=local
# Mon, 13 Jul 2026 17:43:02 GMT
ENV GOPATH=/go
# Mon, 13 Jul 2026 17:43:02 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 17:43:02 GMT
COPY /target/ / # buildkit
# Mon, 13 Jul 2026 17:43:05 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 13 Jul 2026 17:43:05 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4c9cfe05c2b2f5f210e09e9a34e789274e7905bd54f8cb2f4d09c5ce5fabd82`  
		Last Modified: Mon, 13 Jul 2026 17:43:20 GMT  
		Size: 245.1 KB (245138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e45e113ca2e6199a8c4198583f287b92df437e9eebbbfb343c97477f57a0f94d`  
		Last Modified: Mon, 13 Jul 2026 17:41:27 GMT  
		Size: 98.3 MB (98320075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb6d4858dde85acbc60aba371044d5f9eea69a164875879bcd5e0b3f10d09de8`  
		Last Modified: Mon, 13 Jul 2026 17:43:20 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:29a73cb99cbd73f4abcd82449d9064e56f664bf88335528f9702abc78753352d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.1 KB (200057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afbe1d72048e485e2796fec4d3e0ec04b19c15d9202423e1d3026fe14be083ad`

```dockerfile
```

-	Layers:
	-	`sha256:4b63b010a05c3dcfc2be4f4ffeb3db94ee6781b9940eb291870e50cb38d42407`  
		Last Modified: Mon, 13 Jul 2026 17:43:20 GMT  
		Size: 175.5 KB (175480 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72b2b34ad9b00deed1b9e9c6f3545ae0244181931d8addafe0e71803c39318ec`  
		Last Modified: Mon, 13 Jul 2026 17:43:20 GMT  
		Size: 24.6 KB (24577 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:225e116f55c0a68cb4ed8918c868f9cb426398c28969570483c5798f6c88b6eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.4 MB (101411466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3715fa7892247961bcd28c37468eea2a28b9fce38cf7e596ef24bac8685420e7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 13 Jul 2026 17:42:18 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 13 Jul 2026 17:41:36 GMT
ENV GOTOOLCHAIN=local
# Mon, 13 Jul 2026 17:41:36 GMT
ENV GOPATH=/go
# Mon, 13 Jul 2026 17:41:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 17:41:36 GMT
COPY /target/ / # buildkit
# Mon, 13 Jul 2026 17:44:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 13 Jul 2026 17:44:17 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fc0a6e7d21d1a11718f81a345506751d85812af64c1a97537d12f6e69cee5f7`  
		Last Modified: Mon, 13 Jul 2026 17:44:24 GMT  
		Size: 247.5 KB (247498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5731a5f94e129c46506b6f51b7f1d416b6d39475c8508894e8e48a8d20505fff`  
		Last Modified: Mon, 13 Jul 2026 17:42:09 GMT  
		Size: 97.0 MB (96981949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41a719e0802765005d939cc5aadaf7748f1bade4567b5e9a982ee3d5f2d5c4f6`  
		Last Modified: Mon, 13 Jul 2026 17:44:24 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:cf7baafa90884951701bff9ad3eb84a7d50398664e7ba8187b0e73c320b9ea80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.1 KB (200109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:548d8615178f3460654c821d54f31691f7ba5b208e941abb4c42439547c6727b`

```dockerfile
```

-	Layers:
	-	`sha256:66415712b21a9f1bc793303a4ecd2a9e5d9647843c7481d895359f37b975250c`  
		Last Modified: Mon, 13 Jul 2026 17:44:24 GMT  
		Size: 175.5 KB (175508 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a28e162d0e92a507df6b04cbb319a5e49ea5ff350d14c6f36c756718a26e5bb`  
		Last Modified: Mon, 13 Jul 2026 17:44:24 GMT  
		Size: 24.6 KB (24601 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; 386

```console
$ docker pull golang@sha256:6e764139d5b1b5ab4881d8183f0a4141de7517bd7aeb6013526e123e5b9eafbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104309140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06c5fbb06c6c98e70907c1d2e0aaf21a1a5350f90f98940d1ef07b58eb78a3f9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Mon, 13 Jul 2026 17:41:21 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 13 Jul 2026 17:40:37 GMT
ENV GOTOOLCHAIN=local
# Mon, 13 Jul 2026 17:40:37 GMT
ENV GOPATH=/go
# Mon, 13 Jul 2026 17:40:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 17:40:37 GMT
COPY /target/ / # buildkit
# Mon, 13 Jul 2026 17:43:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 13 Jul 2026 17:43:51 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b76a4c053c6b55a5fa218d505ca695fbad36e5b466ba47954c1e80e4afcb4bd`  
		Last Modified: Mon, 13 Jul 2026 17:43:57 GMT  
		Size: 245.6 KB (245590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:380b58f291fa5b273e41e2f61343526fcb5023064f6760d0ecb0cd1486c9909e`  
		Last Modified: Mon, 13 Jul 2026 17:41:10 GMT  
		Size: 100.4 MB (100395402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfb49c1e1cd399a790042d5f4739bc070a11f6a8138385e7e3c2957ab032f87b`  
		Last Modified: Mon, 13 Jul 2026 17:43:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:e19c7f206e7bbc62fc682e8280cab89cb49d52f9abd7ad9efca93fe5ef9e844e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.5 KB (200530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d6f053f33545cfa40aac5b6a5cdd4ca0495b48d1ffde0cbb33232f8231c3550`

```dockerfile
```

-	Layers:
	-	`sha256:08bff837c9371eeac7d7c176d1de9ab9008890803df03d9b456be89fe5c967df`  
		Last Modified: Mon, 13 Jul 2026 17:43:57 GMT  
		Size: 176.1 KB (176095 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f5c9155f42575898304902de03f80626953b83fb4893b6cb12941a99dc7d0db`  
		Last Modified: Mon, 13 Jul 2026 17:43:57 GMT  
		Size: 24.4 KB (24435 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; ppc64le

```console
$ docker pull golang@sha256:80005c3b21c760e13d70be6f958016bfcbfa7335cde9ee4ff8cd9ffec2e126ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.0 MB (103036937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83529e0b6bb4a978807e88063cf2a93394a5016a65c21507dc3204712f4a8f27`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:49:25 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 13 Jul 2026 17:41:17 GMT
ENV GOTOOLCHAIN=local
# Mon, 13 Jul 2026 17:41:17 GMT
ENV GOPATH=/go
# Mon, 13 Jul 2026 17:41:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 17:41:17 GMT
COPY /target/ / # buildkit
# Mon, 13 Jul 2026 17:46:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 13 Jul 2026 17:46:26 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d2afe4ddf70535a87895dd2928115f13eed6bd80bb630863f6b224ede37a652`  
		Last Modified: Mon, 22 Jun 2026 20:49:43 GMT  
		Size: 247.9 KB (247906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5ba5e95b6ffee5086f0309826a8282fcab9ba9ae8fcd16a3725ed1ee2dc1cd2`  
		Last Modified: Mon, 13 Jul 2026 17:42:19 GMT  
		Size: 99.0 MB (98976574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f18e00831dfd5956fa288558d51e7f1a388830f7ae20ec4681066925dd2d0b06`  
		Last Modified: Mon, 13 Jul 2026 17:46:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:170c0b4a86160c206c13c0835c997d679ae66d476b62a98709fee35989059af0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.9 KB (199851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8472961b994bb267a74c75003173046465d20afd2599071fee499766d316acb2`

```dockerfile
```

-	Layers:
	-	`sha256:0acc487476f2e580ae5612589e7517c3d9ffcc46ffa27e149d92a42d96b8c0f4`  
		Last Modified: Mon, 13 Jul 2026 17:46:40 GMT  
		Size: 175.5 KB (175513 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc46e8ce673af4a47f1057bb977679f10bc181e5dce445914ce0bfa5d6ed59eb`  
		Last Modified: Mon, 13 Jul 2026 17:46:40 GMT  
		Size: 24.3 KB (24338 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; riscv64

```console
$ docker pull golang@sha256:c7a7052b86fc22ca64ee68b9ae4a0294886edd588b7302d7a3ce3c386b11bb9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.7 MB (103741760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a3562b1ddcd9ca9c2b29e1f3de1558beca59a6079895a976c88f5e8c8b84fe4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 14:05:16 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 07 Jul 2026 02:28:48 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 02:28:48 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 02:28:48 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 02:28:48 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 04:03:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 04:03:35 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3d1b6a4c21a78dbb25159d2e273a4550eac3caff5f0f9a74168efac89740c36`  
		Last Modified: Tue, 23 Jun 2026 14:06:21 GMT  
		Size: 245.5 KB (245467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea2c9ddd75bba6ad0fd1ac9d562f5a8aecbe1d7fa189e7c35d6e13745b2b8e7d`  
		Last Modified: Thu, 02 Jul 2026 20:04:55 GMT  
		Size: 99.9 MB (99922895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40bd6c422fb296d192ee62a42969c2b1cf6f0c0fc9903f753e7d5f266dab3af8`  
		Last Modified: Tue, 07 Jul 2026 04:04:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:751c06dad965b152e9f58743a4eb46d9bb5c78efd63dec536147739d278534e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.0 KB (200020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61785ff374e48a033599a51407cfb727cd1f41776c079c8f2a72da89acb4def3`

```dockerfile
```

-	Layers:
	-	`sha256:4787c3d56c924591fce9b7c69e1be5afb96797a1f0de66ae965ff8b02eaa2bb3`  
		Last Modified: Thu, 09 Jul 2026 08:19:11 GMT  
		Size: 175.5 KB (175509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b297332479ba97bd89fcdb4499f6717abb0d8c022e8370881f27dde8d71a1f3`  
		Last Modified: Thu, 09 Jul 2026 08:19:11 GMT  
		Size: 24.5 KB (24511 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; s390x

```console
$ docker pull golang@sha256:1f082ce60387ca72af875fe8cf129e58fd3c79e9393b90281952e3fded48e723
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.0 MB (104993832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:205d3b6aac88c9a62d71e7d3caf9a610f88978ee05175215414bc79f15f3d8e0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 20:41:25 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 13 Jul 2026 17:47:13 GMT
ENV GOTOOLCHAIN=local
# Mon, 13 Jul 2026 17:47:13 GMT
ENV GOPATH=/go
# Mon, 13 Jul 2026 17:47:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 17:47:13 GMT
COPY /target/ / # buildkit
# Mon, 13 Jul 2026 17:47:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 13 Jul 2026 17:47:15 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1718196a71a3addbf43c83e0e65418bdf203de52f5b7783093a5f70b48bfa636`  
		Last Modified: Mon, 06 Jul 2026 20:42:07 GMT  
		Size: 246.2 KB (246160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9d8998f4596451be5e05276e8f2804dc2705dbebe9a9aee61d0e143808d1960`  
		Last Modified: Mon, 13 Jul 2026 17:40:31 GMT  
		Size: 101.0 MB (101040264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a329f7ea44ddf269bf48a42be2bf358a2287ec3ea22673fb2dbdf6ee3d593d3d`  
		Last Modified: Mon, 13 Jul 2026 17:47:41 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:38eda40927ad901f9b7cccb7984be3db2ce93643bdb048f28cf5a6a3eb5448de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 KB (200692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6592746dcfcb8afe51000169a2b166523935859a5af49ad97ee835db3f0cb741`

```dockerfile
```

-	Layers:
	-	`sha256:30c472a9b1b1f6ad70b56c96fb201e345445354f18c4feda9abaad73b678883e`  
		Last Modified: Mon, 13 Jul 2026 17:47:41 GMT  
		Size: 176.2 KB (176223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4133dc37202dceeb283d8c0d07274e0c9e21c8e46765ccb9157b68c933c64619`  
		Last Modified: Mon, 13 Jul 2026 17:47:40 GMT  
		Size: 24.5 KB (24469 bytes)  
		MIME: application/vnd.in-toto+json
