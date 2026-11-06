## `golang:tip-alpine3.24`

```console
$ docker pull golang@sha256:a29849aa46b7f1b374bfe15e4409f629a78a103a91a8212b7a365adbab99b5c3
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
$ docker pull golang@sha256:d0ac4bc7d26d03aa02dec74a5009c81c5099573249adb11b99dff53966e45e59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.5 MB (108487961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75aad839df4fc535c6c57246737a3e1ba08c9cb7f6c7e5fcb12e14705cbd211f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 20:18:46 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 05 Nov 2026 20:20:09 GMT
ENV GOTOOLCHAIN=local
# Thu, 05 Nov 2026 20:20:09 GMT
ENV GOPATH=/go
# Thu, 05 Nov 2026 20:20:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 20:20:09 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 20:20:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 20:20:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed359ad7935cf51a7bb8174ff6474cb1d6eef370c816fa7720507acd116cae8d`  
		Last Modified: Thu, 05 Nov 2026 20:20:28 GMT  
		Size: 244.5 KB (244471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd35beab66f9320765c5f7a2a506372f5a6410782483671acaa1e1af5f461ae7`  
		Last Modified: Tue, 03 Nov 2026 00:57:17 GMT  
		Size: 104.4 MB (104389658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4560353a3346dd1dabbe34036326d03e765c58f9786b22aa2ed1566c91ec83f6`  
		Last Modified: Thu, 05 Nov 2026 20:20:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:10146769e725b320416e2131b8eb041e84d8d556c699a2fe734aff0361f76582
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.7 KB (202688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:391ecab978edc3bd62ae0f478ccf7fc5e45c211223a7e65be9f3c521e67b4b0a`

```dockerfile
```

-	Layers:
	-	`sha256:4a4227cc2d81570e34b5877eb9fa3bca0c1cafa1cbd6c21236e7c6c90f090974`  
		Last Modified: Thu, 05 Nov 2026 20:20:28 GMT  
		Size: 177.6 KB (177589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afccd150f280fa1bb882121e136cb139d1db8f678d7180ac4ab7e6a8d0c57f21`  
		Last Modified: Thu, 05 Nov 2026 20:20:28 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; arm variant v6

```console
$ docker pull golang@sha256:0071e13c763021629f7aa2ff417fb5101d54c554ee4e24495b1450102719d26b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104488588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d6c0bb42eb412e71d71119e039b9e4549fa8dc2fd6be4cf5a35f360b410f803`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:31:53 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 05 Nov 2026 19:33:35 GMT
ENV GOTOOLCHAIN=local
# Thu, 05 Nov 2026 19:33:35 GMT
ENV GOPATH=/go
# Thu, 05 Nov 2026 19:33:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:33:35 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 19:33:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 19:33:38 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10aee1a3927eb8323143b8c23eb45332f699bc82d56941d57994f0f1a26cb8bf`  
		Last Modified: Thu, 05 Nov 2026 19:33:50 GMT  
		Size: 245.6 KB (245558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a67d7d26eb7e5961f4eb4a8108dd7d456201e3f1d89c50cf33abb4ff901e22`  
		Last Modified: Tue, 03 Nov 2026 00:57:25 GMT  
		Size: 100.7 MB (100684473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdc9443a060adcb4c33e95dd6048d800ea62fd12d1878aeba078d343dacdc0f6`  
		Last Modified: Thu, 05 Nov 2026 19:33:50 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:dcfa57e0e351ce72f7d8049b340038f8e3543c4b7eac2d88b8cfecd7005d0e2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 KB (25012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9c8f64739fcc90d0f917006ad0ec07f9a6de6d8da4cc5d23a99ef07f98f9711`

```dockerfile
```

-	Layers:
	-	`sha256:0f68d61b54e5b097571540351d464937fd1c0a60634b181163eba6281f593ba0`  
		Last Modified: Thu, 05 Nov 2026 19:33:50 GMT  
		Size: 25.0 KB (25012 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; arm variant v7

```console
$ docker pull golang@sha256:cbc267043a5d72a53e14144d3223a0cdf6c8bfa0b6d4a0c986a52c888b558048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.9 MB (103868598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f500040f9a9a100f9a924d8c70fb821fe221cef47e1bd2911120d4021517c6d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:43:29 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 05 Nov 2026 19:45:13 GMT
ENV GOTOOLCHAIN=local
# Thu, 05 Nov 2026 19:45:13 GMT
ENV GOPATH=/go
# Thu, 05 Nov 2026 19:45:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:45:13 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 19:45:16 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 19:45:16 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3b94da656b1f5f1c97c52ca65295c9e95b5d6872135326722d31639ac739ff6`  
		Last Modified: Thu, 05 Nov 2026 19:45:31 GMT  
		Size: 244.5 KB (244520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a99d7321bc2c634c84fcec56f141b2c3d8e988dc683cfc89c801cc80bc7a7da0`  
		Last Modified: Tue, 03 Nov 2026 00:57:43 GMT  
		Size: 100.4 MB (100356186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48599d1e80e31196c95c34d32ab728f9b0a2343267ff73de29ec879b8a05b827`  
		Last Modified: Thu, 05 Nov 2026 19:45:31 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:861ff9d15b50c3f02c8fe0b66ad3a581324c1bf4eb6e781b913130cb5749397c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.2 KB (202184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed6f64d9c95121fe428bc2e89bd468aaec1ba64b89cf3b19a49272c3c371a730`

```dockerfile
```

-	Layers:
	-	`sha256:3d863c0b51ea7690882d26ac4298a7e7126ba87911e4620b4774110d971cf61a`  
		Last Modified: Thu, 05 Nov 2026 19:45:31 GMT  
		Size: 177.0 KB (176957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:260860c0f6271f4302820d23b91bef48fa4868ac7fed5ed3a6a4d1cc41ca9a95`  
		Last Modified: Thu, 05 Nov 2026 19:45:31 GMT  
		Size: 25.2 KB (25227 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:42e99a05a925b0137f1926acb10a978e62f09806c39e746e52f1b8fcfe174572
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.3 MB (103308261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71bde4f722a82085a25bad671e095faa7b0f4548329b64e8746086d34a9ebef6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:28:21 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 05 Nov 2026 21:29:34 GMT
ENV GOTOOLCHAIN=local
# Thu, 05 Nov 2026 21:29:34 GMT
ENV GOPATH=/go
# Thu, 05 Nov 2026 21:29:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 21:29:34 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 21:29:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 21:29:37 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bda23c198c979d199ca27afd791f3d0d041c47b07edcef50c8f687eeaaef141`  
		Last Modified: Thu, 05 Nov 2026 21:29:52 GMT  
		Size: 246.9 KB (246920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c02be16c5cc8cd90f80fa09f773930298fc4772e6eecff5f27de48d2f357cf4`  
		Last Modified: Tue, 03 Nov 2026 00:57:12 GMT  
		Size: 98.9 MB (98870589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcc7aa4dc551f68818fd8f3d4ac127ce3040005e51215d09e6beb4781e22bb23`  
		Last Modified: Thu, 05 Nov 2026 21:29:52 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:ea4e55feab4c27ad02cb20051346e8b88b66251d5c9e5ad22fa9ad9aaf833b20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.2 KB (202250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05429708c728202869db8c6da008abdb4a0c11c43b8aa59e5081ddaf6acae8cf`

```dockerfile
```

-	Layers:
	-	`sha256:1fb7e99eefc4b7b6c157e8ceabd98d7eecf65fdf35182d37e4b90608f2c20439`  
		Last Modified: Thu, 05 Nov 2026 21:29:52 GMT  
		Size: 177.0 KB (176995 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10e5029713291ee3f8115d3ce6ce96a0aa2504b48ff826cfc13faa313f579aba`  
		Last Modified: Thu, 05 Nov 2026 21:29:52 GMT  
		Size: 25.3 KB (25255 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; 386

```console
$ docker pull golang@sha256:48851702414a4ad26f0afac949fb890fe9629d8cbba44c32ed8c641f737ba0e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.2 MB (106151462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bb5591f4821c8bc091b834b686ea3fca2119bd776cb8bab1c6290433a5b9ec1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:31:33 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 05 Nov 2026 18:48:12 GMT
ENV GOTOOLCHAIN=local
# Thu, 05 Nov 2026 18:48:12 GMT
ENV GOPATH=/go
# Thu, 05 Nov 2026 18:48:12 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 18:48:12 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 18:48:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 18:48:15 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61589ff994b5d4ce279869b4e923ec5c6ef04509d8394fa87215a228281f83c`  
		Last Modified: Thu, 05 Nov 2026 18:31:58 GMT  
		Size: 245.0 KB (245005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd75b5188259c9b268ed753f81ba2e38b1d9d992be8e9e3b374fc45933b99770`  
		Last Modified: Tue, 03 Nov 2026 00:57:32 GMT  
		Size: 102.2 MB (102225938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:137e353428b54ea84e71391a6125ca11796b728e0ccfb8b02cf7d2e507391609`  
		Last Modified: Thu, 05 Nov 2026 18:48:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:5dac48b59372c287679d89e648c9d2ef2a2f69b997166e75e4ce99c4b54c4a0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.6 KB (202602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e069afd3e90a3ebadbcaef122effc4feb4ffcb68e924dd4f3feab89a224adae3`

```dockerfile
```

-	Layers:
	-	`sha256:7b66207f0eaece48f4e980a45a1d49b51cb7eb6f725e316fc415ac6edc6ea68e`  
		Last Modified: Thu, 05 Nov 2026 18:48:30 GMT  
		Size: 177.5 KB (177546 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a968c431bb0d4db16c079657f090478e87f5eecdd18348d61731193f1ba99187`  
		Last Modified: Thu, 05 Nov 2026 18:48:30 GMT  
		Size: 25.1 KB (25056 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; ppc64le

```console
$ docker pull golang@sha256:ceae36858a9fec74c5f6567851967cdd991b45ae6c596517bcfb04eb7d193f80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.2 MB (105159619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:258c57c5f6e6a5c23f33ef19e2d1f5939a9adf03911b841185ebf8d2eb804c7c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 23:36:43 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Fri, 06 Nov 2026 00:25:13 GMT
ENV GOTOOLCHAIN=local
# Fri, 06 Nov 2026 00:25:13 GMT
ENV GOPATH=/go
# Fri, 06 Nov 2026 00:25:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 00:25:13 GMT
COPY /target/ / # buildkit
# Fri, 06 Nov 2026 10:35:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Fri, 06 Nov 2026 10:35:39 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0182ddd5961f722a2fa1a03726f16f1610e93687b1f32d100d4748a469285ed3`  
		Last Modified: Thu, 05 Nov 2026 23:37:49 GMT  
		Size: 247.4 KB (247360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb982b356b87d80bb7f1d8c2c33f7bc1ec026469cef4eb9595fff52794f2b6d4`  
		Last Modified: Tue, 03 Nov 2026 01:30:06 GMT  
		Size: 101.1 MB (101090181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06f137d255bfee4d15ceb5f731506d4be3d165ff3126e82c670f4e80c59a4340`  
		Last Modified: Fri, 06 Nov 2026 10:36:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:eb13eb64ca3e0b64ad9f5fda69776d83e5c8bd9e3631339c0b58d821f8bddec0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.1 KB (202147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ece8a3727a504fe88e289b7bbb343299eaa126231f2b682498586c71578d5d0d`

```dockerfile
```

-	Layers:
	-	`sha256:73070e57b6925ba5fb7a95d904538fec11b5018f667aa15d3b5c798552bcc33b`  
		Last Modified: Fri, 06 Nov 2026 10:36:09 GMT  
		Size: 177.0 KB (176990 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88bcbe4643bd6a027b3e552e1491a8ab7b28c724f85cbbf9e3336dc7c7f22da5`  
		Last Modified: Fri, 06 Nov 2026 10:36:09 GMT  
		Size: 25.2 KB (25157 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; riscv64

```console
$ docker pull golang@sha256:905b3b842e62aba6ea8df22256c0ff982aa5f2f1fb2dc3a7f1fb5e5e366503f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.2 MB (105183919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:945cd96256e08164a6edfd512d92a1e9c5eb1e0525320dfe62643139f5de6048`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 13:36:28 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 03 Nov 2026 09:59:47 GMT
ENV GOTOOLCHAIN=local
# Tue, 03 Nov 2026 09:59:47 GMT
ENV GOPATH=/go
# Tue, 03 Nov 2026 09:59:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 09:59:47 GMT
COPY /target/ / # buildkit
# Tue, 03 Nov 2026 10:00:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 03 Nov 2026 10:00:06 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a0c6bbdd7e2de39b486fb00ad142f28331aaffeee541e676368c08a410f76ed`  
		Last Modified: Mon, 26 Oct 2026 13:37:55 GMT  
		Size: 244.9 KB (244881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f407f2d466bfcd495056aca7e9a0c35ac87e4089ae72db918b17348bab9a459`  
		Last Modified: Tue, 03 Nov 2026 10:03:39 GMT  
		Size: 101.4 MB (101358233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43e4498b940a866146fd8b53dbfbd974e69ab4eb02ccdb3d511e9a22461cba85`  
		Last Modified: Tue, 03 Nov 2026 10:03:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:9207bb5f747eaa28711d3b6b7989bf32b621097c941fffc8331321dd3a9894d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.1 KB (202141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e913267ae72c1394f9b20d167298a051306ea62e98300ccf6381c27e3100468a`

```dockerfile
```

-	Layers:
	-	`sha256:ff74cb03d9cd2be070204622ac6de0a69a221495e1a92001c453f5a8bca5c716`  
		Last Modified: Tue, 03 Nov 2026 10:03:23 GMT  
		Size: 177.0 KB (176986 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26085821b2c19435d27cb8151e8a9088cb49a89f27dfd675132e3382b857083d`  
		Last Modified: Tue, 03 Nov 2026 10:03:23 GMT  
		Size: 25.2 KB (25155 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; s390x

```console
$ docker pull golang@sha256:a311ec80c24a792a4d08163ffabbc93f4d551aec76380c74feecc596aec90a78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.0 MB (107015264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:435612e10101d225f86cc1dfce6a22e813f2cc58fe9ad0d18bdb0091bdde02a3`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:15:28 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 03 Nov 2026 01:04:09 GMT
ENV GOTOOLCHAIN=local
# Tue, 03 Nov 2026 01:04:09 GMT
ENV GOPATH=/go
# Tue, 03 Nov 2026 01:04:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 01:04:09 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 21:44:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 21:44:27 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa896657d8763e0f093ba3fd892c1ca57b016eaf8be90b93308ddab74fdc8a9b`  
		Last Modified: Thu, 05 Nov 2026 19:16:16 GMT  
		Size: 245.6 KB (245566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3ce80c322577cbabbedd50927ea6355481abc36458b7d6b30272314b5201096`  
		Last Modified: Tue, 03 Nov 2026 01:04:12 GMT  
		Size: 103.0 MB (103048871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65f134ff6e23556019a41cab7cceb7b4499c6a54179657803d076a03948dd138`  
		Last Modified: Thu, 05 Nov 2026 21:46:05 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:456e3a77056b3433639e21055238b0f2cf4dd1297b5fcb615895328ae360dcad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.0 KB (202037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4023ba60c36a81142980d9bcc2b105e97656ec3595ece8e19818258e0ce7234a`

```dockerfile
```

-	Layers:
	-	`sha256:50e54c08d6ea85dfe577d4b1fae39943fa82e83a3531d1fb1bedb40a9fa78a14`  
		Last Modified: Thu, 05 Nov 2026 21:46:06 GMT  
		Size: 176.9 KB (176938 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc3a9772a504b6e7c25f48a0cb7537545e54c3992d427bc3877bc9714257311f`  
		Last Modified: Thu, 05 Nov 2026 21:46:05 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json
